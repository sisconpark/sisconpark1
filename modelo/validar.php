<?php
session_start();
$documento=$_POST['documento'];
$contrasena=$_POST['contrasena'];

//conectar a la base de datos
$conexion=mysqli_connect("localhost", "root", "", "sisconpark");
//verifica si el usuario es administrador
$consulta="SELECT * FROM administrador WHERE documento=$documento and contrasena='$contrasena'";
$resultado=mysqli_query($conexion, $consulta);
$filas=mysqli_num_rows($resultado);

if($filas>0) {
	
	$array=mysqli_fetch_array($resultado);
	$_SESSION["validar"]="true";
	$_SESSION["cedula"]= $array["documento"];
	$_SESSION["nombre"]= $array["nombre"];
	$_SESSION["correo"]= $array["correo"];
	
    header("location:../vista/inicio_administrador.php");
}
else
{
	//verifica si el usuario es vigilante
	$consulta="SELECT * FROM vigilante WHERE documento=$documento and contrasena='$contrasena'";
	$resultado=mysqli_query($conexion, $consulta);
	if (mysqli_num_rows($resultado))
	{
		$array=mysqli_fetch_array($resultado);
	    $_SESSION["validar"]="true";
	    $_SESSION["cedula"]= $array["documento"];
	    $_SESSION["nombre"]= $array["nombre"];
	    $_SESSION["correo"]= $array["correo"];
		
		 header("location:../vista/inicio_vigilante.php");
	}
	else 
	{
		//muestra error de autentificacion
		header("location:../index.php?error");
	}
}
mysqli_free_result($resultado);
mysqli_close($conexion);
?>