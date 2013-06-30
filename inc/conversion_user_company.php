<?php
@set_time_limit(0);
define('IN_QISHI', true);
 require_once(dirname(__FILE__).'/conversion.inc.php');
$module_name="user_company";

//尝试锁定当前模块,如果锁文件已经存在，则会终止运行
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

$i=0;
$setmeal_cache=array();
        //公司会员信息在uchome_space表中,m_typeid=2为公司会员，m_typeid=1为个人会员
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        //公司会员套餐信息如何转换？
        $sql="SELECT s.*,unix_timestamp(m_startdate) as setmeal_starttime,unix_timestamp(m_enddate) as setmeal_endtime,f.*,m.* from `{$srcpre}space` s,`{$srcpre}spacefield` f,`{$srcpre}member` m,`{$srcpre}job_company` c where s.uid=f.uid  and m_typeid=2 and s.uid=m.uid and c.uid=s.uid";
        $countsql = "select count(*) as total from (SELECT s.* from `{$srcpre}space` s,`{$srcpre}spacefield` f,`{$srcpre}member` m,`{$srcpre}job_company` c where s.uid=f.uid  and m_typeid=2 and s.uid=m.uid and c.uid=s.uid";
         
        if(isset($_GET['start_id'])){
            $start_id = intval($_GET['start_id']);
            $sql .=" and c.uid>$start_id";
            $countsql .=" and c.uid>$start_id";
        }
          if(isset($_GET['end_id'])){
            $end_id = intval($_GET['end_id']);
            $sql .=" and c.uid<$end_id";
            $countsql .=" and c.uid<$end_id";
        }
        $countsql .=") as x;";
        
        $count = $dbsrc->getone($countsql);
        $to_be_converted_count=$count['total'];
        $total_msg = "total:$to_be_converted_count";
        $mylogger->put_msg_to_disk($total_msg);
        
        $result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
            //loginip与注册ip保持一致
		//conversion_register($row['m_login'],$row['m_pwd'],1,1,$row['m_email'],$row['m_loginip'],conversion_datefm($row['m_regdate'],2),$row['m_mobile']);
            $uid= $row['uid'];
            $username=$row['username'];
            $password=$row['password'];
            $passwordtype=1;
            $member_type=1;//1为企业会员
            $email=$row['email'];
            $regip=$row['regip'];
            $mobile=$row['mobile'];
            $add_time=$row['dateline'];//conversion_datefm($row['dateline'],2);
            //                  $username,$password,$passwordtype=0,$member_type=0,$email,$ip='',$timestamp='',$mobile=''
              $last_login_time=$row['lastlogin'];
           conversion_register ($uid,$username,$password,$passwordtype,$member_type,$email,$regip,$add_time,$mobile,$last_login_time);
            
           /***
shiphr可以对个人企业会员设置权限，对应字段：
1、职位库 m_hirenums 已发  m_hirenum 还可用个数 74:发布普通职位:jobs_ordinary
2、人才库  m_expertnums 已用个数 m_expertsnum 可用个数  74:人才库容量: talent_pool
3、查看简历  m_contactnums 已用个数  m_contactsnum 可用个数 74:  下载普通人才简历:download_resume_ordinary
            */
            $setmeal_id= get_user_set_meal($row['m_groupid']);
            $jobs_ordinary = $row['m_hirenum'];
            $talent_pool=$row['m_expertnum'];
            $download_resume_ordinary = $row['m_contactnum'];
            $starttime = $row['setmeal_starttime'];
            $endtime = $row['setmeal_endtime'];
            set_members_setmeal($uid, $setmeal_id,$jobs_ordinary,$talent_pool,$download_resume_ordinary,$starttime,$endtime);
            
            $i++;
            $mylogger->put_msg($uid);
	}
        
        $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, 应转:$to_be_converted_count ,实际转:$i");
exit("ok,{$i}");

/**
 * 
 * @global type $db
 * @global type $timestamp
 * @global type $setmeal_cache
 * @param type $uid
 * @param type $setmealid 74cms中对应的套餐Id
 * @param type $jobs_ordinary 可发布普通职位个数
 * @param type $talent_pool  人才库容量
 * @param type $download_resume_ordinary 可下载普通人才简历个数
 * @param type $starttime 套餐开始时间
 * @param type $endtime 套餐结束时间
 * @return boolean
 */
function set_members_setmeal($uid,$setmealid,$jobs_ordinary,$talent_pool,$download_resume_ordinary,$starttime,$endtime)
{
	global $db,$setmeal_cache;
        if(array_key_exists($setmealid, $setmeal_cache)){
            $setmeal = $setmeal_cache[$setmealid];
        }
        else{
            $setmeal=$db->getone("select * from ".table('setmeal')." WHERE id = ".intval($setmealid)." AND display=1 LIMIT 1");    
            $setmeal_cache[$setmealid] = $setmeal;
        }
	
	if (empty($setmeal)) return false;
	$setsqlarr['effective']=1;	
        $setsqlarr['uid']=$uid;

	$setsqlarr['setmeal_id']=$setmeal['id'];
	$setsqlarr['setmeal_name']=$setmeal['setmeal_name'];
	$setsqlarr['days']=$setmeal['days'];
	$setsqlarr['starttime']=$starttime;
        $setsqlarr['endtime'] = $endtime;
        /*
        if ($setmeal['days']>0)
        {
            $setsqlarr['endtime']=strtotime("".$setmeal['days']." days");
        }
        else
        {
            $setsqlarr['endtime']="0";	
        }*/
	$setsqlarr['expense']=$setmeal['expense'];
        if(empty($jobs_ordinary))
            $jobs_ordinary = $setmeal['jobs_ordinary'];
	$setsqlarr['jobs_ordinary']=$jobs_ordinary;
        
        if(empty($download_resume_ordinary)) $download_resume_ordinary = $setmeal['download_resume_ordinary'];
	$setsqlarr['download_resume_ordinary']=$download_resume_ordinary;
	$setsqlarr['download_resume_senior']=$setmeal['download_resume_senior'];
        
	$setsqlarr['interview_ordinary']=$setmeal['interview_ordinary'];
	$setsqlarr['interview_senior']=$setmeal['interview_senior'];
        if(empty($talent_pool))
            $talent_pool = $setmeal['talent_pool'];
	$setsqlarr['talent_pool']=$talent_pool;
        
	$setsqlarr['added']=$setmeal['added'];
       
	if (!conversion_updatetable(table('members_setmeal'),$setsqlarr," uid=".$uid."")) return false;
	/*$setmeal_jobs['setmeal_deadline']=$setsqlarr['endtime'];
	$setmeal_jobs['setmeal_id']=$setsqlarr['setmeal_id'];
	$setmeal_jobs['setmeal_name']=$setsqlarr['setmeal_name'];
	//if (!updatetable(table('jobs'),$setmeal_jobs," uid=".intval($uid)."")) return false;
	//if (!updatetable(table('jobs_tmp'),$setmeal_jobs," uid=".intval($uid)."")) return false;
	//distribution_jobs_uid($uid);*/
	return true;
}

?>