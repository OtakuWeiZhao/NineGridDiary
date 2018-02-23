CREATE DATABASE db_9griddiary;

USE db_9griddiary;

CREATE TABLE tb_user(
 id INT NOT NULL PRIMARY KEY auto_increment,
 username VARCHAR(50),
 pwd VARCHAR(50),
 email VARCHAR(100),
 question VARCHAR(45),
 answer VARCHAR(45),
 city VARCHAR(30)
);

CREATE TABLE tb_diary(
 id INT NOT NULL PRIMARY KEY auto_increment,
 title VARCHAR(60),
 address VARCHAR(50),
 writetime TIMESTAMP,
 userid INT
);

CREATE TABLE tb_likes (

  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  diary_id int NOT NULL,
  from_user_id int NOT NULL
);

DROP TABLE IF EXISTS `tb_comments`;
CREATE TABLE `tb_comments` (

  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '¡Ù—‘±‡∫≈',

  `diary_id` int(11) NOT NULL COMMENT '»’º«±‡∫≈',

  `from_user_id` int(11) NOT NULL COMMENT '¡Ù—‘»À±‡∫≈',

  `content` varchar(10000) NOT NULL COMMENT '¡Ù—‘ƒ⁄»›',

  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '¡Ù—‘ ±º‰',

  `valid` varchar(1) NOT NULL DEFAULT 'Y' COMMENT ' «∑Ò”––ß',

  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;