<?php
@set_time_limit(0);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
require_once(dirname(__FILE__).'/splitword.class.php');

$module_name="personal_apply_jobs";
//http://myconverter.shiyishi.tk/inc/conversion_personal_apply_jobs.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_
//
//����������ǰģ��,������ļ��Ѿ����ڣ������ֹ����
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

$sql=" select purchased.id as id,
purchased.uid as company_uid,
purchased.rid as resume_id,
purchased.dateline as purchased_datetime,
resume.uid as resume_uid,
resume.resumetitle as resume_title,
company.corptitle as company_title

 from {$srcpre}job_purchasedresume purchased,{$srcpre}job_resumes as resume,
{$srcpre}job_company as company
where purchased.uid = company.uid
and resume.id = purchased.rid ";
/**
   * ��ҵ���صļ����������ؼ���job_purchasedresume
             * qs32_company_down_resume 
             * did:����id
             * resume_id:����id
             * resume_name:��������
             * resume_uid:�����û���uid
             * company_uid:��ҵid
             * company_name:��ҵ����
             * down_addtime:����ʱ��
             * 
  *shiphr ��Ӧ shiphr �����ؼ���
  * $sql = "SELECT COUNT(*) FROM " . tname('job_purchasedresume') . " S LEFT JOIN " . tname('job_resumes') . " R ON S.rid = R.id WHERE S.uid = '$uid' $whereTypeId";
 
 */
$countsql = "select count(*) as total from (" . $sql;

if(isset($_GET['start_id'])){
    $start_id = intval($_GET['start_id']);
    $sql .=" and id>$start_id";
    $countsql .=" and id>$start_id";
}

if(isset($_GET['end_id'])){
    $end_id = intval($_GET['end_id']);
    $sql .=" and id<$end_id";
    $countsql .=" and id<$end_id";
}
$countsql .=") as x;";

$count = $dbsrc->getone($countsql);
$to_be_converted_count=$count['total'];
$total_msg = "total:$to_be_converted_count";
$mylogger->put_msg_to_disk($total_msg);

	$result = $dbsrc->query($sql);
        
        $i=0;
	while($row = $dbsrc->fetch_array($result))
	{
            /*
             *  * ��ҵ���صļ����������ؼ���job_purchasedresume
             * qs32_company_down_resume 
             * did:����id
             * resume_id:����id
             * resume_name:��������
             * resume_uid:�����û���uid
             * company_uid:��ҵid
             * company_name:��ҵ����
             * down_addtime:����ʱ��
             * 
  *shiphr ��Ӧ shiphr �����ؼ���
  * $sql = "SELECT COUNT(*) FROM " . tname('job_purchasedresume') . " S LEFT JOIN " . tname('job_resumes') . " R ON S.rid = R.id WHERE S.uid = '$uid' $whereTypeId";
 purchased.id as id,
purchased.uid as company_uid,
purchased.rid as resume_id,
purchased.dateline as purchased_datetime,
resume.uid as resume_uid,
resume.resumetitle as resume_title,
company.corptitle as company_title
             */
            
           
            $id = $row['id'];
$sql_array['did'] = $row['id'];
    $sql_array['resume_id'] = $row['rid'];
    $sql_array['resume_name'] = $row['resume_title'];
    $sql_array['resume_uid'] = $row['resume_uid'];
    $sql_array['company_uid'] = $row['company_uid'];
    $sql_array['company_name'] = $row['company_title'];
    $sql_array['down_addtime'] = $row['dateline'];
    conversion_inserttable(table("company_down_resume "), $sql_array,false,true);
            $mylogger->put_msg($id);
            $i++;
}

   $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
exit("ok,{$i}");
?>