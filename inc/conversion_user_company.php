<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
 
	$i=0;
        $setmeal_cache=array();
        //��˾��Ա��Ϣ��uchome_space����,m_typeid=2Ϊ��˾��Ա��m_typeid=1Ϊ���˻�Ա
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        //��˾��Ա�ײ���Ϣ���ת����
        $sql="SELECT s.*,unix_timestamp(m_startdate) as setmeal_starttime,unix_timestamp(m_enddate) as setmeal_endtime,f.*,m.* from `{$srcpre}space` s,`{$srcpre}spacefield` f,`{$srcpre}member` m,`{$srcpre}job_company` c where s.uid=f.uid  and m_typeid=2 and s.uid=m.uid and c.uid=s.uid;";
        
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
            //loginip��ע��ip����һ��git 
		//conversion_register($row['m_login'],$row['m_pwd'],1,1,$row['m_email'],$row['m_loginip'],conversion_datefm($row['m_regdate'],2),$row['m_mobile']);
            $uid= $row['uid'];
            $username=$row['username'];
            $password=$row['password'];
            $passwordtype=1;
            $member_type=1;//1Ϊ��ҵ��Ա
            $email=$row['email'];
            $regip=$row['regip'];
            $mobile=$row['mobile'];
            $add_time=$row['dateline'];//conversion_datefm($row['dateline'],2);
            //                  $username,$password,$passwordtype=0,$member_type=0,$email,$ip='',$timestamp='',$mobile=''
           $company_id=  conversion_register($uid,$username,$password,$passwordtype,$member_type,$email,$regip,$add_time,$mobile);
            if($company_id != $uid){
                die("ת��ʧ�ܣ����뷵�ص�id������id��һ�£�\$company_id:$uid , \$inserted_id:$company_id");
            }
            //TODO ת����Ա���ײ���Ϣ,$groupidΪĿǰ��ҵ���ײ���Ϣ
            //qs32_members_setmeal
            /*
             * 1	��ͨ��Ա
                4	���ע���Ա
                5	�¶Ȼ�Ա
                16	VIP���Ȼ�Ա
                17	VIP�����Ա
                18	VIP��Ȼ�Ա
                20	������
                21	Զ���
                22	�����漾�Ȼ�Ա
                23	����
                24	��ͨ��Ա
             */
           /***
            *
            * 
shiphr���ԶԸ�����ҵ��Ա����Ȩ�ޣ���Ӧ�ֶΣ�
1��ְλ�� m_hirenums �ѷ�  m_hirenum �����ø��� 74:������ְͨλ:jobs_ordinary
2���˲ſ�  m_expertnums ���ø��� m_expertsnum ���ø���  74:�˲ſ�����: talent_pool
3���鿴����  m_contactnums ���ø���  m_contactsnum ���ø��� 74:  ������ͨ�˲ż���:download_resume_ordinary
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
 *               4	���ע���Ա
                5	�¶Ȼ�Ա
                16	VIP���Ȼ�Ա
                17	VIP�����Ա
                18	VIP��Ȼ�Ա
                20	������
                21	Զ���
                22	�����漾�Ȼ�Ա
                23	����
                24	��ͨ��Ա
 */
function convert_set_meal($srcid){
    $src_setmeal = array(4=>1,//���ע���Ա
        5=>2,//�¶Ȼ�Ա
        16=>3,//vip���Ȼ�Ա
        18=>4,//vip�����Ա
        20=>6,//������
        21=>7,//Զ���
        23=>9,//����
        24=>1//��ͨ��Ա����Ӧ�ĸ�����
        );
       return $src_setmeal($srcid);
}

/**
 * 
 * @global type $db
 * @global type $timestamp
 * @global type $setmeal_cache
 * @param type $uid
 * @param type $setmealid 74cms�ж�Ӧ���ײ�Id
 * @param type $jobs_ordinary �ɷ�����ְͨλ����
 * @param type $talent_pool  �˲ſ�����
 * @param type $download_resume_ordinary ��������ͨ�˲ż�������
 * @param type $starttime �ײͿ�ʼʱ��
 * @param type $endtime �ײͽ���ʱ��
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