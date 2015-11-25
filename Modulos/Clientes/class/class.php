<?php

class Proceso_Cliente{
	var $doc;		var $nom;		var $ape;		var $fecha;		var $tel;		var $cel;
	var $sexo;		var $dir;		var $nota;		var $fechar;	var $estado;	var $correo;	
	var $con;		var $cupo; var $persona;
	
	function __construct($doc,$nom,$ape,$fecha,$tel,$cel,$sexo,$dir,$nota,$fechar,$estado,$correo,$con,$cupo, $persona){
		$this->doc=$doc;	$this->nom=$nom;	$this->ape=$ape;	$this->fecha=$fecha; 	$this->tel=$tel;		$this->cel=$cel;
		$this->sexo=$sexo;	$this->dir=$dir;	$this->nota=$nota;	$this->fechar=$fechar;	$this->estado=$estado;	$this->correo=$correo;	
		$this->con=$con;	$this->cupo=$cupo; $this->persona=$persona;
	}
	
	function crear(){
		$doc=$this->doc;	$nom=$this->nom;	$ape=$this->ape;	$fecha=$this->fecha;	$tel=$this->tel;		$cel=$this->cel;
		$sexo=$this->sexo;	$dir=$this->dir;	$nota=$this->nota;	$fechar=$this->fechar;	$estado=$this->estado;	$correo=$this->correo;	
		$con=$this->con;	$cupo=$this->cupo; $persona=$this->persona;
		
		mysql_query("INSERT INTO persona (doc, nom, ape, fecha, tel, cel, sexo, dir, nota, fechar, estado, empresa_idEmpresa) VALUES 
				('$doc','$nom','$ape','$fecha','$tel','$cel','$sexo','$dir','$nota','$fechar','$estado',1)");
		$lastId = mysql_insert_id();
		//mysql_query("INSERT INTO empleado (usu, con, correo, fecha, tipo, persona_idPersona) VALUES ('$doc','$con','$correo','$fecha','c',$lastId)");

		mysql_query("INSERT INTO cliente (doc, cupo, puntos, persona_idPersona2) value ('$doc','$cupo','', $lastId)");
	}
	
	function actualizar(){
		$doc=$this->doc;	$nom=$this->nom;	$ape=$this->ape;	$fecha=$this->fecha;	$tel=$this->tel;		$cel=$this->cel;
		$sexo=$this->sexo;	$dir=$this->dir;	$nota=$this->nota;	$fechar=$this->fechar;	$estado=$this->estado;	$correo=$this->correo;	
		$con=$this->con;	$cupo=$this->cupo;
		
		mysql_query("UPDATE persona SET nom='$nom', ape='$ape', fecha='$fecha', tel='$tel', cel='$cel', sexo='$sexo', dir='$dir',
										nota='$nota', estado='$estado' WHERE doc='$doc'");
		//mysql_query("UPDATE empleado SET correo='$correo' WHERE usu='$doc'");
		mysql_query("UPDATE cliente SET cupo='$cupo' WHERE doc='$doc'");
	}
}

?>