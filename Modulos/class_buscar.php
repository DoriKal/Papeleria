<?php
class Consultar_Cajero{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM ((cajero c INNER JOIN empleado e ON c.usuario_idUsuario3=e.idUsuario) 
INNER JOIN persona p ON p.idPersona=e.persona_idPersona) INNER JOIN sucursal s ON s.idDeposito=c.deposito_idDeposito3
WHERE e.idUsuario=$codigo");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}


class Consultar_Cliente{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM (empleado e INNER JOIN persona p ON e.persona_idPersona=p.idPersona) INNER JOIN cliente c ON p.idPersona=c.persona_idPersona2
WHERE c.doc='$codigo'");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_Departamento{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM departamento d INNER JOIN empresa e on d.empresa_idEmpresa1=e.idEmpresa WHERE idDepartamento=$codigo");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_Usuario{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM empleado e INNER JOIN persona p 
WHERE e.usu=p.doc and e.usu='$codigo'");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_empleado{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM empleado WHERE doc='$codigo'");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_Proveedor{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM proveedor WHERE id='$codigo'");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_Deposito{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM sucursal WHERE idDeposito=$codigo");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_Producto{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = 
		mysql_query("SELECT * FROM (((articulo a LEFT JOIN iva i ON a.iva_ivacompra=i.idIva) 
							INNER JOIN unidad u ON a.unidad_idUnidad=u.idUnidad) 
							INNER JOIN departamento d ON a.departamento_idDepartamento=d.idDepartamento)
							left JOIN pedido p ON p.articulo_codigo=a.codigo
							WHERE codigo=$codigo or nombre='$codigo' or a_costo='$codigo'");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_IVA{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM iva WHERE idIva=$codigo");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_Sistema{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM unidad WHERE idUnidad=$codigo");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}

class Consultar_Contenido{
	private $consulta;
	private $fetch;
	
	function __construct($codigo){
		$this->consulta = mysql_query("SELECT * FROM pedido WHERE codigo='$codigo' -- and bodega='$bodega'");
		$this->fetch = mysql_fetch_array($this->consulta);
	}
	
	function consultar($campo){
		return $this->fetch[$campo];
	}
}
?>