<?php
//header("Content-type: text/html; charset=utf-8"); 
date_default_timezone_set('Asia/Chongqing');
header("Content-type:text/html; charset=GB2312");
require_once(dirname(__FILE__).'/mysql.class.php');
define("ROOT_PATH", dirname(dirname(__FILE__)));
define("LOG_COMMIT_SIZE",3000);//每1000个提交一次日志信息

require_once(ROOT_PATH.'/utils/stopwatch.class.php');
require_once(ROOT_PATH.'/utils/mylogger.class.php');

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

/*注册新用户
 */
function conversion_register($userid,$username,$password,$passwordtype=0,$member_type=0,$email,$ip='',$timestamp='',$mobile='')
{
	global $db,$QS_pwdhash;
	$member_type=intval($member_type);
	$ck_username=get_user_inusername($username);
	$ck_email=get_user_inemail($email);
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
	$pwd_hash=randstr();
	if ($passwordtype==0)
	{
	$password_hash=md5(md5($password).$pwd_hash.$QS_pwdhash);
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
        //TODO 邮箱认证
        //手机号认证 
	$insert_id = conversion_inserttable(table('members'),$setsqlarr,true,true);
       
        if($member_type=="1")
        {
                if(!$db->query("REPLACE INTO ".table('members_points')." (uid) VALUES ('{$userid}')"))  return false;
                if(!$db->query("REPLACE INTO ".table('members_setmeal')." (uid) VALUES ('{$userid}')")) return false;
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
 * 获取公司性质（国有、私人之类），仅在conversion_company.php文件中使用到
shiphr:
10	国有企业	State-owned Enterprise
11	集体企业	Collective Enterprise
12	外商独资	Wholly Foreign-owned Enterprise
13	中外合资	Chinese-foreign Joint Venture
14	民营企业	Non-government Enterprise
15	股份制企业	Joint-equity Enterprise
16	行政机关	Administrative Organ
17	社会团体	Social Organization
18	事业单位	Institution
19	其他	Other
 * @global mysql $db
 * @param type $str
 * @return string
 */
function get_company_nature($nature_id)
{
      $nature_array = array(
        10=>array('id'=>46,'cn'=>'国有企业'),11=>array('id'=>47,'cn'=>'集体企业'),12=>array('id'=>48,'cn'=>'外商独资'),
        13=>array('id'=>49,'cn'=>'中外合资'),14=>array('id'=>50,'cn'=>'民营企业'),15=>array('id'=>51,'cn'=>'股份制企业'),
        16=>array('id'=>52,'cn'=>'行政机关'),17=>array('id'=>53,'cn'=>'社会团体'),18=>array('id'=>54,'cn'=>'事业单位'),
        19=>array('id'=>55,'cn'=>'其他')
        );
    return $nature_array[$nature_id];
}


function get_company_trade($trade_id)
{
       /* shiphr
    1065	船舶
1066	海洋工程
1067	航运
1068	游艇
1069	其他
1073	大型设备/机电设备/重工业
1927	船舶与海洋工程
1928	港口航道与海岸工程
1929	航海仪器
1930	工程设计
1931	能源
*/
      $trade_array = array(
        1065=>array('id'=>1,'cn'=>'船舶'),1066=>array('id'=>2,'cn'=>'海洋工程'),
        1067=>array('id'=>5,'cn'=>'航运'),1068=>array('id'=>6,'cn'=>'游艇'),
        1069=>array('id'=>11,'cn'=>'其他'),1073=>array('id'=>4,'cn'=>'大型设备/机电设备/重工业'),
        1927=>array('id'=>3,'cn'=>'船舶与海洋工程'),1928=>array('id'=>7,'cn'=>'港口航道与海岸工程'),
        1929=>array('id'=>8,'cn'=>'航海仪器'),1930=>array('id'=>9,'cn'=>'工程设计'),
        1931=>array('id'=>10,'cn'=>'能源')
        );
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
     /*
     *    0:1-49人
                 * 1:50-99人
                 * "2">100-499人
                 * "3">500-999人
                 * "4">1000人以上
     */
    $scale_array = array(
        0=>array('id'=>80,'cn'=>'1-49人'),1=>array('id'=>81,'cn'=>'50-99人'),
        2=>array('id'=>82,'cn'=>'100-499人'),3=>array('id'=>83,'cn'=>'500-999人'),
        4=>array('id'=>84,'cn'=>'1000-9999人')
        );
    return $scale_array[$scale_id];
}


function get_city_original($str)
{
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

function get_city($str)
{
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
function get_jobs_cat($str)
{
	global $db;
	$default=array("category"=>0,"subclass"=>0,"category_cn"=>'未知');
	if (empty($str))
	{
            return $default;
	}
	 
    //modified by wnfk,按类别名称进行精确匹配
        $sql = "select id,parentid,categoryname from ".table('category_jobs')." WHERE categoryname='$str'";
        $category = $db->getone($sql);
        if ($category)
        {
            return array("category"=>$category['parentid'],"subclass"=>$category['id'],"category_cn"=>$category['categoryname']);		
        }
        else
        {
            return $default;
        }
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
     $nature_array = array(
        0=>array('id'=>62,'cn'=>'全职'),1=>array('id'=>62,'cn'=>'全职'),
        2=>array('id'=>63,'cn'=>'兼职'),3=>array('id'=>64,'cn'=>'临时'),
        4=>array('id'=>181,'cn'=>'实习')
        );
    return $nature_array[$nature_id];
}

function get_sex($str)
{
   $id= intval($str);
   $gendorarray=array(1=>'男',2=>'女',3=>'不限');
   return $gendorarray[$str];
}

/**
 * 转换学历
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_edu($id=NULL)
{
    /**
     * 1	初中	Junior High School
2	高中	Senior High School
3	职高/技校	Vocational high school/Technical School
4	中专	Technical Secondary School
5	大专	Junior College
6	大学本科	Bachelor
7	硕士	Master
8	博士	Doctorate
     */
   $edu_array = array(1=>array(65,'初中'),
       2=>array('id'=>66,'cn'=>'高中'),
       3=>array('id'=>67,'cn'=>'职高/技校'),
       4=>array('id'=>68,'cn'=>'中专'),
       5=>array('id'=>69,'cn'=>'大专'),
       6=>array('id'=>70,'cn'=>'大学本科'),
       7=>array('id'=>71,'cn'=>'硕士'),
       8=>array('id'=>72,'cn'=>'博士'),
       );
    return $edu_array[$id];
}

/**
 *  //工作经验:0－不限  
 * 1 一年以上
 * 2 二年以上
 * 3 3年以上
 * 5 5年以上
 * 10 10年以上
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_experience($exp_id)
{
     $exp_array = array(0=>array(74,'不限'),
       1=>array('id'=>75,'cn'=>'一年以上'),
       2=>array('id'=>76,'cn'=>'两年以上'),
       3=>array('id'=>77,'cn'=>'三年以上'),
       5=>array('id'=>78,'cn'=>'五年以上'),
       10=>array('id'=>79,'cn'=>'十年以上')
       );
    return $exp_array[$exp_id];
}
/**
 * 根据shiphr中的工资范围id设置74cms的工资范围id
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_wage($id)
{
       $wage_array = array(0=>array('id'=>55,'cn'=>'面议'),
        1=>array('id'=>58,'cn'=>"2000～3000/月"),
        2=>array('id'=>59,'cn'=>"3000～4000/月"),
        3=>array('id'=>60,'cn'=>"4000～6000/月"),
        4=>array('id'=>61,'cn'=>"6000～8000/月"),
        5=>array('id'=>176,'cn'=>"8000～10000/月"), 
        6=>array('id'=>177,'cn'=>"10000～15000/月"), 
        7=>array('id'=>178,'cn'=>"15000～20000/月"),
        8=>array('id'=>179,'cn'=> "20000～30000/月"),
        9=>array('id'=>180,'cn'=>"30000以上/月")
        );
    return $wage_array[$id];
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
                    if (!conversion_inserttable(table('resume_jobs'),$setsqlarr))
                        return false;
		}
	}
}
 
/**
 * 写日志
 * @param string $file
 * @param mixed $msg
 */
function log_info($module_name,$msgs){
    if(is_array($msgs)){
        $content=implode("\n",$msgs);
    }
    //$msg .= "\t".date("Y-m-d H:i:s");
    file_put_contents(ROOT_PATH. '/logs/'.$module_name.'.txt', $content ."\n",FILE_APPEND);
}
 
function lock_module($module_name){
    $path =ROOT_PATH."/locked/$module_name.lock";
    if(file_exists($path)){
        die("$module_name 已被锁定，在进行本次转换之前，请确认上次转换正常结束！");
    }
    $f=fopen($path,"w+");
    fclose($f);
}
?>