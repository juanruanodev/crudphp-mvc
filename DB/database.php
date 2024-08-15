<?php
/**
     * Constructor privado de la clase DBase.
     * Configura la conexión a la base de datos PostgreSQL.
     * @throws PDOException Si ocurre un error al conectar.
     */
class DBase {
    private static $instancia = null;
    private $pdo;

    private function __construct() {
        $host = 'localhost';
        $db = 'solatidb';
        $user = 'postgres';
        $pass = 'juan123';

        try {
            $this->pdo = new PDO("pgsql:host=$host;dbname=$db", $user, $pass);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo 'Error: ' . $e->getMessage();
        }
    }
    public static function getInstancia() {
        if (self::$instancia == null) {
            self::$instancia = new DBase();
        }
        return self::$instancia;
    }
    public function getConexion() {
        return $this->pdo;
    }
}
