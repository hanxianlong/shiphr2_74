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
            $setsqlarr['uid']=$uid;
            $setsqlarr['title']=$row['resumetitle'];
            $setsqlarr['fullname']=$row['name'];
            $setsqlarr['resume_type']=$resume_type;
            $setsqlarr['subsite_id']=0;
            $gender = get_sex($row['sex']);
            
            $setsqlarr['sex']=  $gender['id'];
            $setsqlarr['sex_cn']=$gender[$lang_type];
            
            $marriage = get_marriage($row['marry']);
            $setsqlarr['marriage']=$marriage['id'];
            $setsqlarr['marriage_cn']=$marriage[$lang_type];
            
            $setsqlarr['birthdate']=$row['birthyear'];
            $setsqlarr['height']='';//intval($row['r_height']);
            
            $graduate=substr($row['graduatedate'],0,4);
            $expeience_id=0;//1��2��3��5��8��10
             
            $d=date('Y');
            $d=$d-$graduate;
 
             
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
            
            $setsqlarr['education']=$education['id'];
            $setsqlarr['education_cn']=$education[$lang_type];
            $setsqlarr['tag']='';
            $setsqlarr['telephone']=$row['mophone'];
            $setsqlarr['email']=$row['email'];
            $setsqlarr['email_notify']=0;
            $setsqlarr['address']=$row['address'];
            $setsqlarr['website']=$row['homepageurl'];
            $setsqlarr['qq']='';
            $setsqlarr['refreshtime']=$row['dateline'];
            $setsqlarr['display_name']=1;	
            $setsqlarr['audit']=1;
            $setsqlarr['talent']=1;
            $setsqlarr['addtime']=$setsqlarr['refreshtime'];
        
            $job_nature=get_jobs_nature($row['hopejobtype']);
            $setsqlarr['nature']=$job_nature['id'];
            $setsqlarr['nature_cn']=$job_nature[$lang_type];
            
            $province =  get_area_name($row['hope1province']);
            $city=get_area_name($row['hope1city']);
            $setsqlarr['district']=$province['id'];
            $setsqlarr['sdistrict']=$city['id'];
            $setsqlarr['district_cn']=$province[$lang_type].'/'.$city[$lang_type];
 
            $wage=get_wage($row['hopeemolument']);
            $setsqlarr['wage']=$wage['id'];
            $setsqlarr['wage_cn']=$wage[$lang_type];
            
            $trade_ids = explode(",",$row['hopeindustry']);
            $qs_trade_ids = array();
            $qs_trade_names = array();
            foreach ($trade_ids as $trade_id) {
                $trade = get_trade($trade_id);
                $qs_trade_ids[] = $trade['id'];
                $qs_trade_names[] = $trade[$lang_type];
            }
            
            $setsqlarr['trade']=  implode(',', $qs_trade_ids);//����������ҵ
            $setsqlarr['trade_cn']=  implode(',', $qs_trade_names);//����������ҵ
            
            $setsqlarr['intention_jobs']=str_replace('+',',',$row['hopesubposition']);//�ڴ�������λ
            $intent_jobs_id_array =  explode(",",$row['hopeposition']);//�ڴ�������λid,���������resume_jobs�������Щ��¼
            $intent_jobs_id_subid_array = array();
            foreach($intent_jobs_id_array as $value){
                $id_sid = explode("*", $value);
                $id_info = get_jobs_cat($id_sid[0]);
                $sid_info =get_jobs_cat($id_sid[1]);
                $intent_jobs_id_subid_array[] = array('id'=>$id_info['id'],'sid'=>$sid_info['id']);
            }
            
            $setsqlarr['specialty']=$row['description'];
            
           // $logo= $dbsrc->getone("select m_logo from `{$frpre}member` where m_login = '{$row['r_member']}' LIMIT 1");
            $setsqlarr['photo_audit']=1;
            $setsqlarr['photo_display']=1;
            $photo_path =$row['resumephoto'];
            $setsqlarr['photo_img']= $photo_path;
            $setsqlarr['photo'] = empty($photo_path)?0:1;
            
            $setsqlarr['complete']=1;
            $setsqlarr['complete_percent']=calculate_complete_percent($row);
            $setsqlarr['talent']=1;
            $setsqlarr['click']=$row['viewnum'];
            $setsqlarr['recentjobs']='';//����������Ĺ���
            $setsqlarr['key']=$setsqlarr['intention_jobs'].$setsqlarr['recentjobs'].$setsqlarr['specialty'];		
            $setsqlarr['key']="{$setsqlarr['fullname']} ".$sp->extracttag($setsqlarr['key']);
            $setsqlarr['key']=str_replace(","," ",$setsqlarr['intention_jobs'])." {$setsqlarr['key']} {$setsqlarr['education_cn']}";
            $setsqlarr['key']=$sp->pad($setsqlarr['key']);

            //���������
            conversion_inserttable(table('resume'),$setsqlarr,false,true);
            
            //����resume_jobs��
            foreach ($intent_jobs_id_subid_array as $data){
                $id = $data['id'];
                $sid = $data['sid'];
                if(!$db->getone("select * from ". table("resume_jobs") ." where uid=$uid and pid=$resume_id and category=$id and subclass=$sid;")){
                 conversion_add_resume_jobs($resume_id,$uid,$data['id'],$data['sid'],false);
                }
            }
            
            //��������
           // $resultedu = $dbsrc->query("select * from `{$frpre}education` WHERE e_rid='{$row['r_id']}' ");
           // while($rowedu = $dbsrc->fetch_array($resultedu))
           // {
            //У���Ƿ��Ѿ������˽�������,����Ѳ������ٲ���
            if(!$db->getone("select * from ". table("resume_education") ." where uid=$uid and pid=$resume_id;")){
                    $esql['uid']=$uid;
                    $esql['pid']=$resume_id;
                    $esql['start']='1900-01-01';
                    $esql['endtime']='1900-01-01';
                    $esql['school']='';
                    $esql['speciality']='';
                    $esql['education_cn']='';
                    $esql['education_remark'] = $row['education'];
                    conversion_inserttable(table('resume_education'),$esql);
            }
         //   }
             //��������
          
             if(!$db->getone("select * from ". table("resume_work") ." where uid=$uid and pid=$resume_id;")){
                    $wsql['uid']=$uid;
                    $wsql['pid']=$resume_id;
                    $wsql['start']='1900-01-01';
                    $wsql['endtime']='1900-01-01';
                    $wsql['companyname']='';
                    $wsql['jobs']='';
                    $wsql['companyprofile']='';
                    $wsql['achievements']='';		 
                    $wsql['work_remark']=$row['work'];
                    conversion_inserttable(table('resume_work'),$wsql);
             }
            //��ѵ
         
              if(!$db->getone("select * from ". table("resume_training") ." where uid=$uid and pid=$resume_id;")){
                    $tsql['uid']=$uid;
                    $tsql['pid']=$resume_id;
                    $tsql['start']='1900-01-01';
                    $tsql['endtime']='1900-01-01';
                    $tsql['agency']='';
                    $tsql['course']='';
                    $tsql['description']='';
                    $tsql['training_remark'] = '��ѵ����δ��д';
                    conversion_inserttable(table('resume_training'),$tsql);
              }
            //$n=var_export($setsqlarr,true);
            //file_put_contents("../1.txt",$n.$cityay[1], LOCK_EX);
            //exit();
            //������
            $searchtab['id']=$resume_id;
            $searchtab['uid']=$setsqlarr['uid'];
            $searchtab['subsite_id']=0;
            $searchtab['sex']=$setsqlarr['sex'];
            $searchtab['nature']=$setsqlarr['nature'];
            $searchtab['marriage']=$setsqlarr['marriage'];
            $searchtab['experience']=$setsqlarr['experience'];
            $searchtab['district']=$setsqlarr['district'];
            $searchtab['sdistrict']=$setsqlarr['sdistrict'];
            $searchtab['wage']=$setsqlarr['wage'];
            $searchtab['education']=$setsqlarr['education'];
            $searchtab['photo']=$setsqlarr['photo'];
            $searchtab['refreshtime']=$setsqlarr['refreshtime'];
            $searchtab['talent']=$setsqlarr['talent'];
            conversion_inserttable(table('resume_search_rtime'),$searchtab,false,true);
            $searchtab['key']=$setsqlarr['key'];
            conversion_inserttable(table('resume_search_key'),$searchtab,false,true);
            unset($searchtab);

            $tagsql['tag1']=$tagsql['tag2']=$tagsql['tag3']=$tagsql['tag4']=$tagsql['tag5']=0;
            $tagsql['id']=$resume_id;
            $tagsql['uid']=$setsqlarr['uid'];
            $tagsql['subsite_id']=$setsqlarr['subsite_id'];
            $tagsql['experience']=$setsqlarr['experience'];
            $tagsql['district']=$setsqlarr['district'];
            $tagsql['sdistrict']=$setsqlarr['sdistrict'];
            $tagsql['education']=$setsqlarr['education'];
            conversion_inserttable(table('resume_search_tag'),$tagsql,false,true);
            
            $mylogger->put_msg($resume_id);
            $i++;
}

   $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
