
const inputs = document.querySelectorAll(".input");


function addcl(){
	let parent = this.parentNode.parentNode;
	parent.classList.add("focus");
}

function remcl(){
	let parent = this.parentNode.parentNode;
	if(this.value ==""){
		parent.classList.remove("focus");
	}
}

inputs.forEach(input => {
	input.addEventListener("focus", addcl);
	input.addEventListener("blur", remcl);
});


function login(){
    var user,password;
    
    user = document.getElementById("user").value;
    password = document.getElementById("password").value;
    
    if(user === "prueba" && password === "1234"){
        alert("Bienvenido. Usted ha iniciado sesión correctamente.");
    } else if(user === "" && password === ""){
         alert("Debe completar todos los espacios.");
    } else if(user === "" && password === "1234"){
         alert("Debe ingresar un usuario o nombre válido.");
    } else if(user === "prueba" && password === ""){
         alert("Debe ingresar una contrasena válida.");
    }else{
        alert("Por favor, ingresa datos válidos.");
    } 
    
    
    
}

