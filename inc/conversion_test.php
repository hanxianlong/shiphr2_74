<?php
@set_time_limit(0);
//error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
//http://myconverter.shiyishi.tk/inc/conversion_test.php?qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=74cms32&qspre=qs32_&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=74cms32&srcpre=qs32_&srcdbcharset=GBK
$setmeal_cache = array();

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
?>