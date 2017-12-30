-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net

--
-- 表的结构 `air_collect_demo`
--

CREATE TABLE IF NOT EXISTS `air_collect_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `desc` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

