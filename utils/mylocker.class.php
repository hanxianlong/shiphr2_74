<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of mylocker
 *
 * @author yuanyuan
 */
class mylocker {
    
    /**
     * try to lock an module,
     * this is implemented by writing a file to ROOT_PATH/locked/module_name.lock file
     * check whether the file existed before writing file, if existed, die and exit
     * @param type $module_name
     */
    public static function try_lock_module($module_name){
       return;
        $path =ROOT_PATH."/locked/$module_name.lock";
        if(file_exists($path)){
            die("$module_name 已被锁定，请解锁后继续！");
        }
        $f=fopen($path,"w+");
        fclose($f);
    }
}

?>
