<?php
	
	$conexion = mysql_connect("localhost","root","1993");
	mysql_select_db("db_tienda",$conexion);
	date_default_timezone_set("America/Mexico_City");
    mysql_query("SET NAMES utf8");
	mysql_query("SET CHARACTER_SET utf");
	$s='$';

	/*$conexion = mysql_connect("sql206.byethost3.com","b3_15925110","FerMaritzA");
	mysql_select_db("b3_15925110_tiendita",$conexion);
	date_default_timezone_set("America/Mexico_City");
    mysql_query("SET NAMES utf8");
	mysql_query("SET CHARACTER_SET utf");
	$s='$';*/

	
	function limpiar($tags){
		$tags = strip_tags($tags);
		return $tags;
	}

	
?>