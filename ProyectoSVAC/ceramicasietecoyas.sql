CREATE DATABASE  IF NOT EXISTS `ceramicasietecoyas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ceramicasietecoyas`;
-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: ceramicasietecoyas
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `codigo_area` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_area`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'distribucion'),(2,'logistica'),(3,'ventas');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_area_update
	AFTER UPDATE ON area
    FOR EACH ROW
	begin
    insert INTO auditoria_area
    (usuario,fecha_cambio,
    nombre_insumo_old ,
   marca_area_old,
   nombre_area_new 
    )
    VALUES(current_user(),now(),
   OLD.nombre_area,
   NEW.nombre_area
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_area_delete
	AFTER DELETE ON area
    FOR EACH ROW
	begin
    insert INTO auditoria_area
    (usuario,fecha_cambio,
    nombre_insumo_old ,
   marca_area_old,
   nombre_area_new 
    )
    VALUES(current_user(),now(),
   OLD.nombre_area,
   NULL
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `audi_cliente_tiene_pedido`
--

DROP TABLE IF EXISTS `audi_cliente_tiene_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_cliente_tiene_pedido` (
  `codigo_audi_cliente_tiene_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_cliente_old` int(11) DEFAULT NULL,
  `fkcodigo_vendedor_old` int(11) DEFAULT NULL,
  `fkcodigo_igv_venta_old` int(11) DEFAULT NULL,
  `fkcodigo_promocion_venta_old` int(11) DEFAULT NULL,
  `fkcodigo_estado_cliente_tiene_pedido_old` int(11) DEFAULT NULL,
  `fkcodigo_factura_cliente_tiene_pedido_old` int(11) DEFAULT NULL,
  `descuento_web_pedido_old` float DEFAULT NULL,
  `precio_uni_desc_igv_old` float DEFAULT NULL,
  `precio_uni_desc_sin_igv_old` float DEFAULT NULL,
  `fecha_pedido_old` datetime DEFAULT NULL,
  `fecha_entrega_old` datetime DEFAULT NULL,
  `cantidad_producto_old` int(11) DEFAULT NULL,
  `monto_por_descuentos_old` float DEFAULT NULL,
  `fkcodigo_cliente_new` int(11) DEFAULT NULL,
  `fkcodigo_vendedor_new` int(11) DEFAULT NULL,
  `fkcodigo_igv_venta_new` int(11) DEFAULT NULL,
  `fkcodigo_promocion_venta_new` int(11) DEFAULT NULL,
  `fkcodigo_estado_cliente_tiene_pedido_new` int(11) DEFAULT NULL,
  `fkcodigo_factura_cliente_tiene_pedido_new` int(11) DEFAULT NULL,
  `descuento_web_pedido_new` float DEFAULT NULL,
  `precio_uni_desc_igv_new` float DEFAULT NULL,
  `precio_uni_desc_sin_igv_new` float DEFAULT NULL,
  `fecha_pedido_new` datetime DEFAULT NULL,
  `fecha_entrega_new` datetime DEFAULT NULL,
  `cantidad_producto_new` int(11) DEFAULT NULL,
  `monto_por_descuentos_new` float DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_cliente_tiene_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_cliente_tiene_pedido`
--

