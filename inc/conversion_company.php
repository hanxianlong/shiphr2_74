<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
	$i=0;
        //公司会员信息在uchome_space表中,m_typeid=2为公司会员，m_typeid=1为个人会员
	//$sql="select * from `{$srcpre}member` where m_typeid=2";
        $sql="select * from `{$srcpre}company`";// where m_typeid=2";
	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
		$userinfo=get_user_inuid($row['uid']);
		$setsqlarr['uid']=intval($userinfo['uid']);
		$setsqlarr['companyname']=$row['corptitle'];
		
 		//$nature=get_company_nature($row['m_ecoclass']);
		$nature = $row[''];
                $setsqlarr['nature']=$nature['id'];
		$setsqlarr['nature_cn']=$nature['cn'];
	
		$trade=get_company_trade($row['m_trade']); 
		$setsqlarr['trade']=$trade['id'];
		$setsqlarr['trade_cn']=$trade['cn'];
		
		$cityay=explode('*',$row['m_seat']);
		$city=get_city($cityay[1]);
		$setsqlarr['district']=$city['district'];
		$setsqlarr['sdistrict']=$city['sdistrict'];
		$setsqlarr['district_cn']=$city['district_cn'];
		
		$scale=get_company_scale($row['m_workers']);
		$setsqlarr['scale']=$scale['id'];
		$setsqlarr['scale_cn']=$scale['cn'];
		
		$setsqlarr['registered']=$row['m_fund'];
		$setsqlarr['currency']="人民币";
		
		$setsqlarr['address']=$row['m_address'];
		$setsqlarr['contact']=$row['m_contact'];
		$setsqlarr['telephone']=$row['m_tel'];
		$setsqlarr['email']=$row['m_email'];
		$setsqlarr['website']=$row['m_url'];
		$setsqlarr['contents']=$row['m_introduce'];
		$setsqlarr['addtime']=conversion_datefm($row['m_regdate'],2);
		$setsqlarr['refreshtime']=$setsqlarr['addtime'];
		$setsqlarr['audit']=1;
		
		//$n=var_export($setsqlarr,true);
		//file_put_contents("../1.txt",$n, LOCK_EX);
		//exit();
		conversion_inserttable(table('company_profile'),$setsqlarr);
		$i++;
	}
exit("ok,{$i}");
?>