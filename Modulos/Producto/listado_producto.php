<?php 
	session_start();
	include_once "../php_conexion.php";
	include_once "class/class.php";
	include_once "../funciones.php";
	include_once "../class_buscar.php";
	if($_SESSION['tipo_user']=='a'){
	}else{
		header('Location: ../../php_cerrar.php');
	}
	
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Lista de Productos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="../../css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="../../ico/favicon.png">
  </head>
  <!-- -->
  <body>

    <?php include_once "../../menu/m_producto.php"; ?>
	<div align="center">
    	<table width="90%">
          <tr>
            <td>
            	<table class="table table-bordered">
                  <tr class="well">
                    <td>
                    	<h1 align="center">Lista de Productos</h1>
                        <center>
                      	<form name="form3" method="post" action="" class="form-search">
                        	<div class="input-prepend input-append">
								<span class="add-on"><i class="icon-search"></i></span>
                        		<input type="text" name="buscar" autocomplete="off" class="input-xxlarge search-query" 
                                autofocus placeholder="Buscar Producto por Nombre">
                            </div>
                            <button type="submit" class="btn" name="buton"><strong>Buscar</strong></button>
                    	</form>
                        </center>
                    </td>
                  </tr>
                </table>
                <div align="right">
                	<a class="btn" href="crear_producto.php" title="Ingresar Nuevo Producto"><i class="icon-plus"></i> <strong>Crear Producto</strong></a>
                </div>
                <br>
                <table class="table table-bordered">
                  <tr class="well">
                    <td><strong>Codigo</strong></td>
                    <td><strong>Descripción</strong></td>
                    <td><strong>Clasificación</strong></td>
                    <td><strong>Impuesto </strong></td>
                    <td><strong>Precio Compra</strong></td>
                    <td><strong>Precio Venta </strong></td>
                    <td></td>
                  </tr>
                  <?php
				  	        if(!empty($_POST['buscar'])){
						          $buscar=limpiar($_POST['buscar']);
						            $pame=mysql_query("SELECT * FROM articulo WHERE nombre LIKE '%$buscar%' or codigo='$buscar' ORDER BY nombre");	
					          }else{
						          $pame=mysql_query("SELECT * FROM articulo ORDER BY nombre");		
          					}		
          					while($row1=mysql_fetch_array($pame)){
          						$url=cadenas().encrypt($row1['codigo'],'URLCODIGO');
          				  ?>
                  <tr>
                    <td><center><?php echo $row1['codigo']; ?></center></td>
                    <td><?php echo strtoupper($row1['nombre']); ?></td>
                    <td>
                      <?php
                      $idDepa = $row1['departamento_idDepartamento'];
                        $pa=mysql_query("SELECT * FROM departamento WHERE estado='s' AND idDepartamento = $idDepa");       
                          while($row=mysql_fetch_array($pa)){
                          if($row['idDepartamento']==$row1['departamento_idDepartamento']){
                            echo strtoupper($row['nombreDepartamento']); 
                          }
                        }
                      ?>
                    </td>
                    <td>
                      <?php
                        $idIva = $row1['iva_ivaventa'];
                        $pa=mysql_query("SELECT * FROM iva WHERE estado='s' AND idIva=$idIva");        
                                  while($row=mysql_fetch_array($pa)){
                          if($row['idIva']==$idIva){
                            echo strtoupper($row['nombreIva']); 
                          }else{
                            echo strtoupper($row['nombreIva']);  
                          }
                        }
                      ?>
                    </td>
                    <td><center><?php echo "$ ".number_format($row1['a_costo'], 2, '.', ''); ?></center></td>
                    <td><center><?php echo "$ ".number_format($row1['a_venta'], 2, '.', ''); ?></center></td>
                    <td>
                    	<center>
                            <a class="btn btn-mini" href="crear_producto.php?codigo=<?php echo $url; ?>" title="Editar">
                                <i class="icon-edit"></i>
                            </a>
                        </center>
                    </td>
                  </tr>
                  <?php } ?>
                </table>
            </td>
          </tr>
        </table>
    </div>
    <!-- Le javascript ../../js/jquery.js
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../js/jquery.js"></script>
    <script src="../../js/bootstrap-transition.js"></script>
    <script src="../../js/bootstrap-alert.js"></script>
    <script src="../../js/bootstrap-modal.js"></script>
    <script src="../../js/bootstrap-dropdown.js"></script>
    <script src="../../js/bootstrap-scrollspy.js"></script>
    <script src="../../js/bootstrap-tab.js"></script>
    <script src="../../js/bootstrap-tooltip.js"></script>
    <script src="../../js/bootstrap-popover.js"></script>
    <script src="../../js/bootstrap-button.js"></script>
    <script src="../../js/bootstrap-collapse.js"></script>
    <script src="../../js/bootstrap-carousel.js"></script>
    <script src="../../js/bootstrap-typeahead.js"></script>

  </body>
</html>
