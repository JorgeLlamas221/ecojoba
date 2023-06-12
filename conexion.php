<?php
$conexion = mysqli_connect('localhost', 'root', '', 'ecojoba_db') or die('Error en la conexion servidor');

$sql = "INSERT INTO usuario 
VALUES(null,'".$_POST["nombreCompleto"]."','".$_POST["correoElectronico"]."','".$_POST["nombreUsuario"]."','".$_POST["contrasenia"]."')";

$res = mysqli_query($conexion,$sql) or die("Error Al Momento De Almacenar La informacion En La Base De Datos");

mysqli_close($conexion);
// Imprimir Datos Ingresador En El Formulario Por El Usuario
echo 'Datos Ingresador Por El Usuario:'.'<br>';
echo 'Nombre Completo: ' .$_POST["nombreCompleto"].'<br>';
echo 'Correo Electronico: ' .$_POST["correoElectronico"].'<br>';
echo 'Nombre DE Usuario: ' .$_POST["correoElectronico"].'<br>';
?>