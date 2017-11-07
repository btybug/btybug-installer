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
function step()
{
    $step = (file_get_contents(__DIR__ . '/step.json'));
    echo $step;
    exit;

}

function save_step($step, $data)
{
    $step_data = json_decode(file_get_contents(__DIR__ . '/step.json'), true);
    $step_data[$step] = $data;
    file_put_contents(__DIR__ . '/step.json', json_encode($step_data, true));
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
    $continue = 1;
    foreach ($requirements as $k => $v) {
        if (in_array($k, $extentions)) {
            $requirements[$k] = 1;
        }
        $continue = $continue * $requirements[$k];

    }
        $requirements['PHP>=7'] =version_compare(PHP_VERSION,'7.1.0','>=');
        $requirements['Allow url fopen'] =ini_get('allow_url_fopen');
    $data = ['success' => true, 'data' => $requirements, 'continue' => $continue];
    save_step('requirements', $data);
    echo json_encode($data);
    exit;
}

function download()
{
    $fh = __DIR__ . "/master.zip";
    $url = 'https://github.com/btybug/container/archive/master.zip';

    if (! copy($fh, $url)) {
        echo "failed to copy";
    }

//    $url='http://dev.bootydev.co.uk/public/bootydev.zip';
    $result = file_put_contents($fh, file_get_contents($url));
    $data = ['success' => $result];
    save_step('download', $data);
    echo json_encode($data);
    exit;
}

function unzip()
{
    $zip = new ZipArchive();
    $res = $zip->open(__DIR__ . "/master.zip");
    if ($res === TRUE) {
        $zip->extractTo(__DIR__ . '/extract_path');
        $zip->close();
    }
    $data = ['success' => $res];
    save_step('unzip', $data);
    echo json_encode($data);
    exit;
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
            migrateDb($request);
            if ($model->Mysql()) {
                $data = ['success' => true];
                save_step('database', $data);
                echo json_encode($data);
                exit;
            }

        }
    }
}

function run()
{
    $src = __DIR__ . "/extract_path/container-master/";
    $dest = __DIR__ . "/../";
//    mkdir($dest . '/public', 0755, true);
//    mkdir($dest . '/storage', 0766, true);
//    mkdir($dest . '/bootstrap/cache', 0766, true);
//    shell_exec("cp -r $src $dest");
    $res=recurse_copy($src, $dest);
    $data = ['success' => $res];
    echo json_encode($data);
    exit;
    echo "<H3>Copy Paste completed!</H3>";
}

function migrateDb($request)
{
    // Name of the file
    $filename = __DIR__ . '/script.sql';
// MySQL host
    $mysql_host = $request['hostName'];
// MySQL username
    $mysql_username = $request['userName'];
// MySQL password
    $mysql_password = $request['passCode'];
// Database name
    $mysql_database = $request['dbName'];

// Connect to MySQL server
    $sql = mysqli_connect($mysql_host, $mysql_username, $mysql_password) or die('Error connecting to MySQL server');
// Select database
    mysqli_select_db($sql, $mysql_database) or die('Error selecting MySQL database: ' . mysqli_error($sql));

// Temporary variable, used to store current query
    $templine = '';
// Read in entire file
    $lines = file($filename);
// Loop through each line
    foreach ($lines as $line) {
// Skip it if it's a comment
        if (substr($line, 0, 2) == '--' || $line == '')
            continue;

// Add this line to the current segment
        $templine .= $line;
// If it has a semicolon at the end, it's the end of the query
        if (substr(trim($line), -1, 1) == ';') {
            // Perform the query
            mysqli_query($sql, $templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($sql) . '<br /><br />');
            // Reset temp variable to empty
            $templine = '';
        }
    }
}

function recurse_copy($src, $dst)
{
    $dir = opendir($src);
    @mkdir($dst);
    while (false !== ($file = readdir($dir))) {
        if (($file != '.') && ($file != '..')) {
            if (is_dir($src . '/' . $file)) {
                recurse_copy($src . '/' . $file, $dst . '/' . $file);
            } else {
                copy($src . '/' . $file, $dst . '/' . $file);
            }
        }
    }
    closedir($dir);
    return true;
}