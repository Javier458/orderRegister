<?php

class Connection {
    
    private static $connection;

    public static function openConnection() {
        if(!isset (self::$connection)){
            try{
                include_once 'config.inc.php';
                
                self::$connection = new PDO("mysql:host=$servername; dbname=$database", $username, $password);
                self::$connection -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                self::$connection -> exec("SET CHARACTER SET utf8");

               print "DB Open Connection" . "<br>";
            
            } catch (PDOException $ex) {
                print "ERROR: " . $ex -> getMessage() . "<br>";
                die();
            }
        }
    }

    public static function closeConnection(){
        if(isset(self::$connection)){
            self::$connection = null;
        }
        
        print "DB Close Connection";
    }

    public static function getConnection(){
        self::$connection;
    }

}

?>