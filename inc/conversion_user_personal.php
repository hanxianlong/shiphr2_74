<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
	$i=0;
	$sql="select * from `{$frpre}member` where m_typeid=1";
	$result = $dbfr->query($sql);
	while($row = $dbfr->fetch_array($result))
	{
		conversion_register($row['m_login'],$row['m_pwd'],1,2,$row['m_email'],$row['m_loginip'],conversion_datefm($row['m_regdate'],2),$row['m_mobile']);
		$i++;
	}
exit("ok,{$i}");
?>