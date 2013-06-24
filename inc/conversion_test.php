<?php
@set_time_limit(0);
//error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
//http://myconverter.shiyishi.tk/inc/conversion_test.php?qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=74cms32&qspre=qs32_&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=74cms32&srcpre=qs32_&srcdbcharset=GBK
$setmeal_cache = array();

<<<<<<< HEAD
$city = get_cityx('东城区');
print_r($city);
=======
$d = $_GET['a'];

switch($d){
    case "1":$name="start with a";
    case "2": $name="start with b";
    case "3":$name="start with c";
}

echo $name;

>>>>>>> 79a2e9076a8838dc8ab184d749539f5f5f45f64d
$i=0;
foreach(array(1,2,3,4,5,1) as $key){
    //get_meal($key);
    //$i++;
    echo "$key<br/>";
}
 
function get_meal($meal_id){
	global $db,$setmeal_cache;
        
        if(array_key_exists($meal_id, $setmeal_cache)){
            $setmeal = $setmeal_cache[$meal_id];
            
            print_r($setmeal);
            print('from cache<br/>');
        }
        else{
            $setmeal_cache[$meal_id]=$db->getone("select * from ".table('setmeal')." WHERE id = ".intval($meal_id)." AND display=1 LIMIT 1");    
            print_r($setmeal_cache[$meal_id]);
            print('from db<br/>');
        }
}

function get_cityx($str)
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
?>