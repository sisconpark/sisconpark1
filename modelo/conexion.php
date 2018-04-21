<?php
$conexion= mysqli_connect("localhost","root","","sisconpark");
if (!$conexion){
    echo 'Error al conectar a la base de datos';
}
else {
    //echo 'Conectado a la base de datos';
}

//estilo orientado a objetos

$mysql=new mysqli("localhost","root","","sisconpark");   
    if ($mysql->connect_error)
      die('Problemas con la conexion a la base de datos');