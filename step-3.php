<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ե�˲�ϵͳV3.0ת��ʿ�˲�ϵͳV3.2</title>
<link href="css/com.css" rel="stylesheet" type="text/css" />
</head>
<body>
<script src="js/jquery.js" type='text/javascript' language="javascript"></script>
<script type="text/javascript"> 
//0 -16  -39 -59
$(document).ready(function()
{
conversion(0);
//
<?php
$getconfig=trim($_GET['set']);
$cf=explode('--|--',$getconfig);
?>
function conversion(n)
{
	var frdbhost="<?php echo  $cf[0]?>";
	var frdbuser="<?php echo  $cf[1]?>";
	var frdbpass="<?php echo  $cf[2]?>";
	var frdbname="<?php echo  $cf[3]?>";
	var frpre="<?php echo  $cf[4]?>";
	var frdbcharset="<?php echo  $cf[5]?>";
	var qsdbhost="<?php echo  $cf[6]?>";
	var qsdbuser="<?php echo  $cf[7]?>";
	var qsdbpass="<?php echo  $cf[8]?>";
	var qsdbname="<?php echo  $cf[9]?>";
	var qspre="<?php echo  $cf[10]?>";
	var url;
	if (n==0)
	{
	url="conversion_user_company.php";
	}
	else if(n==1)
	{
	url="conversion_user_personal.php";
	}
	else if(n==2)
	{
	url="conversion_company.php";
	}
	else if(n==3)
	{
	url="conversion_jobs.php";
	}
	else if(n==4)
	{
	url="conversion_resume.php";
	}
	else if(n==5)
	{
	url="conversion_link.php";
	}
	else
	{
	url="";
	$(".success").show();
	alert("ת�����");
	return false;
	}
	$(".wait span").eq(n).html('����ת��,��ȴ�...').css('color','#FF0000');
	$(".wait li").eq(n).css('background-position','0px -16px').css('color','#000000');
	var tsTimeStamp= new Date().getTime();
	$.get("inc/"+url, {"time":tsTimeStamp,"frdbhost":frdbhost,"frdbuser":frdbuser,"frdbpass":frdbpass,"frdbname":frdbname,"frpre":frpre,"frdbcharset":frdbcharset,"qsdbhost":qsdbhost,"qsdbuser":qsdbuser,"qsdbpass":qsdbpass,"qsdbname":qsdbname,"qspre":qspre},
					function (data,textStatus)
					{	
						var info=data.split(",");
						if (info[0]=='ok')
						{
						$(".wait span").eq(n).html('ת�����,�ɹ�ת��'+info[1]+'������').css('color','#009900');
						$(".wait li").eq(n).css('background-position','0px -39px').css('color','#000000');
						n=n+1;
						conversion(n);
						}
						else
						{
							alert('ת�����̷�������,ϵͳ�Ѿ�ֹͣת�����뵽��̳����������:'+data);
						}
					}
				);	
}
});
</script>
<?php
$s1="succeed";
$s2="succeed";
$s3="now";
$s4="";
require_once(dirname(__FILE__).'/inc/top.php');
?>

<div class="pagetit"><strong>��������ִ��ת��</strong></div>
 
<div class="step3">
	<div class="wait">
		<ul>
		<li><u>��ҵ��Ա</u><span>�ȴ�ת��</span></li>
		<li><u>���˻�Ա</u><span>�ȴ�ת��</span></li>
		<li><u>��ҵ��Ϣ</u><span>�ȴ�ת��</span></li>
		<li><u>ְλ��Ϣ</u><span>�ȴ�ת��</span></li>
		<li><u>���˼���</u><span>�ȴ�ת��</span></li>
		<li><u>��������</u><span>�ȴ�ת��</span></li>
		</ul>
	</div>
</div>
<div class="success"><input type="button" class="but90" value="ȷ��" onclick="window.location='step-4.php'"/></div>
</body>
</html>
