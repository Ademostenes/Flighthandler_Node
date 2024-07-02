
const email = document.getElementById("email");
const campoPass = document.getElementById("password2");
const campoEmail = document.getElementById("email2");


email.addEventListener("input", function (event) {
  if (email.validity.typeMismatch) {
    email.setCustomValidity(
      "Introduzca una dirección de correo electrónico válida",
    );
  }
});

function mensajeValidacion() {
    if (validarEmail()){
    let eMail =  (document.getElementById('email'));
    alert("Se ha enviado un correo electrónico a " + eMail.value + " para validar tu cuenta");
  } else {alert("Complete los campos requeridos, correctamente!");}}


function validarEmail() {
    let eMail1 = document.getElementById("email").value;
    let eMail2 =  (document.getElementById('email2').value);
    let emailValido = /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
    if(emailValido.test (eMail1)) {
        if (eMail !== eMail2 ) {
            alert("Las direcciones de correo no coinciden")
          return false;
          } else { return true;}          
          } else { alert("Ingrese una dirección de correo válida!"); return false;}
  }



function validarContraseñas() {
    let pass =  (document.getElementById('password').value);
    let pass2 =  (document.getElementById('password2').value);
  
  if (pass !== pass2 ) {
    alert("Las contraseñas no coinciden")}
    return

}

campoPass.addEventListener("focusout",validarContraseñas);
campoEmail.addEventListener("focusout", validarEmail);

   