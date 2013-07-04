<?php
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
$module_name="links_and_ads";
//http://myconverter.shiyishi.tk/inc/conversion_link.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_
//
//尝试锁定当前模块,如果锁文件已经存在，则会终止运行
mylocker::try_lock_module($module_name);
$mylogger = new mylogger($module_name);

	$i=0;
	$sql="select * from `{$srcpre}ad`";
        $countsql = "select count(*) as total from (".$sql .") s";
        
        $count = $dbsrc->getone($countsql);
$to_be_converted_count=$count['total'];
$total_msg = "total:$to_be_converted_count";
$mylogger->put_msg_to_disk($total_msg);
$result = $dbsrc->query($sql);

	$result = $dbsrc->query($sql);
	while($row = $dbsrc->fetch_array($result))
	{
        $title = $row['title'];
        $id = $row['adid'];
        $available = $row['available'];
        $title = $row['title'];
        $pagetype=$row['pagetype'];
        /**
         *  <OPTION selected value=brandabove>首页品牌招聘--上部 (155*50)</OPTION>
         * <OPTION value=brandcenter>首页品牌招聘--中部 (468*68)</OPTION>
         * <OPTION value=brandunder>首页品牌招聘--下部 (228*48)</OPTION>
         * <OPTION value=schoolleft>首页院校联盟 (226*46)</OPTION>
         * <OPTION value=coopright>首页合作媒体 (226*46)</OPTION>
         * <OPTION value=hotjob>首页热门招聘(文字)</OPTION>
         * <OPTION value=emrecruit>首页紧急招聘(文字)</OPTION>
         * <OPTION value=screcruit>首页校园招聘(文字)</OPTION>
         * <OPTION value=hotcom>首页热门企业(文字)</OPTION>
         * <OPTION value=friendsite>首页友情链接(文字)</OPTION>
         */
        $adcodestring = $row['adcode'];
        $adcode_array = unserialize($adcodestring);
        $is_system = $row['system'];

        $ad_type = $adcode_array['type'];//html\flash\image\text

        if($pagetype=="friendsite")//友情链接类型
        {
            $setsqlarr['link_id'] =$id;
            $setsqlarr['type_id']=1;
            $setsqlarr['display']=1;
            $setsqlarr['alias']='QS_index';
            $setsqlarr['link_name']=$adcode_array['textcontent'];
            $setsqlarr['link_url']=$adcode_array['texturl'];
            $setsqlarr['show_order']=$id;
            $setsqlarr['Notes']='';
            $setsqlarr['app_notes']='';
            conversion_inserttable(table('link'),$setsqlarr,false,true);
        }

                                
                                 $mylogger->put_msg($id);
                                 $i++;
         }
         
          $mylogger->flush_all();
        $mylogger->log_complete_module("$module_name finished, 应转:$to_be_converted_count ,实际转:$i");
exit("ok,{$i}");
?>