<?php
define('IN_QISHI', true);
require_once(dirname(__FILE__).'/conversion.inc.php');
$module_name="links_and_ads";
//http://myconverter.shiyishi.tk/inc/conversion_link.php?&time=1372604646462&srcdbhost=localhost&srcdbuser=root&srcdbpass=han1987118&srcdbname=shiphr&srcpre=uchome_&srcdbcharset=GBK&qsdbhost=localhost&qsdbuser=root&qsdbpass=han1987118&qsdbname=ship74cms32&qspre=qs32_
//
//����������ǰģ��,������ļ��Ѿ����ڣ������ֹ����
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
         *  <OPTION selected value=brandabove>��ҳƷ����Ƹ--�ϲ� (155*50)</OPTION>
         * <OPTION value=brandcenter>��ҳƷ����Ƹ--�в� (468*68)</OPTION>
         * <OPTION value=brandunder>��ҳƷ����Ƹ--�²� (228*48)</OPTION>
         * <OPTION value=schoolleft>��ҳԺУ���� (226*46)</OPTION>
         * <OPTION value=coopright>��ҳ����ý�� (226*46)</OPTION>
         * <OPTION value=hotjob>��ҳ������Ƹ(����)</OPTION>
         * <OPTION value=emrecruit>��ҳ������Ƹ(����)</OPTION>
         * <OPTION value=screcruit>��ҳУ԰��Ƹ(����)</OPTION>
         * <OPTION value=hotcom>��ҳ������ҵ(����)</OPTION>
         * <OPTION value=friendsite>��ҳ��������(����)</OPTION>
         */
        $adcodestring = $row['adcode'];
        $adcode_array = unserialize($adcodestring);
        $is_system = $row['system'];

        $ad_type = $adcode_array['type'];//html\flash\image\text

        if($pagetype=="friendsite")//������������
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
        $mylogger->log_complete_module("$module_name finished, Ӧת:$to_be_converted_count ,ʵ��ת:$i");
exit("ok,{$i}");
?>