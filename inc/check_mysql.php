<?php
error_reporting(E_ERROR);
 
$srcdbhost=trim($_POST['srcdbhost']);
if (empty($srcdbhost)) showmsg('����дShipHrMYSQL��������ַ!');
$fsrcdbuser=trim($_POST['srcdbuser']);
if (empty($srcdbuser)) showmsg('����дShipHrMYSQL�û���');
$srcdbpass=trim($_POST['srcdbpass']);
if (empty($srcdbpass)) showmsg('����дShipHrMYSQL����');
$srcdbname=trim($_POST['srcdbname']);
if (empty($srcdbname)) showmsg('����дShipHr���ݿ�����');
$srcpre=trim($_POST['srcpre']);
if (empty($srcpre)) showmsg('����дShipHr����ǰ׺');
if(!$srcdb = @mysql_connect($srcdbhost, $srcdbuser, $srcdbpass))
{
showmsg('ShipHr�������ݿ������˶���д����Ϣ�Ƿ���ȷ');
}
@mysql_select_db($srcdbname) || showmsg("ShipHr���ݿ� {$srcdbname} �����ڣ�");
$res = @mysql_query("SHOW TABLES LIKE '{$srcpre}space'");
$row_res = @mysql_fetch_array($res);
if (empty($row_res[0])) showmsg("ShipHr��ǰ׺ {$srcpre} ����");
//��ʿ
$qsdbhost=trim($_POST['qsdbhost']);
if (empty($qsdbhost)) showmsg('����д��ʿ�˲�ϵͳMYSQL��������ַ!');
$qsdbuser=trim($_POST['qsdbuser']);
if (empty($qsdbuser)) showmsg('����д��ʿ�˲�ϵͳMYSQL�û���');
$qsdbpass=trim($_POST['qsdbpass']);
if (empty($qsdbpass)) showmsg('����д��ʿ�˲�ϵͳMYSQL����');
$qsdbname=trim($_POST['qsdbname']);
if (empty($qsdbname)) showmsg('����д��ʿ�˲�ϵͳ���ݿ�����');
$qspre=trim($_POST['qspre']);
if (empty($qspre)) showmsg('����д��ʿ�˲�ϵͳ����ǰ׺');
if(!$qsdb = @mysql_connect($qsdbhost, $qsdbuser, $qsdbpass))
{
showmsg('��ʿ�˲�ϵͳ�������ݿ������˶���д����Ϣ�Ƿ���ȷ');
}
@mysql_select_db($qsdbname) || showmsg("��ʿ�˲�ϵͳ���ݿ� {$qsdbname} �����ڣ�");
$res = @mysql_query("SHOW TABLES LIKE '{$qspre}ad'");
$row_res = @mysql_fetch_array($res);
if (empty($row_res[0])) showmsg("��ʿ�˲�ϵͳ��ǰ׺ {$qspre} ����");
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
$html.='<div style="padding:30px; text-align:center"><input name="" type="button" class="but90" value="����" onclick="Javascript:window.history.go(-1)"/></div>';
$html.='</body></html>';
exit($html);
}
?>