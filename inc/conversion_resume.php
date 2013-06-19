<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
require_once(dirname(__FILE__).'/splitword.class.php');
$sp = new SPWord();
	$i=0;
	$sql="select * from `{$srcpre}resume` ";
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
				$userinfo=get_user_inusername($row['r_member']);
				$setsqlarr['uid']=intval($userinfo['uid']);
				$setsqlarr['title']=$row['r_title'];
				$setsqlarr['fullname']=$row['r_name'];
				$setsqlarr['sex']=$row['r_sex'];
				$setsqlarr['sex_cn']=$row['r_sex']=="1"?'男':'女';
				$setsqlarr['birthdate']=intval(substr($row['r_birth'],0,4));
				$setsqlarr['height']=intval($row['r_height']);
				if ($row['r_marriage']=="未婚"){
				$setsqlarr['marriage']=1;
				$setsqlarr['marriage_cn']="未婚";
				}elseif($row['r_marriage']=="已婚"){
				$setsqlarr['marriage']=2;
				$setsqlarr['marriage_cn']="已婚";
				}else{
				$setsqlarr['marriage']=3;
				$setsqlarr['marriage_cn']="保密";
				}
				$graduate=substr($row['r_graduate'],0,4);
				if ($graduate=='0000')
				{
				$setsqlarr['experience']=76;
				$setsqlarr['experience_cn']="1-3年";
				}
				else
				{
					$d=date('Y');
					$d=$d-$graduate;
					if ($d>1 and $d<4)
					{
					$setsqlarr['experience']=76;
					$setsqlarr['experience_cn']="1-3年";
					}
					elseif($d>3 and $d<6)
					{
					$setsqlarr['experience']=77;
					$setsqlarr['experience_cn']="3-5年";
					}
					elseif($d>4 and $d<11)
					{
					$setsqlarr['experience']=78;
					$setsqlarr['experience_cn']="5-10年";
					}
					elseif($d>10)
					{
					$setsqlarr['experience']=79;
					$setsqlarr['experience_cn']="10年以上";
					}
					else
					{
					$setsqlarr['experience']=76;
					$setsqlarr['experience_cn']="1-3年";
					}
				}
				$setsqlarr['householdaddress']=str_replace('*','/',$row['r_hukou']);
				$edu= $dbsrc->getone("select * from `{$frpre}edu` where e_id = '{$row['r_edu']}' LIMIT 1");
				$education=get_edu($edu['e_name']);
				$setsqlarr['education']=$education['id'];
				$setsqlarr['education_cn']=$education['cn'];
				$setsqlarr['tag']='';
				$setsqlarr['telephone']=$row['r_mobile'];
				$setsqlarr['email']=$row['r_email'];
				$setsqlarr['email_notify']=0;
				$setsqlarr['address']=str_replace('*','/',$row['r_seat']);
				$setsqlarr['website']=$row['r_url'];
				$setsqlarr['qq']=$row['r_chat'];
				$setsqlarr['refreshtime']=conversion_datefm($row['r_adddate'],2);;
				$setsqlarr['display_name']=2;	
				$setsqlarr['audit']=1;
				$setsqlarr['talent']=1;
				$setsqlarr['addtime']=$setsqlarr['refreshtime'];
				$resultrecentjobs = $dbsrc->query("select * from `{$frpre}work` WHERE w_rid='{$row['r_id']}' ");
				$recentjobs=array();
				while($rowwork = $dbsrc->fetch_array($resultrecentjobs))
				{
					$recentjobs[]=$rowwork['w_comname'];
				}
				if (empty($recentjobs))
				{
				$setsqlarr['recentjobs']='未填写';
				}
				else
				{
				$setsqlarr['recentjobs']=implode(',',$recentjobs);
				}				
				$nature=get_jobs_nature($row['r_jobtype']);
				$setsqlarr['nature']=$nature[0];
				$setsqlarr['nature_cn']=$nature[1];
				$cityay=explode('*',$row['r_workadd']);
				$city=get_city($cityay[1]);
				$setsqlarr['district']=$city['district'];
				$setsqlarr['sdistrict']=$city['sdistrict'];
				$setsqlarr['district_cn']=$city['district_cn'];
				$wage=get_wage(get_wage_str($row['r_pay']));
				$setsqlarr['wage']=$wage['id'];
				$setsqlarr['wage_cn']=$wage['cn'];
				$setsqlarr['trade']="";
				$setsqlarr['trade_cn']=$row['r_trade'];
				$setsqlarr['intention_jobs']=str_replace('*',',',$row['r_position']);
				$setsqlarr['specialty']=$row['r_ability'];
				$logo= $dbsrc->getone("select m_logo from `{$frpre}member` where m_login = '{$row['r_member']}' LIMIT 1");
				if (!empty($logo['m_logo']))
				{
			 
						$setsqlarr['photo_audit']=1;
						$setsqlarr['photo_display']=1;
						$setsqlarr['photo_img']=$logo['m_logo'];
						$setsqlarr['photo']=1;
				}
				else
				{
						$setsqlarr['photo_audit']=1;
						$setsqlarr['photo_display']=1;
						$setsqlarr['photo_img']='';
						$setsqlarr['photo']=0;
				}
				$setsqlarr['complete']=1;
				$setsqlarr['complete_percent']=60;
				$setsqlarr['talent']=1;
				$setsqlarr['click']=$row['r_visitnum'];				
				$setsqlarr['key']=$setsqlarr['intention_jobs'].$setsqlarr['recentjobs'].$setsqlarr['specialty'];		
				$setsqlarr['key']="{$setsqlarr['fullname']} ".$sp->extracttag($setsqlarr['key']);
				$setsqlarr['key']=str_replace(","," ",$setsqlarr['intention_jobs'])." {$setsqlarr['key']} {$resume_basic['education_cn']}";
				$setsqlarr['key']=$sp->pad($setsqlarr['key']);
				$pid=conversion_inserttable(table('resume'),$setsqlarr,1);
				$jobs=explode(',',$setsqlarr['intention_jobs']);
				$j_s=array();
				if (is_array($jobs) && !empty($jobs))
				{
					foreach($jobs as $j)
					{
						if (empty($j))
						{
						continue;
						}
						else
						{
						$j=str_replace('/','',$j);
						$category=get_jobs_cat($j);
						$j_s[]=$category['category'].'.'.$category['subclass'];
						}
					}
					$j_s=array_unique($j_s);
					$j_s=implode('-',$j_s);
					if ($j_s<>'0.0')
					{
					conversion_add_resume_jobs($pid,$userinfo['uid'],$j_s);
					}
				}
				//教育经历
				$resultedu = $dbsrc->query("select * from `{$frpre}education` WHERE e_rid='{$row['r_id']}' ");
				while($rowedu = $dbsrc->fetch_array($resultedu))
				{
					$esql['uid']=$userinfo['uid'];
					$esql['pid']=$pid;
					$esql['start']=$rowedu['e_startyear'].'年'.$rowedu['e_startmonth'].'月';
					$esql['endtime']=$rowedu['e_endyear'].'年'.$rowedu['e_endmonth'].'月';
					$esql['school']=$rowedu['e_school'];
					$esql['speciality']=str_replace('*','/',$rowedu['e_profession']);
					$education=get_edu($rowedu['e_edu']);
					$esql['education']=$education['id'];
					$esql['education_cn']=$education['cn'];
					conversion_inserttable(table('resume_education'),$esql);
				}
				 //工作经历
				$resultwork = $dbsrc->query("select * from `{$frpre}work` WHERE w_rid='{$row['r_id']}' ");
				while($rowwork = $dbsrc->fetch_array($resultwork))
				{
					$wsql['uid']=$userinfo['uid'];
					$wsql['pid']=$pid;
					$wsql['start']=$rowwork['w_startyear'].'年'.$rowwork['w_startmonth'].'月';
					$wsql['endtime']=$rowwork['w_endyear'].'年'.$rowwork['w_endmonth'].'月';
					$wsql['companyname']=$rowwork['w_comname'];
					$wsql['jobs']=$rowwork['w_place'];
					$wsql['companyprofile']=$rowedu['w_introduce'];
					$wsql['achievements']='未填写';		 
					conversion_inserttable(table('resume_work'),$wsql);
				}
				//培训
				$resulttraining = $dbsrc->query("select * from `{$frpre}training` WHERE t_rid='{$row['r_id']}' ");
				while($rowt = $dbsrc->fetch_array($resulttraining))
				{
					$tsql['uid']=$userinfo['uid'];
					$tsql['pid']=$pid;
					$tsql['start']=$rowt['t_startyear'].'年'.$rowt['t_startmonth'].'月';
					$tsql['endtime']=$rowt['t_endyear'].'年'.$rowt['t_endmonth'].'月';
					$tsql['agency']=$rowt['t_train'];
					$tsql['course']=$rowt['t_course'];
					$tsql['description']=$rowt['t_detail'];
					conversion_inserttable(table('resume_training'),$tsql);
				}
				//$n=var_export($setsqlarr,true);
				//file_put_contents("../1.txt",$n.$cityay[1], LOCK_EX);
				//exit();
				//索引表
				$searchtab['id']=$pid;
				$searchtab['uid']=$setsqlarr['uid'];
				$searchtab['subsite_id']=intval($setsqlarr['subsite_id']);
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
				conversion_inserttable(table('resume_search_rtime'),$searchtab);
				$searchtab['key']=$setsqlarr['key'];
				conversion_inserttable(table('resume_search_key'),$searchtab);
				unset($searchtab);
				$tagsql['tag1']=$tagsql['tag2']=$tagsql['tag3']=$tagsql['tag4']=$tagsql['tag5']=0;
				$tagsql['id']=$pid;
				$tagsql['uid']=$setsqlarr['uid'];
				$tagsql['subsite_id']=$setsqlarr['subsite_id'];
				$tagsql['experience']=$setsqlarr['experience'];
				$tagsql['district']=$setsqlarr['district'];
				$tagsql['sdistrict']=$setsqlarr['sdistrict'];
				$tagsql['education']=$setsqlarr['education'];
				conversion_inserttable(table('resume_search_tag'),$tagsql);
				$i++;
}
exit("ok,{$i}");
?>