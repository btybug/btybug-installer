<?php


class Model
{

    public $connectionString;
    public $dataSet;
    private $sqlQuery;
    const SUCCESS_CODE = 200;


    public function createDb()
    {
        try {
            $this->connectionString = new PDO("mysql:host=$this->hostName", $this->userName, $this->passCode);
            // set the PDO error mode to exception
            $this->connectionString->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            if (!$this->connectionString) {
                return false;
            }

            $this->sqlQuery = "CREATE DATABASE $this->dbName";
//            $this->sqlQuery = "CREATE DATABASE $this->dbName;  GRANT ALL ON `$this->dbName`.* TO '$this->userName'@'$this->hostName';
//                FLUSH PRIVILEGES;";
            // use exec() because no results are returned
            $this->connectionString->query($this->sqlQuery);

            $contents = 'APP_ENV=local  ' . "\n" . 'APP_DEBUG=true  ' . "\n" . 'APP_KEY=kDvlpqdEG5JNrnovNYiygEOuoPP9UvYP ' . "\n" . 'DB_HOST=' . $this->hostName . ' ' . "\n" . 'DB_DATABASE=' . $this->dbName . ' ' . "\n" . 'DB_USERNAME=' . $this->userName . '' . "\n" . 'DB_PASSWORD=' . $this->passCode . ' ' . "\n" . 'CACHE_DRIVER=file  ' . "\n" . 'SESSION_DRIVER=file ' . "\n" . 'QUEUE_DRIVER=sync ' . "\n" . 'MAIL_DRIVER=mail ' . "\n" . 'MAIL_HOST=smtp.gmail.com ' . "\n" . 'MAIL_PORT=25 ' . "\n" . 'MAIL_USERNAME=avatarbugs@gmail.com ' . "\n" . 'MAIL_PASSWORD=avatarbugs123 ' . "\n" . 'MAIL_ENCRYPTION=tls';
            $bytes_written = File::put('appdata/.env', $contents);
            $this->sqlQuery = 'ALTER DATABASE ' . $this->dbName . ' CHARACTER SET utf8 COLLATE utf8_unicode_ci';
            $this->connectionString->exec($this->sqlQuery);
            if ($this->saveJson()) {
                return true;
            }
        } catch (PDOException $e) {
            echo $this->sqlQuery . "<br>" . $e->getMessage();
            return false;
        }

    }

    public function Mysql()
    {
        $this->connectionString = NULL;
        $this->sqlQuery = NULL;
        $this->dataSet = NULL;
        $dbPara = NULL;

        try {
            $this->connectionString = new PDO("mysql:host=$this->hostName;dbname=$this->dbName", $this->userName, $this->passCode);
//            $this->connectionString->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            $e->getMessage();
        }

        if (!$this->connectionString) {
            return 0;
        }

        $contents = 'APP_ENV=local  ' . "\n" . 'APP_DEBUG=false  ' . "\n" . 'APP_KEY='.md5(uniqid()). "\n" . 'DB_HOST=' . $this->hostName . ' ' . "\n" . 'DB_DATABASE=' . $this->dbName . ' ' . "\n" . 'DB_USERNAME=' . $this->userName . '' . "\n" . 'DB_PASSWORD=' . $this->passCode . ' ' . "\n" . 'CACHE_DRIVER=file  ' . "\n" . 'SESSION_DRIVER=file ' . "\n" . 'QUEUE_DRIVER=sync ' . "\n" . 'MAIL_DRIVER=mail ' . "\n" . 'MAIL_HOST=smtp.gmail.com ' . "\n" . 'MAIL_PORT=25 ' . "\n" . 'MAIL_USERNAME=avatarbugs@gmail.com ' . "\n" . 'MAIL_PASSWORD=avatarbugs123 ' . "\n" . 'MAIL_ENCRYPTION=tls';

        $bytes_written = file_put_contents(__DIR__.'/extract_path/bootydev-master/.env', $contents);
        if ($this->connectionString) {
//            if ($this->saveJson()) {
                return 1;
//            }
        }
    }

