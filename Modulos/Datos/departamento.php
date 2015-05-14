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
		$id_depa=limpiar($_GET['id']);
		$id_depa=substr($id_depa,10);
		$id_depa=decrypt($id_depa,'URLIVACODIGO');
    
		
		$oDepa=new Consultar_Departamento($id_depa);
		if($oDepa->consultar("nombreDepartamento")==NULL){
			header('Location: departamento.php');	
		}else{
			$titulo="Actualizar Departamento";
			$boton="Actualizar Departamento";
			$nombre_depa=$oDepa->consultar("nombreDepartamento");
			$estado_depa=$oDepa->consultar("estado");
      $idEmpresa=$oDepa->consultar("empresa_idEmpresa1");

		}
	}else{
		
		$pame=mysql_query("SELECT MAX(idDepartamento)as maximo FROM departamento");			
		if($row=mysql_fetch_array($pame)){
			if($row['maximo']==NULL){
				$id_depa=1;
			}else{
				$id_depa=$row['maximo']+1;
			}
		}
		$titulo="Ingresar Departamento Nuevo";	
		$boton="Guardar Registro";
		$nombre_depa='';
		$valor_depa='';
		$estado_depa='';
    $idEmpresa='';
	}
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Admin. Departamentos</title>
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
  <!-- FACEBOOK COMENTARIOS -->
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <!-- FIN CODIGO FACEBOOK -->
  <body>

    <?php include_once "../../menu/m_datos.php"; ?>
	<div align="center">
    	<table width="90%">
          <tr>
            <td>
            	<a href="index.php"><strong><i class="icon-fast-backward"></i> Regresar</strong></a>
            	<table class="table table-bordered">
                  <tr class="well">
                    <td><h1 align="center">Administrar Departamentos</h1></td>
                  </tr>
                </table>
                <?php 
					if(!empty($_POST['nombre'])){
						$id=limpiar($_POST['idDepartamento']);
						$nombre=limpiar($_POST['nombreDepartamento']);
						$estado=limpiar($_POST['estado']);
            $idEmpresa=limpiar($_POST['idEmpresa']);

						$overty=new Consultar_Departamento($id);
						if($overty->consultar('nombreDepartamento')==NULL){
							$oGuardar=new Proceso_Departamento('',$nombre,$estado, $idEmpresa);
							$oGuardar->crear();
							echo mensajes('Nuevo Departamento "'.$nombre.'" Registrado con Exito','verde');
						}else{
							$oActualizar=new Proceso_Departamento($id,$nombre,$estado, $idEmpresa);
							$oActualizar->actualizar();
              var_dump($oActualizar);
							echo mensajes('Nuevo Departamento "'.$nombre.'" Actualizado con Exito','verde');
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
                                        <td><strong><center>Estado</center></strong></td>
                                        <td><strong><center>Empresa</center></strong></td>
                                        <td><strong><center>Editar</center></strong></td>
                                      </tr>
                                      <?php
                  									  	$pame=mysql_query("SELECT * from departamento d INNER JOIN empresa e ON e.idEmpresa=d.empresa_idEmpresa1  ORDER BY idDepartamento");			
                  										while($row=mysql_fetch_array($pame)){
                  											$url=cadenas().encrypt($row['idDepartamento'],'URLIVACODIGO');
                  									  ?>
                                      <tr>
                                        <td><center><?php echo $row['idDepartamento']; ?></center></td>
                                        <td><?php echo $row['nombreDepartamento']; ?></td>
                                        <td><center><?php echo estado($row['estado']); ?></center></td>
                                        <td><center><?php echo $row['empresa_idEmpresa1']; ?></center></td>
                                        <td>
                                        	<center>
                                                <a href="departamento.php?id=<?php echo $url; ?>" class="btn btn-mini">
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
                                                <input type="text" name="idDepartamento" value="<?php echo $id_depa; ?>" readonly autocomplete="off"><br>
                                                <strong>Descripcion</strong><br>
                                                <input type="text" name="nombreDepartamento" value="<?php echo $nombre_depa; ?>" required autocomplete="off"><br>
                                                <strong>Empresa</strong><br>
                                                <select name="idEmpresa">
                                                  <?php $pa=mysql_query("SELECT * FROM empresa");        
                                                      while($row=mysql_fetch_array($pa)){
                                                        if($row['idEmpresa']==$idEmpresa){
                                                          echo '<option value="'.$row['idEmpresa'].'" selected>'.$row['empresa'].'</option>'; 
                                                        }else{
                                                          echo '<option value="'.$row['idEmpresa'].'">'.$row['empresa'].'</option>';  
                                                        }
                                                      }
                                                    ?>
                                                </select><br>
                                                <strong>Estado</strong><br>
                                                <select name="estado">
                                                	<option value="s" <?php if($estado_depa=='s'){ echo 'selected'; } ?>>ACTIVO</option>
                                                    <option value="n" <?php if($estado_depa=='n'){ echo 'selected'; } ?>>NO ACTIVO</option>
                                                </select><br>
                                                <div class="form-actions">
                                                  <button type="submit" class="btn btn-primary"><strong><?php echo $boton; ?></strong></button>
                                                  <a href="departamento.php" class="btn"><strong>Cancelar</strong></a>
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
