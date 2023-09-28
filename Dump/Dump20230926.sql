CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trailerflix
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo` (
  `id_catalogo` decimal(17,0) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `id_categoria` decimal(17,0) NOT NULL,
  `resumen` varchar(255) NOT NULL,
  `temporadas` int(11) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  PRIMARY KEY (`id_catalogo`),
  KEY `catalogo_fk0` (`id_categoria`),
  CONSTRAINT `catalogo_fk0` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
INSERT INTO `catalogo` VALUES (1,'/posters/1.jpg','The Crown',2,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',4,' '),(2,'/posters/2.jpg','Riverdale',2,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',5,' '),(3,'/posters/3.jpg','The Mandalorian',2,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',2,'https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'/posters/4.jpg','The Umbrella Academy',2,'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',1,' '),(5,'/posters/5.jpg','Gambito de Dama',2,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',1,' '),(6,'/posters/6.jpg','Enola Holmes',1,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que s',0,' '),(7,'/posters/7.jpg','Guasón',1,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conoci',0,'https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'/posters/8.jpg','Avengers: End Game',1,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo',0,' '),(9,'/posters/9.jpg','Juego de tronos',2,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey e',0,' '),(10,'/posters/10.jpg','The Flash',2,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse ',0,' '),(11,'/posters/11.jpg','The Big Bang Theory',2,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar luga',0,'https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'/posters/12.jpg','Friends',2,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafet',0,' '),(13,'/posters/13.jpg','Anne with an \'E\'',2,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir',0,' '),(14,'/posters/14.jpg','Expedientes Secretos \'X\'',2,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. C',0,'https://www.youtube.com/embed/KKziOmsJxzE'),(15,'/posters/15.jpg','Chernobyl',2,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del de',0,'https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'/posters/16.jpg','Westworld',2,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o deprav',0,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'/posters/17.jpg','Halt and Catch Fire',2,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la ',0,'https://www.youtube.com/embed/pWrioRji60A'),(18,'/posters/18.jpg','Ava',1,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por un',0,' '),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn',1,'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',0,' '),(20,'/posters/20.jpg','Archivo',1,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su ',0,'https://www.youtube.com/embed/VHSoCnDioAo'),(21,'/posters/21.jpg','Jumanji - The next level',1,'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes co',0,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(22,'/posters/22.jpg','3022',1,'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flas',0,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(23,'/posters/23.jpg','IT - Capítulo 2',1,'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonar',0,'https://www.youtube.com/embed/hZeFeYSmBcg'),(24,'/posters/24.jpg','Pantera Negra',1,'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos fe',0,'https://www.youtube.com/embed/BE6inv8Xh4A'),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)',1,'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Ju',0,'https://www.youtube.com/embed/SOVb0-2g1Q0'),(26,'/posters/26.jpg','Centígrados',1,'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',0,' '),(27,'/posters/27.jpg','DOOM: Aniquilación',1,'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',0,'https://www.youtube.com/embed/nat3u3gAVLE'),(28,'/posters/28.jpg','Contagio',1,'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la pobl',0,'https://www.youtube.com/embed/4sYSyuuLk5g'),(29,'/posters/29.jpg','Viuda Negra',1,'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',0,'https://www.youtube.com/embed/BIn8iANwEog'),(30,'/posters/30.jpg','The Martian',1,'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recurso',0,'https://www.youtube.com/embed/XvB58bCVfng'),(31,'/posters/31.jpg','Ex-Machina',1,'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligen',0,'https://www.youtube.com/embed/XRYL5spvEcI'),(32,'/posters/32.jpg','Jurassic World',1,'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el ',0,' '),(33,'/posters/33.jpg','Soy leyenda',1,'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',0,'https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'/posters/34.jpg','El primer hombre en la luna',1,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. ',0,' '),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección',1,'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de dest',0,' ');
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_genero`
--

