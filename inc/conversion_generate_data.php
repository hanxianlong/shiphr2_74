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
	$dbsrc->query($sql);//����ձ��¼
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
	$db->query($sql);//����ձ��¼
}

$values_array = array();
$member_sql = "INSERT INTO `{$srcpre}member` VALUES ";// (null, '$uname', 'e31a750348ae04aec80dbd8f4b60b4c4');";

while($i<$max_count){
	$id = $i+$start_id;
	$uname = "geren$id";
	
        $values_array[] = "(null, '$uname', 'e31a750348ae04aec80dbd8f4b60b4c4')";
        if(count($values_array)>=300){
            $values_string = implode(",", $values_array);
            $sql = $member_sql . $values_string;
            $dbsrc->query($sql);
            unset($values_array);
        }
	 $i++;
}
if(count($values_array)>0){
   $values_string = implode(",", $values_array);
            $sql = $member_sql . $values_string;
            $dbsrc->query($sql);
            unset($values_array);
}

//�����û���
$dbsrc->query("update `{$srcpre}member` set username=concat('geren',`uid`) where uid>214664");

$sql = "select * from `{$srcpre}member` where uid>214664";
$result = $dbsrc->query($sql);
while($row = mysql_fetch_array($result)){
    $uname = $row['username'];
    $uid = $row['uid'];
    
    $space_sql ="INSERT INTO `{$srcpre}space` VALUES ($uid, 5, 0, 0, '$uname', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1372653609, 0, 0, 0, 1372659719, 0, 0, 0, 0, 0, 0, 0, '127.0.0.1', 127000000, 0, 'person', 0, 0, 0, 0, 0, 0, 0, '0000-0-0', '0000-0-0', 0, 1, 0, '', 0, 'uploads/1372653770fXRn7j.jpg')";
    $dbsrc->query($space_sql); 

    $space_field_sql ="INSERT INTO `{$srcpre}spacefield` VALUES ($uid, 0, '$uname@163.com', '', '', 0, 0, 0, '', 0, '', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', 0, '', 0, 0, '')";
     $dbsrc->query($space_field_sql);

    $resume_sql="INSERT INTO `{$srcpre}job_resumes` VALUES ('$uname �ļ���', 1, 1, 0, '$uname', '$uname@163.com', 1, 1, 2008, 3, 5, 0, '', '', '1006', '1197', 0, 1010, 0, '1010', '1131', 0, 0, 5, '������ѧ', 1, 9, 0, 1, '01045123456', '01045123456', '01045123456', '��������������', 274413, 'http://blogs.com', 'http://website.com', '�������ۣ������ü������������Լ����ۺ�����(��2000������,��ʣ 1988 ��) ���ü������������Լ����ۺ�����(��2000������,��ʣ 1988 ��)�������ۣ������ü������������Լ����ۺ�����(��2000������,��ʣ 1988 ��) ���ü������������Լ����ۺ�����(��2000������,��ʣ 1988 ��)', 2, 0, '��ϵ����/����/����+Ϳװ����/����/����', '2082*2098,2082*2101', '��������+����', '1929,1067', '��רҵ�س����Ǻ���רҵ�س����Ǻ�', '1008', '1279', '1013', '1151', '1016', '1055', 2, 3, 6, 4, 4, 3, 3, 5, 3, '', '1073', '', '2085', '2136', null, $uid , '$uname', 1372654056, 'chinese', '2001��7��~2005��7�� �Ͷ�ĳ��ѧĳרҵ,�񱾿�ѧʿѧλ\r\n2005��7��~2005��12�� �μ�ĳ������ѵ\r\n2006��1��~2006��2�� �μ�ĳ��˾���ʹ����ѵ', '2006��2��~2007��7�� ĳ�����������Ա,�ڼ�����ĳĳ������� \r\n2007��8��~2009��5�� �Ϻ�ĳ��ƹ�˾�������,�ڼ�����ĳĳ�������\r\n2009��1��~���� �Ϻ�ĳ��ƹ�˾�������,����ĳĳ�������', 0, 1, '2005-7-5 00:00:00', '��Ϣ����', 0, 0);";
    $dbsrc->query($resume_sql); 
}

print("������$max_count ��������Ϣ��������Ϣ");
?>