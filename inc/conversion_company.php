<?php
@set_time_limit(0);
error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
	$i=0;
        //公司会员信息在uchome_space表中,m_typeid=2为公司会员，m_typeid=1为个人会员
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
                //公司性质：国有、私有等
                /*
shiphr:
 10	国有企业	State-owned Enterprise
11	集体企业	Collective Enterprise
12	外商独资	Wholly Foreign-owned Enterprise
13	中外合资	Chinese-foreign Joint Venture
14	民营企业	Non-government Enterprise
15	股份制企业	Joint-equity Enterprise
16	行政机关	Administrative Organ
17	社会团体	Social Organization
18	事业单位	Institution
19	其他	Other
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
                 0:1-49人
                 * 1:50-99人
                 * "2">100-499人
                 * "3">500-999人
                 * "4">1000人以上
                 */
                $corpsize = ($row['corpsize']);
		$scale=convert_company_scale($corpsize);//get_company_scale($row['m_workers']);
		$setsqlarr['scale']=$scale['id'];
		$setsqlarr['scale_cn']=$scale['cn'];
		
                //注册资金在shiphr中没有，不导入。默认为－1
		$setsqlarr['registered']=-1;//$row['m_fund'];
		$setsqlarr['currency']="人民币";
		
		$setsqlarr['address']=$row['corpaddress'];
		$setsqlarr['contact']=$row['corpcontact'];
		$setsqlarr['telephone']=$row['corpphone'];
		$setsqlarr['email']=$row['corpemail'];
		$setsqlarr['website']=$row['corpurl'];
                
                //license营业执照没有
                //certificate_img没有
                 $setsqlarr['logo']=$row['corplogo'];//企业logo
		$setsqlarr['contents']=$row['corpdescription'];
                
                //addtime 添加时间没有,设置为当前时间
		$setsqlarr['addtime']=time();//conversion_datefm($row['m_regdate'],2);
                
                //refreshtime更新时间没有
		$setsqlarr['refreshtime']=$setsqlarr['addtime'];
		$setsqlarr['audit']=1;
               
		/*
                 $setsqlarr['email']=$row['corpzipcode'];//邮编
		$setsqlarr['website']=$row['corpfax'];//传真
		$setsqlarr['contents']=$row['corpregyear'];//注册年
                $setsqlarr['contents']=$row['corpregmonth'];//注册月
                
                 ShipHr:
                  $corpregareas = array( "其他", "中国大陆", "中国香港", "中国台湾", "中国澳门", "东南亚", "欧洲", "南美", "非洲", "西亚", "北美", "美国", "英国", "法国", "德国", "日本", "韩国", "新加坡", "加拿大" );
                 $setsqlarr['contents']=$row['corpregarea'];//注册所在地
                 */
                
		//$n=var_export($setsqlarr,true);
		//file_put_contents("../1.txt",$n, LOCK_EX);
		//exit();
		conversion_inserttable(table('company_profile'),$setsqlarr,false,true);
		$i++;
	}
exit("ok,{$i}");

/**
 * 公司性质
 * @param type $nature_id
 * @param type $nature_title
 * @return type
 */
function convert_company_nature($nature_id,$nature_title){
    return array('id'=>0,'cn'=>'未知-请编辑对应关系');
}

/**
 * 公司规模
 * @param type $scale_id
 * @param type $scale_title
 * @return type
 */
function convert_company_scale($scale_id,$scale_title){
    /*
     *    0:1-49人
                 * 1:50-99人
                 * "2">100-499人
                 * "3">500-999人
                 * "4">1000人以上
     */
    return array('id'=>0,'cn'=>'未知-请编辑对应关系');
}

function convert_company_trade($trade_id){
    /* shiphr
    1065	船舶
1066	海洋工程
1067	航运
1068	游艇
1069	其他
1073	大型设备/机电设备/重工业
1927	船舶与海洋工程
1928	港口航道与海岸工程
1929	航海仪器
1930	工程设计
1931	能源
*/
    return array('id'=>0,'cn'=>'未知，请编写行业处理函数');
}
?>