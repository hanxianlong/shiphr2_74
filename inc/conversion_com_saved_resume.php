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

$sql="select * from  `{$srcpre}job_collect` app";
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
$countsql = "select count(*) from (select * from  `{$srcpre}job_collect` app ";

if(isset($_GET['start_id'])){
    $start_id = intval($_GET['start_id']);
    $sql .=" and app.cid>$start_id";
    $countsql .=" and app.cid>$start_id";
}

if(isset($_GET['end_id'])){
    $end_id = intval($_GET['end_id']);
    $sql .=" and app.id<$end_id";
    $countsql .=" and app.id<$end_id";
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
            $resume_id=$row['id'];
            $uid=intval($row['uid']); 
            
            $lang_type='cn';
            $resume_type=0;//0Ϊ���ļ�����1ΪӢ�ļ���
            if($row['resumelan']=='english'){
                $resume_type=1;
                $lang_type = 'en';
            }
             $setsqlarr['id']=$resume_id;

            $ex = get_experience($expeience_id);
            $setsqlarr['experience']=$ex['id'];;
            $setsqlarr['experience_cn']=$ex[$lang_type];
           
            $household_province_id = intval($row['censusprovince']);
            $household_city_id = intval($row['censuscity']);
            if($household_province_id>0){
                $household_province = get_area_name($household_province_id);
                $household_city = get_area_name($household_city_id);
                $setsqlarr['householdaddress']= $household_province[$lang_type].$household_city[$lang_type];
            }
            $education=get_edu($row['edudegree']);
            $mylogger->put_msg($resume_id);
            $i++;
}

   $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
exit("ok,{$i}");

?>