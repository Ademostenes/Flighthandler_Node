const idaVuelta = document.getElementById("idaVuelta");
const soloIda = document.getElementById("soloIda");
const contRegreso = document.getElementById("contRegreso");

function cambiaBusqueda(){
    if (idaVuelta.checked){
        contRegreso.style.display ="flex";
    } else {
        contRegreso.style.display ="none";
    }
}

function capaBusquedas(nombre){
let capaOp;
    if (nombre == "origen"){
        capaOp = document.getElementById("destino");
    } else {
        capaOp = document.getElementById("origen");
    }
let capa = document.getElementById(nombre);
if (capa.style.display == "none"){
    capa.style.display = "flex";
    capaOp.style.display = "none";
} else {
    capa.style.display = "none";
}
}

function cierraCapa(nombre) {
    let capa = document.getElementById(nombre);
    capa.style.display = "none";
}

cambiaBusqueda();
document.getElementById("origen").click();
document.getElementById("destino").click();

