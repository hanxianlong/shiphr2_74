<?php
@set_time_limit(0);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
$module_name="user_personal";

//����������ǰģ��,������ļ��Ѿ����ڣ������ֹ����
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);
$watch = new stopwatch();
$watch->start();
//���˻�Ա��Ϣ��uchome_space����,m_typeid=2Ϊ��˾��Ա��m_typeid=1Ϊ���˻�Ա
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        $sql="SELECT s.*,f.email,m.password,(select r.file from `{$srcpre}job_diyresumes` r where r.uid=s.uid limit 1) `resume` from `{$srcpre}space` s,`{$srcpre}spacefield` f,`{$srcpre}member` m where s.uid=f.uid  and m_typeid=1 and s.uid=m.uid and s.groupid=5";
        $countsql = "select count(*) as total from (SELECT 1 from `{$srcpre}space` s,`{$srcpre}spacefield` f where s.uid=f.uid  and m_typeid=1 and s.groupid=5";
         
        if(isset($_GET['start_id'])){
            $start_id = intval($_GET['start_id']);
            $sql .=" and s.uid>$start_id";
            $countsql .=" and s.uid>$start_id";
        }
          if(isset($_GET['end_id'])){
            $end_id = intval($_GET['end_id']);
            $sql .=" and s.uid<$end_id";
            $countsql .=" and s.uid<$end_id";
        }
        $countsql .=") as x;";
        
        $count = $dbsrc->getone($countsql);
        $to_be_converted_count=$count['total'];
        $total_msg = "total:$to_be_converted_count";
        $mylogger->put_msg_to_disk($total_msg);
        
	$result = $dbsrc->query($sql);
        $i=0;
	while($row = $dbsrc->fetch_array($result))
	{
            $uid= $row['uid'];
            $username=$row['username'];
            $password=$row['password'];
            $passwordtype=1;//��passwordtypeΪ1ʱ��ֱ�ӱ�����ֶε����ݿ��У������ж��μ��ܡ�
            $member_type=2;//2Ϊ���˻�Ա
            $email=$row['email'];
            $regip=$row['regip'];
            $mobile='';//$row['mobile'];//�ֻ�������
            $add_time=$row['dateline'];
            $last_login_time=$row['lastlogin'];
            $resume = $row['resume'];
            conversion_register($uid,$username,$password,$passwordtype,$member_type,$email,$regip,$add_time,$mobile,$last_login_time,$resume);
            $i++;
            
            $mylogger->put_msg($uid);
	}
        
       $mylogger->flush_all();
       $watch->stop();
       $mins = $watch->elapsed()/1000/60;
       $average = $to_be_converted_count/$mins;
       $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i,��ʱ$mins ����, ƽ��ÿ����$average ��");
exit("ok,{$i}");
?>