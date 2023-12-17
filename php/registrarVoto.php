<?php
// conexion.php tiene los datos de conexión a la base de datos
include_once('conexion.php');

// validaciones.php contiene las funciones para
// validar la información recibida desde el cliente
include_once('validaciones.php');
if ($_POST) {
    if (
        empty($_POST['nomApe']) || empty($_POST['alias']) || empty($_POST['rut']) || empty($_POST['correo'])
        || intval($_POST['region']) <= 0 || intval($_POST['comuna']) <= 0 || intval($_POST['candidato']) <= 0
        || !valCheck(array(isset($_POST['web']), isset($_POST['tv']), isset($_POST['rrss']), isset($_POST['amigo'])))
    ) {
        $respuesta = array('estado' => false, 'msg' => 'Información con errores');
    } else if (!valNumero($_POST['region']) || !valNumero($_POST['comuna']) || !valNumero($_POST['candidato'])) {
        $respuesta = array('estado' => false, 'msg' => 'Información con formatos incorrectos');
    } else {
        $nomApe = limpiarCadena($_POST['nomApe']);
        $alias = limpiarCadena($_POST['alias']);
        $rut = limpiarCadena($_POST['rut']);
        $correo = limpiarCadena($_POST['correo']);
        $region = intval(limpiarCadena($_POST['region']));
        $comuna = intval(limpiarCadena($_POST['comuna']));
        $candidato = intval(limpiarCadena($_POST['candidato']));
        $web = isset($_POST['web']);
        $tv = isset($_POST['tv']);
        $rrss = isset($_POST['rrss']);
        $amigo = isset($_POST['amigo']);
        $sql = "SELECT rut FROM votos WHERE rut='" . $rut . "'";
        $datos = selectAll($sql);
        if (count($datos) > 0) {
            $respuesta = array('estado' => false, 'msg' => 'No se registró el voto, ya existe una votación anterior');
        } else {
            $sql = 'INSERT INTO VOTOS (nombre_apellido,alias,rut,correo,region,comuna,candidato,web,tv,rrss,amigo) VALUES(?,?,?,?,?,?,?,?,?,?,?)';
            $par = array($nomApe, $alias, $rut, $correo, $region, $comuna, $candidato, $web, $tv, $rrss, $amigo);
            $respuesta = insert($sql, $par);
            if (intval($respuesta) > 0) {
                $respuesta = array('estado' => true, 'msg' => 'Voto Registrado');
            } else {
                $respuesta = array('estado' => false, 'msg' => 'No fue posible registrar la votación');
            }
        }
    }
    echo json_encode($respuesta, JSON_UNESCAPED_UNICODE);
    die();
}
function selectAll($sql)
{
    $conexion = conexion::conexionBD();
    $consulta = $conexion->prepare($sql);
    $consulta->execute();
    $datos = $consulta->fetchAll();
    return $datos;
}
function insert($sql, $par)
{
    $conexion = conexion::conexionBD();
    $consulta = $conexion->prepare($sql);
    if ($consulta->execute($par)) {
        $id = $conexion->lastInsertId();
    } else {
        $id = 0;
    }
    return $id;
}
