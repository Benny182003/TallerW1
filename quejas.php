<?php
	$servidor="localhost";
	$usuario="Benny";
	$clave="12345";
	$baseDeDatos="web1";

	$enlace = mysqli_connect($servidor, $usuario, $clave, $baseDeDatos);

	if(!$enlace){
		echo"Error en la conexion con el servidor";
	}
?>
<!DOCTYPE html>
<html>
<center>
    <head>
        <meta charset="utf-8"> 
        <title>SECCION DE QUEJAS</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>
    <body>
	<div class="contenedor">
		<form action="#" class="formulario" id="formulario" name="formulario" method="POST">
			<div class="contenedor-inputs">
				<input type="text" name="queja" placeholder="Ingrese su queja">
				<ul class="error" id="error"></ul>
			</div>
			<input type="submit" class="btn" name="enviar" value="Enviar">
		</form>
		<div class="tabla">
			<table>
				<tr>
					<th>Sección De Quejas</th>
				</tr>
<?php

	if(isset($_POST['enviar'])){
		$queja =$_POST["queja"];

		$insertarDatos = "INSERT INTO quejas VALUES('$queja')";

		$ejecutarInsertar = mysqli_query($enlace, $insertarDatos);

		if(!$ejecutarInsertar){
			echo"Error En la linea de sql";
		}
	}
?>


					<?php
						$consulta = "SELECT * FROM quejas";
						$ejecutarConsulta = mysqli_query($enlace, $consulta);
						$verFilas = mysqli_num_rows($ejecutarConsulta);
						$fila = mysqli_fetch_array($ejecutarConsulta);

						if(!$ejecutarConsulta){
							echo"Error en la consulta";
						}else{
							if($verFilas<1){
								echo"<tr><td>Sin registros</td></tr>";
							}else{
								for($i=1; $i<=$fila; $i++){
									echo'
										<tr>
											<td>'.$fila[0].'</td>
										</tr>
									';
									$fila = mysqli_fetch_array($ejecutarConsulta);

								}

							}
						}


					?>
						
						
				
				
			</table>
		</div>
	</div>
</body>
</center>
</html>