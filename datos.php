<style>
	h1{
		font-family: Times New Roman;
	}
</style>
<?php

	$departamento = $_POST['departamento'];
	if($_POST['departamento']){
		$link = new mysqli('localhost','Benny','12345','web1');
		$sql = "SELECT * FROM ciudades where id_departamentos = '$departamento'";
		$result = $link->query($sql);
		$arr='';
		$cadena="<label>SELECT 2</label>
		<h1>CIUDADES</h1><br> 
			<select id='lista2' name='lista2'>";
			while ($ver=mysqli_fetch_row($result)) {
				$cadena=$cadena.'<option value='.$ver[0].'>'.utf8_encode($ver[2]).'</option>';
			}
			echo  $cadena."</select>";				
		}
		echo $arr;//Retorno la Info Solicitada
		mysqli_close($link);	
	

?>
