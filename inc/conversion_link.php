<?php
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');

$module_name="links_and_ads";
//http://myconverter.shiyishi.tk/inc/conversion_personal_apply_jobs.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_
//
//尝试锁定当前模块,如果锁文件已经存在，则会终止运行
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

	$i=0;
	$sql="select * from `{$srcpre}ad`";
        $countsql = "select count(*) from (".$sql .")";
        
        $count = $dbsrc->getone($countsql);
$to_be_converted_count=$count['total'];
$total_msg = "total:$to_be_converted_count";
$mylogger->put_msg_to_disk($total_msg);
$result = $dbsrc->query($sql);

	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
            $setsqlarr['link_id'] = $row['adid'];
				$setsqlarr['type_id']=1;
				$setsqlarr['display']=1;
				$setsqlarr['alias']='QS_index';
				$setsqlarr['link_name']=$row['title'];
				$setsqlarr['link_url']=$row['l_url'];
				$setsqlarr['show_order']=1;
				$setsqlarr['Notes']='';
				$setsqlarr['app_notes']='';
				conversion_inserttable(table('link'),$setsqlarr,false,true);
                                
                                 $mylogger->put_msg($row['id']);
                                 $i++;
         }
         
          $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, 应转:$to_be_converted_count ,实际转:$i");
exit("ok,{$i}");
?>