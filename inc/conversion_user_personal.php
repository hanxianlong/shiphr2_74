<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
	$i=0;
	//$sql="select * from `{$srcpre}member` where m_typeid=1";
      /*  $sql="SELECT s.*,f.*,m.* from `{$srcpre}space` s,`{$srcpre}spacefield` f,`{$srcpre}member` m where s.uid=f.uid  and m_typeid=1 and s.uid=m.uid";
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
		conversion_register($row['m_login'],$row['m_pwd'],1,2,$row['m_email'],$row['m_loginip'],conversion_datefm($row['m_regdate'],2),$row['m_mobile']);
		$i++;
	}
        */
          //个人会员信息在uchome_space表中,m_typeid=2为公司会员，m_typeid=1为个人会员
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        $sql="SELECT s.*,f.*,m.* from `{$srcpre}space` s,`{$srcpre}spacefield` f,`{$srcpre}member` m where s.uid=f.uid  and m_typeid=1 and s.uid=m.uid";
        
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
            //loginip与注册ip保持一致
		//conversion_register($row['m_login'],$row['m_pwd'],1,1,$row['m_email'],$row['m_loginip'],conversion_datefm($row['m_regdate'],2),$row['m_mobile']);
            $uid= $row['uid'];
            $username=$row['username'];
            $password=$row['password'];
            $passwordtype=1;//当passwordtype为1时，直接保存此字段到数据库中，不进行二次加密。
            $member_type=2;//2为个人会员
            $email=$row['email'];
            $regip=$row['regip'];
            $mobile=$row['mobile'];
            $add_time=$row['dateline'];//conversion_datefm($row['dateline'],2);
            //                  $username,$password,$passwordtype=0,$member_type=0,$email,$ip='',$timestamp='',$mobile=''
            conversion_register($uid,$username,$password,$passwordtype,$member_type,$email,$regip,$add_time,$mobile);
            $i++;
	}
exit("ok,{$i}");
?>