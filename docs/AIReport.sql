-- MySQL Script generated by MySQL Workbench
-- Sun Dec 31 00:04:43 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema AIReport
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AIReport
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AIReport` DEFAULT CHARACTER SET utf8 ;
USE `AIReport` ;

-- -----------------------------------------------------
-- Table `AIReport`.`air_trade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AIReport`.`air_trade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `level` INT NULL,
  `parent_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AIReport`.`air_tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AIReport`.`air_tag` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AIReport`.`air_news`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AIReport`.`air_news` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `source` VARCHAR(100) NULL,
  `author` VARCHAR(100) NULL,
  `title` VARCHAR(500) NULL,
  `title_md5` VARCHAR(32) NULL,
  `url` VARCHAR(500) NULL,
  `url_md5` VARCHAR(32) NULL,
  `publish_date` DATETIME NULL,
  `ts` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;