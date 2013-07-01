<?php
@set_time_limit(0);
 
//error_reporting(E_ERROR);
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
$i=0;
//http://myconverter.shiyishi.tk/inc/conversion_test.php?qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=74cms32&srcpre=uchome_&srcdbcharset=GBK

$d=3;
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

print($expeience_id);
//生成职位类别对应的关系
$sql ="
select ship.p_id,ship.p_name,ship.p_fid,qs.id,qs.parentid,qs.categoryname,ship.p_enname as categoryname_en from shiphr.uchome_job_position as ship, ship74cms32.qs32_category_jobs as qs
where ship.p_fid=0 and qs.parentid=0 and binary(trim(ship.p_name))=binary(trim(qs.categoryname))
union all 
select ship.p_id,ship.p_name,ship.p_fid,qs.id,qs.parentid,qs.categoryname,ship.p_enname as categoryname_en from shiphr.uchome_job_position as ship, ship74cms32.qs32_category_jobs as qs
where ship.p_fid>0 and qs.parentid>0 and binary(trim(ship.p_name))=binary(trim(qs.categoryname)) and ship.p_name!='其他'
union ALL

select  ship.p_id,ship.p_name,ship.p_fid,qs.id,qs.parentid,qs.categoryname,ship.p_enname as categoryname_en from  
(select *,(select s.p_name from shiphr.uchome_job_position s where s.p_id=ship.p_fid) as ship_p_name from shiphr.uchome_job_position as ship where p_name='其他' and p_fid>0 order by binary(ship_p_name)) ship,
(
select *,(select q.categoryname from ship74cms32.qs32_category_jobs q where q.id=qs.parentid) as qs_p_name from qs32_category_jobs as qs where categoryname='其他' and parentid>0 order by binary(qs_p_name)) qs
 where binary(ship.ship_p_name) = binary(qs.qs_p_name) ;";

$result = $db->query($sql);
$cate_array=array();
while($row=$db->fetch_array($result)){
    $cate_array[$row['p_id']]=array(
        'id'=>$row['id'],
        'cn'=>$row['categoryname'],
        'pid'=>$row['parentid'],
        'en'=>$row['categoryname_en'],
        );
}
 
var_export($cate_array);
print("<br/>");print("<br/>");print("<br/>");print("<br/>");
	$default=array("district"=>0,"sdistrict"=>0,"district_cn"=>'未知');
        $sql = "select id,parentid,categoryname,categoryname_en from ".table('category_district');//." WHERE parentid<>0";
        $result=$db->getall($sql);
        
        foreach ($result as $key => $value) {
           $area_cache[$value['id']]=array('id'=>$value['id'],'cn'=>$value['categoryname'],'en'=>$value['categoryname_en']);
        }
var_export($area_cache);

?>