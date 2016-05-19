create database mtest;

use mtest;

DROP TABLE IF EXISTS car;

create table car (
	 id INT(11) NOT NULL AUTO_INCREMENT,
     car_make VARCHAR(20),
     mileage INT(11),
     year INT(11),
     price INT(11),
    PRIMARY KEY(id)
    );