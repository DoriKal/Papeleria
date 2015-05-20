<?php 
    session_start();
    include_once "../php_conexion.php";
    include_once "class/class.php";
    include_once "../funciones.php";
    include_once "../class_buscar.php";
    if($_SESSION['tipo_user']=='a' or $_SESSION['tipo_user']=='c'){
    }else{
        header('Location: ../../php_cerrar.php');
    }
    $usu=$_SESSION['idUser'];
    
    $oPersona=new Consultar_Cajero($usu);
    $cajero_nombre=$oPersona->consultar('nom').' '.$oPersona->consultar('ape');
    $fecha=date('Y-m-d');
    $corte='001';
        
        ######### TRAEMOS LOS DATOS DE LA EMPRESA #############
        $pa=mysql_query("SELECT * FROM empresa WHERE idEmpresa=1");             
        if($row=mysql_fetch_array($pa)){
            $nombre_empresa=$row['empresa'];
            $nit_empresa=$row['nit'];
            $dir_empresa=$row['direccion'];
            $tel_empresa=$row['tel'].'-'.$row['fax'];
            $pais_empresa=$row['pais'].' - '.$row['ciudad'];
        }
        ######## NOS UBICAMOS EN QUE DEPOSITO O TIENDA SE HACE LA VENTA ##########
        $pa=mysql_query("SELECT * FROM Cajero WHERE usuario_idUsuario3=$usu");              
        while($row=mysql_fetch_array($pa)){
            $id_bodega=$row['deposito_idDeposito3'];
            $oDeposito=new Consultar_Deposito($id_bodega);
            $nombre_deposito=$oDeposito->consultar('nombre');
        }
        
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Reporte Articulos</title>
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
      table {
        width:90%;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;
        }
        table#t01 tr:nth-child(even) {
            background-color: #eee;
        }
        table#t01 tr:nth-child(odd) {
           background-color:#fff;
        }
        table#t01 th  {
            background-color: black;
            color: white;
        }
    </style>
    <link href="../../css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="../../ico/favicon.png">
</head>
    <script>
        function imprimir(){
          var objeto=document.getElementById('imprimeme');  //obtenemos el objeto a imprimir
          var ventana=window.open('','_blank');  //abrimos una ventana vacía nueva
          ventana.document.write(objeto.innerHTML);  //imprimimos el HTML del objeto en la nueva ventana
          ventana.document.close();  //cerramos el documento
          ventana.print();  //imprimimos la ventana
          ventana.close();  //cerramos la ventana
        }
    </script>
  <!-- -->
