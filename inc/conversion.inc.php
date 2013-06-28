<?php
//header("Content-type: text/html; charset=utf-8"); 
date_default_timezone_set('Asia/Chongqing');
header("Content-type:text/html; charset=GB2312");
require_once(dirname(__FILE__).'/mysql.class.php');
define("ROOT_PATH", dirname(dirname(__FILE__)));
define("LOG_COMMIT_SIZE",3000);//ÿ1000���ύһ����־��Ϣ

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

/*ע�����û�
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
        //�����û��Ƿ���ڣ���ֱ��ת��
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
        //TODO ������֤
        //�ֻ�����֤ 
	$insert_id = conversion_inserttable(table('members'),$setsqlarr,true,true);
       
        if($member_type=="1")
        {
                if(!$db->query("REPLACE INTO ".table('members_points')." (uid) VALUES ('{$userid}')"))  return false;
                if(!$db->query("REPLACE INTO ".table('members_setmeal')." (uid) VALUES ('{$userid}')")) return false;
        }
         
        return $insert_id;
}

/*
 * ��ȡ�û�����
 */
function get_user_inemail($email)
{
	global $db;
	$email=escape_str($email);
	return $db->getone("select * from ".table('members')." where email = '{$email}' LIMIT 1");
}

/*
 * �����û�id��ȡ�û���Ϣ
 */
function get_user_inuid($uid)
{
	global $db; 
	return $db->getone("select * from ".table('members')." where email = '{$uid}' LIMIT 1");
}

/*
 * �жϵ�ǰ�û����Ƿ��Ѿ���members���д���
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
//ģ������
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
 * ��ȡ��˾���ʣ����С�˽��֮�ࣩ������conversion_company.php�ļ���ʹ�õ�
shiphr:
10	������ҵ	State-owned Enterprise
11	������ҵ	Collective Enterprise
12	���̶���	Wholly Foreign-owned Enterprise
13	�������	Chinese-foreign Joint Venture
14	��Ӫ��ҵ	Non-government Enterprise
15	�ɷ�����ҵ	Joint-equity Enterprise
16	��������	Administrative Organ
17	�������	Social Organization
18	��ҵ��λ	Institution
19	����	Other
 * @global mysql $db
 * @param type $str
 * @return string
 */
function get_company_nature($nature_id)
{
      $nature_array = array(
        10=>array('id'=>46,'cn'=>'������ҵ'),11=>array('id'=>47,'cn'=>'������ҵ'),12=>array('id'=>48,'cn'=>'���̶���'),
        13=>array('id'=>49,'cn'=>'�������'),14=>array('id'=>50,'cn'=>'��Ӫ��ҵ'),15=>array('id'=>51,'cn'=>'�ɷ�����ҵ'),
        16=>array('id'=>52,'cn'=>'��������'),17=>array('id'=>53,'cn'=>'�������'),18=>array('id'=>54,'cn'=>'��ҵ��λ'),
        19=>array('id'=>55,'cn'=>'����')
        );
    return $nature_array[$nature_id];
}


function get_company_trade($trade_id)
{
       /* shiphr
    1065	����
1066	���󹤳�
1067	����
1068	��ͧ
1069	����
1073	�����豸/�����豸/�ع�ҵ
1927	�����뺣�󹤳�
1928	�ۿں����뺣������
1929	��������
1930	�������
1931	��Դ
*/
      $trade_array = array(
        1065=>array('id'=>1,'cn'=>'����'),1066=>array('id'=>2,'cn'=>'���󹤳�'),
        1067=>array('id'=>5,'cn'=>'����'),1068=>array('id'=>6,'cn'=>'��ͧ'),
        1069=>array('id'=>11,'cn'=>'����'),1073=>array('id'=>4,'cn'=>'�����豸/�����豸/�ع�ҵ'),
        1927=>array('id'=>3,'cn'=>'�����뺣�󹤳�'),1928=>array('id'=>7,'cn'=>'�ۿں����뺣������'),
        1929=>array('id'=>8,'cn'=>'��������'),1930=>array('id'=>9,'cn'=>'�������'),
        1931=>array('id'=>10,'cn'=>'��Դ')
        );
    return $trade_array[$trade_id];
}

/**
 * ��ȡ��˾��ģ������conversion_company.php��ʹ�õ�
 * @global mysql $db
 * @param type $str
 * @return string
 */