    public function dbDisconnect()
    {
        $this->connectionString = NULL;
        $this->sqlQuery = NULL;
        $this->dataSet = NULL;
        $this->databaseName = NULL;
        $this->hostName = NULL;
        $this->userName = NULL;
        $this->passCode = NULL;
        $this->connectionString = Null;
    }

    public function selectAll($tableName)
    {
        $this->sqlQuery = 'SELECT * FROM ' . $this->databaseName . '.' . $tableName;
//        $this->dataSet = mysql_query($this->sqlQuery, $this->connectionString);
        $this->dataSet = $this->connectionString->exec($this->sqlQuery);
        return $this->dataSet;
    }

    public function insertInto($tableName, $values)
    {
//        $i = NULL;
//
//        $this->sqlQuery = 'INSERT INTO ' . $tableName . ' VALUES (';
//        $i = 0;
//        while ($values[$i]["val"] != NULL && $values[$i]["type"] != NULL) {
//            if ($values[$i]["type"] == "char") {
//                $this->sqlQuery .= "'";
//                $this->sqlQuery .= $values[$i]["val"];
//                $this->sqlQuery .= "'";
//            } else if ($values[$i]["type"] == 'int') {
//                $this->sqlQuery .= $values[$i]["val"];
//            }
//            $i++;
//            if ($values[$i]["val"] != NULL) {
//                $this->sqlQuery .= ',';
//            }
//        }
//        $this->sqlQuery .= ')';
//        mysql_query($this->sqlQuery, $this->connectionString);
//        return $this->sqlQuery;
    }

    public function selectFreeRun($query)
    {
//        $this->dataSet = mysql_query($query, $this->connectionString);
        $this->dataSet = $this->connectionString->exec($this->sqlQuery);
        return $this->dataSet;
    }

    public function freeRun($query)
    {
        return $this->connectionString->exec($query);
    }

    public function saveJson()
    {
        $this->step['database']['hostName'] = $this->hostName;
        $this->step['database']['userName'] = $this->userName;
        $this->step['database']['passCode'] = $this->passCode;
        $this->step['database']['dbName'] = $this->dbName;
        $jsonData = json_encode($this->step);
        if (file_put_contents(self::STEP_PATH, $jsonData)) {
            return true;
        }
        return false;
    }

    public function migrate()
    {
        // try {
//            echo '<br>init migrate:install...';
//            Artisan::call('migrate:install');
//            echo 'done migrate:install';
//            echo '<br>init with Sentry tables migrations...';
        return Artisan::call('migrate', array('--force' => true));

//            echo '<br>done with app tables migrations';
//            echo '<br>init with Sentry tables seader...';
//            Artisan::call('db:seed');
//            echo '<br>module...';
//            Artisan::call('module:migrate');
//            Artisan::call('module:seed');
//            echo '<br>done with Sentry tables seader';
        // } catch (Exception $e) {
        //Response::make($e->getMessage(), 500);
        //}
    }

    public function callCURL($token){
        if(! $token)
            return ['error' => true, 'message' => 'Access token is required'];

        // Get cURL resource
        $curl = curl_init();
        // Set some options - we are passing in a useragent too here
            curl_setopt_array($curl, array(
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_URL => 'http://bootybusiness.co.uk/service/verify-access-token',
                CURLOPT_POST => 1,
                CURLOPT_POSTFIELDS => array(
                    'access_token' => $token
                )
            ));
        // Send the request & save response to $resp
                $resp = curl_exec($curl);
                $resp = json_decode($resp);
        //get Curl info
        $info = curl_getinfo($curl);
//        dd($info['http_code'],$resp);
        // Close request to clear up some resources
        curl_close($curl);

        if($info['http_code'] == self::SUCCESS_CODE){
            return ['error' => $resp->error, 'message' => $resp->error];
        }else{
            return ['error' => true, 'message' => 'Request is Invalid'];
        }

    }

}
