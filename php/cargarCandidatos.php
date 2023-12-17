<?php
// conexion.php tiene los datos de conexión a la base de datos
include_once('conexion.php');

// validaciones.php contiene las funciones para validar
// la información recibida desde el cliente
include_once('validaciones.php');
if ($_POST) {
    $html = '';
    $candidato = intval(limpiarCadena($_POST['candidato']));
    $sql = 'SELECT id_candidato AS id,candidato FROM candidatos ORDER BY candidato';
    $datos = selectAll($sql);
    if (count($datos) > 0) {
        if ($candidato == 0) {
            $html = '<option value="0" selected>Seleccionar</option>';
        }
        for ($i = 0; $i < count($datos); $i++) {
            if ($candidato == $datos[$i]['id']) {
                $html .= '<option value="' . $datos[$i]['id'] . '" selected>' . $datos[$i]['candidato'] . '</option>';
            } else {
                $html .= '<option value="' . $datos[$i]['id'] . '">' . $datos[$i]['candidato'] . '</option>';
            }
        }
    } else {
        $html = 'error';
    }
    echo $html;
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
