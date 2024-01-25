CREATE DATABASE  IF NOT EXISTS `pos`;
USE `pos`;

CREATE TABLE `Productos` ( 
        `idProductos` INT NOT NULL, 
        `productName` VARCHAR(100) NOT NULL, 
        `productPrice` DECIMAL NOT NULL DEFAULT 0.0, 
        PRIMARY KEY (`idProductos`), 
        UNIQUE INDEX `productName_UNIQUE` (`productName` ASC)) 
ENGINE = InnoDB 
COMMENT = 'Tabla de productos';
