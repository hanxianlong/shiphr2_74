<?php
require_once(dirname(__FILE__).'/mysql.class.php');
$srcdbhost=trim($_GET['srcdbhost']);
$srcdbuser=trim($_GET['srcdbuser']);
$srcdbpass=trim($_GET['srcdbpass']);
$srcdbname=trim($_GET['srcdbname']);
$srcpre=trim($_GET['srcpre']);
$srcdbcharset=trim($_GET['srcdbcharset']);
$qsdbhost=trim($_GET['qsdbhost']);
$qsdbuser=trim($_GET['qsdbuser']);
$qsdbpass=trim($_GET['qsdbpass']);
$qsdbname=trim($_GET['qsdbname']);
$qspre=trim($_GET['qspre']);
$dbsrc = new mysql($srcdbhost,$srcdbuser,$srcdbpass,$srcdbname);
$db = new mysql($qsdbhost,$qsdbuser,$qsdbpass,$qsdbname);
function table($table)
{
	global $qspre;
	return $qspre.$table;
}
function escape_str($str)
{
	global $srcdbcharset;
	if ($srcdbcharset=='UTF8')
	{
	$str=iconv("utf-8",'gbk//IGNORE',$str);
	}
	$str=mysql_escape_string($str);
	$str=str_replace('\\\'','\'\'',$str);
	$str=str_replace("\\\\","\\\\\\\\",$str);
	$str=str_replace('$','\$',$str);
	return $str;
}
function conversion_inserttable($tablename, $insertsqlarr, $returnid=0, $replace = false, $silent=0)
{
	global $db;
	$insertkeysql = $insertvaluesql = $comma = '';
	foreach ($insertsqlarr as $insert_key => $insert_value) {
		$insertkeysql .= $comma.'`'.$insert_key.'`';
		$insertvaluesql .= $comma.'\''.escape_str($insert_value).'\'';
		$comma = ', ';
	}
	$method = $replace?'REPLACE':'INSERT';
	$state = $db->query($method." INTO $tablename ($insertkeysql) VALUES ($insertvaluesql)", $silent?'SILENT':'');
	if($returnid && !$replace) {
		return $db->insert_id();
	}else {
	    return $state;
	} 
}

/*注册新用户
 */
function conversion_register($username,$password,$passwordtype=0,$member_type=0,$email,$ip='',$timestamp='',$mobile='')
{
	global $db,$QS_pwdhash;
	$member_type=intval($member_type);
	$ck_username=get_user_inusername($username);
	$ck_email=get_user_inemail($email);
	if ($member_type==0) 
	{
	return -1;
	}
	elseif (!empty($ck_username))
	{
	return -2;
	}
	elseif (!empty($ck_email))
	{
	return -3;
	}
	
	$pwd_hash=randstr();
	if ($passwordtype==0)
	{
	$password_hash=md5(md5($password).$pwd_hash.$QS_pwdhash);
	}
	else
	{
	$password_hash=$password;
	}	
	$setsqlarr['username']=$username;
	$setsqlarr['password']=$password_hash;
	$setsqlarr['pwd_hash']=$pwd_hash;
	$setsqlarr['email']=$email;
	$setsqlarr['utype']=intval($member_type);
	$setsqlarr['reg_time']=$timestamp;
	$setsqlarr['reg_ip']=$ip;
	$setsqlarr['mobile']=$mobile;
	$insert_id=conversion_inserttable(table('members'),$setsqlarr,true);
			if($member_type=="1")
			{
				if(!$db->query("INSERT INTO ".table('members_points')." (uid) VALUES ('{$insert_id}')"))  return false;
				if(!$db->query("INSERT INTO ".table('members_setmeal')." (uid) VALUES ('{$insert_id}')")) return false;					
			}
return $insert_id;
}

/*
 * 获取用户邮箱
 */
function get_user_inemail($email)
{
	global $db;
	$email=escape_str($email);
	return $db->getone("select * from ".table('members')." where email = '{$email}' LIMIT 1");
}

/*
 * 判断当前用户名是否已经在members表中存在
 */
function get_user_inusername($username)
{
	global $db;
	$username=escape_str($username);
	$sql = "select * from ".table('members')." where username = '{$username}' LIMIT 1";
	return $db->getone($sql);
}

/**
 * 
 * @global mysql $db
 * @param type $uid
 * @return type
 */
function get_company($uid)
{
	global $db;
	$sql = "select * from ".table('company_profile')." where uid='".intval($uid)."' LIMIT 1 ";
	return $db->getone($sql);
}

/**
 * 
 * @param type $date
 * @param type $format
 * @param type $separator
 * @return type
 */
