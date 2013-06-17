<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>嘉缘人才系统V3.0转骑士人才系统V3.2</title>
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
<li>此程序仅可以转换嘉缘人才系统V3.0到骑士人才系统V3.2个人版，其他系统请勿使用。</li>
<li>本程序仅对数据做转换，不会对原来的嘉缘人才系统数据造成破坏。</li>
<li>数据转换过程中请勿刷新或离开页面。</li>
<li>多次运行本程序会导致数据被多次导入骑士系统，造成数据重复。</li>
<li>使用本程序转换前，如果骑士系统有数据，请做好数据备份，我们不会对任何形式的数据丢失负责。</li>
<li>您可以自由传播本程序，请勿将本程序用于商业用途。</li>
<li>因密码加密方式不同，转换后会员不能直接登录，需用找回密码工具找回，如想直接登录需修改骑士的加密方式，修改方法详见论坛。</li>
<li>如果您使用本程序则表明您已经接受以上申明。</li>
</ul>
<div class="butbox">
  <input type="button" class="but90" value="下一步" onclick="window.location='step-2.php'"/>
</div>
</div>
</body>
</html>
