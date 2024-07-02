const svgNS = "http://www.w3.org/2000/svg";
const tablaUsuarios = document.getElementById('tablaUsuarios');
const tbody = tablaUsuarios.querySelector('tbody');


fetch('/user')
  .then(response => response.json())
  .then(dataUsuarios => {

    dataUsuarios.forEach(usuario => {
      
      const num = "/user/" + usuario.id;

      const fila = document.createElement('tr');
      const celdaId = document.createElement('td');
      const celdaNombreUsuario = document.createElement('td');
      const celdaNombre = document.createElement('td');
      const celdaApellido = document.createElement('td');
      const celdaEmail = document.createElement('td');
      const celdaBoton = document.createElement('td');
      const form = document.createElement("form");
      
      form.setAttribute("method", "POST");
      form.setAttribute("action", num);
      const hidden = document.createElement("input");
      hidden.setAttribute("type","hidden");
      hidden.setAttribute("name","_method");
      hidden.setAttribute("value","DELETE");
      const boton = document.createElement("input");
      boton.setAttribute("type", "submit");
      boton.setAttribute("value", "Eliminar");
      boton.setAttribute("class","btn1")
      form.appendChild(hidden);
      form.appendChild(boton);

      celdaBoton.appendChild(form);

      celdaId.textContent = usuario.id;
      celdaNombreUsuario.textContent = usuario.userName;
      celdaNombre.textContent = usuario.firstname;
      celdaApellido.textContent = usuario.lastname;
      celdaEmail.textContent = usuario.email;


      fila.appendChild(celdaId);
      fila.appendChild(celdaNombreUsuario);
      fila.appendChild(celdaNombre);
      fila.appendChild(celdaApellido);
      fila.appendChild(celdaEmail);
      fila.appendChild(celdaBoton);

      tbody.appendChild(fila);
    });
  })
  .catch(error => console.error('Error al cargar datos:', error));