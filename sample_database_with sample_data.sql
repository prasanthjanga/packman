/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.13-MariaDB : Database - my_cart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`my_cart` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` char(36) NOT NULL,
  `it_name` varbinary(255) NOT NULL,
  `it_price` float NOT NULL,
  `it_weight` float NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `INX_id_name_price_weight` (`id`,`it_name`,`it_price`,`it_weight`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `items` */

insert  into `items`(`id`,`it_name`,`it_price`,`it_weight`,`created_date`,`deleted`,`last_updated`) values ('1b743ad6-b3c7-11e7-a935-84a6c87866de','Item 1',10,200,'2017-10-18 13:42:31',0,'2017-10-18 13:42:31'),('1b7b28af-b3c7-11e7-a935-84a6c87866de','Item 2',100,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b7dac9a-b3c7-11e7-a935-84a6c87866de','Item 3',30,300,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b7f9e83-b3c7-11e7-a935-84a6c87866de','Item 4',20,500,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b805102-b3c7-11e7-a935-84a6c87866de','Item 5',30,250,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b8530cd-b3c7-11e7-a935-84a6c87866de','Item 6',40,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b85c02d-b3c7-11e7-a935-84a6c87866de','Item 7',200,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b88905c-b3c7-11e7-a935-84a6c87866de','Item 8',120,500,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b8ab81b-b3c7-11e7-a935-84a6c87866de','Item 9',130,790,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b8d8f26-b3c7-11e7-a935-84a6c87866de','Item 10',20,100,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b8e616d-b3c7-11e7-a935-84a6c87866de','Item 11',10,340,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b908469-b3c7-11e7-a935-84a6c87866de','Item 12',4,800,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9134f6-b3c7-11e7-a935-84a6c87866de','Item 13',5,200,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b91d133-b3c7-11e7-a935-84a6c87866de','Item 14',240,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b92625b-b3c7-11e7-a935-84a6c87866de','Item 15',123,700,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b94fa9b-b3c7-11e7-a935-84a6c87866de','Item 16',245,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b95986e-b3c7-11e7-a935-84a6c87866de','Item 17',230,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b963e5e-b3c7-11e7-a935-84a6c87866de','Item 18',110,200,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b96e2d9-b3c7-11e7-a935-84a6c87866de','Item 19',45,200,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9773e0-b3c7-11e7-a935-84a6c87866de','Item 20',67,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b980a88-b3c7-11e7-a935-84a6c87866de','Item 21',88,300,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b98aa23-b3c7-11e7-a935-84a6c87866de','Item 22',10,500,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9955c0-b3c7-11e7-a935-84a6c87866de','Item 23',17,250,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b99fa16-b3c7-11e7-a935-84a6c87866de','Item 24',19,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9a981e-b3c7-11e7-a935-84a6c87866de','Item 25',89,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9b229b-b3c7-11e7-a935-84a6c87866de','Item 26',45,500,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9baf6e-b3c7-11e7-a935-84a6c87866de','Item 27',99,790,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9c417c-b3c7-11e7-a935-84a6c87866de','Item 28',125,100,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9cf779-b3c7-11e7-a935-84a6c87866de','Item 29',198,340,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9ef4de-b3c7-11e7-a935-84a6c87866de','Item 30',220,800,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1b9fae3a-b3c7-11e7-a935-84a6c87866de','Item 31',249,200,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba03d8d-b3c7-11e7-a935-84a6c87866de','Item 32',230,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba10832-b3c7-11e7-a935-84a6c87866de','Item 33',190,700,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba2e25c-b3c7-11e7-a935-84a6c87866de','Item 34',45,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba378b2-b3c7-11e7-a935-84a6c87866de','Item 35',12,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba3feb1-b3c7-11e7-a935-84a6c87866de','Item 36',5,200,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba4a32b-b3c7-11e7-a935-84a6c87866de','Item 37',2,200,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba5250b-b3c7-11e7-a935-84a6c87866de','Item 38',90,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba5abcf-b3c7-11e7-a935-84a6c87866de','Item 39',12,300,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba62782-b3c7-11e7-a935-84a6c87866de','Item 40',167,500,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba7bb9c-b3c7-11e7-a935-84a6c87866de','Item 41',12,250,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba8fb59-b3c7-11e7-a935-84a6c87866de','Item 42',8,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1ba9aeb5-b3c7-11e7-a935-84a6c87866de','Item 43',2,10,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1baa2c20-b3c7-11e7-a935-84a6c87866de','Item 44',9,500,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1baaacf5-b3c7-11e7-a935-84a6c87866de','Item 45',210,790,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1bab402a-b3c7-11e7-a935-84a6c87866de','Item 46',167,100,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1babde53-b3c7-11e7-a935-84a6c87866de','Item 47',23,340,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1bac8778-b3c7-11e7-a935-84a6c87866de','Item 48',190,800,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1bad2dec-b3c7-11e7-a935-84a6c87866de','Item 49',199,200,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32'),('1badb43d-b3c7-11e7-a935-84a6c87866de','Item 50',12,20,'2017-10-18 13:42:32',0,'2017-10-18 13:42:32');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
