<?php
@set_time_limit(0);
 
//error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
$i=0;
//http://myconverter.shiyishi.tk/inc/conversion_generate_data.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_

$max_count=100000;
$start_id=0;
$i=0;

$delete_src_sql = "delete from `{$srcpre}member` where uid>214664;";
$delete_src_sql .= "delete from `{$srcpre}space` where uid>214664;";
$delete_src_sql .= "delete from `{$srcpre}spacefield` where uid>214664;";
$delete_src_sql .= "delete from `{$srcpre}job_resumes` where uid>214664";
$sqls = explode(';',$delete_src_sql);
foreach($sqls as $sql){
	print($sql."<br/>");
	$dbsrc->query($sql);//先清空表记录
}

$delete_qs_sql ="delete from ".table("members")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume_jobs")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume_search_key")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume_search_rtime")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume_education")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume_search_tag")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume_training")." where uid>214664;";
$delete_qs_sql .="delete from ".table("resume_work")." where uid>214664";
$sqls = explode(';',$delete_qs_sql);
foreach($sqls as $sql){
	print($sql."<br/>");
	$db->query($sql);//先清空表记录
}

while($i<$max_count){
	$id = $i+$start_id;
	$uname = "geren$id";
	$member_sql = "INSERT INTO `{$srcpre}member` VALUES (null, '$uname', 'e31a750348ae04aec80dbd8f4b60b4c4');";
 	$dbsrc->query($member_sql);
	$inserted_id = $dbsrc->insert_id();
	
	$uname = "geren$inserted_id";
	$member_sql = "update `{$srcpre}member` set username='$uname'";
	$dbsrc->query($member_sql);

	$space_sql ="INSERT INTO `{$srcpre}space` VALUES ($inserted_id, 5, 0, 0, '$uname', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1372653609, 0, 0, 0, 1372659719, 0, 0, 0, 0, 0, 0, 0, '127.0.0.1', 127000000, 0, 'person', 0, 0, 0, 0, 0, 0, 0, '0000-0-0', '0000-0-0', 0, 1, 0, '', 0, 'uploads/1372653770fXRn7j.jpg')";
  $dbsrc->query($space_sql); 
	
	$space_field_sql ="INSERT INTO `{$srcpre}spacefield` VALUES ($inserted_id, 0, '$uname@163.com', '', '', 0, 0, 0, '', 0, '', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', 0, '', 0, 0, '')";
	 $dbsrc->query($space_field_sql);
	
	$resume_sql="INSERT INTO `{$srcpre}job_resumes` VALUES ('$uname 的简历', 1, 1, 0, '$uname', '$uname@163.com', 1, 1, 2008, 3, 5, 0, '', '', '1006', '1197', 0, 1010, 0, '1010', '1131', 0, 0, 5, '北京大学', 1, 9, 0, 1, '01045123456', '01045123456', '01045123456', '北京市区东城区', 274413, 'http://blogs.com', 'http://website.com', '自我评价：：请用简洁的文字描述自己的综合能力(限2000字以内,还剩 1988 字) 请用简洁的文字描述自己的综合能力(限2000字以内,还剩 1988 字)自我评价：：请用简洁的文字描述自己的综合能力(限2000字以内,还剩 1988 字) 请用简洁的文字描述自己的综合能力(限2000字以内,还剩 1988 字)', 2, 0, '管系主管/建造/工程+涂装主管/建造/工程', '2082*2098,2082*2101', '航海仪器+航运', '1929,1067', '无专业特长，呵呵无专业特长，呵呵', '1008', '1279', '1013', '1151', '1016', '1055', 2, 3, 6, 4, 4, 3, 3, 5, 3, '', '1073', '', '2085', '2136', null, $inserted_id , '$uname', 1372654056, 'chinese', '2001年7月~2005年7月 就读某大学某专业,获本科学士学位\r\n2005年7月~2005年12月 参加某船厂培训\r\n2006年1月~2006年2月 参加某公司软件使用培训', '2006年2月~2007年7月 某船厂船体设计员,期间参与过某某船型设计 \r\n2007年8月~2009年5月 上海某设计公司设计主管,期间主持某某船型设计\r\n2009年1月~至今 上海某设计公司设计主管,主持某某船型设计', 0, 1, '2005-7-5 00:00:00', '信息管理', 0, 0);";
	$dbsrc->query($resume_sql); 
	$i++;
}

print("已生成$max_count 条个人信息及简历信息");
?>