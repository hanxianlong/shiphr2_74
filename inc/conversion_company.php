<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
	$i=0;
        //��˾��Ա��Ϣ��uchome_space����,m_typeid=2Ϊ��˾��Ա��m_typeid=1Ϊ���˻�Ա
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        $sql="select c.*,,(select p_name from {$srcpre}job_provinceandcity where p_id=c.corpprovince) as `provincename`,(select p_name from {$srcpre}job_provinceandcity where p_id=c.corpcity) as `cityname` from `{$srcpre}company` c";// where m_typeid=2";
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
		//$userinfo=get_user_inuid($row['uid']);
		//$setsqlarr['uid']=intval($userinfo['uid']);
                $setsqlarr['id'] = intval($row['id']);
                $setsqlarr['uid']=intval($row['uid']);
		$setsqlarr['companyname']=$row['corptitle'];
                //��˾���ʣ����С�˽�е�
                /*
shiphr:
 10	������ҵ	State-owned Enterprise
11	������ҵ	Collective Enterprise
12	���̶���	Wholly Foreign-owned Enterprise
13	�������	Chinese-foreign Joint Venture
14	��Ӫ��ҵ	Non-government Enterprise
15	�ɷ�����ҵ	Joint-equity Enterprise
16	��������	Administrative Organ
17	�������	Social Organization
18	��ҵ��λ	Institution
19	����	Other
                 */
		$nature = convert_company_nature($row['corptype']);//$row['m_ecoclass']
                $setsqlarr['nature']=$nature['id'];
		$setsqlarr['nature_cn']=$nature['cn'];
                	   
		$trade=convert_company_trade($row['industry']);//get_company_trade($row['m_trade']); 
		$setsqlarr['trade']=$trade['id'];
		$setsqlarr['trade_cn']=$trade['cn'];
                
                	/*
		$cityay=explode('*',$row['m_seat']);
		$city=get_city($cityay[1]);*/
                
		$provincename=$row['provincename'];
                $cityname = $row['cityname'];
		$city=get_city($cityname);
		$setsqlarr['district']=$city['district'];
		$setsqlarr['sdistrict']=$city['sdistrict'];
		$setsqlarr['district_cn']=$provincename. '/' .$city['district_cn'];
                //corpsize:
                /*
                 0:1-49��
                 * 1:50-99��
                 * "2">100-499��
                 * "3">500-999��
                 * "4">1000������
                 */
                $corpsize = ($row['corpsize']);
		$scale=convert_company_scale($corpsize);//get_company_scale($row['m_workers']);
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
		$setsqlarr['audit']=1;
               
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
	}
exit("ok,{$i}");

/**
 * ��˾����
 * @param type $nature_id
 * @param type $nature_title
 * @return type
 */
function convert_company_nature($nature_id,$nature_title){
    return array('id'=>0,'cn'=>'δ֪-��༭��Ӧ��ϵ');
}

/**
 * ��˾��ģ
 * @param type $scale_id
 * @param type $scale_title
 * @return type
 */
function convert_company_scale($scale_id,$scale_title){
    /*
     *    0:1-49��
                 * 1:50-99��
                 * "2">100-499��
                 * "3">500-999��
                 * "4">1000������
     */
    return array('id'=>0,'cn'=>'δ֪-��༭��Ӧ��ϵ');
}

function convert_company_trade($trade_id){
    /* shiphr
    1065	����
1066	���󹤳�
1067	����
1068	��ͧ
1069	����
1073	�����豸/�����豸/�ع�ҵ
1927	�����뺣�󹤳�
1928	�ۿں����뺣������
1929	��������
1930	�������
1931	��Դ
*/
    return array('id'=>0,'cn'=>'δ֪�����д��ҵ������');
}
?>