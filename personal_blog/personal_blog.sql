-- MySQL Script generated by MySQL Workbench
-- Fri May 12 17:03:57 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_personal_blog
-- -----------------------------------------------------
-- 
-- 

-- -----------------------------------------------------
-- Schema db_personal_blog
--
-- 
-- 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_personal_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `db_personal_blog` ;

-- -----------------------------------------------------
-- Table `db_personal_blog`.`tb_themes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_personal_blog`.`tb_themes` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_personal_blog`.`tb_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_personal_blog`.`tb_users` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `user` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `photo` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_personal_blog`.`tb_posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_personal_blog`.`tb_posts` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `text` VARCHAR(1000) NOT NULL,
  `data` DATE NULL,
  `tb_themes_id` BIGINT NOT NULL,
  `tb_users_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_posts_tb_themes1_idx` (`tb_themes_id` ASC) VISIBLE,
  INDEX `fk_tb_posts_tb_users1_idx` (`tb_users_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_posts_tb_themes1`
    FOREIGN KEY (`tb_themes_id`)
    REFERENCES `db_personal_blog`.`tb_themes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_posts_tb_users1`
    FOREIGN KEY (`tb_users_id`)
    REFERENCES `db_personal_blog`.`tb_users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
