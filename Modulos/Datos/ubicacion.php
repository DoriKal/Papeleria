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
	if(!empty($_GET['id'])){
		$id_ubicacion=limpiar($_GET['id']);
		$id_ubicacion=substr($id_ubicacion,10);
		$id_ubicacion=decrypt($id_ubicacion,'URLIVACODIGO');
		
		$oUbicacion=new Consultar_Ubicacion($id_ubicacion);
    
		if($oUbicacion->consultar("nombreUbicacion")==NULL){
			header('Location: ubicacion.php');	
		}else{
			$titulo="Actualizar Ubicación";
			$boton="Actualizar Registro";
			$nombre_ubicacion=$oUbicacion->consultar("nombreUbicacion");
			$estado_ubicacion=$oUbicacion->consultar("estado");
		}
	}else{
		
		$pame=mysql_query("SELECT MAX(idUbicacion)as maximo FROM ubicacion");			
		if($row=mysql_fetch_array($pame)){
			if($row['maximo']==NULL){
				$id_ubicacion=1;
			}else{
				$id_ubicacion=$row['maximo']+1;
			}
		}
		$titulo="Ingresar Nueva Ubicación";	
		$boton="Guardar Registro";
		$nombre_ubicacion='';
		$valor_ubicacion='';
		$estado_ubicacion='';
	}
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Administrar IVA</title>
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

    <?php include_once "../../menu/m_datos.php"; ?>
	<div align="center">
    	<table width="90%">
          <tr>
            <td>
            	<a href="index.php"><strong><i class="icon-fast-backward"></i> Regresar</strong></a>
            	<table class="table table-bordered">
                  <tr class="well">
                    <td><h1 align="center">Administrar Ubicación</h1></td>
                  </tr>
                </table>
                <?php 
					if(!empty($_POST['nombreUbicacion'])){
						$id=limpiar($_POST['idUbicacion']);
						$nombre=limpiar($_POST['nombreUbicacion']);
						$estado=limpiar($_POST['estado']);
						$overty=new Consultar_Ubicacion($id);
						if($overty->consultar('nombreUbicacion')==NULL){
							$oGuardar=new Proceso_Ubicacion('',$nombre,$estado);
							$oGuardar->crear();
							echo mensajes('Nueva Ubicación "'.$nombre.'" Registrado con Exito','verde');
						}else{
							$oActualizar=new Proceso_Ubicacion($id,$nombre,$estado);
							$oActualizar->actualizar();
							echo mensajes('Nueva Ubicación "'.$nombre.'" Actualizado con Exito','verde');
						}
					}
				?>
                <table class="table table-bordered">
                	<tr>
                    	<td>
                        	<div class="row-fluid">
                            	<div class="span6">
                                	<table class="table table-bordered table table-hover">
                                      <tr class="well">
                                        <td><strong><center>ID</center></strong></td>
                                        <td><strong>Descripcion</strong></td>
                                        <td><strong><center>Status</center></strong></td>
                                        <td><strong><center>Editar</center></strong></td>
                                      </tr>
                                      <?php
									  	$pame=mysql_query("SELECT * FROM ubicacion ORDER BY nombreUbicacion");			
										while($row=mysql_fetch_array($pame)){
											$url=cadenas().encrypt($row['idUbicacion'],'URLIVACODIGO');
									  ?>
                                      <tr>
                                        <td><center><?php echo $row['idUbicacion']; ?></center></td>
                                        <td><?php echo $row['nombreUbicacion']; ?></td>
                                        <td><center><?php echo estado($row['estado']); ?></center></td>
                                        <td>
                                        	<center>
                                                <a href="ubicacion.php?id=<?php echo $url; ?>" class="btn btn-mini">
                                                    <i class="icon-edit"></i>
                                                </a>
                                            </center>
                                        </td>
                                      </tr>
                                      <?php } ?>
                                    </table>
                                </div>
                            	<div class="span6">
                                	<table class="table table-bordered">
                                      <tr class="well">
                                      	<td><center><strong><?php echo $titulo; ?></strong></center></td>
                                      </tr>
                                      <tr>
                                      	<td>
                                        	<div align="center">
                                       	  	<form name="form1" method="post" action="">
                                            	<strong>Codigo</strong><br>
                                                <input type="text" name="idUbicacion" value="<?php echo $id_ubicacion; ?>" readonly autocomplete="off"><br>
                                                <strong>Descripcion</strong><br>
                                                <input type="text" name="nombreUbicacion" value="<?php echo $nombre_ubicacion; ?>" required autocomplete="off"><br>
                                                <strong>Status</strong><br>
                                                <select name="estado">
                                                	<option value="s" <?php if($estado_ubicacion=='s'){ echo 'selected'; } ?>>ACTIVO</option>
                                                    <option value="n" <?php if($estado_ubicacion=='n'){ echo 'selected'; } ?>>NO ACTIVO</option>
                                                </select><br>
                                                <div class="form-actions">
                                                  <button type="submit" class="btn btn-primary"><strong><?php echo $boton; ?></strong></button>
                                                  <a href="ubicacion.php" class="btn"><strong>Cancelar</strong></a>
                                                </div>
                                   	    	</form>
                                            </div>
                                        </td>
                                      </tr>
                                    </table>
                                </div>
                            </div>
                        </td>
                    </tr>
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
