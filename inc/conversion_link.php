<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
	$i=0;
	$sql="select * from `{$srcpre}links` WHERE l_key1='1'";
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
				$setsqlarr['type_id']=1;
				$setsqlarr['display']=1;
				$setsqlarr['alias']='QS_index';
				$setsqlarr['link_name']=$row['l_name'];
				$setsqlarr['link_url']=$row['l_url'];
				$setsqlarr['show_order']=1;
				$setsqlarr['Notes']='';
				$setsqlarr['app_notes']='';
				conversion_inserttable(table('link'),$setsqlarr);
				$i++;
         }
exit("ok,{$i}");
?>