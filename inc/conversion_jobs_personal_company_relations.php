<?php
@set_time_limit(0);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
require_once(dirname(__FILE__).'/splitword.class.php');

$module_name="personal_apply_jobs";
//http://myconverter.shiyishi.tk/inc/conversion_personal_apply_jobs.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_
//
//尝试锁定当前模块,如果锁文件已经存在，则会终止运行
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

/**cid:主键，职位申请及收藏的id
//cuid:用户id
//collect:如果是收藏职位，则字段为1
//apply:如果是用户初次申请职位，则字段为1，企业回复了应聘者，字段为2 ，企业拒绝应聘者，字段为3
// corpid:企业id
 * jobid:职位id
 * applyinfo:如果企业通知面试，则此字段保存为回复消息
 * dateline:个人申请、收藏时间、企业回复时间均为此字段
 * rid:简历id
 * com_del:是否被删除（企业主动删除，如果已删除，不会再收到此人、此简历的申请）
 */
 /**
  * 个人职位收藏夹：我的收藏 c.collect=1
  * "SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.collect=1 AND c.cuid=".$uid.$datesql." ORDER BY ".$wheresql." DESC LIMIT ".$start.",".$perpage
  * qs32_personal_favorites
  * did:主键，自增
  * personal_uid:个人会员id
  * jobs_id:职位id
  * jobs_name:职位名称
  * addtime:添加时间
  * 
             * 我申请过的职位： 我的应聘:jobs_collect c.apply=1
  * sql:"SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.apply=1 AND c.cuid=".$uid." ORDER BY c.dateline DESC "
             * qs32_personal_jobs_apply
             * 
             *   did:主键id
             * resume_id:简历id
             * resume_name:简历名称
             * personal_uid:个人id
             * jobs_id:职位id
             * jobs_name:职位名称
             * company_id:企业id
             * company_name:企业名称
             * company_uid:企业用户id
             * peronal_look:1：企业未查看 2：企业已查看
             * notes:其他说明（求职信）
  * 
  * 企业面试邀请：已通知的面试shiphr
  * 与collect表关联 c.apply = 2 AND com_del=0
  $sql = SELECT c.*,n.id,n.uid,n.title,n.department,n.corpid,r.resumetitle,r.workstatus,r.resumestatus,r.name,r.sex,r.birthyear,r.birthmonth,r.birthday,r.description,r.uid,r.contacttype,r.graduatedate,r.edudegree,r.mophone,r.homephone,r.resideprovince,r.residecity FROM uchome_job_collect AS c , uchome_job_resumes AS r ,uchome_job_newjobs AS n WHERE c.apply = 2 AND com_del=0 AND c.jobid=n.id AND n.uid=214662 AND c.cuid=r.uid AND c.rid = r.id ORDER BY c.dateline DESC LIMIT 0,10
             * qs32_company_interview
             * did:主键id
             * resume_id:简历id
             * resume_name:简历用户名
             * resume_addtime:简历添加时间
             * resume_uid:简历用户id
             * jobs_id:职位id
             * jobs_name:职位名称
             * company_id:公司id
             * company_name:公司名称
             * company_uid:公司用户id
             * interview_addtime:邀请面试时间
             * notes:面试说明
             * personal_look:1 被邀请用户未查看 2：被邀请用户已查看
  * 
  * 
  * shiphr 收到的简历,在74中以另外一种形式展示（职位列表中有当前职位对应的简历个数）
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
 //collect:如果是收藏职位，则字段为1
//apply:如果是用户初次申请职位，则字段为1，企业回复了应聘者，字段为2 ，企业拒绝应聘者，字段为3
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
      *  * 个人职位收藏夹：我的收藏 c.collect=1
  * "SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.collect=1 AND c.cuid=".$uid.$datesql." ORDER BY ".$wheresql." DESC LIMIT ".$start.",".$perpage
  * qs32_personal_favorites
  * did:主键，自增
  * personal_uid:个人会员id
  * jobs_id:职位id
  * jobs_name:职位名称
  * addtime:添加时间
  */
    if($is_favorited==1){
        //插入到qs32_personal_favorites表中
        $sql_array['did'] = $id;
        $sql_array['personal_uid'] =$personal_uid;
        $sql_array['jobs_id'] = $job_id;
        $sql_array['jobs_name'] = $job_title;     
        $sql_array['addtime'] = $apply_dateline;
        
        conversion_inserttable(table("personal_favorites"), $sql_array,false,true);
    }
    unset($sql_array);
    
    /*
     *  /* 我申请过的职位： 我的应聘:jobs_collect c.apply=1
  * sql:"SELECT * FROM ".tname( "job_collect" )." AS c , ".tname( "job_newjobs" )." AS n WHERE c.jobid=n.id AND c.apply=1 AND c.cuid=".$uid." ORDER BY c.dateline DESC "
             * qs32_personal_jobs_apply
             * 
             *   did:主键id
             * resume_id:简历id
             * resume_name:简历名称
             * personal_uid:个人id
             * jobs_id:职位id
             * jobs_name:职位名称
             * company_id:企业id
             * company_name:企业名称
             * company_uid:企业用户id
             * peronal_look:1：企业未查看 2：企业已查看
             * notes:其他说明（求职信）
    //如果是用户初次申请职位，则字段为1，企业回复了应聘者，字段为2 ，企业拒绝应聘者，字段为3
     */
    if(in_array($apply_status, array(1,2,3))){
        //我申请过的职位
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
//2和3说明企业已经进行了回复，当为2时，企业对个人发出申请，当为3时，拒绝
            /**
  * 企业面试邀请：已通知的面试shiphr
  * 与collect表关联 c.apply = 2 AND com_del=0
  $sql = SELECT c.*,n.id,n.uid,n.title,n.department,n.corpid,r.resumetitle,r.workstatus,r.resumestatus,r.name,r.sex,r.birthyear,r.birthmonth,r.birthday,r.description,r.uid,r.contacttype,r.graduatedate,r.edudegree,r.mophone,r.homephone,r.resideprovince,r.residecity FROM uchome_job_collect AS c , uchome_job_resumes AS r ,uchome_job_newjobs AS n WHERE c.apply = 2 AND com_del=0 AND c.jobid=n.id AND n.uid=214662 AND c.cuid=r.uid AND c.rid = r.id ORDER BY c.dateline DESC LIMIT 0,10
             * qs32_company_interview
             * did:主键id
             * resume_id:简历id
             * resume_name:简历用户名
             * resume_addtime:简历添加时间
             * resume_uid:简历用户id
             * jobs_id:职位id
             * jobs_name:职位名称
             * company_id:公司id
             * company_name:公司名称
             * company_uid:公司用户id
             * interview_addtime:邀请面试时间
             * notes:面试说明
             * personal_look:1 被邀请用户未查看 2：被邀请用户已查看
             */
 if(in_array($apply_status, array(2,3))){
        //我申请过的职位
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
        $mylogger->log_complete_module("$module_name finished, 应转:$to_be_converted_count ,实际转:$i");
exit("ok,{$i}");
?>