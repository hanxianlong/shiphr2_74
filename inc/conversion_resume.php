<?php
@set_time_limit(0);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
require_once(dirname(__FILE__).'/splitword.class.php');
$sp = new SPWord();
$module_name="resumes";
//http://myconverter.shiyishi.tk/inc/conversion_resume.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_
//
//尝试锁定当前模块,如果锁文件已经存在，则会终止运行
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

$sql="select resume.*,space.resume_photo  as resumephoto from `{$srcpre}job_resumes` as resume,`{$srcpre}space` as space where resume.uid=space.uid and resume.name!='' and resume.birthyear>0";
$countsql = "select count(*) as total from (select resume.*,space.resume_photo  as resumephoto from `{$srcpre}job_resumes` as resume,`{$srcpre}space` as space where resume.uid=space.uid ";

if(isset($_GET['start_id'])){
    $start_id = intval($_GET['start_id']);
    $sql .=" and resume.id>$start_id";
    $countsql .=" and resume.id>$start_id";
}

if(isset($_GET['end_id'])){
    $end_id = intval($_GET['end_id']);
    $sql .=" and resume.id<$end_id";
    $countsql .=" and resume.id<$end_id";
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
            $resume_type=0;//0为中文简历，1为英文简历
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
            $expeience_id=0;//1、2、3、5、8、10
             
            $d=date('Y');
            $d=$d-$graduate;

            if($d<=2){//1-2年
                $expeience_id=1;
            }
            else if($d<=3){//2-3年
                $expeience_id=2;
            }
            else if($d<=4){//3-4年
                $expeience_id=3;
            }
            else if($d<=5){//
                $expeience_id=5;
            }
            else if($d<=8){
                $expeience_id=8;
            }
            else{
                $expeience_id=10;
            }
             
            $ex = get_experience($expeience_id);
            $setsqlarr['experience']=$ex['id'];;
            $setsqlarr['experience_cn']=$ex[$lang_type];
           
            $household_province_id = intval($row['censusprovince']);
            $household_city_id = intval($row['censuscity']);
            $household_address = '';
            if($household_province_id>0){
                $household_province = get_area_name($household_province_id);
                $household_address = $household_province[$lang_type];
            }
           if($household_city_id>0){
                $household_city = get_area_name($household_city_id);
                 $household_address .= $household_city[$lang_type];
            }

            $setsqlarr['householdaddress']=$household_address;
            $education=get_edu($row['edudegree']);
            
            $setsqlarr['education']=$education['id'];
            $setsqlarr['education_cn']=$education[$lang_type];
            
            //74新增毕业学校和毕业时间两字段
            $setsqlarr['graduate_date']=$row['graduatedate'];
            $setsqlarr['school']=$row['school'];
            
            $setsqlarr['tag']='';
            $setsqlarr['telephone']=$row['mophone'];
            $setsqlarr['email']=$row['email'];
            $setsqlarr['email_notify']=0;
            $setsqlarr['address']=$row['address'];
            $setsqlarr['website']=$row['homepageurl'];
            $setsqlarr['qq']='';
            $setsqlarr['refreshtime']=$row['dateline'];
            $setsqlarr['display_name']=3;	//1:显示全名 2：显示简历编号 3：仅显示姓
            $setsqlarr['audit']=1;
            $setsqlarr['talent']=1;
            $setsqlarr['addtime']=$setsqlarr['refreshtime'];
        
            $job_nature=get_jobs_nature($row['hopejobtype']);
            $setsqlarr['nature']=$job_nature['id'];
            $setsqlarr['nature_cn']=$job_nature[$lang_type];
            
            $province =  get_area_name($row['hope1province']);
        if($province>0){
            $city=get_area_name($row['hope1city']);
            $setsqlarr['district']=$province['id'];
            $setsqlarr['sdistrict']=$city['id'];
            $setsqlarr['district_cn']=$province[$lang_type].'/'.$city[$lang_type];
           }
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
            
            $setsqlarr['trade']=  implode(',', $qs_trade_ids);//期望工作行业
            $setsqlarr['trade_cn']=  implode(',', $qs_trade_names);//期望工作行业
            $current_position = '';
            if(!empty($row['position'])){
                $position = get_trade($row['position']);
                $current_position = $position[$lang_type];
            }
            
            if(!empty($row['subposition'])){
                 $position = get_trade($row['subposition']);
                 $current_position .= $position[$lang_type];
            }
            
           $setsqlarr['recentjobs']=$current_position;//当前工作岗位 
            $setsqlarr['intention_jobs']=str_replace('+',',',$row['hopesubposition']);//期待工作岗位
            $intent_jobs_id_array =  explode(",",$row['hopeposition']);//期待工作岗位id,在下面会向resume_jobs表插入这些记录
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
            $setsqlarr['recentjobs']='';//最近工作过的工作
            $setsqlarr['key']=$setsqlarr['intention_jobs'].$setsqlarr['recentjobs'].$setsqlarr['specialty']. $row['education'].$row['work'];		
            $setsqlarr['key']="{$setsqlarr['fullname']} ".$sp->extracttag($setsqlarr['key']);
            $setsqlarr['key']=str_replace(","," ",$setsqlarr['intention_jobs'])." {$setsqlarr['key']} {$setsqlarr['education_cn']}";
            $setsqlarr['key']=$sp->pad($setsqlarr['key']);
 
            //插入简历表
            conversion_inserttable(table('resume'),$setsqlarr,false,true);
            
            //插入resume_jobs表
            foreach ($intent_jobs_id_subid_array as $data){
                $id = $data['id'];
                $sid = $data['sid'];
                if(!$db->getone("select * from ". table("resume_jobs") ." where uid=$uid and pid=$resume_id and category=$id and subclass=$sid;")){
                 conversion_add_resume_jobs($resume_id,$uid,$data['id'],$data['sid'],false);
                }
            }
            
            //教育经历
           // $resultedu = $dbsrc->query("select * from `{$frpre}education` WHERE e_rid='{$row['r_id']}' ");
           // while($rowedu = $dbsrc->fetch_array($resultedu))
           // {
            //校验是否已经保存了教育经历,如果已插入则不再插入
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
             //工作经历
          
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
            //培训
         
              if(!$db->getone("select * from ". table("resume_training") ." where uid=$uid and pid=$resume_id;")){
                    $tsql['uid']=$uid;
                    $tsql['pid']=$resume_id;
                    $tsql['start']='1900-01-01';
                    $tsql['endtime']='1900-01-01';
                    $tsql['agency']='';
                    $tsql['course']='';
                    $tsql['description']='';
                    $tsql['training_remark'] = '培训经历未填写';
                    conversion_inserttable(table('resume_training'),$tsql);
              }
            //$n=var_export($setsqlarr,true);
            //file_put_contents("../1.txt",$n.$cityay[1], LOCK_EX);
            //exit();
            //索引表
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
        $mylogger->log_complete_module("$module_name finished, 应转:$to_be_converted_count ,实际转:$i");
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