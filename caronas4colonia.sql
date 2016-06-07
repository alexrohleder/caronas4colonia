-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema caronas4colonia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema caronas4colonia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `caronas4colonia` DEFAULT CHARACTER SET utf8 ;
USE `caronas4colonia` ; 

-- -----------------------------------------------------
-- Table `caronas4colonia`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caronas4colonia`.`Carona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Carona` (
  `id_carona` INT NOT NULL AUTO_INCREMENT,
  `id_motorista` INT NOT NULL,
  `data_hora_partida` DATETIME NOT NULL,
  PRIMARY KEY (`id_carona`),
  INDEX `USUARIO_ID_MOTORISTA_idx` (`id_motorista` ASC),
  CONSTRAINT `CARONA_USUARIO_ID_MOTORISTA`
    FOREIGN KEY (`id_motorista`)
    REFERENCES `caronas4colonia`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caronas4colonia`.`Passageiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Passageiro` (
  `id_usuario` INT NOT NULL,
  `id_carona` INT NOT NULL,
  INDEX `USUARIO_ID_USUARIO_idx` (`id_usuario` ASC),
  INDEX `CARONA_ID_CARONA_idx` (`id_carona` ASC),
  CONSTRAINT `PASSAGEIRO_USUARIO_ID_USUARIO`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `caronas4colonia`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `PASSAGEIRO_CARONA_ID_CARONA`
    FOREIGN KEY (`id_carona`)
    REFERENCES `caronas4colonia`.`Carona` (`id_carona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caronas4colonia`.`Contato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Contato` (
  `id_usuario` INT NOT NULL,
  `numero` DECIMAL(10) NOT NULL,
  INDEX `USUARIO_ID_USUARIO_idx` (`id_usuario` ASC),
  CONSTRAINT `CONTATO_USUARIO_ID_USUARIO`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `caronas4colonia`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caronas4colonia`.`Preco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Preco` (
  `preco` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caronas4colonia`.`Cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Cidade` (
  `id_cidade` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caronas4colonia`.`Rota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Rota` (
  `id_cidade` INT NOT NULL,
  `id_carona` INT NOT NULL,
  INDEX `CARONA_ID_CARONA_idx` (`id_carona` ASC),
  INDEX `CIDADE_ID_CIDADE_idx` (`id_cidade` ASC),
  CONSTRAINT `ROTA_CARONA_ID_CARONA`
    FOREIGN KEY (`id_carona`)
    REFERENCES `caronas4colonia`.`Carona` (`id_carona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ROTA_CIDADE_ID_CIDADE`
    FOREIGN KEY (`id_cidade`)
    REFERENCES `caronas4colonia`.`Cidade` (`id_cidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = '         ';


-- -----------------------------------------------------
-- Table `caronas4colonia`.`Distancia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `caronas4colonia`.`Distancia` (
  `id_cidade_1` INT NOT NULL,
  `id_cidade_2` INT NOT NULL,
  `distancia` INT UNSIGNED NOT NULL,
  INDEX `CIDADE_ID_CIDADE_idx` (`id_cidade_1` ASC),
  INDEX `CIDADE_ID_CIDADE_idx1` (`id_cidade_2` ASC),
  CONSTRAINT `DISTANCIA_CIDADE_ID_CIDADE_1`
    FOREIGN KEY (`id_cidade_1`)
    REFERENCES `caronas4colonia`.`Cidade` (`id_cidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `DISTANCIA_CIDADE_ID_CIDADE_2`
    FOREIGN KEY (`id_cidade_2`)
    REFERENCES `caronas4colonia`.`Cidade` (`id_cidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
