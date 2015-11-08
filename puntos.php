<?php  
	
	require_once("conex.php");
	$query = "SELECT * FROM localizacion;";
	$rs = mysqli_query($mysqli,$query);
	$datos = array();
	while($row = $rs->fetch_assoc()){
		array_push($datos,$row);
	}
	echo json_encode($datos);
?>