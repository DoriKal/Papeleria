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
	var $id;	var $nombreDepartamento;	var $estado; var $empresa_idEmpresa1;	
	
	function __construct($id,$nombreDepartamento,$estado, $empresa_idEmpresa1){
		$this->id=$id;	$this->nombreDepartamento=$nombreDepartamento;	$this->estado=$estado; $this->empresa_idEmpresa1=$empresa_idEmpresa1;
	}
	
	function crear(){
		$id=$this->id;	$nombreDepartamento=$this->nombreDepartamento;	$estado=$this->estado; $empresa_idEmpresa1=$this->empresa_idEmpresa1;
		
		mysql_query("INSERT INTO departamento (nombreDepartamento, estado,empresa_idEmpresa1) VALUES ('$nombreDepartamento','$estado',$empresa_idEmpresa1)");
	}
	
	function actualizar(){
		$id=$this->id;	$nombreDepartamento=$this->nombreDepartamento;	$estado=$this->estado; $empresa_idEmpresa1=$this->empresa_idEmpresa1;
		mysql_query("UPDATE departamento 
					SET nombreDepartamento='$nombreDepartamento', 
						estado='$estado',
						empresa_idEmpresa1=$empresa_idEmpresa1
					WHERE idDepartamento=$id");
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