<body>
<?php include_once "../../menu/m_producto.php"; ?>
    <div align="center">
        <table width="90%">
          <tr>
            <td>
            <strong><a style="font-size:24px; color:red;" class="btn" href="listado_producto.php">Regresar</a></strong><br>
            <table class="table table-bordered">
              <tr class="well">
                <td><h2 align="center">Articulos con Stock Mínimo</h2></td>
              </tr>
            </table>
            <div class="row-fluid">
                <div class="span12">
                    <table class="table table-bordered">
                        <tr>
                            <td>
                                <center>
                                <button onclick="imprimir();" class="btn"><i class="icon-print"></i> <strong>IMPRIMIR</strong></button><BR><br>
                                <div id="imprimeme">
                                    <center><strong>Productos Con Existencia Menor o Igual al Stock Mínimo </strong></center>
                                    <table width="95%">
                                        <tr>
                                            <td>
                                                <center>
                                                    <strong><?php echo $nombre_deposito; ?></strong><br>
                                                    <img src="../../img/logo.jpg" width="80" height="80"><br>
                                                    <strong><?php echo $nombre_empresa; ?></strong><br>
                                                </center>
                                            </td>
                                            <td><br>
                                                <strong>Reporte: </strong><?php echo $corte; ?><br>
                                                <strong>Fecha: </strong><?php echo fecha($fecha); ?> | 
                                                <strong>Hora: </strong><?php echo date('H:m:s'); ?><br>
                                                <strong>Cajero/a: </strong><?php echo $cajero_nombre; ?>
                                            </td>
                                        </tr>
                                    </table>
                                    <br>
                                    <table id="t01" width="95%" rules="all" border="1">
                                        <tr>
                                            <td><strong>ID</strong></td>
                                            <td><strong>Descripción</strong></td>
                                            <td><strong>Unidad</strong></td>
                                            <td><strong>Existencia</strong></td>
                                            <td><strong>Costo</strong></td>
                                            <td><strong>Impuesto</strong></td>
                                            <td><strong>Departamento</strong></td>
                                            <td><strong>Proveedor</strong></td>
                                            <td><strong>Stock Mínimo</strong></td>
                                            <td><div align="right"><strong>Precio Venta</strong></div></td>
                                            <td><div align="right"><strong>Valor Inventario</strong></div></td>
                                        </tr>
                                        <?php 
                                            $item=0;
                                            $neto=0;
                                            $pa=mysql_query("SELECT a.codigo,a.nombre AS descripcion,u.nombreUnidad as unidad,IFNULL(pe.cant,0) as existencia,a.a_costo,a.a_venta,i.nombreIva as impuesto,
i.idIva,d.nombreDepartamento as departamento,IFNULL(p.nombre,'Sin Asignar') AS proveedor,IFNULL(pe.minima,0) as stockMinimo,a.defecto FROM 
(((((articulo a INNER JOIN departamento d ON a.departamento_idDepartamento=d.idDepartamento)
INNER JOIN unidad u ON a.unidad_idUnidad=u.idUnidad)
INNER JOIN iva i ON a.iva_ivaventa=i.idIva)
LEFT JOIN detalleprov dp ON a.codigo=dp.producto_codigo)
LEFT JOIN proveedor p ON dp.proveedor_id=p.id)
LEFT JOIN pedido pe ON a.codigo=pe.articulo_codigo
-- WHERE pe.cant IS NULL OR pe.cant <= (SELECT MIN(ped.minima) FROM pedido ped)
ORDER BY a.codigo");              
                                            while($row=mysql_fetch_array($pa)){                                             
                                                $codigo=$row['codigo'];
                                                $p_nombre=$row['descripcion'];
                                                $unidad=$row['unidad'];
                                                $cantidad=$row['existencia'];
                                                $a_costo=$row['a_costo'];
                                                $impuesto=$row['impuesto'];
                                                $departamento=$row['departamento'];
                                                $proveedor=$row['proveedor'];
                                                $stockMinimo=$row['stockMinimo'];
                                                ##### CONSULTAR IVA ###################
                                                $oIVA=new Consultar_IVA($row['idIva']);
                                                $iva=$oIVA->consultar('valor');
                                                ##### Calcular el valor e importe ######
                                                $defecto=strtolower($row['defecto']);
                                                $valor=$row[$defecto.'_venta']*(($iva/100)+1);
                                                //$costo=$row[$defecto.'_costo'];
                                                $importe=$row['existencia']*$valor;

                                                $neto=$neto+$importe;
                                                ########################################
                                                
                                        ?>
                                                <?php if($row['existencia'] <= $row['stockMinimo']){ ?>
                                                    <tr>
                                                        <td><?php echo $codigo; ?></td>
                                                        <td><?php echo strtoupper($p_nombre); ?></td>
                                                        <td><?php echo strtoupper($unidad); ?></td>
                                                        <td><?php echo $cantidad; ?></td>
                                                        <td><?php echo formato($a_costo); ?></td>
                                                        <td><?php echo strtoupper($impuesto); ?></td>
                                                        <td><?php echo strtoupper($departamento); ?></td>
                                                        <td><?php echo strtoupper($proveedor); ?></td>
                                                        <td><?php echo $stockMinimo; ?></td>
                                                        <td><div align="right">$<?php echo formato($valor); ?></div></td>
                                                        <td><div align="right">$<?php echo formato($importe); ?></div></td>
                                                    </tr>
                                            <?php } ?>
                                        <?php } ?>
                                        <tr>
                                          <td colspan="10"><div align="right"><strong>Valor del inventario</strong></div></td>
                                          <td><div align="right"><strong>$ <?php echo formato($neto); ?></strong></div></td>
                                        </tr>
                                    </table><br>
                                    <center>
                                        <?php echo $nombre_empresa; ?><br>
                                        <?php echo $tel_empresa; ?><br>
                                        <?php echo $pais_empresa; ?><br>
                                        <?php echo $dir_empresa; ?><br>
                                    </center>
                                </div>
                                </center>
                            </td>
                        </tr>
                    </table>
                </div>
            </div> 
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
