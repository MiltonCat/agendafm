<?php
require_once "conexion.php";
if ($php_response["msg"]=="OK"){
	$u_exiten = mysqli_query($conexion, "SELECT * FROM usuarios");
	if (mysqli_num_rows($u_exiten) > 0 ){
		$php_response['obser']= "los usuarios ya existen ";
	
	}else{

		$email = "milton@gmail.com";
		$nombre="examen";
		$password =md5("123456");
		$fecha_nacimiento = "1977/09/09";
		$crear = $conexion->prepare("INSERT INTO usuarios (email, nombre, password, fecha_nacimiento) VALUES (?,?,?,?)"); 
		$crear->bind_param("ssss", $email, $nombre, $password, $fecha_nacimiento);
		$crear->execute();

		$email = "prueba@hotmail.com";
		$nombre="Cumple";
		$password =md5("123456");
		$fecha_nacimiento = "1974/03/03";
		$crear = $conexion->prepare("INSERT INTO usuarios (email, nombre, password, fecha_nacimiento) VALUES (?,?,?,?)"); 
		$crear->bind_param("ssss", $email, $nombre, $password, $fecha_nacimiento);
		$crear->execute();




        

		
	}	
	$cumple = date('Y/m/d',strtotime("1977/09/09"));
	



}


