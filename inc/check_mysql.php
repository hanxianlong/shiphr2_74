<?php
error_reporting(E_ERROR);
//嘉缘
$frdbhost=trim($_POST['frdbhost']);
if (empty($frdbhost)) showmsg('请填写嘉缘人才系统MYSQL服务器地址!');
$frdbuser=trim($_POST['frdbuser']);
if (empty($frdbuser)) showmsg('请填写嘉缘人才系统MYSQL用户名');
$frdbpass=trim($_POST['frdbpass']);
if (empty($frdbpass)) showmsg('请填写嘉缘人才系统MYSQL密码');
$frdbname=trim($_POST['frdbname']);
if (empty($frdbname)) showmsg('请填写嘉缘人才系统数据库名称');
$frpre=trim($_POST['frpre']);
if (empty($frpre)) showmsg('请填写嘉缘人才系统数表前缀');
if(!$frdb = @mysql_connect($frdbhost, $frdbuser, $frdbpass))
{
showmsg('嘉缘人才系统连接数据库错误，请核对填写的信息是否正确');
}
@mysql_select_db($frdbname) || showmsg("嘉缘人才系统数据库 {$frdbname} 不存在！");
$res = @mysql_query("SHOW TABLES LIKE '{$frpre}ad'");
$row_res = @mysql_fetch_array($res);
if (empty($row_res[0])) showmsg("嘉缘人才系统表前缀 {$frpre} 错误！");
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
$url="{$frdbhost}--|--{$frdbuser}--|--{$frdbpass}--|--{$frdbname}--|--{$frpre}--|--{$_POST['frdbcharset']}--|--{$qsdbhost}--|--{$qsdbuser}--|--{$qsdbpass}--|--{$qsdbname}--|--{$qspre}";
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