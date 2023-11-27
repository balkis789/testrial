<?php
namespace app\Graph;
use PDO;
class Database {
	// Static Class DB Connection Variables (for write and read)
	private static $writeDBConnection;
	private static $readDBConnection;
	// Static Class Method to connect to DB to perform Writes actions
	// handle the PDOException in the controller class to output a json api error
	public static function connectWriteDB() {
		if(self::$writeDBConnection === null) {
				self::$writeDBConnection = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8', DB_USER, DB_PASS);
				self::$writeDBConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				self::$writeDBConnection->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		}

		return self::$writeDBConnection;
	}

	// Static Class Method to connect to DB to perform read only actions (read replicas)
	// handle the PDOException in the controller class to output a json api error
	public static function connectReadDB() {
		if(self::$readDBConnection === null) {
				self::$readDBConnection = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8', DB_USER, DB_PASS);
				self::$readDBConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				self::$readDBConnection->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		}
		return self::$readDBConnection;
	}
}
