<?php

class mylogger{
    private $module_name;
    private $msgs_cache=array();
    private $total=0;
    public function __construct($module_name){
        $this->module_name=$module_name;
    }
    /**
     * Ð´ÈÕÖ¾
     * @param string $file
     * @param mixed $msg
     */
   private  function log_info($msgs,$is_complete=false){
        if(is_array($msgs)){
            $content=implode("\r\n",$msgs) ."\r\n";
        }
        else{
            $content = $msgs."\r\n";
        }
        
        $log_file_name =$this->module_name.'.txt';
        if($is_complete){
            $log_file_name =$this->module_name.'.completed.txt';
        }
        //$msg .= "\t".date("Y-m-d H:i:s");
        file_put_contents(ROOT_PATH. '/logs/'.$log_file_name, $content ."\n",FILE_APPEND);
    }
 
    public function put_msg($msg,$output_immediatly=false){
        $this->msgs_cache[] = $msg ."\t". date("Y-m-d G:i:s");
        $this->total++;
        if(count($this->msgs_cache)>=LOG_COMMIT_SIZE){
            $this->msgs_cache[]="processed $this->total records \t". date("Y-m-d G:i:s");
            $this->log_info($this->msgs_cache);
            
            unset($this->msgs_cache);
        }
    }
    
    public function flush_all(){
        if(!empty($this->msgs_cache) && count($this->msgs_cache)>0){
            $this->msgs_cache[]="processed $this->total records";
            $this->log_info($this->msgs_cache);

            unset($this->msgs_cache);
        }
        
        $this->log_info($this->module_name.' finished at ' . date('Y-m-d G:i:s') .",totally $this->total records");
    }
    
    public function put_msg_to_disk($msg){
        $this->log_info($msg ."\t". date("Y-m-d G:i:s"));
    }
    
     public function log_complete_module($msg){
        $this->log_info($msg ."\t". date("Y-m-d G:i:s"),true);
    }
    
   /* function __destruct() {
        if(!empty($this->msgs_cache))
        {
            $this->flush_all();
        }
    }
    */
}
?>
