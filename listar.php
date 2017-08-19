<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Estudiantes App</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="assets/css/themes/default/jquery.mobile-1.4.5.min.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/jquery.mobile-1.4.5.min.js"></script>
</head>
	<body>
		<div data-role="page" data-fullscreen="true">
			<div data-role="header" data-position="fixed" class="cabecera">
				<h1>Estudiantes App</h1>
			</div>
			<div data-role="content">
				<table data-role="table" id="table-column-toggle" class="ui-responsive table-stroke">
					<thead>
						<tr>
							<th >Id</th>
							<th>Apellidos y Nombres</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
<?php
					include('assets/inc/conexion.php');
					$sql = 'SELECT p.* from personas p';
					$resultado = $conexion->query($sql);
					$vCont = 1;
					while ($fila = $resultado->fetch_assoc())
					{
?>
						<tr>
							<th><?php echo $fila['personas_id']; ?></th>
 							<td><?php echo $fila['paterno'].' '.$fila['materno'].' '.$fila['nombres']; ?></td>
							<td>
								<a href="modificar.datos.php?id=<?php echo $fila['personas_id']; ?>" class="ui-btn ui-shadow ui-corner-all ui-icon-edit ui-btn-icon-notext ui-btn-inline ui-mini">Modificar</a>
								<a href="eliminar.recibe.php?id=<?php echo $fila['personas_id']; ?>" class="ui-btn ui-shadow ui-corner-all ui-icon-delete ui-btn-icon-notext ui-btn-inline ui-mini">Eliminar</a>
							</td>
						</tr>
<?php
					}
?>			
					</tbody>
				</table>

			</div>
			<div data-role="footer" data-position="fixed">
				<h1>UNITEK-Puno</h1>
			</div>
		</div>
	</body>
</html>