LOCK TABLES `audi_cliente_tiene_pedido` WRITE;
/*!40000 ALTER TABLE `audi_cliente_tiene_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_cliente_tiene_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_cliente_tiene_preferencia`
--

DROP TABLE IF EXISTS `audi_cliente_tiene_preferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_cliente_tiene_preferencia` (
  `codigo_audi_cliente_tiene_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_cliente_old` int(11) DEFAULT NULL,
  `fkcodigo_producto_old` int(11) DEFAULT NULL,
  `fecha_voto_preferencia_old` datetime DEFAULT NULL,
  `cantidad_puntos_old` int(11) DEFAULT NULL,
  `fkcodigo_cliente_new` int(11) DEFAULT NULL,
  `fkcodigo_producto_new` int(11) DEFAULT NULL,
  `fecha_voto_preferencia_new` datetime DEFAULT NULL,
  `cantidad_puntos_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_cliente_tiene_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_cliente_tiene_preferencia`
--

LOCK TABLES `audi_cliente_tiene_preferencia` WRITE;
/*!40000 ALTER TABLE `audi_cliente_tiene_preferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_cliente_tiene_preferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_cpl_tiene_ztd`
--

DROP TABLE IF EXISTS `audi_cpl_tiene_ztd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_cpl_tiene_ztd` (
  `codigo_audi_cpl_tiene_ztd` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_cuota_por_linea_old` int(11) DEFAULT NULL,
  `fkcodigo_zona_tiene_distrito_old` int(11) DEFAULT NULL,
  `cuota_asignada_old` float DEFAULT NULL,
  `cuota_realizada_old` float DEFAULT NULL,
  `fkcodigo_cuota_por_linea_new` int(11) DEFAULT NULL,
  `fkcodigo_zona_tiene_distrito_new` int(11) DEFAULT NULL,
  `cuota_asignada_new` float DEFAULT NULL,
  `cuota_realizada_new` float DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_cpl_tiene_ztd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_cpl_tiene_ztd`
--

LOCK TABLES `audi_cpl_tiene_ztd` WRITE;
/*!40000 ALTER TABLE `audi_cpl_tiene_ztd` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_cpl_tiene_ztd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_cuota_por_linea`
--

DROP TABLE IF EXISTS `audi_cuota_por_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_cuota_por_linea` (
  `codigo_audi_cuota_por_linea` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_mes_old` int(11) DEFAULT NULL,
  `fkcodigo_linea_old` int(11) DEFAULT NULL,
  `cuota_asignada_old` float DEFAULT NULL,
  `cuota_realizada_old` float DEFAULT NULL,
  `fkcodigo_mes_new` int(11) DEFAULT NULL,
  `fkcodigo_linea_new` int(11) DEFAULT NULL,
  `cuota_asignada_new` float DEFAULT NULL,
  `cuota_realizada_new` float DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_cuota_por_linea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_cuota_por_linea`
--

LOCK TABLES `audi_cuota_por_linea` WRITE;
/*!40000 ALTER TABLE `audi_cuota_por_linea` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_cuota_por_linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_e_cliente_tiene_pedido`
--

DROP TABLE IF EXISTS `audi_e_cliente_tiene_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_e_cliente_tiene_pedido` (
  `codigo_audi_estado_cliente_tiene_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_estado_cliente_tiene_pedido_old` varchar(45) DEFAULT NULL,
  `foto_estado_cliente_tiene_pedido_old` blob,
  `nombre_estado_cliente_tiene_pedido_new` varchar(45) DEFAULT NULL,
  `foto_estado_cliente_tiene_pedido_new` blob,
  PRIMARY KEY (`codigo_audi_estado_cliente_tiene_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_e_cliente_tiene_pedido`
--

LOCK TABLES `audi_e_cliente_tiene_pedido` WRITE;
/*!40000 ALTER TABLE `audi_e_cliente_tiene_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_e_cliente_tiene_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_igv_venta`
--

DROP TABLE IF EXISTS `audi_igv_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_igv_venta` (
  `codigo_audi_igv_venta` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_tipo_impuesto_old` int(11) DEFAULT NULL,
  `porcentaje_igv_venta_old` float DEFAULT NULL,
  `fkcodigo_tipo_impuesto_new` int(11) DEFAULT NULL,
  `porcentaje_igv_venta_new` float DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_igv_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_igv_venta`
--

LOCK TABLES `audi_igv_venta` WRITE;
/*!40000 ALTER TABLE `audi_igv_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_igv_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_producto_por_pedido`
--

DROP TABLE IF EXISTS `audi_producto_por_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_producto_por_pedido` (
  `codigo_audi_producto_por_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_pedido_web_old` int(11) DEFAULT NULL,
  `fkcodigo_producto_old` int(11) DEFAULT NULL,
  `descuento_promocion_old` float DEFAULT NULL,
  `valor_neto_old` float DEFAULT NULL,
  `valor_con_igv_old` float DEFAULT NULL,
  `cantidad_producto_old` int(11) DEFAULT NULL,
  `fkcodigo_pedido_web_new` int(11) DEFAULT NULL,
  `fkcodigo_producto_new` int(11) DEFAULT NULL,
  `descuento_promocion_new` float DEFAULT NULL,
  `valor_neto_new` float DEFAULT NULL,
  `valor_con_igv_new` float DEFAULT NULL,
  `cantidad_producto_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_producto_por_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_producto_por_pedido`
--

LOCK TABLES `audi_producto_por_pedido` WRITE;
/*!40000 ALTER TABLE `audi_producto_por_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_producto_por_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_promocion_venta`
--

DROP TABLE IF EXISTS `audi_promocion_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_promocion_venta` (
  `codigo_audi_promocion_venta` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `cantidad_sku_pedido_old` int(11) DEFAULT NULL,
  `descuento_sku_pedido_old` float DEFAULT NULL,
  `fecha_inicio_promocion_old` datetime DEFAULT NULL,
  `fecha_expiracion_promocion_old` datetime DEFAULT NULL,
  `descripcion_promocion_old` varchar(100) DEFAULT NULL,
  `cantidad_sku_pedido_new` int(11) DEFAULT NULL,
  `descuento_sku_pedido_new` float DEFAULT NULL,
  `fecha_inicio_promocion_new` datetime DEFAULT NULL,
  `fecha_expiracion_promocion_new` datetime DEFAULT NULL,
  `descripcion_promocion_new` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_promocion_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_promocion_venta`
--

LOCK TABLES `audi_promocion_venta` WRITE;
/*!40000 ALTER TABLE `audi_promocion_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_promocion_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_receta_p_tiene_insumo`
--

DROP TABLE IF EXISTS `audi_receta_p_tiene_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_receta_p_tiene_insumo` (
  `codigo_audi_receta_producto_tiene_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_producto_old` int(11) DEFAULT NULL,
  `fkcodigo_insumo_old` int(11) DEFAULT NULL,
  `fkcodigo_receta_producto_old` int(11) DEFAULT NULL,
  `fkcodigo_producto_new` int(11) DEFAULT NULL,
  `fkcodigo_insumo_new` int(11) DEFAULT NULL,
  `fkcodigo_receta_producto_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_receta_producto_tiene_insumo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_receta_p_tiene_insumo`
--

LOCK TABLES `audi_receta_p_tiene_insumo` WRITE;
/*!40000 ALTER TABLE `audi_receta_p_tiene_insumo` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_receta_p_tiene_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_vendedor`
--

DROP TABLE IF EXISTS `audi_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_vendedor` (
  `codigo_audi_vendedor` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_usuario_old` int(11) DEFAULT NULL,
  `fkcodigo_area_old` int(11) DEFAULT NULL,
  `codigo_venta_vendedor_old` varchar(10) DEFAULT NULL,
  `fkcodigo_usuario_new` int(11) DEFAULT NULL,
  `fkcodigo_area_new` int(11) DEFAULT NULL,
  `codigo_venta_vendedor_new` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_vendedor`
--

LOCK TABLES `audi_vendedor` WRITE;
/*!40000 ALTER TABLE `audi_vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audi_zona_tiene_distrito`
--

DROP TABLE IF EXISTS `audi_zona_tiene_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audi_zona_tiene_distrito` (
  `codigo_audi_zona_tiene_distrito` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_zona_old` int(11) DEFAULT NULL,
  `fkcodigo_distrito_old` int(11) DEFAULT NULL,
  `fkcodigo_zona_new` int(11) DEFAULT NULL,
  `fkcodigo_distrito_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_zona_tiene_distrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audi_zona_tiene_distrito`
--

LOCK TABLES `audi_zona_tiene_distrito` WRITE;
/*!40000 ALTER TABLE `audi_zona_tiene_distrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `audi_zona_tiene_distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_area`
--

DROP TABLE IF EXISTS `auditoria_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_area` (
  `codigo_audi_area` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_area_old` varchar(45) DEFAULT NULL,
  `nombre_area_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_area`
--

LOCK TABLES `auditoria_area` WRITE;
/*!40000 ALTER TABLE `auditoria_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_ciudad`
--

DROP TABLE IF EXISTS `auditoria_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_ciudad` (
  `codigo_audi_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_provincia_old` int(11) DEFAULT NULL,
  `nombre_ciudad_old` varchar(45) DEFAULT NULL,
  `fkcodigo_provincia_new` varchar(45) DEFAULT NULL,
  `nombre_ciudad_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_ciudad`
--

LOCK TABLES `auditoria_ciudad` WRITE;
/*!40000 ALTER TABLE `auditoria_ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_cliente`
--

DROP TABLE IF EXISTS `auditoria_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_cliente` (
  `codigo_audi_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `razonsocial_cliente_old` varchar(45) DEFAULT NULL,
  `fkcodigo_usuario_old` int(11) DEFAULT NULL,
  `fkcodigo_regimen_cliente_old` int(11) DEFAULT NULL,
  `fkcodigo_estado_cliente_old` int(11) DEFAULT NULL,
  `latitud_cliente_old` float DEFAULT NULL,
  `longitud_cliente_old` float DEFAULT NULL,
  `type_cliente_old` varchar(45) DEFAULT NULL,
  `foto_ubicacion_cliente_old` blob,
  `ruc_cliente_old` varchar(45) DEFAULT NULL,
  `dni_cliente_old` varchar(45) DEFAULT NULL,
  `fecha_empadronamiento_cliente_old` datetime DEFAULT NULL,
  `razonsocial_cliente_new` varchar(45) DEFAULT NULL,
  `fkcodigo_usuario_new` int(11) DEFAULT NULL,
  `fkcodigo_regimen_cliente_new` int(11) DEFAULT NULL,
  `fkcodigo_estado_cliente_new` int(11) DEFAULT NULL,
  `latitud_cliente_new` float DEFAULT NULL,
  `longitud_cliente_new` float DEFAULT NULL,
  `type_cliente_new` varchar(45) DEFAULT NULL,
  `foto_ubicacion_cliente_new` blob,
  `ruc_cliente_new` varchar(45) DEFAULT NULL,
  `dni_cliente_new` varchar(45) DEFAULT NULL,
  `fecha_empadronamiento_cliente_new` datetime DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_cliente`
--

LOCK TABLES `auditoria_cliente` WRITE;
/*!40000 ALTER TABLE `auditoria_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_cuota`
--

DROP TABLE IF EXISTS `auditoria_cuota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_cuota` (
  `codigo_auditoria_cuota` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `monto_cuoata_old` float DEFAULT NULL,
  `fkcodigo_mes_old` int(11) DEFAULT NULL,
  `fkcodigo_producto_old` int(11) DEFAULT NULL,
  `monto_cuoata_new` float DEFAULT NULL,
  `fkcodigo_mes_new` int(11) DEFAULT NULL,
  `fkcodigo_producto_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_auditoria_cuota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_cuota`
--

LOCK TABLES `auditoria_cuota` WRITE;
/*!40000 ALTER TABLE `auditoria_cuota` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_cuota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_distrito`
--

DROP TABLE IF EXISTS `auditoria_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_distrito` (
  `codigo_audi_distrito` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_ciudad_old` int(11) DEFAULT NULL,
  `nombre_distrito_old` varchar(45) DEFAULT NULL,
  `fkcodigo_ciudad_new` varchar(45) DEFAULT NULL,
  `nombre_distrito_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_distrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_distrito`
--

LOCK TABLES `auditoria_distrito` WRITE;
/*!40000 ALTER TABLE `auditoria_distrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_estado_cliente`
--

DROP TABLE IF EXISTS `auditoria_estado_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_estado_cliente` (
  `codigo_audi_estado_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_estado_cliente_old` varchar(45) DEFAULT NULL,
  `nombre_estado_cliente_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_estado_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_estado_cliente`
--

LOCK TABLES `auditoria_estado_cliente` WRITE;
/*!40000 ALTER TABLE `auditoria_estado_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_estado_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_estado_producto`
--

DROP TABLE IF EXISTS `auditoria_estado_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_estado_producto` (
  `codigo_audi_estado_producto` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_estado_producto_old` varchar(45) DEFAULT NULL,
  `nombre_estado_producto_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_estado_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_estado_producto`
--

LOCK TABLES `auditoria_estado_producto` WRITE;
/*!40000 ALTER TABLE `auditoria_estado_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_estado_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_estado_usuario`
--

DROP TABLE IF EXISTS `auditoria_estado_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_estado_usuario` (
  `codigo_audi_estado_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_estado_usuario_old` varchar(45) DEFAULT NULL,
  `nombre_estado_usuario_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_estado_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_estado_usuario`
--

LOCK TABLES `auditoria_estado_usuario` WRITE;
/*!40000 ALTER TABLE `auditoria_estado_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_estado_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_factura_c_tiene_pedido`
--

DROP TABLE IF EXISTS `auditoria_factura_c_tiene_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_factura_c_tiene_pedido` (
  `codigo_audi_factura_cliente_tiene_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_factura_cliente_tiene_pedido_old` varchar(45) DEFAULT NULL,
  `nombre_factura_cliente_tiene_pedido_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_factura_cliente_tiene_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_factura_c_tiene_pedido`
--

LOCK TABLES `auditoria_factura_c_tiene_pedido` WRITE;
/*!40000 ALTER TABLE `auditoria_factura_c_tiene_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_factura_c_tiene_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_insumo`
--

DROP TABLE IF EXISTS `auditoria_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_insumo` (
  `codigo_audi_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_insumo_old` varchar(45) DEFAULT NULL,
  `marca_insumo_old` varchar(45) DEFAULT NULL,
  `fecha_ingreso_insumo_old` datetime DEFAULT NULL,
  `peso_insumo_old` float DEFAULT NULL,
  `presentacion_insumo_old` varchar(45) DEFAULT NULL,
  `precio_unitario_insumo_old` float DEFAULT NULL,
  `nombre_insumo_new` varchar(45) DEFAULT NULL,
  `marca_insumo_new` varchar(45) DEFAULT NULL,
  `fecha_ingreso_insumo_new` datetime DEFAULT NULL,
  `peso_insumo_new` float DEFAULT NULL,
  `presentacion_insumo_new` varchar(45) DEFAULT NULL,
  `precio_unitario_insumo_new` float DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_insumo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_insumo`
--

LOCK TABLES `auditoria_insumo` WRITE;
/*!40000 ALTER TABLE `auditoria_insumo` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_linea`
--

DROP TABLE IF EXISTS `auditoria_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_linea` (
  `codigo_audi_linea` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_linea_old` varchar(45) DEFAULT NULL,
  `icono_linea_old` blob,
  `nombre_linea_new` varchar(45) DEFAULT NULL,
  `icono_linea_new` blob,
  PRIMARY KEY (`codigo_audi_linea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_linea`
--

LOCK TABLES `auditoria_linea` WRITE;
/*!40000 ALTER TABLE `auditoria_linea` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_mes`
--

DROP TABLE IF EXISTS `auditoria_mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_mes` (
  `codigo_auditoria_mes` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_mes_old` varchar(45) DEFAULT NULL,
  `fkcodigo_year_old` int(11) DEFAULT NULL,
  `nombre_mes_new` varchar(45) DEFAULT NULL,
  `fkcodigo_year_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_auditoria_mes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_mes`
--

LOCK TABLES `auditoria_mes` WRITE;
/*!40000 ALTER TABLE `auditoria_mes` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_pais`
--

DROP TABLE IF EXISTS `auditoria_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_pais` (
  `codigo_audi_pais` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_pais_old` varchar(45) DEFAULT NULL,
  `nombre_pais_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_pais`
--

LOCK TABLES `auditoria_pais` WRITE;
/*!40000 ALTER TABLE `auditoria_pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_producto`
--

DROP TABLE IF EXISTS `auditoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_producto` (
  `codigo_auditoria_producto` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_producto_old` varchar(45) DEFAULT NULL,
  `ingreso_almacen_producto_old` datetime DEFAULT NULL,
  `salida_almacen_producto_old` datetime DEFAULT NULL,
  `stock_producto_old` varchar(45) DEFAULT NULL,
  `preparacion_producto_old` varchar(150) DEFAULT NULL,
  `foto_producto_old` blob,
  `colores_producto_old` varchar(45) DEFAULT NULL,
  `qr_producto_old` varchar(150) DEFAULT NULL,
  `pvv_producto_old` float DEFAULT NULL,
  `pvf_producto_old` float DEFAULT NULL,
  `fkcodigo_linea_old` int(11) DEFAULT NULL,
  `fkcodigo_tipo_producto_old` int(11) DEFAULT NULL,
  `fkcodigo_estado_producto_old` int(11) DEFAULT NULL,
  `nombre_producto_new` varchar(45) DEFAULT NULL,
  `ingreso_almacen_producto_new` datetime DEFAULT NULL,
  `salida_almacen_producto_new` datetime DEFAULT NULL,
  `stock_producto_new` varchar(45) DEFAULT NULL,
  `preparacion_producto_new` varchar(150) DEFAULT NULL,
  `foto_producto_new` blob,
  `colores_producto_new` varchar(45) DEFAULT NULL,
  `qr_producto_new` varchar(150) DEFAULT NULL,
  `pvv_producto_new` float DEFAULT NULL,
  `pvf_producto_new` float DEFAULT NULL,
  `fkcodigo_linea_new` int(11) DEFAULT NULL,
  `fkcodigo_tipo_producto_new` int(11) DEFAULT NULL,
  `fkcodigo_estado_producto_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_auditoria_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_producto`
--

LOCK TABLES `auditoria_producto` WRITE;
/*!40000 ALTER TABLE `auditoria_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_provincia`
--

DROP TABLE IF EXISTS `auditoria_provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_provincia` (
  `codigo_audi_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `fkcodigo_pais_old` int(11) DEFAULT NULL,
  `nombre_provincia_old` varchar(45) DEFAULT NULL,
  `fkcodigo_pais_new` varchar(45) DEFAULT NULL,
  `nombre_provincia_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_provincia`
--

LOCK TABLES `auditoria_provincia` WRITE;
/*!40000 ALTER TABLE `auditoria_provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_regimen_cliente`
--

DROP TABLE IF EXISTS `auditoria_regimen_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_regimen_cliente` (
  `codigo_audi_regimen_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_regimen_cliente_old` varchar(45) DEFAULT NULL,
  `nombre_regimen_cliente_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_regimen_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_regimen_cliente`
--

LOCK TABLES `auditoria_regimen_cliente` WRITE;
/*!40000 ALTER TABLE `auditoria_regimen_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_regimen_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_tipo_impuesto`
--

DROP TABLE IF EXISTS `auditoria_tipo_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_tipo_impuesto` (
  `codigo_audi_tipo_impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_tipo_impuesto_old` varchar(45) DEFAULT NULL,
  `porcentaje_tipo_impuesto_old` float DEFAULT NULL,
  `nombre_tipo_impuesto_new` varchar(45) DEFAULT NULL,
  `porcentaje_tipo_impuesto_new` float DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_tipo_impuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_tipo_impuesto`
--

LOCK TABLES `auditoria_tipo_impuesto` WRITE;
/*!40000 ALTER TABLE `auditoria_tipo_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_tipo_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_tipo_producto`
--

DROP TABLE IF EXISTS `auditoria_tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_tipo_producto` (
  `codigo_audi_tipo_producto` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_tipo_producto_old` varchar(45) DEFAULT NULL,
  `tiempoenhorno_tipo_producto_old` float DEFAULT NULL,
  `temperaturaenhorno_tipo_producto_old` float DEFAULT NULL,
  `foto_tipo_producto_old` blob,
  `nombre_tipo_producto_new` varchar(45) DEFAULT NULL,
  `tiempoenhorno_tipo_producto_new` float DEFAULT NULL,
  `temperaturaenhorno_tipo_producto_new` float DEFAULT NULL,
  `foto_tipo_producto_new` blob,
  PRIMARY KEY (`codigo_audi_tipo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_tipo_producto`
--

LOCK TABLES `auditoria_tipo_producto` WRITE;
/*!40000 ALTER TABLE `auditoria_tipo_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_tipo_usuario`
--

DROP TABLE IF EXISTS `auditoria_tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_tipo_usuario` (
  `codigo_audi_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_tipo_usuario_old` varchar(45) DEFAULT NULL,
  `nombre_tipo_usuario_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_tipo_usuario`
--

LOCK TABLES `auditoria_tipo_usuario` WRITE;
/*!40000 ALTER TABLE `auditoria_tipo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_usuario`
--

DROP TABLE IF EXISTS `auditoria_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_usuario` (
  `codigo_audi_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_usuario_old` varchar(45) DEFAULT NULL,
  `apellido_usuario_old` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_usuario_old` datetime DEFAULT NULL,
  `direccion_usuario_old` varchar(90) DEFAULT NULL,
  `nombre_logeo_usuario_old` varchar(90) DEFAULT NULL,
  `password_usuario_old` varchar(10) DEFAULT NULL,
  `foto_usuario_old` blob,
  `fkcodigo_distrito_old` int(11) DEFAULT NULL,
  `fkcodigo_tipo_usuario_old` int(11) DEFAULT NULL,
  `fkcodigo_estado_usuario_old` int(11) DEFAULT NULL,
  `nombre_usuario_new` varchar(45) DEFAULT NULL,
  `apellido_usuario_new` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_usuario_new` datetime DEFAULT NULL,
  `direccion_usuario_new` varchar(90) DEFAULT NULL,
  `nombre_logeo_usuario_new` varchar(90) DEFAULT NULL,
  `password_usuario_new` varchar(10) DEFAULT NULL,
  `foto_usuario_new` blob,
  `fkcodigo_distrito_new` int(11) DEFAULT NULL,
  `fkcodigo_tipo_usuario_new` int(11) DEFAULT NULL,
  `fkcodigo_estado_usuario_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_usuario`
--

LOCK TABLES `auditoria_usuario` WRITE;
/*!40000 ALTER TABLE `auditoria_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_year`
--

DROP TABLE IF EXISTS `auditoria_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_year` (
  `codigo_auditoria_year` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_year_old` varchar(45) DEFAULT NULL,
  `nombre_year_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_auditoria_year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_year`
--

LOCK TABLES `auditoria_year` WRITE;
/*!40000 ALTER TABLE `auditoria_year` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_zona`
--

DROP TABLE IF EXISTS `auditoria_zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_zona` (
  `codigo_audi_zona` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `nombre_zona_old` varchar(45) DEFAULT NULL,
  `nombre_zona_new` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_audi_zona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_zona`
--

LOCK TABLES `auditoria_zona` WRITE;
/*!40000 ALTER TABLE `auditoria_zona` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `codigo_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_provincia` int(11) DEFAULT NULL,
  `nombre_ciudad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_ciudad`),
  KEY `fk_codigo_provincia` (`fkcodigo_provincia`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`fkcodigo_provincia`) REFERENCES `provincia` (`codigo_provincia`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,1,'Lima'),(2,1,'Barranca'),(3,1,'Cajatambo'),(4,1,'Canta'),(5,1,'Huaral'),(6,1,'Matucana'),(7,1,'Huacho'),(8,1,'Oyon'),(9,2,'Huanchao'),(10,2,'Trujillo'),(11,2,'El Porvenir'),(12,2,'La Esperanza'),(13,2,'Laredo'),(14,2,'Simbai'),(15,2,'Salaverry'),(16,2,'Poroto'),(17,2,'Victor Larco Herrera'),(18,2,'Florencia de Mora'),(19,2,'Yauyos'),(20,3,'Nazca');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_ciudad_update
	AFTER UPDATE ON ciudad 
    FOR EACH ROW
	begin
    insert INTO auditoria_ciudad
    (usuario,fecha_cambio,fkcodigo_provincia_old,nombre_ciudad_old,fkcodigo_provincia_new,nombre_ciudad_new)
    VALUES(current_user(),now(), OLD.fkcodigo_provincia, OLD.nombre_ciudad,NEW.fkcodigo_provincia,NEW.nombre_ciudad);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_ciudad_delete
	AFTER DELETE ON ciudad 
    FOR EACH ROW
	begin
    insert INTO auditoria_ciudad
    (usuario,fecha_cambio,fkcodigo_provincia_old,nombre_ciudad_old,fkcodigo_provincia_new,nombre_ciudad_new)
    VALUES(current_user(),now(), OLD.fkcodigo_provincia, OLD.nombre_ciudad,NULL,NULL);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigo_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `razonsocial_cliente` varchar(45) DEFAULT NULL,
  `fkcodigo_usuario` int(11) DEFAULT NULL,
  `fkcodigo_regimen_cliente` int(11) DEFAULT NULL,
  `fkcodigo_estado_cliente` int(11) DEFAULT NULL,
  `latitud_cliente` float DEFAULT NULL,
  `longitud_cliente` float DEFAULT NULL,
  `type_cliente` varchar(45) DEFAULT NULL,
  `foto_ubicacion_cliente` blob,
  `ruc_cliente` varchar(45) DEFAULT NULL,
  `dni_cliente` varchar(45) DEFAULT NULL,
  `fecha_empadronamiento_cliente` datetime DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `fk_codigo_usuario` (`fkcodigo_usuario`),
  KEY `fk_codigo_regimen_cliente` (`fkcodigo_regimen_cliente`),
  KEY `fk_codigo_estado_cliente` (`fkcodigo_estado_cliente`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`fkcodigo_usuario`) REFERENCES `usuario` (`codigo_usuario`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`fkcodigo_regimen_cliente`) REFERENCES `regimen_cliente` (`codigo_regimen_cliente`),
  CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`fkcodigo_estado_cliente`) REFERENCES `estado_cliente` (`codigo_estado_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Distribuidora comercial wilson',7,1,1,45.009,23.4354,NULL,NULL,'20100103930','4532323','2018-02-15 00:00:00'),(2,'Distribuidora comercial wilson',8,1,1,45.009,23.4354,NULL,NULL,'20100103930','4532323','2018-02-15 00:00:00');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_cliente_update
	AFTER UPDATE ON cliente
    FOR EACH ROW
	begin
    insert INTO auditoria_cliente
    (usuario,fecha_cambio,
    razonsocial_cliente_old,
   fkcodigo_usuario_old ,
   fkcodigo_regimen_cliente_old,
   fkcodigo_estado_cliente_old,
   latitud_cliente_old,
   longitud_cliente_old,
   type_cliente_old,
   foto_ubicacion_cliente_old,
    ruc_cliente_old,
     dni_cliente_old,  
     fecha_empadronamiento_cliente_old, 
    razonsocial_cliente_new,
   fkcodigo_usuario_new,
    fkcodigo_regimen_cliente_new,
   fkcodigo_estado_cliente_new,
     latitud_cliente_new,
    longitud_cliente_new,
  type_cliente_new,
    foto_ubicacion_cliente_new,
     ruc_cliente_new,
     dni_cliente_new,
     fecha_empadronamiento_cliente_new
                 )
    VALUES(current_user(),now(),
    OLD.razonsocial_cliente,
   OLD.fkcodigo_usuario ,
   OLD.fkcodigo_regimen_cliente,
   OLD.fkcodigo_estado_cliente,
   OLD.latitud_cliente,
   OLD.longitud_cliente,
   OLD.type_cliente,
   OLD.foto_ubicacion_cliente,
    OLD.ruc_cliente,
     OLD.dni_cliente,  
     OLD.fecha_empadronamiento_cliente, 
    NEW.razonsocial_cliente,
   NEW.fkcodigo_usuario,
    NEW.fkcodigo_regimen_cliente,
   NEW.fkcodigo_estado_cliente,
     NEW.latitud_cliente,
    NEW.longitud_cliente,
  NEW.type_cliente,
    NEW.foto_ubicacion_cliente,
     NEW.ruc_cliente,
     NEW.dni_cliente,
     NEW.fecha_empadronamiento_cliente
						);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_cliente_delete
	AFTER DELETE ON cliente
    FOR EACH ROW
	begin
    insert INTO auditoria_cliente
    (usuario,fecha_cambio,
    razonsocial_cliente_old,
   fkcodigo_usuario_old ,
   fkcodigo_regimen_cliente_old,
   fkcodigo_estado_cliente_old,
   latitud_cliente_old,
   longitud_cliente_old,
   type_cliente_old,
   foto_ubicacion_cliente_old,
    ruc_cliente_old,
     dni_cliente_old,  
     fecha_empadronamiento_cliente_old, 
    razonsocial_cliente_new,
   codigo_usuario_new,
    codigo_regimen_cliente_new,
   codigo_estado_cliente_new,
     latitud_cliente_new,
    longitud_cliente_new,
  type_cliente_new,
    foto_ubicacion_cliente_new,
     ruc_cliente_new,
     dni_cliente_new,
     fecha_empadronamiento_cliente_new
                 )
    VALUES(current_user(),now(),
        OLD.razonsocial_cliente,
   OLD.fkcodigo_usuario ,
   OLD.fkcodigo_regimen_cliente,
   OLD.fkcodigo_estado_cliente,
   OLD.latitud_cliente,
   OLD.longitud_cliente,
   OLD.type_cliente,
   OLD.foto_ubicacion_cliente,
    OLD.ruc_cliente,
     OLD.dni_cliente,  
     OLD.fecha_empadronamiento_cliente, 
    NULL,
   NULL,
    NULL,
   NULL,
     NULL,
    NULL,
  NULL,
    NULL,
     NULL,
     NULL,
     NULL
						);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente_tiene_pedido`
--

DROP TABLE IF EXISTS `cliente_tiene_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_tiene_pedido` (
  `codigo_pedido_web` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_cliente` int(11) DEFAULT NULL,
  `fkcodigo_vendedor` int(11) DEFAULT NULL,
  `fkcodigo_igv_venta` int(11) DEFAULT NULL,
  `fkcodigo_promocion_venta` int(11) DEFAULT NULL,
  `fkcodigo_estado_cliente_tiene_pedido` int(11) DEFAULT NULL,
  `fkcodigo_factura_cliente_tiene_pedido` int(11) DEFAULT NULL,
  `descuento_web_pedido` float DEFAULT NULL,
  `precio_uni_desc_igv` float DEFAULT NULL,
  `precio_uni_desc_sin_igv` float DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `monto_por_descuentos` float DEFAULT NULL,
  PRIMARY KEY (`codigo_pedido_web`),
  KEY `fk_codigo_cliente` (`fkcodigo_cliente`),
  KEY `fk_codigo_vendedor` (`fkcodigo_vendedor`),
  KEY `fk_codigo_igv_venta` (`fkcodigo_igv_venta`),
  KEY `fk_codigo_promocion_venta` (`fkcodigo_promocion_venta`),
  KEY `fk_codigo_estado_cliente_tiene_pedido` (`fkcodigo_estado_cliente_tiene_pedido`),
  KEY `fk_codigo_factura_cliente_tiene_pedido` (`fkcodigo_factura_cliente_tiene_pedido`),
  CONSTRAINT `cliente_tiene_pedido_ibfk_1` FOREIGN KEY (`fkcodigo_cliente`) REFERENCES `cliente` (`codigo_cliente`),
  CONSTRAINT `cliente_tiene_pedido_ibfk_2` FOREIGN KEY (`fkcodigo_vendedor`) REFERENCES `vendedor` (`codigo_vendedor`),
  CONSTRAINT `cliente_tiene_pedido_ibfk_3` FOREIGN KEY (`fkcodigo_igv_venta`) REFERENCES `igv_venta` (`codigo_igv_venta`),
  CONSTRAINT `cliente_tiene_pedido_ibfk_4` FOREIGN KEY (`fkcodigo_promocion_venta`) REFERENCES `promocion_venta` (`codigo_promocion_venta`),
  CONSTRAINT `cliente_tiene_pedido_ibfk_5` FOREIGN KEY (`fkcodigo_estado_cliente_tiene_pedido`) REFERENCES `estado_cliente_tiene_pedido` (`codigo_estado_cliente_tiene_pedido`),
  CONSTRAINT `cliente_tiene_pedido_ibfk_6` FOREIGN KEY (`fkcodigo_factura_cliente_tiene_pedido`) REFERENCES `factura_c_tiene_pedido` (`codigo_factura_cliente_tiene_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_tiene_pedido`
--

LOCK TABLES `cliente_tiene_pedido` WRITE;
/*!40000 ALTER TABLE `cliente_tiene_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_tiene_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cliente_tiene_pedido_update
	AFTER UPDATE ON  cliente_tiene_pedido
    FOR EACH ROW
	begin
    insert INTO   audi_cliente_tiene_pedido
    (usuario,fecha_cambio,
fkcodigo_cliente_old ,

fkcodigo_vendedor_old ,
fkcodigo_igv_venta_old ,
fkcodigo_promocion_venta_old ,
fkcodigo_estado_cliente_tiene_pedido_old ,
fkcodigo_factura_cliente_tiene_pedido_old ,

descuento_web_pedido_old ,
precio_uni_desc_igv_old ,
precio_uni_desc_sin_igv_old ,
fecha_pedido_old ,
fecha_entrega_old ,
cantidad_producto_old ,
monto_por_descuentos_old ,



fkcodigo_cliente_new ,

fkcodigo_vendedor_new ,
fkcodigo_igv_venta_new ,
fkcodigo_promocion_venta_new ,
fkcodigo_estado_cliente_tiene_pedido_new ,
fkcodigo_factura_cliente_tiene_pedido_new ,

descuento_web_pedido_new ,
precio_uni_desc_igv_new ,
precio_uni_desc_sin_igv_new ,
fecha_pedido_new ,
fecha_entrega_new ,
cantidad_producto_new ,
monto_por_descuentos_new 
    )
    VALUES(current_user(),now(),
  
OLD.fkcodigo_cliente ,

OLD.fkcodigo_vendedor ,
OLD.fkcodigo_igv_venta ,
OLD.fkcodigo_promocion_venta ,
OLD.fkcodigo_estado_cliente_tiene_pedido ,
OLD.fkcodigo_factura_cliente_tiene_pedido,

OLD.descuento_web_pedido ,
OLD.precio_uni_desc_igv ,
OLD.precio_uni_desc_sin_igv,
OLD.fecha_pedido ,
OLD.fecha_entrega ,
OLD.cantidad_producto ,
OLD.monto_por_descuentos ,
  
  
 NEW.fkcodigo_cliente ,

NEW.fkcodigo_vendedor ,
NEW.fkcodigo_igv_venta ,
NEW.fkcodigo_promocion_venta ,
NEW.fkcodigo_estado_cliente_tiene_pedido ,
NEW.fkcodigo_factura_cliente_tiene_pedido,

NEW.descuento_web_pedido ,
NEW.precio_uni_desc_igv ,
NEW.precio_uni_desc_sin_igv,
NEW.fecha_pedido ,
NEW.fecha_entrega ,
NEW.cantidad_producto ,
NEW.monto_por_descuentos 
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cliente_tiene_pedido_delete
	AFTER DELETE ON  cliente_tiene_pedido
    FOR EACH ROW
	begin
    insert INTO   audi_cliente_tiene_pedido
    (usuario,fecha_cambio,
fkcodigo_cliente_old ,

fkcodigo_vendedor_old ,
fkcodigo_igv_venta_old ,
fkcodigo_promocion_venta_old ,
fkcodigo_estado_cliente_tiene_pedido_old ,
fkcodigo_factura_cliente_tiene_pedido_old ,

descuento_web_pedido_old ,
precio_uni_desc_igv_old ,
precio_uni_desc_sin_igv_old ,
fecha_pedido_old ,
fecha_entrega_old ,
cantidad_producto_old ,
monto_por_descuentos_old ,



fkcodigo_cliente_new ,

fkcodigo_vendedor_new ,
fkcodigo_igv_venta_new ,
fkcodigo_promocion_venta_new ,
fkcodigo_estado_cliente_tiene_pedido_new ,
fkcodigo_factura_cliente_tiene_pedido_new ,

descuento_web_pedido_new ,
precio_uni_desc_igv_new ,
precio_uni_desc_sin_igv_new ,
fecha_pedido_new ,
fecha_entrega_new ,
cantidad_producto_new ,
monto_por_descuentos_new 
    )
    VALUES(current_user(),now(),
  
OLD.fkcodigo_cliente ,

OLD.fkcodigo_vendedor ,
OLD.fkcodigo_igv_venta ,
OLD.fkcodigo_promocion_venta ,
OLD.fkcodigo_estado_cliente_tiene_pedido ,
OLD.fkcodigo_factura_cliente_tiene_pedido,

OLD.descuento_web_pedido ,
OLD.precio_uni_desc_igv ,
OLD.precio_uni_desc_sin_igv,
OLD.fecha_pedido ,
OLD.fecha_entrega ,
OLD.cantidad_producto ,
OLD.monto_por_descuentos ,
  
  
 NULL ,

 NULL ,
NULL,
 NULL ,
NULL,
 NULL ,
NULL,
 NULL ,
NULL,
 NULL ,
NULL,
 NULL ,
NULL 
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente_tiene_preferencia`
--

DROP TABLE IF EXISTS `cliente_tiene_preferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_tiene_preferencia` (
  `codigo_preferencia_sku` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_cliente` int(11) DEFAULT NULL,
  `fkcodigo_producto` int(11) DEFAULT NULL,
  `fecha_voto_preferencia` datetime DEFAULT NULL,
  `cantidad_puntos` float DEFAULT NULL,
  PRIMARY KEY (`codigo_preferencia_sku`),
  KEY `fk_codigo_cliente` (`fkcodigo_cliente`),
  KEY `fk_codigo_producto` (`fkcodigo_producto`),
  CONSTRAINT `cliente_tiene_preferencia_ibfk_1` FOREIGN KEY (`fkcodigo_cliente`) REFERENCES `cliente` (`codigo_cliente`),
  CONSTRAINT `cliente_tiene_preferencia_ibfk_2` FOREIGN KEY (`fkcodigo_producto`) REFERENCES `producto` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_tiene_preferencia`
--

LOCK TABLES `cliente_tiene_preferencia` WRITE;
/*!40000 ALTER TABLE `cliente_tiene_preferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_tiene_preferencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cliente_tiene_preferencia_update
	AFTER UPDATE ON  cliente_tiene_preferencia
    FOR EACH ROW
	begin
    insert INTO   audi_cliente_tiene_preferencia
    (usuario,fecha_cambio,
fkcodigo_cliente_old ,
fkcodigo_producto_old ,
fecha_voto_preferencia_old ,
cantidad_puntos_old ,

fkcodigo_cliente_new ,
fkcodigo_producto_new ,
fecha_voto_preferencia_new ,
cantidad_puntos_new 

    )
    VALUES(current_user(),now(),
  
OLD.fkcodigo_cliente ,
OLD.fkcodigo_producto,
OLD.fecha_voto_preferencia ,
OLD.cantidad_puntos ,

 NEW.fkcodigo_cliente ,
NEW.fkcodigo_producto,
NEW.fecha_voto_preferencia ,
NEW.cantidad_puntos  

   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cliente_tiene_preferencia_delete
	AFTER DELETE ON  cliente_tiene_preferencia
    FOR EACH ROW
	begin
    insert INTO   audi_cliente_tiene_preferencia
    (usuario,fecha_cambio,
fkcodigo_cliente_old ,
fkcodigo_producto_old ,
fecha_voto_preferencia_old ,
cantidad_puntos_old ,

fkcodigo_cliente_new ,
fkcodigo_producto_new ,
fecha_voto_preferencia_new ,
cantidad_puntos_new 

    )
    VALUES(current_user(),now(),
  
OLD.fkcodigo_cliente ,
OLD.fkcodigo_producto,
OLD.fecha_voto_preferencia ,
OLD.cantidad_puntos ,

 NULL ,
NULL,
NULL ,
NULL 

   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cpl_tiene_ztd`
--

DROP TABLE IF EXISTS `cpl_tiene_ztd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpl_tiene_ztd` (
  `codigo_cpl_tiene_ztd` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_cuota_por_linea` int(11) DEFAULT NULL,
  `fkcodigo_zona_tiene_distrito` int(11) DEFAULT NULL,
  `cuota_asignada` float DEFAULT NULL,
  `cuota_realizada` float DEFAULT NULL,
  PRIMARY KEY (`codigo_cpl_tiene_ztd`),
  KEY `fk_codigo_cuota_por_linea` (`fkcodigo_cuota_por_linea`),
  KEY `fk_codigo_zona_tiene_distrito` (`fkcodigo_zona_tiene_distrito`),
  CONSTRAINT `cpl_tiene_ztd_ibfk_1` FOREIGN KEY (`fkcodigo_cuota_por_linea`) REFERENCES `cuota_por_linea` (`codigo_cuota_por_linea`),
  CONSTRAINT `cpl_tiene_ztd_ibfk_2` FOREIGN KEY (`fkcodigo_zona_tiene_distrito`) REFERENCES `zona_tiene_distrito` (`codigo_zona_tiene_distrito`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpl_tiene_ztd`
--

LOCK TABLES `cpl_tiene_ztd` WRITE;
/*!40000 ALTER TABLE `cpl_tiene_ztd` DISABLE KEYS */;
INSERT INTO `cpl_tiene_ztd` VALUES (1,1,1,19000,15000);
/*!40000 ALTER TABLE `cpl_tiene_ztd` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cpl_tiene_ztd_update
	AFTER UPDATE ON  cpl_tiene_ztd
    FOR EACH ROW
	begin
    insert INTO   audi_cpl_tiene_ztd
    (usuario,fecha_cambio,
 fkcodigo_cuota_por_linea_old  ,
fkcodigo_zona_tiene_distrito_old  ,
cuota_asignada_old,
cuota_realizada_old,
fkcodigo_cuota_por_linea_new,
fkcodigo_zona_tiene_distrito_new,
cuota_asignada_new,
cuota_realizada_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_cuota_por_linea,
   OLD.fkcodigo_zona_tiene_distrito,
   OLD.cuota_asignada,
   OLD.cuota_realizada,
  NEW.fkcodigo_cuota_por_linea,
   NEW.fkcodigo_zona_tiene_distrito,
   NEW.cuota_asignada,
   NEW.cuota_realizada
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cpl_tiene_ztd_delete
	AFTER DELETE ON  cpl_tiene_ztd
    FOR EACH ROW
	begin
    insert INTO   audi_cpl_tiene_ztd
    (usuario,fecha_cambio,
 fkcodigo_cuota_por_linea_old  ,
fkcodigo_zona_tiene_distrito_old  ,
cuota_asignada_old,
cuota_realizada_old,
fkcodigo_cuota_por_linea_new,
fkcodigo_zona_tiene_distrito_new,
cuota_asignada_new,
cuota_realizada_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_cuota_por_linea,
   OLD.fkcodigo_zona_tiene_distrito,
   OLD.cuota_asignada,
   OLD.cuota_realizada,
  Null,
   NULL,
   NULL,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuota`
--

DROP TABLE IF EXISTS `cuota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuota` (
  `codigo_cuota` int(11) NOT NULL AUTO_INCREMENT,
  `monto_cuota` float DEFAULT NULL,
  `fkcodigo_mes` int(11) DEFAULT NULL,
  `fkcodigo_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_cuota`),
  KEY `fk_codigo_mes` (`fkcodigo_mes`),
  KEY `fk_codigo_producto` (`fkcodigo_producto`),
  CONSTRAINT `cuota_ibfk_1` FOREIGN KEY (`fkcodigo_mes`) REFERENCES `mes` (`codigo_mes`),
  CONSTRAINT `cuota_ibfk_2` FOREIGN KEY (`fkcodigo_producto`) REFERENCES `producto` (`codigo_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuota`
--

LOCK TABLES `cuota` WRITE;
/*!40000 ALTER TABLE `cuota` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuota` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_cuota_update
	AFTER UPDATE ON cuota
    FOR EACH ROW
	begin
    insert INTO auditoria_cuota
    (usuario,fecha_cambio,
    monto_cuota_old,
    fkcodigo_mes_old,
    fkcodigo_producto_old,
      monto_cuota_new,
    fkcodigo_mes_new,
    fkcodigo_producto_new
    )
    VALUES(current_user(),now(),
   OLD.monto_cuota,
   OLD.fkcodigo_mes,
   OLD.fkcodigo_producto,
    NEW.monto_cuota,
   NEW.fkcodigo_mes,
   NEW.fkcodigo_producto
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_cuota_delete
	AFTER DELETE ON cuota
    FOR EACH ROW
	begin
    insert INTO auditoria_cuota
    (usuario,fecha_cambio,
    monto_cuota_old,
    fkcodigo_mes_old,
    fkcodigo_producto_old,
      monto_cuota_new,
    fkcodigo_mes_new,
    fkcodigo_producto_new
    )
    VALUES(current_user(),now(),
   OLD.monto_cuota,
   OLD.fkcodigo_mes,
   OLD.fkcodigo_producto,
    NULL,
   NULL,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuota_por_linea`
--

DROP TABLE IF EXISTS `cuota_por_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuota_por_linea` (
  `codigo_cuota_por_linea` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_mes` int(11) DEFAULT NULL,
  `fkcodigo_linea` int(11) DEFAULT NULL,
  `cuota_asignada` float DEFAULT NULL,
  `cuota_realizada` float DEFAULT NULL,
  PRIMARY KEY (`codigo_cuota_por_linea`),
  KEY `fk_codigo_mes` (`fkcodigo_mes`),
  KEY `fk_codigo_linea` (`fkcodigo_linea`),
  CONSTRAINT `cuota_por_linea_ibfk_1` FOREIGN KEY (`fkcodigo_mes`) REFERENCES `mes` (`codigo_mes`),
  CONSTRAINT `cuota_por_linea_ibfk_2` FOREIGN KEY (`fkcodigo_linea`) REFERENCES `linea` (`codigo_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuota_por_linea`
--

LOCK TABLES `cuota_por_linea` WRITE;
/*!40000 ALTER TABLE `cuota_por_linea` DISABLE KEYS */;
INSERT INTO `cuota_por_linea` VALUES (1,NULL,NULL,1500,2000),(2,1,1,500,632),(3,9,2,450,245),(4,5,3,410,495),(5,10,3,370,587),(6,7,2,850,689),(7,11,2,430,456),(8,4,1,894,765),(9,3,3,232,215),(10,12,1,568,536),(11,6,2,263,231),(12,8,2,734,524);
/*!40000 ALTER TABLE `cuota_por_linea` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cuota_por_linea_update
	AFTER UPDATE ON cuota_por_linea
    FOR EACH ROW
	begin
    insert INTO  audi_cuota_por_linea
    (usuario,fecha_cambio,
 fkcodigo_mes_old  ,
fkcodigo_linea_old  ,
cuota_asignada_old,
cuota_realizada_old,
 fkcodigo_mes_new  ,
fkcodigo_linea_new  ,
cuota_asignada_new,
cuota_realizada_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_mes,
   OLD.fkcodigo_linea,
   OLD.cuota_asignada,
   OLD.cuota_realizada,
     NEW.fkcodigo_mes,
   NEW.fkcodigo_linea,
   NEW.cuota_asignada,
   NEW.cuota_realizada
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_cuota_por_linea_delete
	AFTER DELETE ON cuota_por_linea
    FOR EACH ROW
	begin
    insert INTO  audi_cuota_por_linea
    (usuario,fecha_cambio,
 fkcodigo_mes_old  ,
fkcodigo_linea_old  ,
cuota_asignada_old,
cuota_realizada_old,
 fkcodigo_mes_new  ,
fkcodigo_linea_new  ,
cuota_asignada_new,
cuota_realizada_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_mes,
   OLD.fkcodigo_linea,
   OLD.cuota_asignada,
   OLD.cuota_realizada,
     Null,
   Null,
   Null,
   Null
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distrito` (
  `codigo_distrito` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_ciudad` int(11) DEFAULT NULL,
  `nombre_distrito` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_distrito`),
  KEY `fk_codigo_ciudad` (`fkcodigo_ciudad`),
  CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`fkcodigo_ciudad`) REFERENCES `ciudad` (`codigo_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,1,'Miraflores'),(2,1,'Barranco'),(3,1,'Agustino'),(4,1,'Chorrillos'),(5,1,'Villa el Salvador'),(6,1,'Olivos'),(7,1,'Surco'),(8,1,'Miraflores'),(9,1,'San Martin de Porres'),(10,1,'Cercado de Lima'),(11,1,'La Molina'),(12,1,'La Victoria'),(13,1,'Ancon'),(14,1,'Surquillo'),(15,1,'Lima'),(16,1,'Ate'),(17,1,'San Borja'),(18,1,'Breña'),(19,1,'Carabayllo');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_distrito_update
	AFTER UPDATE ON distrito 
    FOR EACH ROW
	begin
    insert INTO auditoria_distrito
    (usuario,fecha_cambio,fkcodigo_ciudad_old,nombre_distrito_old,fkcodigo_ciudad_new,nombre_distrito_new)
    VALUES(current_user(),now(), OLD.fkcodigo_ciudad, OLD.nombre_distrito,NEW.fkcodigo_ciudad,NEW.nombre_distrito);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_distrito_delete
	AFTER DELETE ON distrito 
    FOR EACH ROW
	begin
    insert INTO auditoria_distrito
    (usuario,fecha_cambio,fkcodigo_ciudad_old,nombre_distrito_old,fkcodigo_ciudad_new,nombre_distrito_new)
    VALUES(current_user(),now(), OLD.fkcodigo_ciudad, OLD.nombre_distrito,NULL,NULL);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estado_cliente`
--

DROP TABLE IF EXISTS `estado_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_cliente` (
  `codigo_estado_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado_cliente` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_estado_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_cliente`
--

LOCK TABLES `estado_cliente` WRITE;
/*!40000 ALTER TABLE `estado_cliente` DISABLE KEYS */;
INSERT INTO `estado_cliente` VALUES (1,'Libre de crédito'),(2,'Bloqueo de crédito'),(3,'En evaluación'),(4,'Facturas por vencer');
/*!40000 ALTER TABLE `estado_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_estado_cliente_update
	AFTER UPDATE ON estado_cliente
    FOR EACH ROW
	begin
    insert INTO auditoria_estado_cliente
    (usuario,fecha_cambio,nombre_estado_cliente_old,nombre_estado_cliente_new)
    VALUES(current_user(),now(),OLD.nombre_estado_cliente,NEW.nombre_estado_cliente);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_estado_cliente_delete
	AFTER DELETE ON estado_cliente
    FOR EACH ROW
	begin
    insert INTO auditoria_estado_cliente
    (usuario,fecha_cambio,nombre_estado_cliente_old,nombre_estado_cliente_new)
    VALUES(current_user(),now(),NULL,NULL);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estado_cliente_tiene_pedido`
--

DROP TABLE IF EXISTS `estado_cliente_tiene_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_cliente_tiene_pedido` (
  `codigo_estado_cliente_tiene_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado_cliente_tiene_pedido` varchar(45) DEFAULT NULL,
  `foto_estado_cliente_tiene_pedido` blob,
  PRIMARY KEY (`codigo_estado_cliente_tiene_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_cliente_tiene_pedido`
--

LOCK TABLES `estado_cliente_tiene_pedido` WRITE;
/*!40000 ALTER TABLE `estado_cliente_tiene_pedido` DISABLE KEYS */;
INSERT INTO `estado_cliente_tiene_pedido` VALUES (1,'Bloqueado por crédito',NULL),(2,'Rechazado por crédito',NULL),(3,'Aceptado',NULL),(4,'Facturado',NULL),(5,'No atendido',NULL);
/*!40000 ALTER TABLE `estado_cliente_tiene_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_e_cliente_tiene_pedido_update
	AFTER UPDATE ON estado_cliente_tiene_pedido
    FOR EACH ROW
	begin
    insert INTO audi_e_cliente_tiene_pedido
    (usuario,fecha_cambio,
    nombre_estado_cliente_tiene_pedido_old,
    foto_estado_cliente_tiene_pedido_old,
     nombre_estado_cliente_tiene_pedido_new,
    foto_estado_cliente_tiene_pedido_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_estado_cliente_tiene_pedido,
   OLD.foto_estado_cliente_tiene_pedido,
   NEW.nombre_estado_cliente_tiene_pedido,
   NEW.foto_estado_cliente_tiene_pedido
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_e_cliente_tiene_pedido_delete
	AFTER DELETE ON estado_cliente_tiene_pedido
    FOR EACH ROW
	begin
    insert INTO audi_e_cliente_tiene_pedido
    (usuario,fecha_cambio,
    nombre_estado_cliente_tiene_pedido_old,
    foto_estado_cliente_tiene_pedido_old,
     nombre_estado_cliente_tiene_pedido_new,
    foto_estado_cliente_tiene_pedido_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_estado_cliente_tiene_pedido,
   OLD.foto_estado_cliente_tiene_pedido,
   NULL,
   NULL
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estado_producto`
--

DROP TABLE IF EXISTS `estado_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_producto` (
  `codigo_estado_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado_producto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_estado_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_producto`
--

LOCK TABLES `estado_producto` WRITE;
/*!40000 ALTER TABLE `estado_producto` DISABLE KEYS */;
INSERT INTO `estado_producto` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `estado_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_estado_producto_update
	AFTER UPDATE ON estado_producto
    FOR EACH ROW
	begin
    insert INTO auditoria_estado_producto
    (usuario,fecha_cambio,
    nombre_estado_producto_old ,
    nombre_estado_producto_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_estado_producto,
   NEW.nombre_estado_producto
   
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_estado_producto_delete
	AFTER DELETE ON estado_producto
    FOR EACH ROW
	begin
    insert INTO auditoria_estado_producto
    (usuario,fecha_cambio,
    nombre_estado_producto_old ,
    nombre_estado_producto_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_estado_producto,
   NULL
   
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estado_usuario`
--

