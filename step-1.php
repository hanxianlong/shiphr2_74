<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ShipHr转74cms</title>
<link href="css/com.css" rel="stylesheet" type="text/css" />
</head>
<body>
<?php 
$s1="now";
$s2="";
$s3="";
$s4="";
require_once(dirname(__FILE__).'/inc/top.php');
?>
<div class="pagetit"><strong>第一步：转换必读</strong></div>
<div class="step1">
<ul>

<?php
$log_dir = dirname(__FILE__).'/logs';
$locked_dir=dirname(__FILE__).'/locked';

$msg="";
if(!is_writable($log_dir)){
	$msg="$log_dir 不可写！";
}
if(!is_writable($locked_dir)){
	$msg.="&nbsp;$locked_dir 不可写！";
}

if(empty($msg)){
?>
<li>环境检测通过</li>
<li>转换前请确认已经关闭ShipHr的所有有写功能页面，以免引起数据不一致的问题。</li>
</ul>
<div class="butbox">
  <input type="button" class="but90" value="下一步" onclick="window.location='step-2.php'"/>
</div>
<?php
	}
	else{
		print("<li><font color=\"red\"> $msg </font></li>");
	}
?>
</div>
</body>
</html>