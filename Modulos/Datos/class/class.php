<?php
class Proceso_Deposito{
	var $id;	var $nombre;		var $dir;	
	var $tel;	var $encargado;		var $estado;	
	
	function __construct($id,$nombre,$dir,$tel,$encargado,$estado){
		$this->id=$id;		$this->nombre=$nombre;				$this->dir=$dir;
		$this->tel=$tel;	$this->encargado=$encargado;		$this->estado=$estado;
	}
	
	function crear(){
		$id=$this->id;		$nombre=$this->nombre;					$dir=$this->dir;
		$tel=$this->tel;	$encargado=$this->encargado;			$estado=$this->estado;
		
		mysql_query("INSERT INTO sucursal (nombre, dir, tel, encargado, estado) VALUES ('$nombre','$dir','$tel','$encargado','$estado')");
	}
	
	function actualizar(){
		$id=$this->id;		$nombre=$this->nombre;					$dir=$this->dir;
		$tel=$this->tel;	$encargado=$this->encargado;			$estado=$this->estado;
		
		mysql_query("UPDATE sucursal SET nombre='$nombre',
										 dir='$dir',
										 tel='$tel',
										 encargado='$encargado',
										 estado='$estado' 		 
								WHERE idDeposito='$id'");
	}
}
class Proceso_Departamento{
	var $id;	var $nombre;	var $estado; var $empresa;	
	
	function __construct($id,$nombre,$estado, $empresa){
		$this->id=$id;	$this->nombre=$nombre;	$this->estado=$estado; $this->empresa=$empresa;
	}
	
	function crear(){
		$id=$this->id;	$nombre=$this->nombre;	$estado=$this->estado; $empresa=$this->empresa;
		
		mysql_query("INSERT INTO departamento (nombreDepartamento, estado,empresa_idEmpresa1) VALUES ('$nombre','$estado',$empresa);");
	}
	
	function actualizar(){
		$id=$this->id;	$nombre=$this->nombre;	$estado=$this->estado; $empresa=$this->empresa;
		echo $id."ddsfnklsdnfklsn";
		//mysql_query("UPDATE departamento SET nombreDepartamento='$nombre', estado='$estado' empresa_idEmpresa1='$empresa' WHERE idDepartamento='$id'");
	}
}

class Proceso_IVA{
	var $id;	var $nombre;	var $valor;		var $estado;	
	
	function __construct($id,$nombre,$valor,$estado){
		$this->id=$id;		$this->nombre=$nombre;		$this->valor=$valor;	$this->estado=$estado;
	}
	
	function crear(){
		$id=$this->id;		$nombre=$this->nombre;		$valor=$this->valor;	$estado=$this->estado;
		
		mysql_query("INSERT INTO iva (nombreIva, valor, estado) VALUES ('$nombre','$valor','$estado')");
	}
	
	function actualizar(){
		$id=$this->id;		$nombre=$this->nombre;		$valor=$this->valor;	$estado=$this->estado;
		
		mysql_query("UPDATE iva SET nombreIva='$nombre', valor='$valor', estado='$estado' WHERE idIva='$id'");
	}
}
?>