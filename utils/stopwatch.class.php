<?php

class stopwatch{
    private $start_time;
    private $end_time;
   public  function start(){
        list($a,$b)=explode(' ', microtime());
        $this->start_time=$a+$b;
    }
    
    public function stop(){
         list($a,$b)=explode(' ', microtime());
        $this->end_time=$a+$b;
    }
    
    /**
     * milli seconds
     * @return type
     */
   public function elapsed(){
        return ($this->end_time-$this->start_time)*1000;
    }
}
?>