DROP TABLE IF EXISTS `estado_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_usuario` (
  `codigo_estado_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado_usuario` char(30) NOT NULL,
  PRIMARY KEY (`codigo_estado_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_usuario`
--

LOCK TABLES `estado_usuario` WRITE;
/*!40000 ALTER TABLE `estado_usuario` DISABLE KEYS */;
INSERT INTO `estado_usuario` VALUES (1,'Activo'),(2,'En evaluación'),(3,'Bloqueado');
/*!40000 ALTER TABLE `estado_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_estado_usuario_update
	AFTER UPDATE ON estado_usuario
    FOR EACH ROW
	begin
    insert INTO auditoria_estado_usuario
    (usuario,fecha_cambio,nombre_estado_usuario_old,nombre_estado_usuario_new)
    VALUES(current_user(),now(),OLD.nombre_estado_usuario,NEW.nombre_estado_usuario);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_estado_usuario_delete
	AFTER DELETE  ON estado_usuario
    FOR EACH ROW
	begin
    insert INTO auditoria_estado_usuario
    (usuario,fecha_cambio,nombre_estado_usuario_old,nombre_estado_usuario_new)
    VALUES(current_user(),now(),NULL,NULL);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `factura_c_tiene_pedido`
--

DROP TABLE IF EXISTS `factura_c_tiene_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_c_tiene_pedido` (
  `codigo_factura_cliente_tiene_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_factura_cliente_tiene_pedido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_factura_cliente_tiene_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_c_tiene_pedido`
--

LOCK TABLES `factura_c_tiene_pedido` WRITE;
/*!40000 ALTER TABLE `factura_c_tiene_pedido` DISABLE KEYS */;
INSERT INTO `factura_c_tiene_pedido` VALUES (1,'20101232423433');
/*!40000 ALTER TABLE `factura_c_tiene_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_factura_c_tiene_pedido_update
	AFTER UPDATE ON factura_c_tiene_pedido
    FOR EACH ROW
	begin
    insert INTO auditoria_factura_c_tiene_pedido
    (usuario,fecha_cambio,
    nombre_factura_cliente_tiene_pedido_old,
    nombre_factura_cliente_tiene_pedido_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_factura_cliente_tiene_pedido,
   NEW.nombre_factura_cliente_tiene_pedido
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_factura_c_tiene_pedido_delete
	AFTER DELETE ON factura_c_tiene_pedido
    FOR EACH ROW
	begin
    insert INTO auditoria_factura_c_tiene_pedido
    (usuario,fecha_cambio,
    nombre_factura_cliente_tiene_pedido_old,
    nombre_factura_cliente_tiene_pedido_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_factura_cliente_tiene_pedido,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `igv_venta`
--

DROP TABLE IF EXISTS `igv_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igv_venta` (
  `codigo_igv_venta` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_tipo_impuesto` int(11) DEFAULT NULL,
  `porcentaje_igv_venta` float DEFAULT NULL,
  PRIMARY KEY (`codigo_igv_venta`),
  KEY `fk_codigo_tipo_impuesto` (`fkcodigo_tipo_impuesto`),
  CONSTRAINT `igv_venta_ibfk_1` FOREIGN KEY (`fkcodigo_tipo_impuesto`) REFERENCES `tipo_impuesto` (`codigo_tipo_impuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `igv_venta`
--

LOCK TABLES `igv_venta` WRITE;
/*!40000 ALTER TABLE `igv_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `igv_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_igv_venta_update
	AFTER UPDATE ON  igv_venta
    FOR EACH ROW
	begin
    insert INTO   audi_igv_venta
    (usuario,fecha_cambio,
    fkcodigo_tipo_impuesto_old,
porcentaje_igv_venta_old,
fkcodigo_tipo_impuesto_new,
porcentaje_igv_venta_new

    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_tipo_impuesto,
   OLD.porcentaje_igv_venta,
   NEW.fkcodigo_tipo_impuesto,
   NEW.porcentaje_igv_venta
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_igv_venta_delete
	AFTER DELETE ON  igv_venta
    FOR EACH ROW
	begin
    insert INTO   audi_igv_venta
    (usuario,fecha_cambio,
porcentaje_igv_venta_old,
porcentaje_igv_venta_new
    )
    VALUES(current_user(),now(),
      OLD.fkcodigo_tipo_impuesto,
   OLD.porcentaje_igv_venta,
   NULL,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insumo` (
  `codigo_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_insumo` varchar(30) DEFAULT NULL,
  `marca_insumo` varchar(45) DEFAULT NULL,
  `fecha_ingreso_insumo` datetime DEFAULT NULL,
  `peso_insumo` float DEFAULT NULL,
  `presentacion_insumo` varchar(45) DEFAULT NULL,
  `precio_unitario_insumo` float DEFAULT NULL,
  PRIMARY KEY (`codigo_insumo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
INSERT INTO `insumo` VALUES (1,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'Costal 60kg arcilla roja',23.5),(2,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'Costal 60kg arcilla roja',23.5),(3,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5),(4,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5),(5,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5),(6,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5),(7,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5),(8,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5),(9,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5),(10,'Arcilla','Cementos Lima','2017-01-08 00:00:00',60,'costal 60kg arcilla roja',23.5);
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_insumo_update
	AFTER UPDATE ON insumo
    FOR EACH ROW
	begin
    insert INTO auditoria_insumo
    (usuario,fecha_cambio,
    nombre_insumo_old ,
   marca_insumo_old,
   fecha_ingreso_insumo_old,
   peso_insumo_old,
   presentacion_insumo_old,
   presentacion_unitario_insumo_old,
   nombre_insumo_new ,
   marca_insumo_new,
   fecha_ingreso_insumo_new,
   peso_insumo_new,
   presentacion_insumo_new,
   precio_unitario_insumo_new
     )
    VALUES(current_user(),now(),
   OLD.nombre_insumo,
   OLD.marca_insumo,
   OLD.fecha_ingreso_insumo,
   OLD.peso_insumo,
   OLD.presentacion_insumo,
   OLD.precio_unitario_insumo,
   NEW.nombre_insumo,
   NEW.marca_insumo,
   NEW.fecha_ingreso_insumo,
   NEW.peso_insumo,
   NEW.presentacion_insumo,
   NEW.precio_unitario_insumo
				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_insumo_delete
	AFTER DELETE ON insumo
    FOR EACH ROW
	begin
    insert INTO auditoria_insumo
    (usuario,fecha_cambio,
    nombre_insumo_old ,
   marca_insumo_old,
   fecha_ingreso_insumo_old,
   peso_insumo_old,
   presentacion_insumo_old,
   presentacion_unitario_insumo_old,
   nombre_insumo_new ,
   marca_insumo_new,
   fecha_ingreso_insumo_new,
   peso_insumo_new,
   presentacion_insumo_new,
   precio_unitario_insumo_new
     )
    VALUES(current_user(),now(),
   OLD.nombre_insumo,
   OLD.marca_insumo,
   OLD.fecha_ingreso_insumo,
   OLD.peso_insumo,
   OLD.presentacion_insumo,
   OLD.precio_unitario_insumo,
   NULL,
   NULL,
   NULL,
   NULL,
   NULL,
   NULL
						);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `linea`
--

DROP TABLE IF EXISTS `linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linea` (
  `codigo_linea` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_linea` varchar(45) DEFAULT NULL,
  `icono_linea` blob,
  PRIMARY KEY (`codigo_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea`
--

LOCK TABLES `linea` WRITE;
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
INSERT INTO `linea` VALUES (1,'Adornos vasijas',NULL),(2,'Adornos floreros',NULL),(3,'Toritos',NULL);
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_linea_update
	AFTER UPDATE ON linea
    FOR EACH ROW
	begin
    insert INTO auditoria_linea
    (usuario,fecha_cambio,
    nombre_linea_old,
    icono_linea_old,
    nombre_linea_new,
    icono_linea_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_linea,
   OLD.icono_linea,
   NEW.nombre_linea,
   NEW.icono_linea
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_linea_delete
	AFTER DELETE ON linea
    FOR EACH ROW
	begin
    insert INTO auditoria_linea
    (usuario,fecha_cambio,
    nombre_linea_old,
    icono_linea_old,
    nombre_linea_new,
    icono_linea_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_linea,
   OLD.icono_linea,
   Null,
   NULL
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mes` (
  `codigo_mes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_mes` varchar(45) DEFAULT NULL,
  `fkcodigo_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_mes`),
  KEY `fk_codigo_year` (`fkcodigo_year`),
  CONSTRAINT `mes_ibfk_1` FOREIGN KEY (`fkcodigo_year`) REFERENCES `year` (`codigo_year`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES (1,'Enero',1),(2,'Febrero',1),(3,'Marzo',1),(4,'Abril',1),(5,'Mayo',1),(6,'Junio',1),(7,'Julio',1),(8,'Agosto',1),(9,'Septiembre',1),(10,'Octubre',1),(11,'Noviembre',1),(12,'Diciembre',1);
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_mes_update
	AFTER UPDATE ON mes
    FOR EACH ROW
	begin
    insert INTO auditoria_mes
    (usuario,fecha_cambio,
    nombre_mes_old,
    fkcodigo_year_old,
    nombre_mes_new,
    fkcodigo_year_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_mes,
   OLD.fkcodigo_year,
   NEW.nombre_mes,
   NEW.fkcodigo_year
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_mes_delete
	AFTER DELETE ON mes
    FOR EACH ROW
	begin
    insert INTO auditoria_mes
    (usuario,fecha_cambio,
    nombre_mes_old,
    fkcodigo_year_old,
    nombre_mes_new,
    fkcodigo_year_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_mes,
   OLD.fkcodigo_year,
   NULL,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `codigo_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pais` char(30) NOT NULL,
  PRIMARY KEY (`codigo_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Perú'),(2,'Ecuador'),(3,'Colombia'),(4,'Venezuela'),(5,'Chile'),(6,'Argentina'),(7,'Uruguay'),(8,'Bolivia'),(9,'Paraguay'),(10,'México'),(11,'Costa Rica'),(12,'Guatemala'),(13,'Puerto Rico'),(14,'República Dominicana'),(15,'Panamá'),(16,'Honduras'),(17,'El Salvador'),(18,'España'),(19,'Brasil'),(20,'Portugal');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_pais_update
	AFTER UPDATE ON pais 
    FOR EACH ROW
	begin
    insert INTO auditoria_pais
    (usuario,fecha_cambio,nombre_pais_old,nombre_pais_new)
    VALUES(current_user(),now(), OLD.nombre_pais, NEW.nombre_pais);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_pais_delete
	after delete on pais
    FOR EACH ROW
	begin
    insert INTO auditoria_pais
    (usuario,fecha_cambio,nombre_pais_old,nombre_pais_new)
    VALUES(current_user(),now(), OLD.nombre_pais, NULL);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `codigo_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `ingreso_almacen_producto` datetime DEFAULT NULL,
  `salida_almacen_producto` datetime DEFAULT NULL,
  `stock_producto` varchar(45) DEFAULT NULL,
  `preparacion_producto` varchar(150) DEFAULT NULL,
  `foto_producto` blob,
  `colores_producto` varchar(45) DEFAULT NULL,
  `qr_producto` varchar(150) DEFAULT NULL,
  `pvv_producto` float DEFAULT NULL,
  `pvf_producto` float DEFAULT NULL,
  `fkcodigo_linea` int(11) DEFAULT NULL,
  `fkcodigo_tipo_producto` int(11) DEFAULT NULL,
  `fkcodigo_estado_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_producto`),
  KEY `fk_codigo_linea` (`fkcodigo_linea`),
  KEY `fk_codigo_tipo_producto` (`fkcodigo_tipo_producto`),
  KEY `fk_codigo_estado_producto` (`fkcodigo_estado_producto`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`fkcodigo_linea`) REFERENCES `linea` (`codigo_linea`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`fkcodigo_tipo_producto`) REFERENCES `tipo_producto` (`codigo_tipo_producto`),
  CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`fkcodigo_estado_producto`) REFERENCES `estado_producto` (`codigo_estado_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(2,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(3,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(4,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(5,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(6,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(7,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(8,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(9,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(10,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(11,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(12,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(13,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(14,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(15,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(16,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1),(17,'gato angora','2017-04-06 00:00:00','2017-09-23 00:00:00','900','El producto requiere 400 grados C ',NULL,'amarillo-gris verde','http://sitedelqr',100,118,1,1,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_producto_update
	AFTER UPDATE ON producto
    FOR EACH ROW
	begin
    insert INTO auditoria_producto
    (usuario,fecha_cambio,
    nombre_producto_old,
ingreso_almacen_producto_old,
salida_almacen_producto_old,
stock_producto_old,
preparacion_producto_old,
foto_producto_old,
colores_producto_old ,
qr_producto_old  ,
pvv_producto_old ,
pvf_producto_old ,
fkcodigo_linea_old ,
fkcodigo_tipo_producto_old,
fkcodigo_estado_producto_old ,
nombre_producto_new ,
ingreso_almacen_producto_new ,
salida_almacen_producto_new ,
stock_producto_new ,
preparacion_producto_new  ,
foto_producto_new ,
colores_producto_new  ,
qr_producto_new  ,
pvv_producto_new ,
pvf_producto_new ,
fkcodigo_linea_new ,
fkcodigo_tipo_producto_new ,
fkcodigo_estado_producto_new 
    )
    VALUES(current_user(),now(),
OLD.nombre_producto,
OLD.ingreso_almacen_producto,
OLD.salida_almacen_producto,
OLD.stock_producto,
OLD.preparacion_producto,
OLD.foto_producto,
OLD.colores_producto ,
OLD.qr_producto  ,
OLD.pvv_producto ,
OLD.pvf_producto,
OLD.fkcodigo_linea ,
OLD.fkcodigo_tipo_producto,
OLD.fkcodigo_estado_producto ,
NEW.nombre_producto ,
NEW.ingreso_almacen_producto ,
NEW.salida_almacen_producto,
NEW.stock_producto ,
NEW.preparacion_producto ,
NEW.foto_producto ,
NEW.colores_producto  ,
NEW.qr_producto  ,
NEW.pvv_producto ,
NEW.pvf_producto ,
NEW.fkcodigo_linea ,
NEW.fkcodigo_tipo_producto ,
NEW.fkcodigo_estado_producto
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_producto_delete
	AFTER DELETE ON producto
    FOR EACH ROW
	begin
    insert INTO auditoria_producto
    (usuario,fecha_cambio,
    nombre_producto_old,
ingreso_almacen_producto_old,
salida_almacen_producto_old,
stock_producto_old,
preparacion_producto_old,
foto_producto_old,
colores_producto_old ,
qr_producto_old  ,
pvv_producto_old ,
pvf_producto_old ,
fkcodigo_linea_old ,
fkcodigo_tipo_producto_old,
fkcodigo_estado_producto_old ,
nombre_producto_new ,
ingreso_almacen_producto_new ,
salida_almacen_producto_new ,
stock_producto_new ,
preparacion_producto_new  ,
foto_producto_new ,
colores_producto_new  ,
qr_producto_new  ,
pvv_producto_new ,
pvf_producto_new ,
fkcodigo_linea_new ,
fkcodigo_tipo_producto_new ,
fkcodigo_estado_producto_new 
    )
    VALUES(current_user(),now(),
OLD.nombre_producto,
OLD.ingreso_almacen_producto,
OLD.salida_almacen_producto,
OLD.stock_producto,
OLD.preparacion_producto,
OLD.foto_producto,
OLD.colores_producto ,
OLD.qr_producto  ,
OLD.pvv_producto ,
OLD.pvf_producto,
OLD.fkcodigo_linea ,
OLD.fkcodigo_tipo_producto,
OLD.fkcodigo_estado_producto ,
NULL ,
NULL ,
NULL,
NULL ,
NULL ,
NULL ,
NULL  ,
NULL  ,
NULL ,
NULL ,
NULL ,
NULL ,
NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `producto_info_basica`
--

DROP TABLE IF EXISTS `producto_info_basica`;
/*!50001 DROP VIEW IF EXISTS `producto_info_basica`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `producto_info_basica` AS SELECT 
 1 AS `TIPO`,
 1 AS `FOTO_TIPO`,
 1 AS `NOMBRE_PRODUCTO`,
 1 AS `STOCK_PRODUCTO`,
 1 AS `FOTO_PRODUCTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producto_por_pedido`
--

DROP TABLE IF EXISTS `producto_por_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_por_pedido` (
  `codigo_producto_por_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_pedido_web` int(11) DEFAULT NULL,
  `fkcodigo_producto` int(11) DEFAULT NULL,
  `descuento_promocion` float DEFAULT NULL,
  `valor_neto` float DEFAULT NULL,
  `valor_con_igv` float DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_producto_por_pedido`),
  KEY `fk_codigo_pedido_web` (`fkcodigo_pedido_web`),
  KEY `fk_codigo_producto` (`fkcodigo_producto`),
  CONSTRAINT `producto_por_pedido_ibfk_1` FOREIGN KEY (`fkcodigo_pedido_web`) REFERENCES `cliente_tiene_pedido` (`codigo_pedido_web`),
  CONSTRAINT `producto_por_pedido_ibfk_2` FOREIGN KEY (`fkcodigo_producto`) REFERENCES `producto` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_por_pedido`
--

LOCK TABLES `producto_por_pedido` WRITE;
/*!40000 ALTER TABLE `producto_por_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_por_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_producto_por_pedido_update
	AFTER UPDATE ON  producto_por_pedido
    FOR EACH ROW
	begin
    insert INTO   audi_producto_por_pedido
    (usuario,fecha_cambio,
  fkcodigo_pedido_web_old ,
fkcodigo_producto_old ,
descuento_promocion_old,
valor_neto_old,
valor_con_igv_old,
cantidad_producto_old ,

 fkcodigo_pedido_web_new ,
fkcodigo_producto_new ,
descuento_promocion_new ,
valor_neto_new,
valor_con_igv_new ,
cantidad_producto_new 


    )
    VALUES(current_user(),now(),
  
OLD.fkcodigo_pedido_web ,
OLD.fkcodigo_producto ,
OLD.descuento_promocion ,
OLD.valor_neto,
OLD.valor_con_igv,
OLD.cantidad_producto,

  
NEW.fkcodigo_pedido_web ,
NEW.fkcodigo_producto ,
NEW.descuento_promocion ,
NEW.valor_neto,
NEW.valor_con_igv,
NEW.cantidad_producto  
  

   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_producto_por_pedido_delete
	AFTER DELETE ON  producto_por_pedido
    FOR EACH ROW
	begin
    insert INTO   audi_producto_por_pedido
    (usuario,fecha_cambio,
  fkcodigo_pedido_web_old ,
fkcodigo_producto_old ,
descuento_promocion_old,
valor_neto_old,
valor_con_igv_old,
cantidad_producto_old ,

 fkcodigo_pedido_web_new ,
fkcodigo_producto_new ,
descuento_promocion_new ,
valor_neto_new,
valor_con_igv_new ,
cantidad_producto_new 


    )
    VALUES(current_user(),now(),
  
OLD.fkcodigo_pedido_web ,
OLD.fkcodigo_producto ,
OLD.descuento_promocion ,
OLD.valor_neto,
OLD.valor_con_igv,
OLD.cantidad_producto,

  
NULL ,
NULL ,
NULL ,
NULL ,
NULL ,
NULL  
  

   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `promocion_venta`
--

DROP TABLE IF EXISTS `promocion_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocion_venta` (
  `codigo_promocion_venta` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad_sku_pedido` int(11) DEFAULT NULL,
  `descuento_sku_pedido` float DEFAULT NULL,
  `fecha_inicio_promocion` datetime DEFAULT NULL,
  `fecha_expiracion_promocion` datetime DEFAULT NULL,
  `descripcion_promocion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo_promocion_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion_venta`
--

LOCK TABLES `promocion_venta` WRITE;
/*!40000 ALTER TABLE `promocion_venta` DISABLE KEYS */;
INSERT INTO `promocion_venta` VALUES (1,20,0.4,'2018-09-15 00:00:00','2018-10-25 00:00:00','Promoción de todos los productos por 20 unidades');
/*!40000 ALTER TABLE `promocion_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_promocion_venta_update
	AFTER UPDATE ON  promocion_venta
    FOR EACH ROW
	begin
    insert INTO   audi_promocion_venta
    (usuario,fecha_cambio,

cantidad_sku_pedido_old  ,
descuento_sku_pedido_old,
fecha_inicio_promocion_old,
fecha_expiracion_promocion_old,
descripcion_promocion_old,

cantidad_sku_pedido_new  ,
descuento_sku_pedido_new,
fecha_inicio_promocion_new,
fecha_expiracion_promocion_new,
descripcion_promocion_new
    )
    VALUES(current_user(),now(),
  
   OLD.cantidad_sku_pedido,
   OLD.descuento_sku_pedido,
   OLD.fecha_inicio_promocion,
   OLD.fecha_expiracion_promocion,
   OLD.descripcion_promocion,
  
   NEW.cantidad_sku_pedido,
   NEW.descuento_sku_pedido,
   NEW.fecha_inicio_promocion,
   NEW.fecha_expiracion_promocion,
   NEW.descripcion_promocion
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_promocion_venta_delete
	AFTER delete ON  promocion_venta
    FOR EACH ROW
	begin
    insert INTO   audi_promocion_venta
    (usuario,fecha_cambio,

cantidad_sku_pedido_old  ,
descuento_sku_pedido_old,
fecha_inicio_promocion_old,
fecha_expiracion_promocion_old,
descripcion_promocion_old,

cantidad_sku_pedido_new  ,
descuento_sku_pedido_new,
fecha_inicio_promocion_new,
fecha_expiracion_promocion_new,
descripcion_promocion_new
    )
    VALUES(current_user(),now(),
  
   OLD.cantidad_sku_pedido,
   OLD.descuento_sku_pedido,
   OLD.fecha_inicio_promocion,
   OLD.fecha_expiracion_promocion,
   OLD.descripcion_promocion,
  
   NULL,
   NULL,
   NULL,
   NULL,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `codigo_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_pais` int(11) DEFAULT NULL,
  `nombre_provincia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_provincia`),
  KEY `fk_codigo_pais` (`fkcodigo_pais`),
  CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`fkcodigo_pais`) REFERENCES `pais` (`codigo_pais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,1,'Lima'),(2,1,'Trujillo'),(3,1,'Ica'),(4,1,'Cajamarca'),(5,1,'Arequipa'),(6,1,'Cuzco'),(7,1,'Tumbes'),(8,1,'Piura'),(9,1,'Pucallpa'),(10,1,'Madre de Dios'),(11,1,'Lambayeque'),(12,1,'Tumbes'),(13,1,'Ayacucho'),(14,1,'Iquitos'),(15,1,'El Dorado'),(16,1,'Moyobamba'),(17,1,'Tarapoto'),(18,1,'Chachapoyas'),(19,1,'Camana'),(20,1,'Caraveli');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_provincia_update
	AFTER UPDATE ON provincia 
    FOR EACH ROW
	begin
    insert INTO auditoria_provincia
    (usuario,fecha_cambio,codigo_pais_old,nombre_provincia_old,codigo_pais_new,nombre_provincia_new)
    VALUES(current_user(),now(), OLD.fkcodigo_pais, OLD.nombre_provincia,NEW.fkcodigo_pais,NEW.nombre_provincia);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_provincia_delete
	AFTER delete ON provincia 
    FOR EACH ROW
	begin
    insert INTO auditoria_provincia
    (usuario,fecha_cambio,fkcodigo_pais_old,nombre_provincia_old,fkcodigo_pais_new,nombre_provincia_new)
    VALUES(current_user(),now(), OLD.fkcodigo_pais, OLD.nombre_provincia,Null,Null);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `receta_producto`
--

DROP TABLE IF EXISTS `receta_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta_producto` (
  `codigo_receta_producto` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_receta_producto` varchar(45) DEFAULT NULL,
  `fecha_creacion_receta_producto` datetime DEFAULT NULL,
  PRIMARY KEY (`codigo_receta_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_producto`
--

LOCK TABLES `receta_producto` WRITE;
/*!40000 ALTER TABLE `receta_producto` DISABLE KEYS */;
INSERT INTO `receta_producto` VALUES (1,'Torito Retablo','2015-03-28 00:00:00'),(2,'Vaso Kero','2016-04-15 00:00:00'),(3,'Vasija Mochica','2017-05-16 00:00:00'),(4,'Gallito de las Rocas','2015-06-18 00:00:00'),(5,'Cerámica Mochica','2015-07-17 00:00:00'),(6,'Vasija Tiahuanaco','2017-08-20 00:00:00'),(7,'Florero Norteño','2016-09-25 00:00:00'),(8,'Caballito de Totora','2016-10-24 00:00:00'),(9,'Vasija Chimú','2016-11-20 00:00:00'),(10,'Vaso Ceremonial','2015-12-21 00:00:00'),(11,'Jarrón Mochica','2015-01-27 00:00:00'),(12,'Jarrón Nazca','2015-02-10 00:00:00'),(13,'Pota Catacaos','2016-04-09 00:00:00'),(14,'Poto Norteño','2016-07-08 00:00:00'),(15,'Cojudito Norteño','2017-06-12 00:00:00'),(16,'Jarrón Paracas','2017-03-13 00:00:00'),(17,'Vasija Nazca','2016-02-14 00:00:00'),(18,'Vaso Kuelap','2016-01-11 00:00:00'),(19,'Vasija Caral','2016-08-17 00:00:00'),(20,'Vasija Vicus','2015-09-18 00:00:00'),(21,'Jarrón Chimú','2015-10-29 00:00:00');
/*!40000 ALTER TABLE `receta_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_receta_producto_update
	AFTER UPDATE ON receta_producto
    FOR EACH ROW
	begin
    insert INTO auditoria_receta_producto
    (usuario,fecha_cambio,
    modelo_receta_producto_old ,
    fecha_creacion_receta_producto_old,
    modelo_receta_producto_new,
    fecha_creacion_receta_producto_new
    )
    VALUES(current_user(),now(),
   OLD.modelo_receta_producto,
   OLD.fecha_creacion_receta_producto,
   NEW.modelo_receta_producto,
   NEW.fecha_creacion_receta_producto
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_receta_producto_delete
	AFTER DELETE ON receta_producto
    FOR EACH ROW
	begin
    insert INTO auditoria_receta_producto
    (usuario,fecha_cambio,
    modelo_receta_producto_old ,
    fecha_creacion_receta_producto_old,
    modelo_receta_producto_new,
    fecha_creacion_receta_producto_new
    )
    VALUES(current_user(),now(),
   OLD.modelo_receta_producto,
   OLD.fecha_creacion_receta_producto,
    NULL,
   NULL
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `receta_producto_tiene_insumo`
--

DROP TABLE IF EXISTS `receta_producto_tiene_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta_producto_tiene_insumo` (
  `codigo_receta_producto_tiene_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_producto` int(11) DEFAULT NULL,
  `fkcodigo_insumo` int(11) DEFAULT NULL,
  `fkcodigo_receta_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_receta_producto_tiene_insumo`),
  KEY `fk_codigo_producto` (`fkcodigo_producto`),
  KEY `fk_codigo_insumo` (`fkcodigo_insumo`),
  KEY `fk_codigo_receta_producto` (`fkcodigo_receta_producto`),
  CONSTRAINT `receta_producto_tiene_insumo_ibfk_1` FOREIGN KEY (`fkcodigo_producto`) REFERENCES `producto` (`codigo_producto`),
  CONSTRAINT `receta_producto_tiene_insumo_ibfk_2` FOREIGN KEY (`fkcodigo_insumo`) REFERENCES `insumo` (`codigo_insumo`),
  CONSTRAINT `receta_producto_tiene_insumo_ibfk_3` FOREIGN KEY (`fkcodigo_receta_producto`) REFERENCES `receta_producto` (`codigo_receta_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_producto_tiene_insumo`
--

LOCK TABLES `receta_producto_tiene_insumo` WRITE;
/*!40000 ALTER TABLE `receta_producto_tiene_insumo` DISABLE KEYS */;
INSERT INTO `receta_producto_tiene_insumo` VALUES (1,1,1,1),(2,1,1,1),(3,1,1,1),(4,1,1,1),(5,1,1,1),(6,1,1,1),(7,1,1,1);
/*!40000 ALTER TABLE `receta_producto_tiene_insumo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_receta_p_tiene_insumo_update
	AFTER UPDATE ON receta_producto_tiene_insumo
    FOR EACH ROW
	begin
    insert INTO  audi_receta_p_tiene_insumo
    (usuario,fecha_cambio,
 fkcodigo_producto_old  ,
fkcodigo_insumo_old  ,
fkcodigo_receta_producto_old,
fkcodigo_producto_new,
fkcodigo_insumo_new,
fkcodigo_receta_producto_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_producto,
   OLD.fkcodigo_insumo,
   OLD.fkcodigo_receta_producto,
    NEW.fkcodigo_producto,
   NEW.fkcodigo_insumo,
   NEW.fkcodigo_receta_producto
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_receta_p_tiene_insumo_delete
	AFTER DELETE ON receta_producto_tiene_insumo
    FOR EACH ROW
	begin
    insert INTO  audi_receta_p_tiene_insumo
    (usuario,fecha_cambio,
 fkcodigo_producto_old  ,
fkcodigo_insumo_old  ,
fkcodigo_receta_producto_old,
fkcodigo_producto_new,
fkcodigo_insumo_new,
fkcodigo_receta_producto_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_producto,
   OLD.fkcodigo_insumo,
   OLD.fkcodigo_receta_producto,
    NULL,
   NULL,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `regimen_cliente`
--

DROP TABLE IF EXISTS `regimen_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regimen_cliente` (
  `codigo_regimen_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_regimen_cliente` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_regimen_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regimen_cliente`
--

LOCK TABLES `regimen_cliente` WRITE;
/*!40000 ALTER TABLE `regimen_cliente` DISABLE KEYS */;
INSERT INTO `regimen_cliente` VALUES (1,'Régimen Especial'),(2,'Régimen Jurídico'),(3,'Régimen Único Simplificado');
/*!40000 ALTER TABLE `regimen_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_regimen_cliente_update
	AFTER UPDATE ON regimen_cliente
    FOR EACH ROW
	begin
    insert INTO auditoria_regimen_cliente
    (usuario,fecha_cambio,nombre_regimen_cliente_old,nombre_regimen_cliente_new)
    VALUES(current_user(),now(),OLD.nombre_regimen_cliente,NEW.nombre_regimen_cliente);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_regimen_cliente_delete
	AFTER DELETE ON regimen_cliente
    FOR EACH ROW
	begin
    insert INTO auditoria_regimen_cliente
    (usuario,fecha_cambio,nombre_regimen_cliente_old,nombre_regimen_cliente_new)
    VALUES(current_user(),now(),NULL,NULL);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tipo_impuesto`
--

DROP TABLE IF EXISTS `tipo_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_impuesto` (
  `codigo_tipo_impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_impuesto` varchar(45) DEFAULT NULL,
  `porcentaje_tipo_impuesto` float DEFAULT NULL,
  PRIMARY KEY (`codigo_tipo_impuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_impuesto`
--

LOCK TABLES `tipo_impuesto` WRITE;
/*!40000 ALTER TABLE `tipo_impuesto` DISABLE KEYS */;
INSERT INTO `tipo_impuesto` VALUES (1,'igv_ventas 18%',0.18);
/*!40000 ALTER TABLE `tipo_impuesto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_tipo_impuesto_update
	AFTER UPDATE ON tipo_impuesto
    FOR EACH ROW
	begin
    insert INTO auditoria_tipo_impuesto
    (usuario,fecha_cambio,
    nombre_tipo_impuesto_old,
    porcentaje_tipo_impuesto_old,
     nombre_tipo_impuesto_new,
    porcentaje_tipo_impuesto_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_tipo_impuesto,
   OLD.porcentaje_tipo_impuesto,
   NEW.nombre_tipo_impuesto,
   NEW.porcentaje_tipo_impuesto
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_tipo_impuesto_delete
	AFTER DELETE ON tipo_impuesto
    FOR EACH ROW
	begin
    insert INTO auditoria_tipo_impuesto
    (usuario,fecha_cambio,
    nombre_tipo_impuesto_old,
    porcentaje_tipo_impuesto_old,
     nombre_tipo_impuesto_new,
    porcentaje_tipo_impuesto_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_tipo_impuesto,
   OLD.porcentaje_tipo_impuesto,
   NULL,
   NULL
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_producto` (
  `codigo_tipo_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_producto` varchar(45) DEFAULT NULL,
  `tiempoenhorno_tipo_producto` float DEFAULT NULL,
  `temperaturaenhorno_tipo_producto` float DEFAULT NULL,
  `foto_tipo_producto` blob,
  PRIMARY KEY (`codigo_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES (1,'Vasija',4.5,210.5,NULL);
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_tipo_producto_update
	AFTER UPDATE ON tipo_producto
    FOR EACH ROW
	begin
    insert INTO auditoria_tipo_producto
    (usuario,fecha_cambio,
    nombre_tipo_producto_old,
    tiempoenhorno_tipo_producto_old,
    temperaturaenhorno_tipo_producto_old,
    foto_tipo_producto_old,
    nombre_tipo_producto_new,
    tiempoenhorno_tipo_producto_new,
    temperaturaenhorno_tipo_producto_new,
    foto_tipo_producto_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_tipo_producto,
   OLD.tiempoenhorno_tipo_producto,
   OLD.temperaturaenhorno_tipo_producto,
   OLD.foto_tipo_producto,
   NEW.nombre_tipo_producto,
   NEW.tiempoenhorno_tipo_producto,
   NEW.temperaturaenhorno_tipo_producto,
   NEW.foto_tipo_producto
   
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_tipo_producto_delete
	AFTER DELETE ON tipo_producto
    FOR EACH ROW
	begin
    insert INTO auditoria_tipo_producto
    (usuario,fecha_cambio,
    nombre_tipo_producto_old,
    tiempoenhorno_tipo_producto_old,
    temperaturaenhorno_tipo_producto_old,
    foto_tipo_producto_old,
    nombre_tipo_producto_new,
    tiempoenhorno_tipo_producto_new,
    temperaturaenhorno_tipo_producto_new,
    foto_tipo_producto_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_tipo_producto,
   OLD.tiempoenhorno_tipo_producto,
   OLD.temperaturaenhorno_tipo_producto,
   OLD.foto_tipo_producto,
   NULL,
  NULL,
    NULL,
   NULL
   
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `codigo_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_usuario` char(30) NOT NULL,
  PRIMARY KEY (`codigo_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador'),(2,'Vendedor'),(3,'Artesano'),(4,'Cliente'),(5,'Almacén');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_tipo_usuario_update
	AFTER UPDATE ON tipo_usuario
    FOR EACH ROW
	begin
    insert INTO auditoria_tipo_usuario
    (usuario,fecha_cambio,nombre_tipo_usuario_old,nombre_tipo_usuario_new)
    VALUES(current_user(),now(),OLD.nombre_tipo_usuario,NEW.nombre_tipo_usuario);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_tipo_usuario_delete
	AFTER DELETE ON tipo_usuario
    FOR EACH ROW
	begin
    insert INTO auditoria_tipo_usuario
    (usuario,fecha_cambio,nombre_tipo_usuario_old,nombre_tipo_usuario_new)
    VALUES(current_user(),now(),OLD.nombre_tipo_usuario,NULL);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `apellido_usuario` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_usuario` datetime DEFAULT NULL,
  `direccion_usuario` varchar(90) DEFAULT NULL,
  `nombre_logeo_usuario` varchar(90) DEFAULT NULL,
  `password_usuario` varchar(10) DEFAULT NULL,
  `foto_usuario` blob,
  `fkcodigo_distrito` int(11) DEFAULT NULL,
  `fkcodigo_tipo_usuario` int(11) DEFAULT NULL,
  `fkcodigo_estado_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_usuario`),
  KEY `fk_codigo_distrito` (`fkcodigo_distrito`),
  KEY `fk_codigo_tipo_usuario` (`fkcodigo_tipo_usuario`),
  KEY `fk_codigo_estado_usuario` (`fkcodigo_estado_usuario`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fkcodigo_distrito`) REFERENCES `distrito` (`codigo_distrito`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`fkcodigo_tipo_usuario`) REFERENCES `tipo_usuario` (`codigo_tipo_usuario`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`fkcodigo_estado_usuario`) REFERENCES `estado_usuario` (`codigo_estado_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Joffre','Hermosilla','1983-03-28 00:00:00','Av. proceres de la independencia','alucardaywalker','1234',NULL,1,1,1),(2,'Jose ','Miralles','1983-03-28 00:00:00','Av. proceres de la independencia','josemiralles','1234',NULL,1,1,1),(3,'Cesar ','Gomez','1983-03-28 00:00:00','Av. proceres de la independencia','cesargomez','1234',NULL,1,1,1),(4,'Nicolas ','Breña','1983-03-28 00:00:00','Av. proceres de la independencia','nicolasbreña','1234',NULL,1,1,1),(5,'Jhairo ','Caja','1983-03-28 00:00:00','Av. proceres de la independencia','jhairocaja','1234',NULL,1,1,1),(6,'Juan Diego ','Martinez','1983-03-28 00:00:00','Av. proceres de la independencia','juandiego','1234',NULL,1,1,1),(7,'Juan','Moral','1988-02-15 00:00:00','Av SOl 134','sacerdote','1234',NULL,1,4,1),(8,'Pedro','Suarez','1990-07-20 00:00:00','Av Planeta 213','anunaki','1234',NULL,2,4,1),(9,'Miguel','Paredes','1975-07-19 00:00:00','calle complejo 234','kitty','12321',NULL,4,4,1),(10,'Laura','Ordoñez','1993-06-12 00:00:00','Av. Satelite 291','bimana','1323',NULL,4,4,1),(11,'Samanta','Winchester','2000-11-25 00:00:00','Calle Angel 3232','fenicio','12133',NULL,3,2,1),(12,'Carmen','Yabiku','1960-09-11 00:00:00','Calle avalon 3029','Ateo','1234',NULL,3,2,1),(13,'Vially','Flores','1999-08-15 00:00:00','jr. Alamos ','Metalero','12323',NULL,5,2,1),(14,'Jesenia','Alba','1984-02-01 00:00:00','Av. Proceres 3323','argos','12324',NULL,6,2,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_usuario_update
	AFTER UPDATE ON usuario
    FOR EACH ROW
	begin
    insert INTO auditoria_usuario
    (usuario,fecha_cambio,
     nombre_usuario_old, 
    apellido_usuario_old,  
    fecha_nacimiento_usuario_old,
    direccion_usuario_old,
    nombre_logeo_usuario_old,
    password_usuario_old,
    foto_usuario_old,  
    fkcodigo_distrito_old,
    fkcodigo_tipo_usuario_old,
    fkcodigo_estado_usuario_old,  
		   nombre_usuario_new, 
           apellido_usuario_new,  
           fecha_nacimiento_usuario_new,
           direccion_usuario_new,
           nombre_logeo_usuario_new,
           password_usuario_new,
           foto_usuario_new,  
           fkcodigo_distrito_new,
           fkcodigo_tipo_usuario_new,
           fkcodigo_estado_usuario_new)
    VALUES(current_user(),now(),
	OLD.nombre_usuario, 
    OLD.apellido_usuario,  
    OLD.fecha_nacimiento_usuario,
    OLD.direccion_usuario,
    OLD.nombre_logeo_usuario,
    OLD.password_usuario,
    OLD.foto_usuario,  
    OLD.fkcodigo_distrito,
    OLD.fkcodigo_tipo_usuario,
    OLD.fkcodigo_estado_usuario,
    NEW.nombre_usuario, 
    NEW.apellido_usuario,  
    NEW.fecha_nacimiento_usuario,
    NEW.direccion_usuario,
    NEW.nombre_logeo_usuario,
    NEW.password_usuario,
    NEW.foto_usuario,  
    NEW.fkcodigo_distrito,
    NEW.fkcodigo_tipo_usuario,
    NEW.fkcodigo_estado_usuario);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_usuario_delete
	AFTER DELETE ON usuario
    FOR EACH ROW
	begin
    insert INTO auditoria_usuario
    (usuario,fecha_cambio,
     nombre_usuario_old, 
    apellido_usuario_old,  
    fecha_nacimiento_usuario_old,
    direccion_usuario_old,
    nombre_logeo_usuario_old,
    password_usuario_old,
    foto_usuario_old,  
    fkcodigo_distrito_old,
    fkcodigo_tipo_usuario_old,
    fkcodigo_estado_usuario_old,  
		   nombre_usuario_new, 
           apellido_usuario_new,  
           fecha_nacimiento_usuario_new,
           direccion_usuario_new,
           nombre_logeo_usuario_new,
           password_usuario_new,
           foto_usuario_new,  
           fkcodigo_distrito_new,
           fkcodigo_tipo_usuario_new,
           fkcodigo_estado_usuario_new)
    VALUES(current_user(),now(),
	OLD.nombre_usuario, 
    OLD.apellido_usuario,  
    OLD.fecha_nacimiento_usuario,
    OLD.direccion_usuario,
    OLD.nombre_logeo_usuario,
    OLD.password_usuario,
    OLD.foto_usuario,  
    OLD.fkcodigo_distrito,
    OLD.fkcodigo_tipo_usuario,
    OLD.fkcodigo_estado_usuario,
    Null, 
    Null,  
    Null,
    Null,
    Null,
    Null,
    Null,  
    Null,
    Null,
    Null);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedor` (
  `codigo_vendedor` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_usuario` int(11) DEFAULT NULL,
  `fkcodigo_area` int(11) DEFAULT NULL,
  `codigo_venta_vendedor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo_vendedor`),
  KEY `fk_codigo_usuario` (`fkcodigo_usuario`),
  KEY `fk_codigo_area` (`fkcodigo_area`),
  CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`fkcodigo_usuario`) REFERENCES `usuario` (`codigo_usuario`),
  CONSTRAINT `vendedor_ibfk_2` FOREIGN KEY (`fkcodigo_area`) REFERENCES `area` (`codigo_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_vendedor_update
	AFTER update ON  vendedor
    FOR EACH ROW
	begin
    insert INTO   audi_vendedor
    (usuario,fecha_cambio,

fkcodigo_usuario_old  ,
fkcodigo_area_old,
codigo_venta_vendedor_old,


fkcodigo_usuario_new,
fkcodigo_area_new,
codigo_venta_vendedor_new
    )
    VALUES(current_user(),now(),
  
   OLD.fkcodigo_usuario,
   OLD.fkcodigo_area,
   OLD.codigo_venta_vendedor,
   
   NEW.fkcodigo_usuario,
   NEW.fkcodigo_area,
   NEW.codigo_venta_vendedor
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_vendedor_delete
	AFTER DELETE ON  vendedor
    FOR EACH ROW
	begin
    insert INTO   audi_vendedor
    (usuario,fecha_cambio,

fkcodigo_usuario_old  ,
fkcodigo_area_old,
codigo_venta_vendedor_old,


fkcodigo_usuario_new,
fkcodigo_area_new,
descripcion_promocion_new
    )
    VALUES(current_user(),now(),
  
   OLD.fkcodigo_usuario,
   OLD.fkcodigo_area,
   OLD.codigo_venta_vendedor,
   
   Null,
   Null,
   Null
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `year` (
  `codigo_year` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo_year`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year`
--

LOCK TABLES `year` WRITE;
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
INSERT INTO `year` VALUES (1,'2018');
/*!40000 ALTER TABLE `year` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_year_update
	AFTER UPDATE ON year
    FOR EACH ROW
	begin
    insert INTO auditoria_year
    (usuario,fecha_cambio,
    nombre_year_old,
    nombre_year_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_year,
   
   NEW.nombre_year
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_year_delete
	AFTER delete ON year
    FOR EACH ROW
	begin
    insert INTO auditoria_year
    (usuario,fecha_cambio,
    nombre_year_old,
    nombre_year_new
    )
    VALUES(current_user(),now(),
   OLD.nombre_year,
   
   NULL
   
					);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zona`
--

DROP TABLE IF EXISTS `zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona` (
  `codigo_zona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_zona` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_zona`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona`
--

LOCK TABLES `zona` WRITE;
/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
INSERT INTO `zona` VALUES (1,'Cono Sur'),(2,'Cono Norte'),(3,'Cono Este'),(4,'Cono Nor-este'),(5,'Cono Sur_chico');
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_zona_update
	AFTER UPDATE ON zona
    FOR EACH ROW
	begin
    insert INTO auditoria_zona
    (usuario,fecha_cambio,
    nombre_zona_old ,
    nombre_zona_new 
    )
    VALUES(current_user(),now(),
   OLD.nombre_zona,
   NEW.nombre_zona
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_auditoria_zona_delete
	AFTER DELETE ON zona
    FOR EACH ROW
	begin
    insert INTO auditoria_zona
    (usuario,fecha_cambio,
    nombre_zona_old ,
   nombre_zona_new 
    )
    VALUES(current_user(),now(),
   OLD.nombre_zona,
   NULL
                                     );					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zona_tiene_distrito`
--

DROP TABLE IF EXISTS `zona_tiene_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona_tiene_distrito` (
  `codigo_zona_tiene_distrito` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigo_zona` int(11) DEFAULT NULL,
  `fkcodigo_distrito` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_zona_tiene_distrito`),
  KEY `fk_codigo_zona` (`fkcodigo_zona`),
  KEY `fk_codigo_distrito` (`fkcodigo_distrito`),
  CONSTRAINT `zona_tiene_distrito_ibfk_1` FOREIGN KEY (`fkcodigo_zona`) REFERENCES `zona` (`codigo_zona`),
  CONSTRAINT `zona_tiene_distrito_ibfk_2` FOREIGN KEY (`fkcodigo_distrito`) REFERENCES `distrito` (`codigo_distrito`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_tiene_distrito`
--

LOCK TABLES `zona_tiene_distrito` WRITE;
/*!40000 ALTER TABLE `zona_tiene_distrito` DISABLE KEYS */;
INSERT INTO `zona_tiene_distrito` VALUES (1,1,1);
/*!40000 ALTER TABLE `zona_tiene_distrito` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_zona_tiene_distrito_update
	AFTER UPDATE ON zona_tiene_distrito
    FOR EACH ROW
	begin
    insert INTO  audi_zona_tiene_distrito
    (usuario,fecha_cambio,
 fkcodigo_zona_old  ,
fkcodigo_distrito_old  ,
fkcodigo_zona_new,
fkcodigo_distrito_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_zona,
   OLD.fkcodigo_distrito,
  NEW.fkcodigo_zona,
   NEW.fkcodigo_distrito
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tra_audi_zona_tiene_distrito_delete
	AFTER DELETE ON zona_tiene_distrito
    FOR EACH ROW
	begin
    insert INTO  audi_zona_tiene_distrito
    (usuario,fecha_cambio,
 fkcodigo_zona_old  ,
fkcodigo_distrito_old  ,
fkcodigo_zona_new,
fkcodigo_distrito_new
    )
    VALUES(current_user(),now(),
   OLD.fkcodigo_zona,
   OLD.fkcodigo_distrito,
  NULL,
   NULL
   				);					
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'ceramicasietecoyas'
--

--
-- Dumping routines for database 'ceramicasietecoyas'
--
/*!50003 DROP PROCEDURE IF EXISTS `clientes_cantidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clientes_cantidad`()
SELECT
  COUNT(*)
  FROM
  cliente ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_maketrigger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_maketrigger`(IN s_tablename CHAR(30), OUT u_trigger_out VARCHAR(65500) CHARACTER SET ascii,OUT d_trigger_out VARCHAR(65500) CHARACTER SET ascii)
BEGIN
        DECLARE s_fieldname VARCHAR(50);
        DECLARE u_trigger VARCHAR(65500) CHARACTER SET ascii;
        DECLARE d_trigger VARCHAR(65500) CHARACTER SET ascii;
        DECLARE s_key VARCHAR(50);
        DECLARE s_updatedby VARCHAR(50);
        DECLARE s_updated VARCHAR(50);
        DECLARE s_recversion VARCHAR(50);
        DECLARE done INT DEFAULT 0; 
        DECLARE cursor_end CONDITION FOR SQLSTATE '02000'; 
        DECLARE col_cursor CURSOR FOR SELECT COLUMN_NAME FROM test_prepare_vw;
        DECLARE pri_cursor CURSOR FOR SELECT COLUMN_NAME FROM test_prepare_vw2;
        DECLARE upd_cursor CURSOR FOR SELECT COLUMN_NAME FROM test_prepare_vw3;
        DECLARE rec_cursor CURSOR FOR SELECT COLUMN_NAME FROM test_prepare_vw4;
        DECLARE CONTINUE HANDLER FOR cursor_end SET done = 1; 

        DROP VIEW IF EXISTS test_prepare_vw; 
        DROP VIEW IF EXISTS test_prepare_vw2; 
        DROP VIEW IF EXISTS test_prepare_vw3; 
        DROP VIEW IF EXISTS test_prepare_vw4; 

        SET u_trigger = '';
        SET u_trigger = CONCAT('DELIMITER $$ \nDROP TRIGGER IF EXISTS tra_',s_tablename,'_update;\n');
        SET u_trigger = CONCAT(u_trigger,'CREATE TRIGGER tra_',s_tablename,'_update AFTER UPDATE ON ',s_tablename,' FOR EACH ROW \n');
        SET u_trigger = CONCAT(u_trigger,'BEGIN \n');
        SET u_trigger = CONCAT(u_trigger,'DECLARE msg VARCHAR(255); \n');

        SET d_trigger = '';
        SET d_trigger = CONCAT('DELIMITER $$ \nDROP TRIGGER IF EXISTS tra_',s_tablename,'_delete;\n');
        SET d_trigger = CONCAT(d_trigger,'CREATE TRIGGER tra_',s_tablename,'_delete AFTER DELETE ON ',s_tablename,' FOR EACH ROW \n');
        SET d_trigger = CONCAT(d_trigger,'BEGIN \n');

        SET @query = CONCAT('CREATE VIEW test_prepare_vw2 as SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = \'', s_tablename, '\' AND table_schema = \'db_diers\' AND COLUMN_NAME NOT LIKE \'%updated%\' AND COLUMN_KEY = \'PRI\' ORDER BY ORDINAL_POSITION'); 
        PREPARE stmt from @query; 
        EXECUTE stmt; 
        DEALLOCATE PREPARE stmt; 

        OPEN pri_cursor;
        FETCH pri_cursor INTO s_key; 
        CLOSE pri_cursor; 
        DROP VIEW test_prepare_vw2; 

        SET @query = CONCAT('CREATE VIEW test_prepare_vw3 as SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = \'', s_tablename, '\' AND table_schema = \'db_diers\' AND COLUMN_NAME LIKE \'%updatedby%\' AND COLUMN_KEY <> \'PRI\' ORDER BY ORDINAL_POSITION'); 
        PREPARE stmt from @query; 
        EXECUTE stmt; 
        DEALLOCATE PREPARE stmt; 

        OPEN upd_cursor;
        FETCH upd_cursor INTO s_updatedby; 
        CLOSE upd_cursor; 
        DROP VIEW test_prepare_vw3; 
        SET s_updated = LEFT(s_updatedby,(LENGTH(RTRIM(s_updatedby)))-2);

        SET @query = CONCAT('CREATE VIEW test_prepare_vw4 as SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = \'', s_tablename, '\' AND table_schema = \'db_diers\' AND COLUMN_NAME LIKE \'%record_version%\' AND COLUMN_KEY <> \'PRI\' ORDER BY ORDINAL_POSITION'); 
        PREPARE stmt from @query; 
        EXECUTE stmt; 
        DEALLOCATE PREPARE stmt; 

        OPEN rec_cursor;
        FETCH rec_cursor INTO s_recversion; 
        CLOSE rec_cursor; 
        DROP VIEW test_prepare_vw4; 

        SET @query = CONCAT('CREATE VIEW test_prepare_vw as SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = \'', s_tablename, '\' AND table_schema = \'db_diers\' AND COLUMN_KEY <> \'PRI\' ORDER BY ORDINAL_POSITION'); 
        PREPARE stmt from @query; 
        EXECUTE stmt; 
        DEALLOCATE PREPARE stmt; 

        SET u_trigger = CONCAT(u_trigger,'   IF (ISNULL(NEW.',s_recversion,') OR OLD.',s_recversion,' >= NEW.',s_recversion,' OR ISNULL(NEW.',s_updatedby,') OR NEW.',s_updatedby,' = \'\' OR ISNULL(NEW.',s_updated,') OR NEW.',s_updated,' = OLD.',s_updated,') THEN \n');
        SET u_trigger = CONCAT(u_trigger,'      set msg = \'Cannot update record without specifying updated/updatedby by columns and without incrementing the record version.\'; \n');
        SET u_trigger = CONCAT(u_trigger,'      SIGNAL SQLSTATE \'45000\' SET MESSAGE_TEXT = msg; \n');
        SET u_trigger = CONCAT(u_trigger,'   END IF;     \n');

        OPEN col_cursor;

        FETCH col_cursor INTO s_fieldname; 
        WHILE done = 0 DO 
            SET u_trigger = CONCAT(u_trigger,'   IF (IFNULL(OLD.',s_fieldname,',\'\') <> IFNULL(NEW.',s_fieldname,',\'\') ) THEN\n');
            SET u_trigger = CONCAT(u_trigger,'     INSERT INTO tb_auditdetail (type, tablename, pk, fieldname, oldvalue, newvalue, updatedate, username, dbusername, machinename) \n');
            SET u_trigger = CONCAT(u_trigger,'     VALUES (\'U\', \'',s_tablename,'\', OLD.',s_key,', \'',s_fieldname,'\', OLD.',s_fieldname,', NEW.',s_fieldname,', CURRENT_TIMESTAMP,NEW.',s_updatedby,',CURRENT_USER(),@@hostname);\n');
            SET u_trigger = CONCAT(u_trigger,'   END IF;\n'); 

            SET d_trigger = CONCAT(d_trigger,'     INSERT INTO tb_auditdetail (type, tablename, pk, fieldname, oldvalue, newvalue, updatedate, username, dbusername, machinename) \n');
            SET d_trigger = CONCAT(d_trigger,'     VALUES (\'D\', \'',s_tablename,'\', OLD.',s_key,', \'',s_fieldname,'\', OLD.',s_fieldname,',NULL, CURRENT_TIMESTAMP,NULL,CURRENT_USER(),@@hostname);\n');

            FETCH col_cursor INTO s_fieldname; 
        END WHILE; 
        CLOSE col_cursor; 

        DROP VIEW test_prepare_vw; 

        SET u_trigger = CONCAT(u_trigger,'END;$$ \nDELIMITER ; \n');
        SET d_trigger = CONCAT(d_trigger,'END;$$ \nDELIMITER ; \n');
        SELECT u_trigger INTO u_trigger_out;
        SELECT d_trigger INTO d_trigger_out;


    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `producto_info_basica`
--

/*!50001 DROP VIEW IF EXISTS `producto_info_basica`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `producto_info_basica` AS select `t1`.`nombre_tipo_producto` AS `TIPO`,`t1`.`foto_tipo_producto` AS `FOTO_TIPO`,`t2`.`nombre_producto` AS `NOMBRE_PRODUCTO`,`t2`.`stock_producto` AS `STOCK_PRODUCTO`,`t2`.`foto_producto` AS `FOTO_PRODUCTO` from (`producto` `t2` join `tipo_producto` `t1` on((`t1`.`codigo_tipo_producto` = `t2`.`fkcodigo_tipo_producto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-27 10:40:47
