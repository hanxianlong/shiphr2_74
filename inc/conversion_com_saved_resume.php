<?php
@set_time_limit(0);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php'); 

$module_name="personal_apply_jobs";
//http://myconverter.shiyishi.tk/inc/conversion_personal_apply_jobs.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_
//
//����������ǰģ��,������ļ��Ѿ����ڣ������ֹ����
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

$sql="select * from  `{$srcpre}job_savedresume` where isdeleted=0 ";
 /*
  * ��ҵ�˲ſ�:��ҵ�˲ſ�  ��job_savedresume
  * * 74���˲Ż���վ
             * qs32_company_favorites
             * did:����id
             * resume_id:����id
             * company_uid:��ҵ�û�id
             * favoritesa_ddtime:���ʱ��
             * 
  *  ��Ӧshiphr:
  * ��job_savedresume
  * $sql = "SELECT S.dateline savedtime,S.rid, S.id sid, R.*, T.name typename FROM " . tname('job_savedresume') . " S LEFT JOIN " . tname('job_resumes') . " R ON S.rid = R.id LEFT JOIN " . tname('job_resumetype') . " T ON T.id = S.typeid WHERE S.uid = '$uid' AND S.isdeleted = '0' $typeWhere ORDER BY S.dateline DESC LIMIT $start,$perpage";
  * 
   */
$countsql = "select count(*) from (".$sql;

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
       /**
        *  qs32_company_favorites
         * did:����id
         * resume_id:����id
         * company_uid:��ҵ�û�id
         * favoritesa_ddtime:���ʱ��
        */
    $sql_array['did'] = $row['id'];
    $sql_array['resume_id'] = $row['rid'];
    $sql_array['company_uid'] = $row['uid'];
    $sql_array['favoritesa_ddtime'] = $row['dateline'];
    conversion_inserttable(table("company_favorites"), $sql_array,false,true);

    $mylogger->put_msg($row['id']);
    $i++;
}

   $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
exit("ok,{$i}");

?>