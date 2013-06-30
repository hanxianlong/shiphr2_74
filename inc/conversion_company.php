<?php
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
$module_name="company_profile";
//http://myconverter.shiyishi.tk/inc/conversion_company.php?time=1372523662246&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_

//����������ǰģ��,������ļ��Ѿ����ڣ������ֹ����
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

	$i=0;
        //��˾��Ա��Ϣ��uchome_space����,m_typeid=2Ϊ��˾��Ա��m_typeid=1Ϊ���˻�Ա
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        //��ѯ������corptype��Ϊ0����ҵ��Ϣ(��corptypeΪ0ʱ��˵����ҵ��Ϣδ��ʼ������ʱ���账��)
        $sql="select c.*,(select p_name from {$srcpre}job_provinceandcity where p_id=c.corpprovince) as `provincename`,(select p_name from {$srcpre}job_provinceandcity where p_id=c.corpcity) as `cityname` from `{$srcpre}job_company` c where c.corptype>0";
          $countsql = "select count(*) as total from (select c.*,(select p_name from {$srcpre}job_provinceandcity where p_id=c.corpprovince) as `provincename`,(select p_name from {$srcpre}job_provinceandcity where p_id=c.corpcity) as `cityname` from `{$srcpre}job_company` c  where c.corptype>0";
         
        if(isset($_GET['start_id'])){
            $start_id = intval($_GET['start_id']);
            $sql .=" and c.id>$start_id";
            $countsql .=" and c.id>$start_id";
        }
       
        if(isset($_GET['end_id'])){
            $end_id = intval($_GET['end_id']);
            $sql .=" and c.id<$end_id";
            $countsql .=" and c.id<$end_id";
        }
        $countsql .=") as x;";
       
        $count = $dbsrc->getone($countsql);
        $to_be_converted_count=$count['total'];
        $total_msg = "total:$to_be_converted_count";
        $mylogger->put_msg_to_disk($total_msg);
        
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
		//$userinfo=get_user_inuid($row['uid']);
		//$setsqlarr['uid']=intval($userinfo['uid']);
            $id = intval($row['id']);
                $setsqlarr['id'] = $id;
                $setsqlarr['uid']=intval($row['uid']);
		$setsqlarr['companyname']=$row['corptitle'];
                
                //��˾���ʣ����С�˽�е�
		$nature = get_company_nature($row['corptype']);//$row['m_ecoclass']
                $setsqlarr['nature']=$nature['id'];
		$setsqlarr['nature_cn']=$nature['cn'];
              
		$trade=get_trade($row['industry']);//get_company_trade($row['m_trade']); 
		$setsqlarr['trade']=$trade['id'];
		$setsqlarr['trade_cn']=$trade['cn'];
                
                	/*
		$cityay=explode('*',$row['m_seat']);
		$city=get_city($cityay[1]);*/
                
		$provincename=$row['provincename'];
                $cityname = $row['cityname'];
                $province_id=$row['corpprovince'];
                $city_id=$row['corpcity'];
		//$city=get_city($cityname);
		$setsqlarr['district']=$province_id;//$city['district'];
		$setsqlarr['sdistrict']=$city_id;//$city['sdistrict'];
		$setsqlarr['district_cn']=$provincename. '/' .$cityname;
                //corpsize:
                /*
                 0:1-49��
                 * 1:50-99��
                 * "2">100-499��
                 * "3">500-999��
                 * "4">1000������
                 */
                $corpsize = ($row['corpsize']);
		$scale=get_company_scale($corpsize);//get_company_scale($row['m_workers']);
		$setsqlarr['scale']=$scale['id'];
		$setsqlarr['scale_cn']=$scale['cn'];
		
                //ע���ʽ���shiphr��û�У������롣Ĭ��Ϊ��1
		$setsqlarr['registered']=-1;//$row['m_fund'];
		$setsqlarr['currency']="�����";
		
		$setsqlarr['address']=$row['corpaddress'];
		$setsqlarr['contact']=$row['corpcontact'];
		$setsqlarr['telephone']=$row['corpphone'];
		$setsqlarr['email']=$row['corpemail'];
		$setsqlarr['website']=$row['corpurl'];
                
                //licenseӪҵִ��û��
                //certificate_imgû��
                 $setsqlarr['logo']=$row['corplogo'];//��ҵlogo
		$setsqlarr['contents']=$row['corpdescription'];
                
                //addtime ���ʱ��û��,����Ϊ��ǰʱ��
		$setsqlarr['addtime']=time();//conversion_datefm($row['m_regdate'],2);
                
                //refreshtime����ʱ��û��
		$setsqlarr['refreshtime']=$setsqlarr['addtime'];
		$setsqlarr['audit']=COMPANY_DEFAULT_AUDIT;//Ĭ����֤״̬
               
		/*
                 $setsqlarr['email']=$row['corpzipcode'];//�ʱ�
		$setsqlarr['website']=$row['corpfax'];//����
		$setsqlarr['contents']=$row['corpregyear'];//ע����
                $setsqlarr['contents']=$row['corpregmonth'];//ע����
                
                 ShipHr:
                  $corpregareas = array( "����", "�й���½", "�й����", "�й�̨��", "�й�����", "������", "ŷ��", "����", "����", "����", "����", "����", "Ӣ��", "����", "�¹�", "�ձ�", "����", "�¼���", "���ô�" );
                 $setsqlarr['contents']=$row['corpregarea'];//ע�����ڵ�
                 */
                
		//$n=var_export($setsqlarr,true);
		//file_put_contents("../1.txt",$n, LOCK_EX);
		//exit();
		conversion_inserttable(table('company_profile'),$setsqlarr,false,true);
		$i++;
                
               $mylogger->put_msg($id);
	}
        
        $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
        
exit("ok,{$i}");
?>