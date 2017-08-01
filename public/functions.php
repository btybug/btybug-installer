<?php
include "Model.php";
/**
 * Created by PhpStorm.
 * User: menq
 * Date: 7/27/17
 * Time: 11:33 AM
 */

function router()
{
    if (isset($_POST['function'])) {
        $function = $_POST['function'];
        if (function_exists($function)) {
            header('Content-Type: application/json');
            return call_user_func($function, $_POST);
        }
    }
}
router();
function step(){
    $step=(file_get_contents(__DIR__.'/step.json'));
    echo $step;exit;

}
function save_step($step,$data){
    $step_data=json_decode(file_get_contents(__DIR__.'/step.json'),true);
    $step_data[$step]=$data;
    file_put_contents(__DIR__.'/step.json',json_encode($step_data,true));
}

function requirements($args)
{
    $requirements = [

        "PDO" => 0,
        "openssl" => 0,
        "pdo_mysql" => 0,
        "sockets" => 0,
    ];
    $extentions = get_loaded_extensions();
    $continue=1;
    foreach ($requirements as $k => $v) {
        if (in_array($k, $extentions)) {
            $requirements[$k] = 1;
        }
        $continue=$continue*$requirements[$k];

    }
    if(phpversion()>=7){
        $requirements['PHP>=7']=1;
    }
    $data=['success'=>true,'data'=>$requirements,'continue'=>$continue];
    save_step('requirements',$data);
    echo json_encode($data);exit;
}
function download(){
    $fh =__DIR__."/master.zip";
//    $url='https://github.com//sahakavatar/bootydev/archive/master.zip';
    $url='http://dev.bootydev.co.uk/public/bootydev.zip';
    $result=file_put_contents($fh, fopen($url, 'r'));
    $data=['success'=>$result];
    save_step('download',$data);
    echo json_encode($data);exit;
}
function unzip(){
    $zip=new ZipArchive();
    $res = $zip->open(__DIR__."/master.zip");
    if ($res === TRUE) {
        $zip->extractTo(__DIR__.'/extract_path/');
        $zip->close();
    }
    $data=['success'=>$res];
    save_step('unzip',$data);
    echo json_encode($data);exit;
}
function database($request)
{
    $isValid = true;
        if (isset($request['hostName']) || isset($request['userName']) || isset($request['passCode']) || isset($request['dbName'])) {
            if (!empty($request['hostName']) || !empty($request['userName']) || !empty($request['dbName'])) {

                $model = new Model();
                $model->hostName = $request['hostName'];
                $model->userName = $request['userName'];
                $model->passCode = $request['passCode'];
                $model->dbName = $request['dbName'];
               if($model->Mysql()){
                   $data=['success'=>true];
                   save_step('database',$data);
                   echo json_encode($data);exit;
               }

            }
        }
}
function run(){
    $src = __DIR__."/extract_path/*";
    $dest = __DIR__."/../../test";
    mkdir($dest.'/public',0755,true);
    mkdir($dest.'/storage',0766,true);
    mkdir($dest.'/bootstrap/cache',0766,true);
    shell_exec("cp -r $src $dest");



    echo "<H3>Copy Paste completed!</H3>";
}