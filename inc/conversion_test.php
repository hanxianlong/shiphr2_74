<?php
@set_time_limit(0);
 
//error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
$i=0;
$module_name='test';
lock_module($module_name);
$timer = new stopwatch();
$timer->start();

$mylogger = new mylogger($module_name);
while($i<=2){
   $mylogger->put_msg('²âÊÔ'.$i);
    $i++;
}
//$mylogger->flush_all();
// unset($mylogger);
$timer->stop();
echo 'elapsed:' . $timer->elapsed();

//http://myconverter.shiyishi.tk/inc/conversion_test.php?qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=74cms32&qspre=qs32_&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=74cms32&srcpre=qs32_&srcdbcharset=GBK
$setmeal_cache = array();
$count = $db->getone('select count(*) as c from '. table('jobs_contact') .' where pid=1');
?>