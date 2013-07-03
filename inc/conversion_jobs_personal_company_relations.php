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

/**cid:������ְλ���뼰�ղص�id
//cuid:�û�id
//collect:������ղ�ְλ�����ֶ�Ϊ1
//apply:������û���������ְλ�����ֶ�Ϊ1����ҵ�ظ���ӦƸ�ߣ��ֶ�Ϊ2 ����ҵ�ܾ�ӦƸ�ߣ��ֶ�Ϊ3
// corpid:��ҵid
 * jobid:ְλid
 * applyinfo:�����ҵ֪ͨ���ԣ�����ֶα���Ϊ�ظ���Ϣ
 * dateline:�������롢�ղ�ʱ�䡢��ҵ�ظ�ʱ���Ϊ���ֶ�
 * rid:����id
 * com_del:�Ƿ�ɾ������ҵ����ɾ���������ɾ�����������յ����ˡ��˼��������룩
 */
 /**
  * ����ְλ�ղؼУ��ҵ��ղ� c.collect=1
  * "SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.collect=1 AND c.cuid=".$uid.$datesql." ORDER BY ".$wheresql." DESC LIMIT ".$start.",".$perpage
  * qs32_personal_favorites
  * did:����������
  * personal_uid:���˻�Աid
  * jobs_id:ְλid
  * jobs_name:ְλ����
  * addtime:���ʱ��
  * 
             * ���������ְλ�� �ҵ�ӦƸ:jobs_collect c.apply=1
  * sql:"SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.apply=1 AND c.cuid=".$uid." ORDER BY c.dateline DESC "
             * qs32_personal_jobs_apply
             * 
             *   did:����id
             * resume_id:����id
             * resume_name:��������
             * personal_uid:����id
             * jobs_id:ְλid
             * jobs_name:ְλ����
             * company_id:��ҵid
             * company_name:��ҵ����
             * company_uid:��ҵ�û�id
             * peronal_look:1����ҵδ�鿴 2����ҵ�Ѳ鿴
             * notes:����˵������ְ�ţ�
  * 
  * ��ҵ�������룺��֪ͨ������shiphr
  * ��collect����� c.apply = 2 AND com_del=0
  $sql = SELECT c.*,n.id,n.uid,n.title,n.department,n.corpid,r.resumetitle,r.workstatus,r.resumestatus,r.name,r.sex,r.birthyear,r.birthmonth,r.birthday,r.description,r.uid,r.contacttype,r.graduatedate,r.edudegree,r.mophone,r.homephone,r.resideprovince,r.residecity FROM uchome_job_collect AS c , uchome_job_resumes AS r ,uchome_job_newjobs AS n WHERE c.apply = 2 AND com_del=0 AND c.jobid=n.id AND n.uid=214662 AND c.cuid=r.uid AND c.rid = r.id ORDER BY c.dateline DESC LIMIT 0,10
             * qs32_company_interview
             * did:����id
             * resume_id:����id
             * resume_name:�����û���
             * resume_addtime:�������ʱ��
             * resume_uid:�����û�id
             * jobs_id:ְλid
             * jobs_name:ְλ����
             * company_id:��˾id
             * company_name:��˾����
             * company_uid:��˾�û�id
             * interview_addtime:��������ʱ��
             * notes:����˵��
             * personal_look:1 �������û�δ�鿴 2���������û��Ѳ鿴
  * 
  * 
  * shiphr �յ��ļ���,��74��������һ����ʽչʾ��ְλ�б����е�ǰְλ��Ӧ�ļ���������
  * $sql = "SELECT c.*,n.id,n.uid,n.title,n.department,n.corpid,r.resumetitle,r.workstatus,r.resumestatus,r.name,r.sex,r.birthyear,r.birthmonth,r.birthday,r.description,r.uid,r.contacttype,r.graduatedate,r.edudegree,r.mophone,r.homephone,r.resideprovince,r.residecity  FROM ".tname( "job_collect" )." AS c , ".tname( "job_resumes" )." AS r ,".tname( "job_newjobs" )." AS n WHERE $whereClassid AND com_del=0 AND c.jobid=n.id AND n.uid=".$uid." AND c.cuid=r.uid AND c.rid = r.id $jobwhere ORDER BY c.dateline DESC LIMIT ".$start.",".$perpage;
             */
