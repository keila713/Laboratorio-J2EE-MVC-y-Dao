function validarCampos() {
    var opc = document.getElementById("opc").value;
    var rd1 = document.getElementById("rd1");
    var rd2 = document.getElementById("rd2");
    var id = document.getElementById("id1").value;
    var nombre = document.getElementById("prod1").value;
    var precio = document.getElementById("precio1").value;
    var cat = document.getElementById("cat1").value;

    switch (opc) {
        case "1":
            if (id.length == 0 || isNaN(id) || /\s/.test(id) || id.length > 11) {
                alert("Debe ingresar un valor numérico en ID (máx. 11 dígitos)");
                document.getElementById("id1").focus();
                return false;
            }
            if (nombre.length == 0 || nombre.length > 30) {
                alert("Debe ingresar un nombre de producto (máx. 30 caracteres)");
                document.getElementById("prod1").focus();
                return false;
            }
            if (precio.length == 0 || isNaN(precio) || /\s/.test(precio) || precio.length > 11) {
                alert("Debe ingresar un valor numérico en precio (máx. 11 dígitos)");
                document.getElementById("precio1").focus();
                return false;
            }else if(precio < 1){
                alert("El precio debe ser mayor que 0");
                document.getElementById("precio1").focus();
                return false;
            }
            if (cat == 0) {
                alert("Debe seleccionar una categoría");
                document.getElementById("cat1").focus();
                return false;
            }
            break;
        case "2":
            if (rd1.checked == false && rd2.checked == false) {
                alert("Debe seleccionar un tipo de búsqueda");
                document.getElementById("rd1").focus();
                return false;
            }
            break;
        case "3":
            if (id.length == 0 || isNaN(id) || /\s/.test(id) || id.length > 11) {
                alert("Debe ingresar un valor numérico en ID (máx. 11 dígitos)");
                document.getElementById("id1").focus();
                return false;
            }
            break;
        case "4":
            if (nombre.length == 0 || nombre.length > 30) {
                alert("Debe ingresar una palabra clave a buscar (máx. 30 caracteres)");
                document.getElementById("prod1").focus();
                return false;
            }
            break;
    }
}

function mostrar1() {
    var opciones = document.getElementById('accion1').value;
    var rd1 = document.getElementById("rd1");
    var rd2 = document.getElementById("rd2");

    if (opciones == "") {
        document.getElementById("opc").value = "0";
        document.getElementById("divR").style.display = 'none';
        document.getElementById("div1").style.display = 'none';
        document.getElementById("div2").style.display = 'none';
        document.getElementById("div3").style.display = 'none';
        document.getElementById("div4").style.display = 'none';
        rd1.checked = false;
        rd2.checked = false;
        document.getElementById("id1").value = "";
        document.getElementById("prod1").value = "";
        document.getElementById("precio1").value = "";
        document.getElementById("cat1").value = '0';

    } else if (opciones == "Ingresar") {
        document.getElementById("opc").value = "1";
        document.getElementById("divR").style.display = 'none';
        document.getElementById("div1").style.display = 'block';
        document.getElementById("div2").style.display = 'block';
        document.getElementById("div3").style.display = 'block';
        document.getElementById("div4").style.display = 'none';
        rd1.checked = false;
        rd2.checked = false;
        document.getElementById("id1").value = "";
        document.getElementById("prod1").value = "";
    } else if (opciones == "Buscar") {
        document.getElementById("opc").value = "2";
        if (rd1.checked && rd2.checked == false) {
            document.getElementById("opc").value = "3";
            document.getElementById("prod1").value = "";
        } else if (rd1.checked == false && rd2.checked) {
            document.getElementById("opc").value = "4";
            document.getElementById("id1").value = "";
        }
        document.getElementById("divR").style.display = 'block';
        document.getElementById("div1").style.display = 'none';
        document.getElementById("div2").style.display = 'none';
        document.getElementById("div3").style.display = 'none';
        document.getElementById("div4").style.display = 'block';
        document.getElementById("prod1").value = "";
        document.getElementById("precio1").value = "";
        document.getElementById("cat1").value = '0';
    }
}

function mostrar2(valor) {

    if (valor == "a") {
        document.getElementById("opc").value = "3";
        document.getElementById("div1").style.display = 'block';
        document.getElementById("div2").style.display = 'none';
        document.getElementById("prod1").value = "";
    } else if (valor == "b") {
        document.getElementById("opc").value = "4";
        document.getElementById("div1").style.display = 'none';
        document.getElementById("div2").style.display = 'block';
        document.getElementById("id1").value = "";
    }
}
