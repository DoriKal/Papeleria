<?php

class Proceso_Usuario{
	var $doc;		var $nom;		var $ape;		var $fecha;		var $tel;		var $cel;
	var $sexo;		var $dir;		var $nota;		var $fechar;	var $estado;	var $correo;	
	var $con;		var $tipo;		var $deposito;	var $empresa;
	
	function __construct($doc,$nom,$ape,$fecha,$tel,$cel,$sexo,$dir,$nota,$fechar,$estado,$correo,$con,$tipo,$deposito, $empresa){
		$this->doc=$doc;	$this->nom=$nom;	$this->ape=$ape;	$this->fecha=$fecha; 	$this->tel=$tel;		$this->cel=$cel;
		$this->sexo=$sexo;	$this->dir=$dir;	$this->nota=$nota;	$this->fechar=$fechar;	$this->estado=$estado;	$this->correo=$correo;	
		$this->con=$con;	$this->tipo=$tipo;	$this->deposito=$deposito; $this->empresa=$empresa;
	}
	
	function crear(){
		$doc=$this->doc;	$nom=$this->nom;	$ape=$this->ape;	$fecha=$this->fecha;	$tel=$this->tel;		$cel=$this->cel;
		$sexo=$this->sexo;	$dir=$this->dir;	$nota=$this->nota;	$fechar=$this->fechar;	$estado=$this->estado;	$correo=$this->correo;	
		$con=$this->con;	$tipo=$this->tipo;	$deposito=$this->deposito; $empresa=$this->empresa;
		
		mysql_query("INSERT INTO persona (doc, nom, ape, fecha, tel, cel, sexo, dir, nota, fechar, estado, empresa_idEmpresa) VALUES 
				('$doc','$nom','$ape','$fecha','$tel','$cel','$sexo','$dir','$nota','$fechar','$estado', $empresa)");
		$lastId = mysql_insert_id();
		mysql_query("INSERT INTO empleado (usu, con, correo, fecha, tipo, persona_idPersona ) VALUES ('$doc','$con','$correo','$fecha','$tipo',$lastId)");
		//$lastId2 = mysql_insert_id();
		mysql_query("INSERT INTO cajero (usuario_idUsuario, desposito_idDeposito) VALUES ($lastId2,$deposito)");
	}
	
	function actualizar(){
		$doc=$this->doc;	$nom=$this->nom;	$ape=$this->ape;	$fecha=$this->fecha;	$tel=$this->tel;		$cel=$this->cel;
		$sexo=$this->sexo;	$dir=$this->dir;	$nota=$this->nota;	$fechar=$this->fechar;	$estado=$this->estado;	$correo=$this->correo;	
		$con=$this->con;	$tipo=$this->tipo;	$deposito=$this->deposito;
		
		mysql_query("UPDATE persona SET nom='$nom', ape='$ape', fecha='$fecha', tel='$tel', cel='$cel', sexo='$sexo', dir='$dir',
										nota='$nota', estado='$estado' WHERE doc='$doc'");
		mysql_query("UPDATE empleado SET correo='$correo', tipo='$tipo' WHERE usu='$doc'");
		mysql_query("UPDATE cajero SET deposito='$deposito' WHERE usu='$doc'");
	}
}

?>