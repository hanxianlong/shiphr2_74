<?php
//header("Content-type: text/html; charset=utf-8"); 
date_default_timezone_set('Asia/Chongqing');
header("Content-type:text/html; charset=GB2312");
error_reporting(E_ALL);
@ini_set('memory_limit', '1024M');
require_once(dirname(__FILE__).'/mysql.class.php');
define("ROOT_PATH", dirname(dirname(__FILE__)));
define("LOG_COMMIT_SIZE",2000);//每1000个提交一次日志信息
define('COMPANY_DEFAULT_AUDIT',0);//导入时企业默认审核状态

require_once(ROOT_PATH.'/utils/stopwatch.class.php');
require_once(ROOT_PATH.'/utils/mylogger.class.php');
require_once(ROOT_PATH.'/utils/mylocker.class.php');
require_once(ROOT_PATH.'/inc/cateogory_relations_cache.php');//职位之间的对应关系

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
	}
	 return $state;
}

function conversion_updatetable($tablename, $setsqlarr, $wheresqlarr, $silent=0) {
	global $db;
	$setsql = $comma = '';
	foreach ($setsqlarr as $set_key => $set_value) {
		if(is_array($set_value)) {
			$setsql .= $comma.'`'.$set_key.'`'.'='.$set_value[0];
		} else {
			$setsql .= $comma.'`'.$set_key.'`'.'=\''.$set_value.'\'';
		}
		$comma = ', ';
	}
	$where = $comma = '';
	if(empty($wheresqlarr)) {
		$where = '1';
	} elseif(is_array($wheresqlarr)) {
		foreach ($wheresqlarr as $key => $value) {
			$where .= $comma.'`'.$key.'`'.'=\''.$value.'\'';
			$comma = ' AND ';
		}
	} else {
		$where = $wheresqlarr;
	}
        
        $oksql ="UPDATE ".($tablename)." SET ".$setsql." WHERE ".$where;
	return $db->query($oksql, $silent?"SILENT":"");
}

/*注册新用户
 */
function conversion_register($userid,$username,$password,$passwordtype=0,$member_type=0,$email,$ip='',$timestamp='',$mobile='',$last_login_time=0,$resume_file='')
{
	global $db,$QS_pwdhash;
	$member_type=intval($member_type);
	//$ck_username=get_user_inusername($username);
	//$ck_email=get_user_inemail($email);
	if ($member_type==0) 
	{
            return -1;
	}
        //不管用户是否存在，都直接转换
	/*elseif (!empty($ck_username))
	{
            return -2;
	}
	elseif (!empty($ck_email))
	{
            return -3;
	}*/ 
	$pwd_hash='aa';//randstr();
	if ($passwordtype==0)
	{
	//$password_hash=md5(md5($password).$pwd_hash.$QS_pwdhash);
	}
	else
	{
	$password_hash=$password;
	}
        $setsqlarr['uid']=$userid;
	$setsqlarr['username']=$username;
	$setsqlarr['password']=$password_hash;
	$setsqlarr['pwd_hash']=$pwd_hash;
	$setsqlarr['email']=$email;
	$setsqlarr['utype']=intval($member_type);
	$setsqlarr['reg_time']=$timestamp;
	$setsqlarr['reg_ip']=$ip;
	$setsqlarr['mobile']=$mobile;
         $setsqlarr['attach_resume_path']=$resume_file;
        $setsqlarr['last_login_time']=$last_login_time;   
        
        //TODO 邮箱认证
        //手机号认证 
	conversion_inserttable(table('members'),$setsqlarr,true,true);
        if($member_type=="1")
        {
                if(!$db->query("REPLACE INTO ".table('members_points')." (uid) VALUES ('{$userid}')"))  return false;
                if(!$db->query("REPLACE INTO ".table('members_setmeal')." (uid) VALUES ('{$userid}')")) return false;
        }
         
        return $userid;
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

/**
 * 套餐类型转换
 * @global type $setmeal_array
 * @param type $srcid
 * @return type
 */
function get_user_set_meal($srcid){
   global $setmeal_array;
    return $setmeal_array[$srcid];
}

/*
 * 根据用户id获取用户信息
 */
function get_user_inuid($uid)
{
	global $db; 
	return $db->getone("select * from ".table('members')." where email = '{$uid}' LIMIT 1");
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
            return false;
        }
}

/**

 * @global mysql $db
 * @param type $str
 * @return string
 */
function get_company_nature($nature_id)
{
    global $company_nature_array;
    return $company_nature_array[$nature_id];
}


function get_trade($trade_id)
{
     global $trade_array;
    return $trade_array[$trade_id];
}

/**
 * 获取公司规模，仅在conversion_company.php中使用到
 * @global mysql $db
 * @param type $str
 * @return string
 */
function get_company_scale($scale_id)
{
  global  $scale_array;
    return $scale_array[$scale_id];
}

/**
 * 根据区域id获取区域名称(省市都包括)
 * @param type $area_id
 */
function get_area_name($area_id){
    global $area_cache;
    return $area_cache[$area_id];
}

 /**
  * @global mysql $db
  * @param type $str
  * @return string
  * @throws Exception
  */
function get_city($str)
{
    throw new Exception("not implemented", 200, "");
	global $db;
	$default=array("district"=>0,"sdistrict"=>0,"district_cn"=>'未知');
	if (empty($str))
	{
		return $default;
	}
	 
        $sql = "select id,parentid,categoryname from ".table('category_district')." WHERE parentid<>0";
        $info=$db->getall($sql);
        $return=search_str($info,$str,"categoryname");
        if ($return)
        {
           return array("district"=>$return['parentid'],"sdistrict"=>$return['id'],"district_cn"=>$return['categoryname']);
        }
        return $default;
}

/**
 * 获取职位类别
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_jobs_cat($cat_id)
{
    global $job_categories_cache;
    $default =array("id"=>0,"parent_id"=>0,"category_cn"=>'未知');
    if(array_key_exists($cat_id,$job_categories_cache)){
        $cat = $job_categories_cache[$cat_id];
        $default = array("id"=>$cat['id'],"parent_id"=>$cat['pid'],"category_cn"=>$cat['cn']);
    }
    return  $default;
}

/**
 * 工作类型
 * @global mysql $db
 * @param type $str
 * @return type
 * hr:$jobtypes = array( "无", "全职", "兼职", "临时", "实习" );
 * TODO:将类型id与74cms中的类型正确对应起来
 */
function get_jobs_nature($nature_id)
{
   global $job_nature_array;
   return $job_nature_array[$nature_id];
}

function get_sex($id)
{
   global $gender_array;
   return $gender_array[$id];
}

function get_marriage($id){
    global $marriage_array;
    return $marriage_array[$id];
}

/**
 * 转换学历
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_edu($id)
{
  global $edu_array;
  return $edu_array[$id];
}

/**

 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_experience($exp_id)
{
    global $experience_array;
    return $experience_array[$exp_id];
}
/**
 * 根据shiphr中的工资范围id设置74cms的工资范围id
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_wage($id)
{
    global $wage_array;
    return $wage_array[$id];
}

/*
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
                    if (!conversion_inserttable(table('resume_jobs'),$setsqlarr))
                        return false;
		}
	}
}
*/
function conversion_add_resume_jobs($pid,$uid,$id,$sid)
{
	global $db; 
        $setsqlarr['uid']=intval($uid);
        $setsqlarr['pid']=intval($pid);
        $setsqlarr['category']=intval($id);
        $setsqlarr['subclass']=intval($sid);
        if (!conversion_inserttable(table('resume_jobs'),$setsqlarr))
            return false;
}
?>