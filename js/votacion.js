// Controla el flujo de carga e ingreso
// de la información en el fomulario
$(document).ready(function () {
  regiones(0);
  candidatos(0);
});
function regiones(region) {
  $("#region").html("");
  $.ajax({
    async: false,
    url: "php/cargarRegiones.php",
    data: { region },
    method: "POST",
    success: function (resp) {
      if (resp == "error") {
        alert("No fue posible obtener regiones");
      } else {
        $("#region").html(resp);
      }
    },
    error: function () {
      alert("No fue posible obtener regiones");
    },
  });
}
$("#region").on("change", function () {
  comunas($("#region").val(), 0);
});
function comunas(region, comuna) {
  $("#comuna").html("");
  $.ajax({
    async: false,
    url: "php/cargarComunas.php",
    data: { region, comuna },
    method: "POST",
    success: function (resp) {
      if (resp == "error") {
        alert("No fue posible obtener comunas");
      } else {
        $("#comuna").html(resp);
      }
    },
    error: function () {
      alert("No fue posible obtener comunas");
    },
  });
}
function candidatos(candidato) {
  $("#candidato").html("");
  $.ajax({
    async: false,
    url: "php/cargarCandidatos.php",
    data: { candidato },
    method: "POST",
    success: function (resp) {
      if (resp == "error") {
        alert("No fue posible obtener candidatos");
      } else {
        $("#candidato").html(resp);
      }
    },
    error: function () {
      alert("No fue posible obtener candidatos");
    },
  });
}
$(document).on("submit", "#formVotacion", function (e) {
  $("#mensaje").text("");
  e.preventDefault();
  var txtNomApe = $("#nomApe").val().trim();
  var txtAlias = $("#alias").val().trim();
  var txtRut = $("#rut").val();
  var txtCorreo = $("#correo").val();
  var selRegion = $("#region").val();
  var selComuna = $("#comuna").val();
  var selCandidato = $("#candidato").val();
  if (
    txtNomApe.length == 0 ||
    txtAlias.length == 0 ||
    txtRut.length == 0 ||
    txtCorreo.length == 0
  ) {
    mostrarError(" Error! Debe completar todos los campos. ");
    return false;
  }
  if (!validaAlias(txtAlias)) {
    mostrarError(
      " Error! El Alias debe tener letras, números y la cantidad de caracteres debe ser mayor a cinco. "
    );
    return false;
  }
  if (!validaRut(txtRut)) {
    mostrarError(" Error! El RUT ingresado es incorrecto. ");
    return false;
  }
  if (!validaCorreo(txtCorreo)) {
    mostrarError(" Error! El formato del Email ingresado no es válido. ");
    return false;
  }
  if (!validaCheck()) {
    mostrarError(
      " Debe seleccionar al menos dos opciones de cómo se entero de nosotros. "
    );
    return false;
  }
  $.ajax({
    url: "php/registrarVoto.php",
    data: $("#formVotacion").serialize(),
    method: "POST",
    dataType: "json",
    success: function (resp) {
      if (resp.estado) {
        alert(resp.msg);
      } else {
        alert(resp.msg);
      }
    },
    error: function () {
      alert("Error al intentar registrar el voto, vuelva a intentarlo");
    },
  });
});
