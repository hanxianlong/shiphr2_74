<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
require_once(dirname(__FILE__).'/splitword.class.php');
$sp = new SPWord();
	$i=0;
	//$sql="select * from `{$srcpre}hire` ";
        $sql="select * from `{$srcpre}job_newjobs` ";
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
            //$userinfo=get_user_inusername($row['h_member']);
            //$company_profile=get_company($userinfo['uid']);
            $id = $row['id'];
            $uid=$row['uid'];
            
            $company_profile=get_company($uid);
            $setsqlarr['id']=$id;//����id
            $setsqlarr['add_mode']=1;//����ģʽ��1������ģʽ 2���ײ�ģʽ
            $setsqlarr['uid']=$uid;//�û�Id
            $setsqlarr['jobs_name']=$row['title'];//��������
            $setsqlarr['companyname']=$company_profile['corptitle'];//��ҵ����
            $setsqlarr['company_id']=$company_profile['id'];
            $setsqlarr['company_addtime']=$company_profile['addtime'];
            $setsqlarr['company_audit']=$company_profile['audit'];

            $setsqlarr['contents']=$row['jobintro'];

            $nature=get_jobs_nature($row['jobtype']);//ְλ����,ȫְ����ְ������
            $setsqlarr['nature']=$nature[0];
            $setsqlarr['nature_cn']=$nature[1];

            //$gender=get_sex($row['h_sex']);//�Ա�Ҫ��shiphr��û���Ա�Ҫ��
            $setsqlarr['sex']=3;//$gender[0];
            $setsqlarr['sex_cn']='����';//$gender[1];

            $setsqlarr['amount']=intval($row['pcount']);//��Ƹ����

         /*   $cat=explode(',',$row['position']);//ְλ���,��Ӧposition
            $cat=$cat[0];
            $cat=explode('*',$cat);
          */
            $cat=explode(',',$row['subposition']);//ְλ���,��Ӧposition,��ְλ���ƽ��о�ȷ����
            $cat=$cat[0];
            $cat=explode('+',$cat);
            $category=get_jobs_cat($cat[1]);
            $setsqlarr['category']=$category['category'];
            $setsqlarr['subclass']=$category['subclass'];
            $setsqlarr['category_cn']=$category['category_cn'];

            //������ҵ
            $setsqlarr['trade']=$company_profile['trade'];
            $setsqlarr['trade_cn']=$company_profile['trade_cn'];

            //��˾��ģ
            $setsqlarr['scale']=$company_profile['scale'];
            $setsqlarr['scale_cn']=$company_profile['scale_cn'];

            //���ڳ���,
        /*    $cityay=explode('*',$row['jobcity']);
            $city=get_city($cityay[1]);
            $setsqlarr['district']=$city['district'];
            $setsqlarr['sdistrict']=$city['sdistrict'];
            $setsqlarr['district_cn']=$city['district_cn'];*/

            $cityay=explode('+',$row['jobcity']);
            if(array_length($cityay)>=1){
                $city=get_city($cityay[0]);
                $setsqlarr['district']=$city['district'];
                $setsqlarr['sdistrict']=$city['sdistrict'];
                $setsqlarr['district_cn']=$city['district_cn'];
            }
            
            $setsqlarr['tag']="";

            $setsqlarr['street']=$company_profile['street'];
            $setsqlarr['street_cn']=$company_profile['street_cn'];
            $setsqlarr['officebuilding']=$company_profile['officebuilding'];
            $setsqlarr['officebuilding_cn']=$company_profile['officebuilding_cn'];	

            //shiphr:entrytype:����ʱ��
            //shiphr:edudegree:ѧ��
            //shiphr:seniority �������� 
            //shiphr:language  ����Ҫ��
            //shiphr:langugelevel ���Եȼ�Ҫ��
         //   $edu= $dbsrc->getone("select * from `{$frpre}edu` where e_id = '{$row['edudegree']}' LIMIT 1");
          //  $education=get_edu($edu['e_name']);
            $education=get_edu($edu['edudegree']);
            $setsqlarr['education']=$education['id'];
            $setsqlarr['education_cn']=$education['cn'];

            //��������:0������  1��2��3��5��10��N������
            $experience=get_experience($row['seniority']);
            $setsqlarr['experience']=$experience['id'];
            $setsqlarr['experience_cn']=$experience['cn'];

            //shiphr emolumenttypeн�����ͣ�emolument��н�ʷ�Χ
            //array("����", "2000��3000/��", "3000��4000/��", "4000��6000/��", "6000��8000/��", "8000��10000/��", "10000��15000/��", "15000��20000/��", "20000��30000/��", "30000����/��")
          //  $wage=get_wage(get_wage_str($row['emolument']));
            $wage = get_wage($row['emolument']);
            $setsqlarr['wage']=$wage['id'];//$wage['id'];
            $setsqlarr['wage_cn']=$wage['cn'];

            $setsqlarr['graduate']=0;
            $setsqlarr['addtime']=conversion_datefm($row['h_adddate'],2);

            $setsqlarr['deadline']=conversion_datefm($row['h_enddate'],2);
            $setsqlarr['refreshtime']=$setsqlarr['addtime'];

            $setsqlarr['key']=$setsqlarr['jobs_name'].$company_profile['companyname'].$setsqlarr['category_cn'].$setsqlarr['district_cn'].$setsqlarr['contents'];
            $setsqlarr['key']="{$setsqlarr['jobs_name']} {$company_profile['companyname']} ".$sp->extracttag($setsqlarr['key']);
            $setsqlarr['key']=$sp->pad($setsqlarr['key']);
            $setsqlarr['subsite_id']=0;
            $setsqlarr['tpl']=$company_profile['tpl'];
            $setsqlarr['map_x']=$company_profile['map_x'];
            $setsqlarr['map_y']=$company_profile['map_y'];

            $setsqlarr['audit']=1;

            $setsqlarr_contact['contact']=$row['jobcontact'];//$row['h_contact'];
            $setsqlarr_contact['qq']="";
            $setsqlarr_contact['telephone']=$row['jobphone'];//$row['h_tel'];

            $setsqlarr_contact['address']=$row['jobadress'];//$row['h_address'];
            $setsqlarr_contact['email']=$row['jobemail'];//$userinfo['email'];
            $setsqlarr_contact['notify']=0;

          //  LOCK_EX
            //$n=var_export($setsqlarr,true);
            //file_put_contents("../1.txt",$n, LOCK_EX);
            //exit();
            //���ְλ��Ϣ
            $pid=conversion_inserttable(table('jobs'),$setsqlarr,true,true);
            empty($pid)?exit("��ӹ���ʧ�ܣ�"):'';
            //�����ϵ��ʽ
            $setsqlarr_contact['pid']=$pid;
            $count = $db->getone('select count(*) as count from '. table('jobs_contact') .' where pid=' . $pid);
            if(intval($count['count'])==0)
            {
                !conversion_inserttable(table('jobs_contact'),$setsqlarr_contact)?exit("��ӹ�����ϵ��ʽʧ�ܣ�jobid:" . $pid):'';
            }
            
            $searchtab['id']=$pid;
            $searchtab['uid']=$setsqlarr['uid'];
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
            $searchtab['street']=$company_profile['street'];
            $searchtab['officebuilding']=$company_profile['officebuilding'];	
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
            $tagsql['id']=$pid;
            $tagsql['uid']=$setsqlarr['uid'];
            $tagsql['category']=$setsqlarr['category'];
            $tagsql['subclass']=$setsqlarr['subclass'];
            $tagsql['district']=$setsqlarr['district'];
            $tagsql['sdistrict']=$setsqlarr['sdistrict'];
            conversion_inserttable(table('jobs_search_tag'),$tagsql,false,true);
            $i++;
        }
exit("ok,{$i}");
?>