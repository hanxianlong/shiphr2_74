<?php
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
require_once(dirname(__FILE__).'/splitword.class.php');
$sp = new SPWord();
$module_name="jobs";

//����������ǰģ��,������ļ��Ѿ����ڣ������ֹ����
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);


$sql="select jobs.*,jobs.recommend as job_recommend,jobs.id as jobid,com.* from `{$srcpre}job_newjobs` jobs,`{$srcpre}job_company` com where jobs.corpid=com.id ";
$countsql = "select count(*) as total from (select jobs.* from `{$srcpre}job_newjobs` jobs,`{$srcpre}job_company` com where jobs.corpid=com.id ";

if(isset($_GET['start_id'])){
    $start_id = intval($_GET['start_id']);
    $sql .=" and jobs.id>$start_id";
    $countsql .=" and jobs.id>$start_id";
}

if(isset($_GET['end_id'])){
    $end_id = intval($_GET['end_id']);
    $sql .=" and jobs.id<$end_id";
    $countsql .=" and jobs.id<$end_id";
}
$countsql .=") as x;";

$count = $dbsrc->getone($countsql);
$to_be_converted_count=$count['total'];
$total_msg = "total:$to_be_converted_count";
$mylogger->put_msg_to_disk($total_msg);

$i=0;
$result = $dbsrc->query($sql);
while($row = $dbsrc->fetch_array($result))
{ 
    $jobid = $row['jobid'];
    $uid=$row['uid']; 
    $setsqlarr['id']=$jobid;//����id
    $setsqlarr['add_mode']=2;//����ģʽ��1������ģʽ 2���ײ�ģʽ
    $setsqlarr['uid']=$uid;//�û�Id
    $setsqlarr['jobs_name']=$row['title'];//��������

    //��ҵ������Ϣֱ�Ӷ�ȡ��������ҵ��Ϣ�ֶ�
    $setsqlarr['companyname']=$row['corptitle'];//��ҵ����
    $setsqlarr['company_id']=$row['corpid'];
    //��ҵ��Ϣ�����ʱ���ֶ�
  //  $setsqlarr['company_addtime']=$row['addtime'];
    $setsqlarr['company_audit']=COMPANY_DEFAULT_AUDIT;
    $setsqlarr['contents']=$row['jobintro'];

    $nature=get_jobs_nature($row['jobtype']);//ְλ����,ȫְ����ְ������
    $setsqlarr['nature']=$nature['id'];
    $setsqlarr['nature_cn']=$nature['cn'];

    //$gender=get_sex($row['h_sex']);//�Ա�Ҫ��shiphr��û���Ա�Ҫ��
    $setsqlarr['sex']=3;//$gender[0];
    $setsqlarr['sex_cn']='����';//$gender[1];

    $setsqlarr['amount']=intval($row['pcount']);//��Ƹ����

    //ְλ�ƹ����
    $is_recommend= $row['job_recommend'];//�Ƿ�Ϊ�Ƽ�ְλ
    $setsqlarr['recommend']=$is_recommend;//�Ƿ��Ƽ�
    $setsqlarr['is_deleted']=$row['isdeleted'];//��������
    $setsqlarr['click']=$row['view'];//��������
    $setsqlarr['emergency']=0;
    $setsqlarr['stick']=0;
 /*   $cat=explode(',',$row['position']);//ְλ���,��Ӧposition
    $cat=$cat[0];
    $cat=explode('*',$cat);
  */
   /* $cats=explode(',',$row['subposition']);//ְλ���,��Ӧposition,��ְλ���ƽ��о�ȷ����
    $cat=$cats[0];
    $cat=explode('+',$cat);
    $category=get_jobs_cat($cat[1]);*/
    $category_array = explode(",",$row['position']);
    $category_info = explode("*", $category_array[0]);
    $category = get_jobs_cat($category_info[0]);
    $category_cn = $category['category_cn'];
    $s_category=array('id'=>0);
    if(count($category_info)==2){
        $s_category=get_jobs_cat($category_info[1]);
        $category_cn .= '/' . $s_category['category_cn'];
    }

    $setsqlarr['category']=$category['id'];;
    $setsqlarr['subclass']=$s_category['id'];
    $setsqlarr['category_cn']=$category_cn;

//������ҵ ֱ�Ӷ�ȡ�������ֶ�
    $trade=get_trade($row['industry']);//get_company_trade($row['m_trade']); 
    $setsqlarr['trade']=$trade['id'];
    $setsqlarr['trade_cn']=$trade['cn'];

    //��˾��ģ
    $corpsize = ($row['corpsize']);
    $scale=get_company_scale($corpsize); 
    $setsqlarr['scale']=$scale['id'];
    $setsqlarr['scale_cn']=$scale['cn'];

//��������,���ڳ���
    //jobprovice����Ϊprov_id*city_id,prov_id*city_id,ȡ��0����Ϊ74cms�Ĺ�������
    $area_ids = explode(',',$row['jobprovince']);
    $province_ids=explode('*',$area_ids[0]);

    $district_id=$province_ids[0];
    $sdistrict_id=0;
    if(count($province_ids)==2){
        $sdistrict_id=$province_ids[1];
    }

    $cityay=explode('+',$row['jobcity']);
    if(count($cityay)>=1){
        $setsqlarr['district']=$district_id;
        $setsqlarr['sdistrict']=$sdistrict_id;
        $area_info = get_area_name($district_id);
        $area_name = $area_info['cn'];
        if($sdistrict_id>0){
            $area_info =get_area_name($sdistrict_id);
            $area_name .='/'. $area_info['cn'];
        }
        $setsqlarr['district_cn']=$area_name;
    }

    $setsqlarr['tag']="";

    $street = 0;
    $street_cn='';
    $officebuilding=0;
    $officebuilding_cn='';
    //���ڽֵ���ֱ�Ӷ�ȡ�������ֶ�
    $setsqlarr['street']=$street;
    $setsqlarr['street_cn']=$street_cn;
    $setsqlarr['officebuilding']=$officebuilding;
    $setsqlarr['officebuilding_cn']=$officebuilding_cn;	

    //shiphr:entrytype:����ʱ��
    //shiphr:edudegree:ѧ��
    //shiphr:seniority �������� 
    //shiphr:language  ����Ҫ��
    //shiphr:langugelevel ���Եȼ�Ҫ��
 //   $edu= $dbsrc->getone("select * from `{$frpre}edu` where e_id = '{$row['edudegree']}' LIMIT 1");
    $education=get_edu($row['edudegree']);
    $setsqlarr['education']=$education['id'];
    $setsqlarr['education_cn']=$education['cn'];

    //��������:0������  1��2��3��5��10��N������
    $experience=get_experience($row['seniority']);
    $setsqlarr['experience']=$experience['id'];
    $setsqlarr['experience_cn']=$experience['cn'];

    //shiphr emolumenttypeн�����ͣ�emolument��н�ʷ�Χ
    //array("����", "2000��3000/��", "3000��4000/��", "4000��6000/��", "6000��8000/��", "8000��10000/��", "10000��15000/��", "15000��20000/��", "20000��30000/��", "30000����/��")
    $wage = get_wage($row['emolument']);
    $setsqlarr['wage']=$wage['id'];//$wage['id'];
    $setsqlarr['wage_cn']=$wage['cn'];

    $setsqlarr['graduate']=0;
    $setsqlarr['addtime']=$row['dateline'];//conversion_datefm($row['h_adddate'],2);

    $setsqlarr['deadline']=intval($row['dateline']) + intval($row['days'])*24*3600;//conversion_datefm($row['h_enddate'],2);
    $setsqlarr['refreshtime']=$row['dateline'];//shiphrˢ��ʱ�伴����ʱ��

    //companynameֱ�Ӷ�ȡ�������ֶ�
    $setsqlarr['key']=$setsqlarr['jobs_name'].$row['corptitle'].$setsqlarr['category_cn'].$setsqlarr['district_cn'].$setsqlarr['contents'];
    $setsqlarr['key']="{$setsqlarr['jobs_name']} {$row['corptitle']} ".$sp->extracttag($setsqlarr['key']);
    $setsqlarr['key']=$sp->pad($setsqlarr['key']);
    $setsqlarr['subsite_id']=0;

    //ְλģ�壬ֱ�Ӷ�ȡ�������ֶ�,��Щ�ֶ���ת��ʱ��û�У��ʿ���ֱ����Ϊ0
    $setsqlarr['tpl']='';
    $setsqlarr['map_x']=0;
    $setsqlarr['map_y']=0;

    $setsqlarr['audit']=1;//Ĭ��Ϊ�����ͨ��

    $setsqlarr_contact['contact']=$row['jobcontact'];//$row['h_contact'];
    $setsqlarr_contact['qq']="";
    $setsqlarr_contact['telephone']=$row['jobphone'];//$row['h_tel'];

    $setsqlarr_contact['address']=$row['jobaddress'];//$row['h_address'];
    $setsqlarr_contact['email']=$row['jobemail'];//$userinfo['email'];
    $setsqlarr_contact['notify']=0;

  //  LOCK_EX
    //$n=var_export($setsqlarr,true);
    //file_put_contents("../1.txt",$n, LOCK_EX);
    //exit();
    //���ְλ��Ϣ
    conversion_inserttable(table('jobs'),$setsqlarr,false,true);

    //�����ϵ��ʽ
    $setsqlarr_contact['pid']=$jobid;
    $count = $db->getone('select count(*) as count from '. table('jobs_contact') .' where pid=' . $jobid);
    if(intval($count['count'])==0)
    {
        !conversion_inserttable(table('jobs_contact'),$setsqlarr_contact)?exit("��ӹ�����ϵ��ʽʧ�ܣ�jobid:" . $jobid):'';
    }

    $searchtab['id']=$jobid;
    $searchtab['uid']=$uid;
    $searchtab['subsite_id']=$setsqlarr['subsite_id'];
    $searchtab['recommend']=$setsqlarr['recommend'];
    $searchtab['emergency']=$setsqlarr['emergency'];
    $searchtab['nature']=$setsqlarr['nature'];
    $searchtab['sex']=$setsqlarr['sex'];
    $searchtab['category']=$setsqlarr['category'];
    $searchtab['subclass']=$setsqlarr['subclass'];
    $searchtab['trade']=$setsqlarr['trade'];
    $searchtab['district']=$setsqlarr['district'];
    $searchtab['sdistrict']=$setsqlarr['sdistrict'];	

    //�����ֶε����ڽֵ������ڴ��þ�ֱ�Ӷ�ȡ�����Ĺ�˾��Ϣ���ֶ�
    $searchtab['street']=$street;
    $searchtab['officebuilding']=$officebuilding;	

    $searchtab['education']=$setsqlarr['education'];
    $searchtab['experience']=$setsqlarr['experience'];
    $searchtab['wage']=$setsqlarr['wage'];
    $searchtab['refreshtime']=$setsqlarr['refreshtime'];
    $searchtab['scale']=$setsqlarr['scale'];	
    //
    conversion_inserttable(table('jobs_search_wage'),$searchtab,false,true);
    conversion_inserttable(table('jobs_search_scale'),$searchtab,false,true);
    //
    $searchtab['map_x']=$setsqlarr['map_x'];
    $searchtab['map_y']=$setsqlarr['map_y'];
    conversion_inserttable(table('jobs_search_rtime'),$searchtab,false,true);
    unset($searchtab['map_x'],$searchtab['map_y']);
    //
    $searchtab['stick']=$setsqlarr['stick'];
    conversion_inserttable(table('jobs_search_stickrtime'),$searchtab,false,true);
    unset($searchtab['stick']);
    //
    $searchtab['click']=$setsqlarr['click'];
    conversion_inserttable(table('jobs_search_hot'),$searchtab,false,true);
    unset($searchtab['click']);
    //
    $searchtab['key']=$setsqlarr['key'];
    $searchtab['map_x']=$setsqlarr['map_x'];
    $searchtab['map_y']=$setsqlarr['map_y'];
    conversion_inserttable(table('jobs_search_key'),$searchtab,false,true);
    unset($searchtab);
    //
    $tag=explode('|',$setsqlarr['tag']);
    $tagindex=1;
    $tagsql['tag1']=$tagsql['tag2']=$tagsql['tag3']=$tagsql['tag4']=$tagsql['tag5']=0;
    if (!empty($tag) && is_array($tag))
    {
            foreach($tag as $v)
            {
                $vid=explode(',',$v);
                $tagsql['tag'.$tagindex]=intval($vid[0]);
                $tagindex++;
            }
    }
    $tagsql['id']=$jobid;
    $tagsql['uid']=$uid;
    $tagsql['category']=$setsqlarr['category'];
    $tagsql['subclass']=$setsqlarr['subclass'];
    $tagsql['district']=$setsqlarr['district'];
    $tagsql['sdistrict']=$setsqlarr['sdistrict'];
    conversion_inserttable(table('jobs_search_tag'),$tagsql,false,true);

    //���Ϊ�ƹ�ְλ��������ƹ���Ϣ���ƹ����
    if($is_recommend==1){
        $endtime = intval($setsqlarr['deadline']);
        $starttime = intval($setsqlarr['addtime']);
        $days = ($starttime-$endtime)/60/60/24;
        $promotionid=1;
        $promotion_sql_array['cp_days']= $days;
        $promotion_sql_array['cp_jobid']=$jobid;
        $promotion_sql_array['cp_promotionid']=$promotionid;//1���Ƽ�ְλ 2��������Ƹ 3��ְλ�ö�  4��ְλ��ɫ

        $promotion_sql = "select * from ".table('promotion')."  WHERE cp_jobid='$jobid' AND cp_promotionid='$promotionid' LIMIT 1";
        //���ڲ����ڵ�����²�������
        if (!$db->getone($promotion_sql))
        {
                $promotion_sql_array['cp_starttime']=$starttime;
                $promotion_sql_array['cp_endtime']=$endtime;//strtotime("{$setsqlarr['cp_days']} day");
                $promotion_sql_array['cp_available']=1;
                $promotion_sql_array['cp_uid']=$uid;
                conversion_inserttable(table('promotion'),$promotion_sql_array);
        }
    }

    $i++;
    $mylogger->put_msg($jobid);
}

$mylogger->flush_all();
$mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
exit("ok,{$i}");
?>