exit("ok,{$i}");

function calculate_complete_percent($value){
    $percent=0;
    if ($value['resumetitle']) $percent++;
        if ($value['name']) $percent++;
        if ($value['sex']) $percent++;
        if ($value['birthyear']) $percent++;
        if ($value['birthmonth']) $percent++;
        if ($value['birthday']) $percent++;
        if ($value['resideprovince']) $percent++;
        if ($value['residecity']) $percent++;
        if ($value['edudegree']) $percent++;
        if ($value['school']) $percent++;
        if ($value['seniority']) $percent++;
        if ($value['description']) $percent++;
        if ($value['mophone']) $percent++;
        if ($value['email']) $percent++;
        if ($value['hopejobtype']) $percent++;
        if ($value['hopeindustry']) $percent++;
        if ($value['hopeposition']) $percent++;
        if ($value['hope1province']) $percent++;
        if ($value['hope1city']) $percent++;
        if ($value['language1']) $percent++;
        if ($value['language1level']) $percent++;
        if ($value['education']) $percent++;
        if ($value['work']) $percent++;
        if ($value['hasexperience'] >= 0) $percent++;
        if ($value['workstatus'] >= 0) $percent++;
        if ($value['resumestatus'] >= 0) $percent++;
        if ($value['marry']) $percent++;
        if ($value['nationality']) $percent++;
        if ($value['censusprovince']) $percent++;
        if ($value['censuscity']) $percent++;
        if ($value['emolumenttype']) $percent++;
        if ($value['emolument']) $percent++;
        if ($value['contacttype']) $percent++;
        if ($value['homephone']) $percent++;
        if ($value['officephone']) $percent++;
        if ($value['address']) $percent++;
        if ($value['postcode']) $percent++;
        if ($value['blogurl']) $percent++;
        if ($value['homepageurl']) $percent++;
        if ($value['hasoverseas'] >= 0) $percent++;
        if ($value['industry']) $percent++;
        if ($value['position']) $percent++;
        if ($value['subposition']) $percent++;
        if ($value['specialty']) $percent++;
        if ($value['hope2province']) $percent++;
        if ($value['hope2city']) $percent++;
        if ($value['hope3province']) $percent++;
        if ($value['hope3city']) $percent++;
        if ($value['language2']) $percent++;
        if ($value['language2level']) $percent++;
        if ($value['language3']) $percent++;
        if ($value['language3level']) $percent++;
        if ($value['hopeemolumenttype']) $percent++;
        if ($value['hopeemolument']) $percent++;
        if ($value['entrytype']) $percent++;
        if ($value['customresume']) $percent++;
        
        return ceil($percent * 100 / 56);
}
?>