-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Schema storemanagement
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `storemanagement` DEFAULT CHARACTER SET utf8 ;
USE `storemanagement` ;

-- -----------------------------------------------------
-- Table `storemanagement`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`customer` (
                                                            `customer_id` INT NOT NULL,
                                                            `customer_fname` VARCHAR(45) NULL,
    `customer_lname` VARCHAR(45) NULL,
    `email` VARCHAR(45) NULL,
    `phone` VARCHAR(45) NULL,
    PRIMARY KEY (`customer_id`))
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`users` (
                                                        `user_id` INT NOT NULL,
                                                        `username` VARCHAR(45) NULL,
    `password` VARCHAR(45) NULL,
    PRIMARY KEY (`user_id`))
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`employee` (
                                                            `employee_id` INT NOT NULL,
                                                            `employee_fname` VARCHAR(45) NULL,
    `employee_lname` VARCHAR(45) NULL,
    `gender` VARCHAR(45) NULL,
    `phone` VARCHAR(45) NULL,
    `address` VARCHAR(45) NULL,
    `birthdate` VARCHAR(45) NULL,
    `email` VARCHAR(45) NULL,
    PRIMARY KEY (`employee_id`))
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`orders` (
                                                         `order_id` INT NOT NULL,
                                                         `customer_id` INT NULL,
                                                         `date` VARCHAR(45) NULL,
    `status` VARCHAR(45) NULL,
    PRIMARY KEY (`order_id`),
    INDEX `customer_id_idx` (`customer_id` ASC) VISIBLE,
    CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `storemanagement`.`customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`supplier` (
                                                            `supplier_id` INT NOT NULL,
                                                            `supplier_name` VARCHAR(45) NULL,
    PRIMARY KEY (`supplier_id`))
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`stock` (
                                                         `stock_id` INT NOT NULL,
                                                         `item_name` VARCHAR(45) NULL,
    `quantity` INT NULL,
    PRIMARY KEY (`stock_id`),
    UNIQUE INDEX `item_name_UNIQUE` (`item_name` ASC) VISIBLE)
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`orderitem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`orderitem` (
                                                             `orderitem_id` INT NOT NULL,
                                                             `order_id` INT NULL,
                                                             `quantity` INT NULL,
    `price` DOUBLE NULL,
    `stock_id` INT NULL,
    `supplier_id` INT NULL,
    PRIMARY KEY (`orderitem_id`),
    INDEX `order_id_idx` (`order_id` ASC) VISIBLE,
    INDEX `supplier_id_idx` (`supplier_id` ASC) VISIBLE,
    INDEX `stock_id_idx` (`stock_id` ASC) VISIBLE,
    CONSTRAINT `order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `storemanagement`.`orders` (`order_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT `supplier_id`
    FOREIGN KEY (`supplier_id`)
    REFERENCES `storemanagement`.`supplier` (`supplier_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT `stock_id`
    FOREIGN KEY (`stock_id`)
    REFERENCES `storemanagement`.`stock` (`stock_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`outofstock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`outofstock` (
                                                              `outofstock_id` INT NOT NULL,
                                                              `itemname` VARCHAR(45) NULL,
    PRIMARY KEY (`outofstock_id`),
    UNIQUE INDEX `item_name_UNIQUE` (`itemname` ASC) VISIBLE,
    CONSTRAINT `itemname`
    FOREIGN KEY (`itemname`)
    REFERENCES `storemanagement`.`stock` (`item_name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `storemanagement`.`shipping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanagement`.`shipping` (
                                                            `shipping_id` INT NOT NULL,
                                                            `orderid` INT NULL,
                                                            `customerid` INT NULL,
                                                            `shipping_address` VARCHAR(45) NULL,
    `shipping_method` VARCHAR(45) NULL,
    PRIMARY KEY (`shipping_id`),
    UNIQUE INDEX `shipping_address_UNIQUE` (`shipping_address` ASC) VISIBLE,
    INDEX `order_id_idx` (`orderid` ASC) VISIBLE,
    INDEX `customer_id_idx` (`customerid` ASC) VISIBLE,
    CONSTRAINT `orderid`
    FOREIGN KEY (`orderid`)
    REFERENCES `storemanagement`.`orders` (`order_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT `customerid`
    FOREIGN KEY (`customerid`)
    REFERENCES `storemanagement`.`customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=0;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
