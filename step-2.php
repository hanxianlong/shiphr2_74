<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ShipHrת74cms</title>
<link href="css/com.css" rel="stylesheet" type="text/css" />
</head>
<body>
<?php 
require_once('./data/config.php');
$s1="succeed";
$s2="now";
$s3="";
$s4="";
require_once(dirname(__FILE__).'/inc/top.php');
?>
<div class="pagetit"><strong>�ڶ������������ݿ�</strong></div>
 
<form action="inc/check_mysql.php" method="post">
<div class="step2">

<div class="set">
<fieldset>
    <legend>ShipHr������Ϣ</legend>
  <table width="100%" border="0" cellpadding="0" cellspacing="5" style="margin-top:15px; margin-bottom:20px; ">
  <tr>
    <td width="100" align="right">MYSQL��������</td>
    <td>
      <input type="text" name="srcdbhost" class="text_200"  id="srcdbhost"  value="<?php echo $dbhost ?>"/><span class="note">һ��Ϊ��localhost,Ҳ��дIP��ַ</span></td>
    </tr>
  <tr>
    <td width="100" align="right">���ݿ��û�����</td>
    <td>
      <input type="text" name="srcdbuser" class="text_200" id="srcdbuser" value="<?php echo $dbuser ?>" /> </td>
    </tr>
    <tr>
    <td width="100" align="right">���ݿ����룺</td>
    <td>
      <input type="text" name="srcdbpass" class="text_200" id="srcdbpass" value="<?php echo $dbpass ?>"  /> </td>
    </tr>
	<tr>
	<tr>
    <td width="100" align="right">���ݿ�����</td>
    <td>
      <input type="text" name="srcdbname" class="text_200" id="srcdbname" /> </td>
    </tr>
	<tr>
    <td width="100" align="right">���ݿ��ǰ׺��</td>
    <td>
      <input type="text" name="srcpre" class="text_200"  id="srcpre"/> </td>
    </tr>
	<tr>
    <td width="100" align="right">���ݿ��ַ�����</td>
    <td>
     
	  <label>
	  <input name="srcdbcharset" type="radio" value="GBK" checked="checked" />
	  GBK
	  </label>
	  <label>
	  <input type="radio" name="srcdbcharset" value="UTF8" />UTF8
	  </label>
	  </td>
    </tr>
</table>

  </fieldset>
</div>
    
<div class="set">
<fieldset>
    <legend>��ʿV3.2 ������Ϣ</legend>
  <table width="100%" border="0" cellpadding="0" cellspacing="5" style="margin-top:15px; margin-bottom:20px;">
  <tr>
    <td width="100" align="right">MYSQL��������</td>
    <td>
      <input name="qsdbhost" type="text" class="text_200" value="<?php echo $dbhost ?>"  id="qsdbhost"/>
      <span class="note">һ��Ϊ��localhost,Ҳ��дIP��ַ</span></td>
    </tr>
  <tr>
    <td width="100" align="right">���ݿ��û�����</td>
    <td>
      <input type="text" name="qsdbuser" class="text_200" value="<?php echo $dbuser ?>" id="qsdbuser"/> </td>
    </tr>
    <tr>
    <td width="100" align="right">���ݿ����룺</td>
    <td>
      <input type="text" name="qsdbpass" class="text_200"  value="<?php echo $dbpass ?>" id="qsdbpass"/> </td>
    </tr>
	<tr>
	<tr>
    <td width="100" align="right">���ݿ�����</td>
    <td>
      <input type="text" name="qsdbname" class="text_200"   value="<?php echo $dbname ?>" id="qsdbname"/> </td>
    </tr>
	<tr>
    <td width="100" align="right">���ݿ��ǰ׺��</td>
    <td>
      <input type="text" name="qspre" class="text_200" value="<?php echo $pre ?>"  id="qspre"/> </td>
    </tr>
</table>
  </fieldset>
</div>
<div class="butbox">
<input name="�ύ" type="submit" value="��ʼת��"  class="but90" id="sub" />
</div>
 
 
</div>
</form>
 
</body>
</html>
