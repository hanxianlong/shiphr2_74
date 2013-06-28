<?php

class mylogger{
    private $module_name;
    private $msgs_cache;
    private $i;
    public function __construct($module_name){
        $this->module_name=$module_name;
        $this->msgs_cache = array();
        $this->i=0;
    }
    
    public function put_msg($msg,$output_immediatly=false){
        $this->msgs_cache[] = $msg ."\t". date("Y-m-d G:i:s");
        $this->i++;
        if($output_immediatly && count($this->msgs_cache)>LOG_COMMIT_SIZE){
            $this->msgs_cache[]="processed $this->i records";
            log_info($this->module_name, $this->msgs_cache);
            
            unset($this->msgs);
        }
    }
    
    public function flush_all(){
         $this->msgs_cache[]="processed $this->i records";
        log_info($this->module_name, $this->msgs_cache);
        unset($this->msgs_cache);
    }
    
    function __destruct() {
        if(!empty($this->msgs_cache))
        {
            $this->flush_all();
        }
    }
}
?>
