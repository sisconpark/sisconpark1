<?php
include "../modelo/conexion.php";

//consulta para el reporte diario
if (isset($_POST["diario"]))
{
	$reporte="Reporte diario";
	$listado="select * from cobrados where horasalida between curdate() and now() and horasalida is not null";
	
	//muestra el listado
	$mostrar=mysqli_query($conexion, $listado);
}

//consulta para el reporte semanal
if (isset($_POST["semanal"]))
{
	$reporte="Reporte semanal";
	$listado="select * from cobrados 
where horasalida>=SUBDATE(curdate(),WEEKDAY(curdate()))
and horasalida<=ADDDATE(curdate(),7-WEEKDAY(curdate())) and horasalida is not null";
	//muestra el listado
	$mostrar=mysqli_query($conexion, $listado);
}

//consulta para el reporte mensual
if (isset($_POST["mensual"]))
{
	$reporte="Reporte mensual";
	$listado="select * from cobrados where horasalida>=DATE_FORMAT(CURDATE(), '%Y-%m-01') and horasalida<=now() and horasalida is not null";
	//muestra el listado
	$mostrar=mysqli_query($conexion, $listado);
}
?>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Sisconpark</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
<body>
<h1><i><?php echo $reporte;?></i></h1>

	      <br><br><br><br><br><br><br><br><br><br>
		  <br><br><br><br><br><br><br><br><br><br>

<center>
<style>
</style>

	
<table border="1" style="font-size: 25px;">
<tr>
<th>Documento</th>
<th>Nombre</th>
<th>Vehiculo</th>
<th>Placa</th>
<th>Hora Ingreso</th>
<th>Hora Salida</th>
<th>Duración</th>
</tr><br>



<?php
while ($array=mysqli_fetch_array($mostrar))
{
?>
<tr>
<td><?php echo $array["documento"];?></td>
<td><?php echo $array["nombre"];?></td>
<td><?php echo $array["vehiculo"];?></td>
<td><?php echo $array["placa"];?></td>
<td><?php echo $array["horaingreso"];?></td>
<td><?php echo $array["horasalida"];?></td>
<td><?php echo $array["duracion"];?></td>

</tr>

<?php
}
?>
</table>
<span>
	<a class="btn btn-default btn-lg dropdown-toggle" href="inicio_administrador.php" role="button" style="font-size: 25px;">Inicio</a>
	</span>
</center>
</body>
</html>