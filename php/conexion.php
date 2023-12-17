<?php
// Crea la conexión a la base de datos
class conexion
{
    public static function conexionBD()
    {
        // Datos de conexión a la base de datos
        $dbHost = 'localhost';
        $dbName = 'votacion';
        $dbUser = 'root';
        $dbPassword = '';
        $dbCharset = 'charset=utf8';
        $cadenaConexion = 'mysql:host=' . $dbHost . ';dbname=' . $dbName . ';' . $dbCharset;
        try {
            $conexion = new PDO($cadenaConexion, $dbUser, $dbPassword);
        } catch (PDOException $e) {
            echo 'ERROR DE CONEXION: ' . $e->getMessage();
        }
        return $conexion;
    }
}
