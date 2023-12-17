// Contiene funciones para validar el ingreso
// de la información por parte del usuario
function mostrarError(mensaje) {
  // Funcion que muestra mensaje de error al ingresar información
  $("#mensaje").css("background-color", "#FF0000");
  $("#mensaje").css("color", "#FFFF00");
  $("#mensaje").text(mensaje);
}
function validaRut(rut) {
  // Funcion que valida el RUN o RUT chileno
  // para su funcionamiento el RUT debe incluir el guion (-)
  var lrut = rut.length;
  if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test(rut) || lrut < 9 || lrut > 10) {
    return false;
  } else {
    tmp = rut.split("-");
    nu = tmp[0];
    dv = tmp[1].toUpperCase();
    dv = dv == "K" ? 10 : dv;
    dv = dv == 0 ? 11 : dv;
    s = 0;
    m = 2;
    for (i = 1; i <= nu.length; i++) {
      pos = m * nu.charAt(nu.length - i);
      s = s + pos;
      m < 7 ? (m = m + 1) : (m = 2);
    }
    dvr = 11 - (s % 11);
    if (dvr == dv) {
      return true;
    } else {
      return false;
    }
  }
}
function validaAlias(alias) {
  // Funcion valida que el alias ingreado
  // cumpla las condiciones
  var lalias = alias.length;
  if (lalias <= 5) {
    return false;
  }
  if (/^[a-zA-Z]+[0-9]+/.test(alias)) {
    return true;
  }
}
function validaCorreo(correo) {
  // Funcion valida el formato del coreo electrónico ingreado
  var lcorreo = correo.length;
  var regOficial = /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
  if (regOficial.test(correo) && lcorreo > 5) {
    return true;
  } else {
    return false;
  }
}
function validaCheck() {
  // Funcion valida la cantidad de checkbox seleccionados
  var contador = 0;
  $("input:checkbox:checked").each(function () {
    contador++;
  });
  if (contador >= 2) {
    return true;
  } else {
    return false;
  }
}
