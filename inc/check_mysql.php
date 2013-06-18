<?php
error_reporting(E_ERROR);
 
$srcdbhost=trim($_POST['srcdbhost']);
if (empty($srcdbhost)) showmsg('请填写ShipHrMYSQL服务器地址!');
$fsrcdbuser=trim($_POST['srcdbuser']);
if (empty($srcdbuser)) showmsg('请填写ShipHrMYSQL用户名');
$srcdbpass=trim($_POST['srcdbpass']);
if (empty($srcdbpass)) showmsg('请填写ShipHrMYSQL密码');
$srcdbname=trim($_POST['srcdbname']);
if (empty($srcdbname)) showmsg('请填写ShipHr数据库名称');
$srcpre=trim($_POST['srcpre']);
if (empty($srcpre)) showmsg('请填写ShipHr数表前缀');
if(!$srcdb = @mysql_connect($srcdbhost, $srcdbuser, $srcdbpass))
{
showmsg('ShipHr连接数据库错误，请核对填写的信息是否正确');
}
@mysql_select_db($srcdbname) || showmsg("ShipHr数据库 {$srcdbname} 不存在！");
$res = @mysql_query("SHOW TABLES LIKE '{$srcpre}space'");
$row_res = @mysql_fetch_array($res);
if (empty($row_res[0])) showmsg("ShipHr表前缀 {$srcpre} 错误！");
//骑士
$qsdbhost=trim($_POST['qsdbhost']);
if (empty($qsdbhost)) showmsg('请填写骑士人才系统MYSQL服务器地址!');
$qsdbuser=trim($_POST['qsdbuser']);
if (empty($qsdbuser)) showmsg('请填写骑士人才系统MYSQL用户名');
$qsdbpass=trim($_POST['qsdbpass']);
if (empty($qsdbpass)) showmsg('请填写骑士人才系统MYSQL密码');
$qsdbname=trim($_POST['qsdbname']);
if (empty($qsdbname)) showmsg('请填写骑士人才系统数据库名称');
$qspre=trim($_POST['qspre']);
if (empty($qspre)) showmsg('请填写骑士人才系统数表前缀');
if(!$qsdb = @mysql_connect($qsdbhost, $qsdbuser, $qsdbpass))
{
showmsg('骑士人才系统连接数据库错误，请核对填写的信息是否正确');
}
@mysql_select_db($qsdbname) || showmsg("骑士人才系统数据库 {$qsdbname} 不存在！");
$res = @mysql_query("SHOW TABLES LIKE '{$qspre}ad'");
$row_res = @mysql_fetch_array($res);
if (empty($row_res[0])) showmsg("骑士人才系统表前缀 {$qspre} 错误！");
$url="{$srcdbhost}--|--{$srcdbuser}--|--{$srcdbpass}--|--{$srcdbname}--|--{$srcpre}--|--{$_POST['srcdbcharset']}--|--{$qsdbhost}--|--{$qsdbuser}--|--{$qsdbpass}--|--{$qsdbname}--|--{$qspre}";
header("Location:../step-3.php?set={$url}");
function showmsg($str){
$html='<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>'.$str.'</title>
<link href="../css/com.css" rel="stylesheet" type="text/css" />
</head>
<body>';
$html.='<div style="padding:5px;font-size:14px; border:1px #F4D7BB solid; background-color:#FCF7E9; margin:0 auto;color:#CC3300; margin-top:100px;width:500px;text-align:center">'.$str.'</div>';
$html.='<div style="padding:30px; text-align:center"><input name="" type="button" class="but90" value="返回" onclick="Javascript:window.history.go(-1)"/></div>';
$html.='</body></html>';
exit($html);
}
?>