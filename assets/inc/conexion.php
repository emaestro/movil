<?php
	$conexion = new mysqli("10.0.0.11", "root", "desktop", "programacionweb");
	if ($conexion->connect_errno) {
    	echo "Fallo al conectar a MySQL: (" . $conexion->connect_errno . ") " . $conexion->connect_error;
	}
?>