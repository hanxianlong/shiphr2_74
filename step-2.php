<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ShipHr转74cms</title>
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
<div class="pagetit"><strong>第二步：配置数据库</strong></div>
 
<form action="inc/check_mysql.php" method="post">
<div class="step2">

<div class="set">
<fieldset>
    <legend>ShipHr配置信息</legend>
  <table width="100%" border="0" cellpadding="0" cellspacing="5" style="margin-top:15px; margin-bottom:20px; ">
  <tr>
    <td width="100" align="right">MYSQL服务器：</td>
    <td>
      <input type="text" name="srcdbhost" class="text_200"  id="srcdbhost"  value="<?php echo $dbhost ?>"/><span class="note">一般为：localhost,也填写IP地址</span></td>
    </tr>
  <tr>
    <td width="100" align="right">数据库用户名：</td>
    <td>
      <input type="text" name="srcdbuser" class="text_200" id="srcdbuser" value="<?php echo $dbuser ?>" /> </td>
    </tr>
    <tr>
    <td width="100" align="right">数据库密码：</td>
    <td>
      <input type="text" name="srcdbpass" class="text_200" id="srcdbpass" value="<?php echo $dbpass ?>"  /> </td>
    </tr>
	<tr>
	<tr>
    <td width="100" align="right">数据库名：</td>
    <td>
      <input type="text" name="srcdbname" class="text_200" id="srcdbname" /> </td>
    </tr>
	<tr>
    <td width="100" align="right">数据库表前缀：</td>
    <td>
      <input type="text" name="srcpre" class="text_200"  id="srcpre"/> </td>
    </tr>
	<tr>
    <td width="100" align="right">数据库字符集：</td>
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
    <legend>骑士V3.2 配置信息</legend>
  <table width="100%" border="0" cellpadding="0" cellspacing="5" style="margin-top:15px; margin-bottom:20px;">
  <tr>
    <td width="100" align="right">MYSQL服务器：</td>
    <td>
      <input name="qsdbhost" type="text" class="text_200" value="<?php echo $dbhost ?>"  id="qsdbhost"/>
      <span class="note">一般为：localhost,也填写IP地址</span></td>
    </tr>
  <tr>
    <td width="100" align="right">数据库用户名：</td>
    <td>
      <input type="text" name="qsdbuser" class="text_200" value="<?php echo $dbuser ?>" id="qsdbuser"/> </td>
    </tr>
    <tr>
    <td width="100" align="right">数据库密码：</td>
    <td>
      <input type="text" name="qsdbpass" class="text_200"  value="<?php echo $dbpass ?>" id="qsdbpass"/> </td>
    </tr>
	<tr>
	<tr>
    <td width="100" align="right">数据库名：</td>
    <td>
      <input type="text" name="qsdbname" class="text_200"   value="<?php echo $dbname ?>" id="qsdbname"/> </td>
    </tr>
	<tr>
    <td width="100" align="right">数据库表前缀：</td>
    <td>
      <input type="text" name="qspre" class="text_200" value="<?php echo $pre ?>"  id="qspre"/> </td>
    </tr>
</table>
  </fieldset>
</div>
<div class="butbox">
<input name="提交" type="submit" value="开始转换"  class="but90" id="sub" />
</div>
 
 
</div>
</form>
 
</body>
</html>
