<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
 
	$i=0;
        $setmeal_cache=array();
        //公司会员信息在uchome_space表中,m_typeid=2为公司会员，m_typeid=1为个人会员
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        //公司会员套餐信息如何转换？
        $sql="SELECT s.*,unix_timestamp(m_startdate) as setmeal_starttime,unix_timestamp(m_enddate) as setmeal_endtime,f.*,m.* from `{$srcpre}space` s,`{$srcpre}spacefield` f,`{$srcpre}member` m,`{$srcpre}job_company` c where s.uid=f.uid  and m_typeid=2 and s.uid=m.uid and c.uid=s.uid;";
        
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
            //loginip与注册ip保持一致git 
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
           $company_id=  conversion_register($uid,$username,$password,$passwordtype,$member_type,$email,$regip,$add_time,$mobile);
            if($company_id != $uid){
                die("转换失败，插入返回的id与插入的id不一致：\$company_id:$uid , \$inserted_id:$company_id");
            }
            //TODO 转换会员的套餐信息,$groupid为目前企业的套餐信息
            //qs32_members_setmeal
            /*
             * 1	普通会员
                4	免费注册会员
                5	月度会员
                16	VIP季度会员
                17	VIP半年会员
                18	VIP年度会员
                20	近海版
                21	远洋版
                22	近海版季度会员
                23	灵便版
                24	普通会员
             */
           /***
            *
            * 
shiphr可以对个人企业会员设置权限，对应字段：
1、职位库 m_hirenums 已发  m_hirenum 还可用个数 74:发布普通职位:jobs_ordinary
2、人才库  m_expertnums 已用个数 m_expertsnum 可用个数  74:人才库容量: talent_pool
3、查看简历  m_contactnums 已用个数  m_contactsnum 可用个数 74:  下载普通人才简历:download_resume_ordinary
            */
           
            $setmeal_id= convert_set_meal(intval($row['m_group_id']));
            $jobs_ordinary = $row['m_hirenum'];
            $talent_pool=$row['m_expertsnum'];
            $download_resume_ordinary = $row['m_contactsnum'];
            $starttime = $row['setmeal_starttime'];
            $endtime = $row['setmeal_endtime'];
            set_members_setmeal($company_id, $setmeal_id,$jobs_ordinary,$talent_pool,$download_resume_ordinary,$starttime,$endtime);
            
            $i++;
	}
exit("ok,{$i}");

/*
 *               4	免费注册会员
                5	月度会员
                16	VIP季度会员
                17	VIP半年会员
                18	VIP年度会员
                20	近海版
                21	远洋版
                22	近海版季度会员
                23	灵便版
                24	普通会员
 */
function convert_set_meal($srcid){
    $src_setmeal = array(4=>1,//免费注册会员
        5=>2,//月度会员
        16=>3,//vip季度会员
        18=>4,//vip半年会员
        20=>6,//近海版
        21=>7,//远洋版
        23=>9,//灵便版
        24=>1//普通会员，对应哪个级别？
        );
       return $src_setmeal($srcid);
}

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
	$setsqlarr['jobs_ordinary']=$setmeal['jobs_ordinary'];
	$setsqlarr['download_resume_ordinary']=$setmeal['download_resume_ordinary'];
	$setsqlarr['download_resume_senior']=$setmeal['download_resume_senior'];
	$setsqlarr['interview_ordinary']=$setmeal['interview_ordinary'];
	$setsqlarr['interview_senior']=$setmeal['interview_senior'];
	$setsqlarr['talent_pool']=$setmeal['talent_pool'];
	$setsqlarr['added']=$setmeal['added'];
	if (!updatetable(table('members_setmeal'),$setsqlarr," uid=".$uid."")) return false;
	/*$setmeal_jobs['setmeal_deadline']=$setsqlarr['endtime'];
	$setmeal_jobs['setmeal_id']=$setsqlarr['setmeal_id'];
	$setmeal_jobs['setmeal_name']=$setsqlarr['setmeal_name'];
	//if (!updatetable(table('jobs'),$setmeal_jobs," uid=".intval($uid)."")) return false;
	//if (!updatetable(table('jobs_tmp'),$setmeal_jobs," uid=".intval($uid)."")) return false;
	//distribution_jobs_uid($uid);*/
	return true;
}

?>