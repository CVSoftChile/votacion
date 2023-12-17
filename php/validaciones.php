<?php
// Contiene funciones para validar la
// información recibida desde el cliente
function limpiarCadena($strCadena)
{
    // Función limpia el texto recibido para evitar inyeccion de codigo
    $cadena = preg_replace(['/\s+/', '/^\s|\s$/'], [' ', ''], $strCadena);
    $cadena = trim($cadena);
    $cadena = stripslashes($cadena);
    $cadena = str_ireplace('<script>', '', $cadena);
    $cadena = str_ireplace('</script>', '', $cadena);
    $cadena = str_ireplace('<script src>', '', $cadena);
    $cadena = str_ireplace('<script type=>', '', $cadena);
    $cadena = str_ireplace('SELECT * FROM', '', $cadena);
    $cadena = str_ireplace('DELETE FROM', '', $cadena);
    $cadena = str_ireplace('INSERT INTO', '', $cadena);
    $cadena = str_ireplace('SELECT COUNT(*) FROM', '', $cadena);
    $cadena = str_ireplace('DROP TABLE', '', $cadena);
    $cadena = str_ireplace("is NULL; --", "", $cadena);
    $cadena = str_ireplace("LIKE '", "", $cadena);
    $cadena = str_ireplace('LIKE "', '', $cadena);
    $cadena = str_ireplace('LIKE `', '', $cadena);
    $cadena = str_ireplace('LIKE ´', '', $cadena);
    $cadena = str_ireplace("OR '1'='1'", "", $cadena);
    $cadena = str_ireplace('OR "1"="1"', '', $cadena);
    $cadena = str_ireplace('OR `1`=`1`', '', $cadena);
    $cadena = str_ireplace('OR ´1´=´1´', '', $cadena);
    $cadena = str_ireplace("OR 'a'='a'", "", $cadena);
    $cadena = str_ireplace('OR "a"="a"', '', $cadena);
    $cadena = str_ireplace('OR `a`=`a`', '', $cadena);
    $cadena = str_ireplace('OR ´a´=´a´', '', $cadena);
    $cadena = str_ireplace('--', '', $cadena);
    $cadena = str_ireplace('^', '', $cadena);
    $cadena = str_ireplace('[', '', $cadena);
    $cadena = str_ireplace(']', '', $cadena);
    $cadena = str_ireplace('==', '', $cadena);
    return $cadena;
}
function valNumero($valor)
{
    //Funcion valida que un valor recibido sea numerico
    return is_numeric($valor) ? true : false;
}
function valCorreo($correo)
{
    //Funcion valida que el formato del correo electrónico recibido sea correcto
    $vcorreo = filter_var($correo, FILTER_SANITIZE_EMAIL);
    if (filter_var($vcorreo, FILTER_VALIDATE_EMAIL) === false || $vcorreo != $correo) {
        return false;
    } else {
        return true;
    }
}
function valRut($rut)
{
    // Funcion valida el RUN o RUT recibido, para su
    // funcionamiento el RUT debe incluir el guion (-)
    $lrut = strlen($rut);
    if (!preg_match('/^[0-9]+-[0-9kK]{1}/', $rut) || $lrut < 9 || $lrut > 10) {
        return false;
    } else {
        $tmp = explode('-', $rut);
        $nu = intval($tmp[0]);
        $dv = strtoupper($tmp[1]);
        $dv = $dv == "K" ? 10 : $dv;
        $dv = $dv == 0 ? 11 : $dv;
        $p = 2;
        $s = 0;
        while ($nu > 0) {
            $a1 = $nu % 10;
            $nu = floor($nu / 10);
            $s = $s + ($a1 * $p);
            $p = $p + 1;
            if ($p == 8) {
                $p = 2;
            }
        }
        $dvr = $s % 11;
        $dvr = 11 - $dvr;
        if ($dvr == $dv) {
            return true;
        } else {
            return false;
        }
    }
}
function valCheck($cBoxs)
{
    // Funcion valida que al menos dos de los checkbox
    // recibidos esten seleccionados
    $contador = 0;
    foreach ($cBoxs as $cB) {
        if (intval($cB) == 1) {
            $contador += 1;
        }
    }
    if ($contador >= 2) {
        return true;
    } else {
        return false;
    }
}