$sql="SELECT
	application.cid as id,
	application.cuid as personal_uid,
	application.collect as is_favorited,
	application.apply as apply_status,
        application.corpid as company_id,
        application.applyinfo as apply_info,
        application.dateline as apply_dateline,
        application.com_del as isdeleted,
         resume.resumetitle AS resume_title,
	resume.username AS resume_username,
	resume.dateline AS resume_addtime,
	job.uid AS company_uid, 
        job.corptitle as compnay_title,
        job.title  as job_title
FROM
	`{$srcpre}job_collect` AS application,
	`{$srcpre}job_newjobs` AS job,
	`{$srcpre}job_resumes` AS resume
WHERE
	application.jobid = job.id
AND application.rid = resume.id
and com_del=0 ";
        
$countsql = "select count(*) from (" . $sql;

if(isset($_GET['start_id'])){
    $start_id = intval($_GET['start_id']);
    $sql .=" and application.id>$start_id";
    $countsql .=" and application.id>$start_id";
}

if(isset($_GET['end_id'])){
    $end_id = intval($_GET['end_id']);
    $sql .=" and application.id<$end_id";
    $countsql .=" and application.id<$end_id";
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
 //collect:������ղ�ְλ�����ֶ�Ϊ1
//apply:������û���������ְλ�����ֶ�Ϊ1����ҵ�ظ���ӦƸ�ߣ��ֶ�Ϊ2 ����ҵ�ܾ�ӦƸ�ߣ��ֶ�Ϊ3
     */
    $id = $row['id'];
    $job_id = $row['jobid'];
    $job_title = $row['job_title'];
    $is_favorited = $row['is_favorited'];
    $personal_uid = $row['personal_uid'];
    $apply_status = $row['apply_status'];
    $apply_info = $row['apply_info'];
    $apply_dateline = $row['apply_dateline'];
    $apply_isdeleted = $row['isdeleted'];
   
    $resume_username = $row['resume_username'];
    $resume_addtime = $row['resume_addtime'];
    
    $company_id = $row['company_id'];
    $company_uid = $row['company_uid'];
    $resume_title = $row['resume_title'];
    $company_title = $row['compnay_title'];
    /**
     *  /**
      *  * ����ְλ�ղؼУ��ҵ��ղ� c.collect=1
  * "SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.collect=1 AND c.cuid=".$uid.$datesql." ORDER BY ".$wheresql." DESC LIMIT ".$start.",".$perpage
  * qs32_personal_favorites
  * did:����������
  * personal_uid:���˻�Աid
  * jobs_id:ְλid
  * jobs_name:ְλ����
  * addtime:���ʱ��
  */
    if($is_favorited==1){
        //���뵽qs32_personal_favorites����
        $sql_array['did'] = $id;
        $sql_array['personal_uid'] =$personal_uid;
        $sql_array['jobs_id'] = $job_id;
        $sql_array['jobs_name'] = $job_title;     
        $sql_array['addtime'] = $apply_dateline;
        
        conversion_inserttable(table("personal_favorites"), $sql_array,false,true);
    }
    unset($sql_array);
    
    /*
     *  /* ���������ְλ�� �ҵ�ӦƸ:jobs_collect c.apply=1
  * sql:"SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.apply=1 AND c.cuid=".$uid." ORDER BY c.dateline DESC "
             * qs32_personal_jobs_apply
             * 
             *   did:����id
             * resume_id:����id
             * resume_name:��������
             * personal_uid:����id
             * jobs_id:ְλid
             * jobs_name:ְλ����
             * company_id:��ҵid
             * company_name:��ҵ����
             * company_uid:��ҵ�û�id
             * peronal_look:1����ҵδ�鿴 2����ҵ�Ѳ鿴
             * notes:����˵������ְ�ţ�
    //������û���������ְλ�����ֶ�Ϊ1����ҵ�ظ���ӦƸ�ߣ��ֶ�Ϊ2 ����ҵ�ܾ�ӦƸ�ߣ��ֶ�Ϊ3
     */
    if(in_array($apply_status, array(1,2,3))){
        //���������ְλ
         $sql_array['did'] = $id;
        $sql_array['resume_id'] =$resume_id;
        $sql_array['resume_name'] = $resume_title;
        $sql_array['personal_uid'] = $personal_uid;     
        $sql_array['jobs_id'] = $job_id;
        $sql_array['jobs_name'] = $job_title;
        $sql_array['company_id'] = $company_id;
        $sql_array['company_name'] = $company_title;
        $sql_array['company_uid'] = $company_uid;
        $sql_array['company_id'] = $company_id;
        
        $is_company_viewed = 0;
        if($apply_status!=1)
            $is_company_viewed = 1;
        $sql_array['peronal_look'] = $is_company_viewed;
        $sql_array['notes'] = '';
        
        conversion_inserttable(table("personal_jobs_apply"), $sql_array,false,true);
    }
            unset($sql_array);
//2��3˵����ҵ�Ѿ������˻ظ�����Ϊ2ʱ����ҵ�Ը��˷������룬��Ϊ3ʱ���ܾ�
            /**
  * ��ҵ�������룺��֪ͨ������shiphr
  * ��collect����� c.apply = 2 AND com_del=0
  $sql = SELECT c.*,n.id,n.uid,n.title,n.department,n.corpid,r.resumetitle,r.workstatus,r.resumestatus,r.name,r.sex,r.birthyear,r.birthmonth,r.birthday,r.description,r.uid,r.contacttype,r.graduatedate,r.edudegree,r.mophone,r.homephone,r.resideprovince,r.residecity FROM uchome_job_collect AS c , uchome_job_resumes AS r ,uchome_job_newjobs AS n WHERE c.apply = 2 AND com_del=0 AND c.jobid=n.id AND n.uid=214662 AND c.cuid=r.uid AND c.rid = r.id ORDER BY c.dateline DESC LIMIT 0,10
             * qs32_company_interview
             * did:����id
             * resume_id:����id
             * resume_name:�����û���
             * resume_addtime:�������ʱ��
             * resume_uid:�����û�id
             * jobs_id:ְλid
             * jobs_name:ְλ����
             * company_id:��˾id
             * company_name:��˾����
             * company_uid:��˾�û�id
             * interview_addtime:��������ʱ��
             * notes:����˵��
             * personal_look:1 �������û�δ�鿴 2���������û��Ѳ鿴
             */
 if(in_array($apply_status, array(2,3))){
        //���������ְλ
         $sql_array['did'] = $id;
        $sql_array['resume_id'] =$resume_id;
        $sql_array['resume_name'] = $resume_title;
          $sql_array['resume_addtime'] = $resume_addtime;
        $sql_array['resume_uid'] = $personal_uid;     
        $sql_array['jobs_id'] = $job_id;
        $sql_array['jobs_name'] = $job_title;
        $sql_array['company_id'] = $company_id;
        $sql_array['company_name'] = $company_title;
        $sql_array['company_uid'] = $company_uid;
        $sql_array['company_id'] = $company_id;
        $sql_array['interview_addtime'] = $apply_dateline;
        $sql_array['notes'] = $apply_info;
        
        $is_company_viewed = 0;
        if($apply_status!=1)
            $is_company_viewed = 1;
        $sql_array['peronal_look'] = $is_company_viewed;
        $sql_array['notes'] = '';
        
        conversion_inserttable(table("company_interview"), $sql_array,false,true);
    } 
    unset($sql_array);
    
    $mylogger->put_msg($resume_id);
    $i++;
}

   $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
exit("ok,{$i}");
?>