function conversion_datefm($date,$format,$separator="-")
{
	 if ($format=="1")
	 {
	 return date("Y-m-d", $date);
	 }
	 else
	 {
		if (!preg_match("/^[0-9]{4}(\\".$separator.")[0-9]{1,2}(\\1)[0-9]{1,2}(|\s+[0-9]{1,2}(|:[0-9]{1,2}(|:[0-9]{1,2})))$/",$date))  return $date;
		$date=explode($separator,$date);
		return mktime(0,0,0,$date[1],$date[2],$date[0]);
	 }
}
function randstr($length=6)
{
	$hash='';
	$chars= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz@#!~?:-='; 
	$max=strlen($chars)-1;   
	mt_srand((double)microtime()*1000000);   
	for($i=0;$i<$length;$i++)
	{   
	$hash.=$chars[mt_rand(0,$max)];   
	}   
	return $hash;   
}
//模糊搜索
function search_str($arr,$str,$arrinname,$n=30)
{
		foreach ($arr as $key =>$list)
		{
			similar_text($list[$arrinname],$str,$percent);
			$od[$percent]=$key;
		}
			krsort($od);
			foreach ($od as $key =>$li)
			{
				if ($key>=$n)
				{
				return $arr[$li];
				}
				else
				{
				return false;
				}
			}	
}
function get_company_nature($str=NULL)
{
	global $db;
	$default=array("id"=>0,"cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select c_id,c_name from ".table('category')."  where c_alias='QS_company_type'";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"c_name");
		if ($return)
		{
		return array("id"=>$return['c_id'],"cn"=>$return['c_name']);
		}
		else
		{
		return $default;
		}
	}
}
function get_company_trade($str=NULL)
{
	global $db;
	$default=array("id"=>0,"cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select c_id,c_name from ".table('category')."  where c_alias='QS_trade'";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"c_name");
		if ($return)
		{
		return array("id"=>$return['c_id'],"cn"=>$return['c_name']);
		}
		else
		{
		return $default;
		}
	}
}
function get_company_scale($str=NULL)
{
	global $db;
	$default=array("id"=>0,"cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select c_id,c_name from ".table('category')."  where c_alias='QS_scale'";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"c_name");
		if ($return)
		{
		return array("id"=>$return['c_id'],"cn"=>$return['c_name']);
		}
		else
		{
		return $default;
		}
	}
}
function get_city($str)
{
	global $db;
	$default=array("district"=>0,"sdistrict"=>0,"district_cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select id,parentid,categoryname from ".table('category_district')." WHERE parentid<>0";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"categoryname");
		if ($return)
		{
		return array("district"=>$return['parentid'],"sdistrict"=>$return['id'],"district_cn"=>$return['categoryname']);		
		}
		else
		{
		return $default;
		}
	}
}
function get_jobs_cat($str)
{
	global $db;
	$default=array("category"=>0,"subclass"=>0,"category_cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select id,parentid,categoryname from ".table('category_jobs')." WHERE parentid<>0";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"categoryname");
		if ($return)
		{
		return array("category"=>$return['parentid'],"subclass"=>$return['id'],"category_cn"=>$return['categoryname']);		
		}
		else
		{
		return $default;
		}
	}
}
function get_jobs_nature($str)
{
	global $db;
	switch ($str)
	{
	case "1":$str="全职";
	case "2":$str="兼职";
	case "3":$str="不限";
	}
	$sql = "select * from ".table('category')." where c_alias='QS_jobs_nature' AND c_name='{$str}'";
	$cid=$db->getone($sql);
	if ($cid)
	{
	return array($cid['c_id'],$cid['c_name']);
	}
	else
	{
		$sql = "select * from ".table('category')." where c_alias='QS_jobs_nature' ORDER BY c_id ASC LIMIT 1";
		$cid=$db->getone($sql);
		return array($cid['c_id'],$cid['c_name']);
	}
}
function get_sex($str)
{
	if ($str=="1")
	{
	return array(1,'男');
	}
	elseif ($str=="2")
	{
	return array(2,'女');
	}
	else
	{
	return array(3,'不限');
	}
}
function get_edu($str=NULL)
{
	global $db;
	$default=array("id"=>0,"cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select c_id,c_name from ".table('category')."  where c_alias='QS_education'";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"c_name");
		if ($return)
		{
		return array("id"=>$return['c_id'],"cn"=>$return['c_name']);
		}
		else
		{
		return $default;
		}
	}
}
function get_exp($str=NULL)
{
	global $db;
	switch ($str)
	{
	case "0":$str="无经验";
	case "-1":$str="无经验";
	default :$str=$str."年";
	}
	$default=array("id"=>0,"cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select c_id,c_name from ".table('category')."  where c_alias='QS_experience'";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"c_name");
		if ($return)
		{
		return array("id"=>$return['c_id'],"cn"=>$return['c_name']);
		}
		else
		{
		return $default;
		}
	}
}
function get_wage_str($str=NULL)
{
	switch ($str)
	{
	case "1":return "1000~1500元/月";
	case "2":return "1000~1500元/月";
	case "3":return "1000~1500元/月";
	case "4":return "1000~1500元/月";
	case "5":return "1500~2000元/月";
	case "6":return "2000~3000元/月";
	case "7":return "2000~3000元/月";
	case "8":return "3000~5000元/月";
	case "9":return "3000~5000元/月";
	case "10":return "3000~5000元/月";
	case "11":return "3000~5000元/月";
	case "12":return "1万以上/月";
	case "13":return "1万以上/月";
	case "14":return "1万以上/月";
	default :return $str;
	}
	
}
function get_wage($str=NULL)
{
	global $db;
	$default=array("id"=>0,"cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	else
	{
		$sql = "select c_id,c_name from ".table('category')."  where c_alias='QS_wage'";
		$info=$db->getall($sql);
		$return=search_str($info,$str,"c_name");
		if ($return)
		{
		return array("id"=>$return['c_id'],"cn"=>$return['c_name']);
		}
		else
		{
		return $default;
		}
	}
}


function conversion_add_resume_jobs($pid,$uid,$str)
{
	global $db;
	$str=trim($str);
	$arr=explode("-",$str);
	if (is_array($arr) && !empty($arr))
	{
		foreach($arr as $a)
		{
		$a=explode(".",$a);
		$setsqlarr['uid']=intval($uid);
		$setsqlarr['pid']=intval($pid);
		$setsqlarr['category']=intval($a[0]);
		$setsqlarr['subclass']=intval($a[1]);
			if (!conversion_inserttable(table('resume_jobs'),$setsqlarr))return false;
		}
	}
}
?>