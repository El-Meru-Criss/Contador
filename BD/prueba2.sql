-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Registros_pagos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Registros_pagos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Registros_pagos` DEFAULT CHARACTER SET utf8 ;
USE `Registros_pagos` ;

-- -----------------------------------------------------
-- Table `Registros_pagos`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Registros_pagos`.`usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `NombreUsuario` VARCHAR(45) NOT NULL,
  `Contrasena` VARCHAR(45) NOT NULL,
  `rol` INT NOT NULL,
  PRIMARY KEY (`idusuarios`),
  UNIQUE INDEX `NombreUsuario_UNIQUE` (`NombreUsuario` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Registros_pagos`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Registros_pagos`.`Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT,
  `NombreCliente` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Registros_pagos`.`Pagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Registros_pagos`.`Pagos` (
  `idPagos` INT NOT NULL AUTO_INCREMENT,
  `Concepto` VARCHAR(45) NOT NULL,
  `Tipo` INT NOT NULL,
  `Monto` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  `Clientes_idClientes` INT NOT NULL,
  PRIMARY KEY (`idPagos`),
  INDEX `fk_Pagos_Clientes_idx` (`Clientes_idClientes` ASC),
  CONSTRAINT `fk_Pagos_Clientes`
    FOREIGN KEY (`Clientes_idClientes`)
    REFERENCES `Registros_pagos`.`Clientes` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