function get_company_scale($scale_id)
{
     /*
     *    0:1-49��
                 * 1:50-99��
                 * "2">100-499��
                 * "3">500-999��
                 * "4">1000������
     */
    $scale_array = array(
        0=>array('id'=>80,'cn'=>'1-49��'),1=>array('id'=>81,'cn'=>'50-99��'),
        2=>array('id'=>82,'cn'=>'100-499��'),3=>array('id'=>83,'cn'=>'500-999��'),
        4=>array('id'=>84,'cn'=>'1000-9999��')
        );
    return $scale_array[$scale_id];
}


function get_city_original($str)
{
	global $db;
	$default=array("district"=>0,"sdistrict"=>0,"district_cn"=>'δ֪');
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
	$default=array("district"=>0,"sdistrict"=>0,"district_cn"=>'δ֪');
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
 * ��ȡְλ���
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_jobs_cat($str)
{
	global $db;
	$default=array("category"=>0,"subclass"=>0,"category_cn"=>'δ֪');
	if (empty($str))
	{
            return $default;
	}
	 
    //modified by wnfk,��������ƽ��о�ȷƥ��
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
 * ��������
 * @global mysql $db
 * @param type $str
 * @return type
 * hr:$jobtypes = array( "��", "ȫְ", "��ְ", "��ʱ", "ʵϰ" );
 * TODO:������id��74cms�е�������ȷ��Ӧ����
 */
function get_jobs_nature($nature_id)
{
     $nature_array = array(
        0=>array('id'=>62,'cn'=>'ȫְ'),1=>array('id'=>62,'cn'=>'ȫְ'),
        2=>array('id'=>63,'cn'=>'��ְ'),3=>array('id'=>64,'cn'=>'��ʱ'),
        4=>array('id'=>181,'cn'=>'ʵϰ')
        );
    return $nature_array[$nature_id];
}

function get_sex($str)
{
   $id= intval($str);
   $gendorarray=array(1=>'��',2=>'Ů',3=>'����');
   return $gendorarray[$str];
}

/**
 * ת��ѧ��
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_edu($id=NULL)
{
    /**
     * 1	����	Junior High School
2	����	Senior High School
3	ְ��/��У	Vocational high school/Technical School
4	��ר	Technical Secondary School
5	��ר	Junior College
6	��ѧ����	Bachelor
7	˶ʿ	Master
8	��ʿ	Doctorate
     */
   $edu_array = array(1=>array(65,'����'),
       2=>array('id'=>66,'cn'=>'����'),
       3=>array('id'=>67,'cn'=>'ְ��/��У'),
       4=>array('id'=>68,'cn'=>'��ר'),
       5=>array('id'=>69,'cn'=>'��ר'),
       6=>array('id'=>70,'cn'=>'��ѧ����'),
       7=>array('id'=>71,'cn'=>'˶ʿ'),
       8=>array('id'=>72,'cn'=>'��ʿ'),
       );
    return $edu_array[$id];
}

/**
 *  //��������:0������  
 * 1 һ������
 * 2 ��������
 * 3 3������
 * 5 5������
 * 10 10������
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_experience($exp_id)
{
     $exp_array = array(0=>array(74,'����'),
       1=>array('id'=>75,'cn'=>'һ������'),
       2=>array('id'=>76,'cn'=>'��������'),
       3=>array('id'=>77,'cn'=>'��������'),
       5=>array('id'=>78,'cn'=>'��������'),
       10=>array('id'=>79,'cn'=>'ʮ������')
       );
    return $exp_array[$exp_id];
}
/**
 * ����shiphr�еĹ��ʷ�Χid����74cms�Ĺ��ʷ�Χid
 * @global mysql $db
 * @param type $str
 * @return int
 */
function get_wage($id)
{
       $wage_array = array(0=>array('id'=>55,'cn'=>'����'),
        1=>array('id'=>58,'cn'=>"2000��3000/��"),
        2=>array('id'=>59,'cn'=>"3000��4000/��"),
        3=>array('id'=>60,'cn'=>"4000��6000/��"),
        4=>array('id'=>61,'cn'=>"6000��8000/��"),
        5=>array('id'=>176,'cn'=>"8000��10000/��"), 
        6=>array('id'=>177,'cn'=>"10000��15000/��"), 
        7=>array('id'=>178,'cn'=>"15000��20000/��"),
        8=>array('id'=>179,'cn'=> "20000��30000/��"),
        9=>array('id'=>180,'cn'=>"30000����/��")
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
 * д��־
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
        die("$module_name �ѱ��������ڽ��б���ת��֮ǰ����ȷ���ϴ�ת������������");
    }
    $f=fopen($path,"w+");
    fclose($f);
}
?>