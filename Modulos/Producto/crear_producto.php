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
	$nombre='';			$depart='';			$unidad='';	$ubicacion='';		$d_costo='';
	$defecto='';		$ivacompra='';		$ivaventa='';		$costo_prov=0;
	$ocosto_prov=0;	$a_venta=0;		$b_venta=0;		$c_venta=0;
	$d_venta=0;		$a_costo=0;		$b_costo=0;		$c_costo=0;
	$codigo='';			$boton='Guardar Informacion';			$existe=FALSE;		$ivav=0;
	$titulo='Crear Producto';

  ######### SACAMOS EL VALOR MAXIMO DE LA FACTURA Y LE SUMAMOS UNO ##########
    /*$pa=mysql_query("SELECT MAX(codigo)as maximo FROM articulo");       
        if($row=mysql_fetch_array($pa)){
      if($row['maximo']==NULL){
        $articulo='1';
      }else{
        $articulo=$row['maximo']+1;
      }
    }*/
	
	if(!empty($_GET['codigo'])){
		$id_codigo=limpiar($_GET['codigo']);
		$id_codigo=substr($id_codigo,10);
		$id_codigo=decrypt($id_codigo,'URLCODIGO');
		
		
		$pa=mysql_query("SELECT * FROM articulo WHERE codigo ='$id_codigo'");				
		if($row=mysql_fetch_array($pa)){
			$existe=TRUE;
			$oP=new Consultar_Producto($id_codigo);		$codigo=$id_codigo;
			$nombre=$oP->consultar('nombre');			$boton='Actualizar Informacion';
			$depart=$oP->consultar('idDepartamento');			$unidad=$oP->consultar('idUnidad');
      $ubicacion=$oP->consultar('idUbicacion');
			$defecto=$oP->consultar('defecto');			
      $ivacompra=$oP->consultar('idIva');  $ivaventa=$oP->consultar('idIva');		
      $costo_prov=$oP->consultar('costo_prov');
			$ocosto_prov=$oP->consultar('ocosto_prov');	$a_venta=$oP->consultar('a_venta');
			$b_venta=$oP->consultar('b_venta');			/*$c_venta=$oP->consultar('c_venta');*/
			/*$d_venta=$oP->consultar('d_venta');*/			$a_costo=$oP->consultar('a_costo');
			$b_costo=$oP->consultar('b_costo');			/*$c_costo=$oP->consultar('c_costo');*/
			/*$d_costo=$oP->consultar('d_costo');*/			$titulo=$oP->consultar('nombre');		
			
			$oIVA=new Consultar_IVA($ivaventa);	
			$ivav=($oIVA->consultar('valor')/100)+1;
		}else{
			$existe=FALSE;	
		}
	}
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Crear Producto</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body { padding-top: 60px; padding-bottom: 40px;}
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
                    	<h1 align="center"><?php echo strtoupper($titulo); ?></h1>
                        <?php if($existe==TRUE){ $url1=cadenas().encrypt($id_codigo,'URLCODIGO');?>
                        <center>
                          <div class="btn-group">
                            <a href="crear_producto.php?codigo=<?php echo $url1; ?>" class="btn btn-primary"><strong> [ Producto ] </strong></a>
                            <a href="inventario.php?codigo=<?php echo $url1; ?>" class="btn"><strong> [ Inventario ] </strong></a>
                            <a href="crear_proveedor.php?codigo=<?php echo $url1; ?>" class="btn"><strong> [ Proveedor ] </strong></a>
                          </div>
                        </center>
						            <?php }	?>
                    </td>
                  </tr>
                </table>
                <?php			
					       if(!empty($_POST['nombre']) and !empty($_POST['codigo'])){
        						$codigo=limpiar($_POST['codigo']);				$nombre=limpiar($_POST['nombre']);
        						$depart=limpiar($_POST['idDepartamento']);				$unidad=limpiar($_POST['idUnidad']);
                    $ubicacion=limpiar($_POST['idUbicacion']);
        						$defecto=limpiar($_POST['defecto']);			$ivacompra=limpiar($_POST['idIva']);
        						$ivaventa=limpiar($_POST['idIva']);			$costo_prov=limpiar($_POST['costo_prov']);
        						$ocosto_prov=limpiar($_POST['ocosto_prov']);	$a_venta=limpiar($_POST['a_venta']);
        						$b_venta=limpiar($_POST['b_venta']);			/*$c_venta=limpiar($_POST['c_venta']);*/
        						/*$d_venta=limpiar($_POST['d_venta']);*/			$a_costo=limpiar($_POST['a_costo']);
        						$b_costo=limpiar($_POST['b_costo']);			/*$c_costo=limpiar($_POST['c_costo']);*/
        						/*$d_costo=limpiar($_POST['d_costo']);*/			$url=cadenas().encrypt($codigo,'URLCODIGO');
        						
        						if(empty($_GET['codigo'])){
        							$pa=mysql_query("SELECT * FROM articulo WHERE codigo='$codigo'");				
        							if($row=mysql_fetch_array($pa)){
        								echo mensajes('El Código "'.$codigo.'" Ya se Encuentra Registrado en la Base de Datos','rojo');
        							}
        						}
						        $oGuardar=new Proceso_Producto($codigo, $nombre, $depart, $unidad,$ubicacion, $defecto, $ivacompra, $ivaventa, $costo_prov, $ocosto_prov, $a_venta, $b_venta, $a_costo, $b_costo);
						
        						if($existe==FALSE){
        							$oGuardar->crear();
        							echo mensajes('El Producto "'.$nombre.'" Identificado con el Código "'.$codigo.'" Ha sido Registrado con Exito<BR>
        							<a href="crear_producto.php?codigo='.$url.'"><strong>Seguir Editando</strong></a>','verde');	
        						}else{
        							$oGuardar->actualizar();
        							echo mensajes('El Producto "'.$nombre.'" Identificado con el Código "'.$codigo.'" Ha sido Actualizado con Exito','verde');		
        						}
					       } ?>
                <table class="table table-bordered">
                  <tr>
                    <td>
                   	  <form name="form1" method="post" action="">
                        <div align="center"><pre><strong>Información Básica</strong></pre></div>
                        <div class="row-fluid">
                          <div class="span3" align="center">
                          	<strong>Código de Registro</strong><br>
                              <?php if($existe==TRUE){  ?>
                                <input readonly type="text" name="codigo" class="input-xlarge" autocomplete="off" value="<?php echo $codigo; ?>"><br>
                              <?php }else{ ?>
                                <input type="text" name="codigo" class="input-xlarge" autocomplete="off" placeholder="ART001"><br>
                              <?php } ?> 
                          </div>
                          <div class="span6" align="center">
                          	<strong>Descripción Producto</strong><br>
                            <input type="text" name="nombre" class="input-xxlarge" autocomplete="off" required value="<?php echo $nombre; ?>"><br>
                          </div>
                          <div class="span3" align="center">
                            <strong>Clasificación</strong><br>
                            <select name="idDepartamento" class="input-xlarge">
                              <?php $pa=mysql_query("SELECT * FROM departamento WHERE estado='s'");       
                                while($row=mysql_fetch_array($pa)){
                                  if($row['idDepartamento']==$depart){
                                    echo '<option value="'.$row['idDepartamento'].'" selected>'.$row['nombreDepartamento'].'</option>'; 
                                  }else{
                                    echo '<option value="'.$row['idDepartamento'].'">'.$row['nombreDepartamento'].'</option>';  
                                  }
                                }?>
                            </select>
                            </div>
                        </div>
                   		  <div class="row-fluid">
                            <div class="span4" align="center">
                            	<strong>Ubicación</strong><br>
                                <select name="idUbicacion" class="input-xlarge">
                                	<?php $pa=mysql_query("SELECT * FROM ubicacion WHERE estado='s'");				
                    					       while($row=mysql_fetch_array($pa)){
                  											if($row['idUbicacion']==$ubicacion){
                  												echo '<option value="'.$row['idUbicacion'].'" selected>'.$row['nombreUbicacion'].'</option>';	
                  											}else{
                  												echo '<option value="'.$row['idUbicacion'].'">'.$row['nombreUbicacion'].'</option>';	
                  											}
                  									 }?>
                              </select>
                            </div>
                            <div class="span4" align="center">
                              <strong>Unidad</strong><br>
                                <select name="idUnidad" class="input-xlarge">
                                  <?php $pa=mysql_query("SELECT * FROM unidad WHERE estado='s'");       
                                     while($row=mysql_fetch_array($pa)){
                                        if($row['idUnidad']==$unidad){
                                          echo '<option value="'.$row['idUnidad'].'" selected>'.$row['nombreUnidad'].'</option>'; 
                                        }else{
                                          echo '<option value="'.$row['idUnidad'].'">'.$row['nombreUnidad'].'</option>';  
                                        }
                                     }?>
                              </select>
                            </div>
                            <div class="span4">
                              <strong>Precio de venta</strong><br>
                              <select name="defecto" class="input-xlarge">
                                  <option value="A" <?php if($defecto=='A'){ echo 'selected'; } ?>>Precio A</option>
                                    <!-- <option value="B" <?php if($defecto=='B'){ echo 'selected'; } ?>>Precio B</option> -->
                                    <!--option value="C" <?php if($defecto=='C'){ echo 'selected'; } ?>>Precio C</option-->
                                    <!--option value="D" <?php if($defecto=='D'){ echo 'selected'; } ?>>Precio D</option-->
                                </select>
                            </div>
					              </div>
                        <!-- <div align="center"><pre><strong>Impuestos</strong></pre></div> -->
                        <div class="row-fluid" >
                          <div class="span4">
                            <strong>IVA Compra</strong><br>
                            <select name="idIva" class="input-xlarge">
                              <?php $pa=mysql_query("SELECT * FROM iva WHERE estado='s'");				
                                  while($row=mysql_fetch_array($pa)){
                    								if($row['idIva']==$ivacompra){
                    									echo '<option value="'.$row['idIva'].'" selected>'.$row['nombreIva'].'</option>';	
                    								}else{
                    									echo '<option value="'.$row['idIva'].'">'.$row['nombreIva'].'</option>';	
                    								}
                    							}?>
                              </select>
                          </div>
                          <div class="span4">
                            	<strong>IVA Venta</strong><br>
                                <select name="idIva" class="input-xlarge">
                                	<?php $pa=mysql_query("SELECT * FROM iva WHERE estado='s'");				
                    					      while($row=mysql_fetch_array($pa)){
                											if($row['idIva']==$ivaventa){
                												echo '<option value="'.$row['idIva'].'" selected>'.$row['nombreIva'].'</option>';	
                											}else{
                												echo '<option value="'.$row['idIva'].'">'.$row['nombreIva'].'</option>';	
                											}	
										              }?>
                              </select>
                          </div>
                        </div>
                        
                        <!-- <div align="center"><pre><strong>Costos del Proveedor</strong></pre></div> -->
                        <div class="row-fluid" >
                            <div class="span4">
                            	<strong>Costo Proveedor</strong><br>
                                <div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
                                    <input type="number" name="costo_prov" step="0.01" value="<?php echo $costo_prov; ?>" autocomplete="off" required>
                                </div>
                            </div>
                            <div class="span4">
                            	<strong>Otros Costos</strong><br>
                                <div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="ocosto_prov" step="0.01" value="<?php echo $ocosto_prov; ?>" autocomplete="off" required>
                                </div>
                            </div>
                            <div class="span4">
                            	<?php if($existe==TRUE){
            										echo '<strong>Total con IVA</strong><br>';
            										$iva=new Consultar_IVA($ivacompra);
            										$tiva=($iva->consultar('valor')/100)+1;
            										$total_prov=($costo_prov+$ocosto_prov)*$tiva;
            										echo $s.' '.formato($total_prov);
            									}?>
                          </div>
                        </div>
                        
                        <div align="center"><pre><strong>Costos del Producto</strong></pre></div>
                        <div align="center">
                       	<table width="60%">
                          <tr>
                            <td><center><strong>PRECIOS</strong></center></td>
                            <td><center><strong>VENTA</strong></center></td>
                            <td><center><strong>COSTO</strong></center></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td><center><strong>A</strong></center></td>
                            <td> 
                            	<div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="a_venta" step="0.01" value="<?php echo $a_venta; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td>
                            	<div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="a_costo" step="0.01" value="<?php echo $a_costo; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td><?php echo $s.' '.formato($a_venta*$ivav); ?></td>
                          </tr>
                          <tr>
                            <td><center><strong>B</strong></center></td>
                            <td>
                            	<div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="b_venta" step="0.01" value="<?php echo $b_venta; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td>
                            	<div class="input-prepend input-append">
                                	<span class="add-on"><strong><?php echo $s; ?></strong></span>
                       				<input type="number" name="b_costo" step="0.01" value="<?php echo $b_costo; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td><?php echo $s.' '.formato($b_venta*$ivav); ?></td>
                          </tr>
                          <!-- <tr>
                            <td><center><strong>C</strong></center></td>
                            <td>
                            	<div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="c_venta" step="0.01" value="<?php echo $c_venta; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td>
                            	<div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="c_costo" step="0.01" value="<?php echo $c_costo; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td><?php echo $s.' '.formato($c_venta*$ivav); ?></td>
                          </tr>
                          <tr>
                            <td><center><strong>D</strong></center></td>
                            <td>
                            	<div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="d_venta" step="0.01" value="<?php echo $d_venta; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td>
                            	<div class="input-prepend input-append">
                                    <span class="add-on"><strong><?php echo $s; ?></strong></span>
	                                <input type="number" name="d_costo" step="0.01" value="<?php echo $d_costo; ?>" autocomplete="off" required>
                                </div>
                            </td>
                            <td><?php echo $s.' '.formato($d_venta*$ivav); ?></td>
                          </tr> -->
                        </table>
                        <br>
                        <div class="form-actions" align="center">
                          <button type="submit" class="btn btn-primary"><i class="icon-ok"></i> <strong><?php echo $boton; ?></strong></button>
                          <button type="reset" class="btn"><i class="icon-remove"></i> <strong>Cancelar</strong></button>
                        </div>
                        </form>
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