DROP TABLE IF EXISTS `catalogo_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_genero` (
  `id_catalogo_genero` decimal(17,0) NOT NULL,
  `id_catalogo` decimal(17,0) NOT NULL,
  `id_genero` decimal(17,0) NOT NULL,
  PRIMARY KEY (`id_catalogo_genero`),
  KEY `catalogo_genero_fk0` (`id_catalogo`),
  KEY `catalogo_genero_fk1` (`id_genero`),
  CONSTRAINT `catalogo_genero_fk0` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogo` (`id_catalogo`),
  CONSTRAINT `catalogo_genero_fk1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_genero`
--

LOCK TABLES `catalogo_genero` WRITE;
/*!40000 ALTER TABLE `catalogo_genero` DISABLE KEYS */;
INSERT INTO `catalogo_genero` VALUES (1,1,6),(2,1,10),(3,2,6),(4,2,13),(5,2,9),(6,3,3),(7,3,8),(8,4,3),(9,4,8),(10,5,6),(11,5,9),(12,5,15),(13,6,9),(14,6,6),(15,6,13),(16,7,5),(17,7,16),(18,7,6),(19,8,2),(20,8,14),(21,8,1),(22,9,2),(23,9,8),(24,9,6),(25,10,3),(26,10,8),(27,11,4),(28,11,8),(29,11,9),(30,12,4),(31,12,7),(32,12,6),(33,13,6),(34,13,7),(35,13,19),(36,14,6),(37,14,3),(38,15,6),(39,15,10),(40,16,19),(41,16,3),(42,17,9),(43,17,6),(44,17,17),(45,18,1),(46,18,6),(47,18,16),(48,19,1),(49,19,9),(50,19,4),(51,20,1),(52,20,14),(53,20,16),(54,21,4),(55,21,9),(56,21,2),(57,22,3),(58,22,16),(59,23,18),(60,23,16),(61,23,8),(62,24,1),(63,24,2),(64,24,8),(65,25,6),(66,25,11),(67,25,2),(68,26,6),(69,26,16),(70,26,12),(71,27,1),(72,27,14),(73,27,18),(74,28,6),(75,28,16),(76,28,9),(77,29,6),(78,29,1),(79,29,2),(80,30,6),(81,30,14),(82,30,2),(83,31,6),(84,31,14),(85,31,16),(86,32,16),(87,32,2),(88,32,9),(89,33,6),(90,33,18),(91,33,9),(92,34,6),(93,34,10),(94,35,1),(95,35,8),(96,35,14);
/*!40000 ALTER TABLE `catalogo_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_reparto`
--

DROP TABLE IF EXISTS `catalogo_reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_reparto` (
  `id_catalogo_reparto` decimal(17,0) NOT NULL,
  `id_catalogo` decimal(17,0) NOT NULL,
  `id_reparto` decimal(17,0) NOT NULL,
  PRIMARY KEY (`id_catalogo_reparto`),
  KEY `catalogo_reparto_fk0` (`id_catalogo`),
  KEY `catalogo_reparto_fk1` (`id_reparto`),
  CONSTRAINT `catalogo_reparto_fk0` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogo` (`id_catalogo`),
  CONSTRAINT `catalogo_reparto_fk1` FOREIGN KEY (`id_reparto`) REFERENCES `reparto` (`id_reparto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_reparto`
--

LOCK TABLES `catalogo_reparto` WRITE;
/*!40000 ALTER TABLE `catalogo_reparto` DISABLE KEYS */;
INSERT INTO `catalogo_reparto` VALUES (1,1,35),(2,1,160),(3,1,143),(4,1,197),(5,1,203),(6,1,77),(7,2,124),(8,2,25),(9,2,21),(10,2,137),(11,2,134),(12,2,132),(13,3,166),(14,3,23),(15,3,151),(16,3,29),(17,3,174),(18,3,72),(19,4,202),(20,4,49),(21,4,62),(22,4,178),(23,4,3),(24,4,57),(25,5,10),(26,5,196),(27,5,76),(28,5,153),(29,5,28),(30,5,85),(31,6,149),(32,6,78),(33,6,182),(34,6,77),(35,6,127),(36,6,2),(37,7,99),(38,7,175),(39,7,209),(40,7,67),(41,7,15),(42,7,187),(43,8,176),(44,8,30),(45,8,138),(46,8,31),(47,8,183),(48,8,93),(49,9,58),(50,9,122),(51,9,190),(52,9,116),(53,9,167),(54,9,156),(55,10,74),(56,10,24),(57,10,47),(58,10,22),(59,10,94),(60,10,201),(61,11,97),(62,11,102),(63,11,109),(64,11,188),(65,11,118),(66,11,146),(67,11,145),(68,12,91),(69,12,43),(70,12,125),(71,12,52),(72,12,144),(73,12,142),(74,13,8),(75,13,71),(76,13,169),(77,13,42),(78,13,44),(79,13,128),(80,14,73),(81,14,50),(82,14,152),(83,14,177),(84,14,200),(85,14,16),(86,15,86),(87,15,192),(88,15,60),(89,15,165),(90,15,96),(91,15,1),(92,16,64),(93,16,194),(94,16,90),(95,16,193),(96,16,56),(97,16,130),(98,17,121),(99,17,184),(100,17,133),(101,17,114),(102,17,198),(103,17,4),(104,18,95),(105,18,101),(106,18,38),(107,18,39),(108,18,70),(109,18,79),(110,19,135),(111,19,65),(112,19,140),(113,19,108),(114,19,179),(115,19,32),(116,20,191),(117,20,172),(118,20,195),(119,20,168),(120,20,123),(121,20,199),(122,21,55),(123,21,115),(124,21,82),(125,21,110),(126,21,11),(127,21,154),(128,22,150),(129,22,112),(130,22,161),(131,22,9),(132,22,104),(133,22,63),(134,23,14),(135,23,95),(136,23,13),(137,23,83),(138,23,81),(139,23,88),(140,24,26),(141,24,147),(142,24,131),(143,24,45),(144,24,139),(145,24,46),(146,25,34),(147,25,141),(148,25,20),(149,25,105),(150,25,158),(151,25,103),(152,26,68),(153,26,205),(154,26,12),(155,26,59),(156,27,7),(157,27,129),(158,27,157),(159,27,54),(160,27,84),(161,27,126),(162,28,136),(163,28,141),(164,28,120),(165,28,106),(166,28,113),(167,28,92),(168,28,75),(169,29,183),(170,29,66),(171,29,51),(172,29,159),(173,29,170),(174,29,207),(175,29,171),(176,30,141),(177,30,95),(178,30,117),(179,30,89),(180,30,148),(181,30,186),(182,30,111),(183,31,6),(184,31,53),(185,31,163),(186,31,189),(187,31,40),(188,31,37),(189,31,69),(190,32,17),(191,32,33),(192,32,80),(193,32,204),(194,32,162),(195,32,155),(196,32,107),(197,33,206),(198,33,5),(199,33,27),(200,33,48),(201,33,181),(202,33,208),(203,33,61),(204,34,180),(205,34,36),(206,34,87),(207,34,119),(208,34,41),(209,34,164),(210,35,100),(211,35,185),(212,35,19),(213,35,98),(214,35,173),(215,35,18);
/*!40000 ALTER TABLE `catalogo_reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` decimal(17,0) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Película'),(2,'Serie');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` decimal(17,0) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Acción'),(2,'Aventura'),(3,'Ciencia Ficción'),(4,'Comedia'),(5,'Crimen'),(6,'Drama'),(7,'Familia'),(8,'Fantasía'),(9,'Ficción'),(10,'Hechos verídicos'),(11,'Historia'),(12,'Intriga'),(13,'Misterio'),(14,'Sci-Fi'),(15,'Sucesos'),(16,'Suspenso'),(17,'Tecnología'),(18,'Terror'),(19,'Western');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparto`
--

DROP TABLE IF EXISTS `reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparto` (
  `id_reparto` decimal(17,0) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_reparto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparto`
--

LOCK TABLES `reparto` WRITE;
/*!40000 ALTER TABLE `reparto` DISABLE KEYS */;
INSERT INTO `reparto` VALUES (1,'Adam Nagaitis               '),(2,'Adeel Akhtar                '),(3,'Aidan Gallagher             '),(4,'Alana Cavanaugh             '),(5,'Alice Braga                 '),(6,'Alicia Vikander             '),(7,'Amy Manson                  '),(8,'Amybeth McNulty             '),(9,'Angus Macfadyen             '),(10,'Anya Taylor-Joy             '),(11,'Awkwafina                   '),(12,'Benjamin Sokolow            '),(13,'Bill Hader                  '),(14,'Bill Skarsgård              '),(15,'Brett Cullen                '),(16,'Bruce Harwood               '),(17,'Bryce Dallas Howard         '),(18,'Burn Gorman                 '),(19,'Cailee Spaeny               '),(20,'Caitriona Balfe             '),(21,'Camila Mendes               '),(22,'Candice Patton              '),(23,'Carl Weathers               '),(24,'Carlos Valdes               '),(25,'Casey Cott                  '),(26,'Chadwick Boseman            '),(27,'Charlie Tahan               '),(28,'Chloe Pirrie                '),(29,'Chris Bartlett              '),(30,'Chris Evans                 '),(31,'Chris Hemsworth             '),(32,'Chris Messina               '),(33,'Chris Pratt                 '),(34,'Christian Bale              '),(35,'Claire Fox                  '),(36,'Claire Foy                  '),(37,'Claire Selby                '),(38,'Colin Farrell               '),(39,'Common                      '),(40,'Corey Johnson               '),(41,'Corey Stoll                 '),(42,'Corrine Koslo               '),(43,'Courteney Cox               '),(44,'Dalila Bela                 '),(45,'Danai Gurira                '),(46,'Daniel Kaluuya              '),(47,'Danielle Panabaker          '),(48,'Dash Mihok                  '),(49,'David Castañeda             '),(50,'David Duchovny              '),(51,'David Harbour               '),(52,'David Schwimmer             '),(53,'Domhnall Gleeson            '),(54,'Dominic Mafham              '),(55,'Dwayne Johnson              '),(56,'Ed Harris                   '),(57,'Elliot Page                 '),(58,'Emilia Clarke               '),(59,'Emily Bayiokos              '),(60,'Emily Watson                '),(61,'Emma Thompson               '),(62,'Emmy Raver-Lampman          '),(63,'Enver Gjokaj                '),(64,'Evan Rachel Wood            '),(65,'Ewan McGregor               '),(66,'Florence Pugh               '),(67,'Frances Conroy              '),(68,'Génesis Rodríguez           '),(69,'Gana Bayarsaikhan           '),(70,'Geena Davis                 '),(71,'Geraldine James             '),(72,'Giancarlo Esposito          '),(73,'Gillian Anderson            '),(74,'Grant Gustin                '),(75,'Gwyneth Paltrow             '),(76,'Harry Melling               '),(77,'Helena Bonham Carter        '),(78,'Henry Cavill                '),(79,'Ioan Gruffudd               '),(80,'Irrfan Khan                 '),(81,'Isaiah Mustafa              '),(82,'Jack Black                  '),(83,'James McAvoy                '),(84,'James Weber Brown           '),(85,'Janina Elkin                '),(86,'Jared Harris                '),(87,'Jason Clarke                '),(88,'Jay Ryan                    '),(89,'Jeff Daniels                '),(90,'Jeffrey Wright              '),(91,'Jennifer Aniston            '),(92,'Jennifer Ehle               '),(93,'Jeremy Renner               '),(94,'Jesse L. Martin             '),(95,'Jessica Chastain            '),(96,'Jessie Buckley              '),(97,'Jim Parsons                 '),(98,'Jing Tian                   '),(99,'Joaquin Phoenix             '),(100,'John Boyega                 '),(101,'John Malkovich              '),(102,'Johnny Galecki              '),(103,'Jon Bernthal                '),(104,'Jorja Fox                   '),(105,'Josh Lucas                  '),(106,'Jude Law                    '),(107,'Judy Greer                  '),(108,'Jurnee Smollett             '),(109,'Kaley Cuoco                 '),(110,'Karen Gillan                '),(111,'Kate Mara                   '),(112,'Kate Walsh                  '),(113,'Kate Winslet                '),(114,'Kerry Bishé                 '),(115,'Kevin Hart                  '),(116,'Kit Harington               '),(117,'Kristen Wiig                '),(118,'Kunal Nayyar                '),(119,'Kyle Chandler               '),(120,'Laurence Fishburne          '),(121,'Lee Pace                    '),(122,'Lena Headey                 '),(123,'Lia Williams                '),(124,'Lili Reinhart               '),(125,'Lisa Kudrow                 '),(126,'Lorina Kamburova            '),(127,'Louis Partridge             '),(128,'Lucas Jade Zumann           '),(129,'Luke Allen-Gale             '),(130,'Luke Hemsworth              '),(131,'Lupita Nyong\'o              '),(132,'Mädchen Amick               '),(133,'Mackenzie Davis             '),(134,'Madelaine Petsch            '),(135,'Margot Robbie               '),(136,'Marion Cotillard            '),(137,'Marisol Nichols             '),(138,'Mark Ruffalo                '),(139,'Martin Freeman              '),(140,'Mary Elizabeth Winstead     '),(141,'Matt Damon                  '),(142,'Matt LeBlanc                '),(143,'Matt Smith                  '),(144,'Matthew Perry               '),(145,'Mayim Bialik                '),(146,'Melissa Rauch               '),(147,'Michael B. Jordan           '),(148,'Michael Peña                '),(149,'Millie Bobby Brown          '),(150,'Miranda Cosgrove            '),(151,'Misty Rosas                 '),(152,'Mitch Pileggi               '),(153,'Moses Ingram                '),(154,'Nick Jonas                  '),(155,'Nick Robinson               '),(156,'Nikolaj Coster-Waldau       '),(157,'Nina Bergman                '),(158,'Noah Jupe                   '),(159,'O.T. Fagbenle               '),(160,'Olivia Colman               '),(161,'Omar Epps                   '),(162,'Omar Sy                     '),(163,'Oscar Isaac                 '),(164,'Patrick Fugit               '),(165,'Paul Ritter                 '),(166,'Pedro Pascal                '),(167,'Peter Dinklage              '),(168,'Peter Ferdinando            '),(169,'R. H. Thomson               '),(170,'Rachel Weisz                '),(171,'Ray Winstone                '),(172,'Rhona Mitra                 '),(173,'Rinko Kikuchi               '),(174,'Rio Hackford                '),(175,'Robert De Niro              '),(176,'Robert Downey Jr.           '),(177,'Robert Patrick              '),(178,'Robert Sheehan              '),(179,'Rosie Perez                 '),(180,'Ryan Gosling                '),(181,'Salli Richardson-Whitfield  '),(182,'Sam Claflin                 '),(183,'Scarlett Johansson          '),(184,'Scoot McNairy               '),(185,'Scott Eastwood              '),(186,'Sean Bean                   '),(187,'Shea Whigham                '),(188,'Simon Helberg               '),(189,'Sonoya Mizuno               '),(190,'Sophie Turner               '),(191,'Stacy Martin                '),(192,'Stellan Skarsgård           '),(193,'Tessa Thompson              '),(194,'Thandie Newton              '),(195,'Theo James                  '),(196,'Thomas Brodie-Sangster      '),(197,'Tobias Menzies              '),(198,'Toby Huss                   '),(199,'Toby Jones                  '),(200,'Tom Braidwood               '),(201,'Tom Cavanagh                '),(202,'Tom Hopper                  '),(203,'Vanesa Kirby                '),(204,'Vincent D\'Onofrio           '),(205,'Vincent Piazza              '),(206,'Will Smith                  '),(207,'William Hurt                '),(208,'Willow Smith                '),(209,'Zazie Beetz                 ');
/*!40000 ALTER TABLE `reparto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 17:12:37
