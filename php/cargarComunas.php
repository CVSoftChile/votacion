<?php
// conexion.php tiene los datos de conexión a la base de datos
include_once('conexion.php');

// validaciones.php contiene las funciones para validar
// la información recibida desde el cliente
include_once('validaciones.php');
if ($_POST) {
    $html = '';
    $region = intval(limpiarCadena($_POST['region']));
    $sel = intval(limpiarCadena($_POST['comuna']));
    $sql = 'SELECT id_comuna AS id,comuna FROM comunas WHERE id_region=' . $region . ' ORDER BY comuna';
    $datos = selectAll($sql);
    if (count($datos) > 0) {
        if ($comuna == 0) {
            $html = '<option value="0" selected>Seleccionar</option>';
        }
        for ($i = 0; $i < count($datos); $i++) {
            if ($comuna == $datos[$i]['id']) {
                $html .= '<option value="' . $datos[$i]['id'] . '" selected>' . $datos[$i]['comuna'] . '</option>';
            } else {
                $html .= '<option value="' . $datos[$i]['id'] . '">' . $datos[$i]['comuna'] . '</option>';
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
