<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ShipHr转74cms</title>
<link href="css/com.css" rel="stylesheet" type="text/css" />
</head>
<body>
<script src="js/jquery.js" type='text/javascript' language="javascript"></script>
<script type="text/javascript"> 
//0 -16  -39 -59
$(document).ready(function()
{
//conversion(0);
//
<?php
$getconfig=trim($_GET['set']);
$cf=explode('--|--',$getconfig);
?>
});
function conversion(n)
{
	var srcdbhost="<?php echo  $cf[0]?>";
	var srcdbuser="<?php echo  $cf[1]?>";
	var srcdbpass="<?php echo  $cf[2]?>";
	var srcdbname="<?php echo  $cf[3]?>";
	var srcpre="<?php echo  $cf[4]?>";
	var srcdbcharset="<?php echo  $cf[5]?>";
	var qsdbhost="<?php echo  $cf[6]?>";
	var qsdbuser="<?php echo  $cf[7]?>";
	var qsdbpass="<?php echo  $cf[8]?>";
	var qsdbname="<?php echo  $cf[9]?>";
	var qspre="<?php echo  $cf[10]?>";
	var url;
        
	if (n==0)
	{
            url="conversion_user_company.php?";
            var start_id=parseInt($('#company_start_id').val(),10);
            var end_id=parseInt($('#company_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
            if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                } 
	}
	else if(n==1)
	{
            url="conversion_user_personal.php?";
              var start_id=parseInt($('#personal_start_id').val(),10);
            var end_id=parseInt($('#personal_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
            if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                }
	}
	else if(n==2)
	{
            url="conversion_company.php?";
               var start_id=parseInt($('#com_profile_start_id').val(),10);
            var end_id=parseInt($('#com_profile_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
            if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                }
	}
	else if(n==3)
	{
            url="conversion_jobs.php?";
                var start_id=parseInt($('#job_start_id').val(),10);
            var end_id=parseInt($('#job_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
            if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                }
	}
	else if(n==4)
	{
            url="conversion_resume.php?";
                var start_id=parseInt($('#resume_start_id').val(),10);
            var end_id=parseInt($('#resume_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
            if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                }
	}
	else if(n==5)
	{
            url="conversion_link.php?";
	}
       
        else if(n==6){//企业下载的简历
              url="conversion_com_purchased_resume.php?";
                var start_id=parseInt($('#purchased_start_id').val(),10);
            var end_id=parseInt($('#purchased_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
            if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                }
        }
         /*
                <li><u>个人职位收藏、职位申请、企业面试等</u><span>等待转换</span><a href="#" onclick="conversion(8)">开始转换</a></li>
         */
        else if(n==7)
        {
               url="conversion_com_saved_resume.php?";
                var start_id=parseInt($('#saved_resume_start_id').val(),10);
            var end_id=parseInt($('#saved_resume_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
                if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                }
        }
        else if(n==8){
              url="conversion_jobs_personal_company_relations.php?";
                var start_id=parseInt($('#resume_job_relations_start_id').val(),10);
            var end_id=parseInt($('#resume_job_relations_resume_end_id').val(),10);//uid
            if(start_id>0)
                {
                    url +="start_id=" + start_id;
                }
                if(end_id>0)
                {
                    url +="&end_id=" + end_id;
                }
        }
	else
	{
            url="";
            $(".success").show();
            alert("转换完成");
            return false;
	}
	$(".wait span").eq(n).html('正在转换,请等待...').css('color','#FF0000');
	$(".wait li").eq(n).css('background-position','0px -16px').css('color','#000000');
	var tsTimeStamp= new Date().getTime();
	$.get("inc/"+url, {"time":tsTimeStamp,"srcdbhost":srcdbhost,"srcdbuser":srcdbuser,"srcdbpass":srcdbpass,"srcdbname":srcdbname,"srcpre":srcpre,"srcdbcharset":srcdbcharset,"qsdbhost":qsdbhost,"qsdbuser":qsdbuser,"qsdbpass":qsdbpass,"qsdbname":qsdbname,"qspre":qspre},
					function (data,textStatus)
					{	
						var info=data.split(",");
						if (info[0]=='ok')
						{
                                                    $(".wait span").eq(n).html('转换完成,成功转换'+info[1]+'行数据').css('color','#009900');
                                                    $(".wait li").eq(n).css('background-position','0px -39px').css('color','#000000');

                                                    n=n+1;
                                                  //  conversion(n);
						}
						else
						{
						    alert('转换过程发生错误,系统已经停止转换,请记录此错误:'+data);
                                                    $(".wait span").eq(n).html('转换已停止:' + data).css('color','red');
						}
					}
				);
}
</script>
<?php
$s1="succeed";
$s2="succeed";
$s3="now";
$s4="";
require_once(dirname(__FILE__).'/inc/top.php');
?>

<div class="pagetit"><strong>第三步：执行转换</strong></div>
 
<div class="step3">
	<div class="wait">
		<ul>
                <li><u>企业会员</u><span>等待转换</span>

                    会员id 开始id(不包括):<input type="text" id="company_start_id"/>
                    结束id(不包括):<input type="text" id="company_end_id"/>
                    <a href="#"  id='start0'  onclick="conversion(0)">开始转换</a>

                </li>
		<li><u>个人会员及自定义简历</u><span>等待转换</span>
                   会员id 开始id(不包括):<input type="text" id="personal_start_id"/>
                    结束id(不包括):<input type="text" id="personal_end_id"/>
                    <a href="#"  id='start1'  onclick="if(confirm('转换时间可能较长，转换期间请勿对页面做其他操作！'))conversion(1)">开始转换</a>
           </li>
		<li><u>企业信息</u><span>等待转换</span>

                     企业信息 开始id(不包括):<input type="text" id="com_profile_start_id"/>
                    结束id(不包括):<input type="text" id="com_profile_end_id"/>
                    <a href="#"   onclick="conversion(2)">开始转换</a>

        </li>
		<li><u>职位信息</u><span>等待转换</span>

                       职位Id 开始id(不包括):<input type="text" id="job_start_id"/>
                    结束id(不包括):<input type="text" id="job_end_id"/>
                    <a href="#"   onclick="if(confirm('转换时间可能较长，转换期间请勿对页面做其他操作！'))conversion(3)">开始转换</a>

        </li>
		<li><u>个人简历</u><span>等待转换</span>

                     job_resumes表索引Id 开始id(不包括):<input type="text" id="resume_start_id"/>
                    结束id(不包括):<input type="text" id="resume_end_id"/>
                    
                    <a href="#"   onclick="if(confirm('转换时间可能较长，转换期间请勿对页面做其他操作！'))conversion(4)">开始转换</a>

        </li>
		<li><u>友情链接、广告信息</u><span>等待转换</span>

            <a href="#"  id='start5'  onclick="conversion(5)">开始转换</a>

        </li>
                <li><u>企业下载的简历</u><span>等待转换</span>
                      job_purchasedresume表索引Id 开始id(不包括):<input type="text" id="purchased_start_id"/>
                    结束id(不包括):<input type="text" id="purchased_end_id"/>
                    <a href="#"   onclick="conversion(6)">开始转换</a>

                </li>
                <li><u>企业人才库</u><span>等待转换</span>

                      job_savedresume表索引Id 开始id(不包括):<input type="text" id="saved_resume_start_id"/>
                    结束id(不包括):<input type="text" id="saved_resume_end_id"/>
                    <a href="#"  onclick="conversion(7)">开始转换</a>

                </li>
                <li><u>个人职位收藏、职位申请、企业面试等</u><span>等待转换</span>

                     job_collect表索引id 开始id(不包括):<input type="text" id="resume_job_relations_resume_start_id"/>
                    结束id(不包括):<input type="text" id="resume_job_relations_resume_end_id"/>
                    <a href="#" onclick="conversion(8)">开始转换</a>
   
                </li>
		</ul>
	</div>
</div>
<div class="success"><input type="button" class="but90" value="确定" onclick="window.location='step-4.php'"/></div>
</body>
</html>