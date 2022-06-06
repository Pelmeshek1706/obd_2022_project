SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`userRole`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`userRole` ;

CREATE TABLE IF NOT EXISTS `mydb`.`userRole` (
                                                 `ID` INT NOT NULL AUTO_INCREMENT,
                                                 `user_role` VARCHAR(45) NOT NULL,
                                                 PRIMARY KEY (`ID`),
                                                 UNIQUE INDEX `user_role_UNIQUE` (`user_role` ASC) VISIBLE)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`userSex`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`userSex` ;

CREATE TABLE IF NOT EXISTS `mydb`.`userSex` (
                                                `ID` INT NOT NULL AUTO_INCREMENT,
                                                `user_sex` VARCHAR(45) NOT NULL,
                                                PRIMARY KEY (`ID`),
                                                UNIQUE INDEX `user_sex_UNIQUE` (`user_sex` ASC) VISIBLE)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`currency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`currency` ;

CREATE TABLE IF NOT EXISTS `mydb`.`currency` (
                                                 `ID` INT NOT NULL AUTO_INCREMENT,
                                                 `currency_name` VARCHAR(64) NOT NULL,
                                                 PRIMARY KEY (`ID`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`countries`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`countries` ;

CREATE TABLE IF NOT EXISTS `mydb`.`countries` (
                                                  `ID` INT NOT NULL AUTO_INCREMENT,
                                                  `country_name` VARCHAR(64) NOT NULL,
                                                  `country_pres` VARCHAR(45) NOT NULL,
                                                  `country_description` TEXT NULL,
                                                  `last_update` DATE NOT NULL,
                                                  `population` INT UNSIGNED NULL,
                                                  `currency_ID` INT NOT NULL,
                                                  PRIMARY KEY (`ID`),
                                                  UNIQUE INDEX `coubtry_name_UNIQUE` (`country_name` ASC) VISIBLE,
                                                  UNIQUE INDEX `country_pres_UNIQUE` (`country_pres` ASC) VISIBLE,
                                                  INDEX `fk_countries_currency1_idx` (`currency_ID` ASC) VISIBLE,
                                                  CONSTRAINT `fk_countries_currency1`
                                                      FOREIGN KEY (`currency_ID`)
                                                          REFERENCES `mydb`.`currency` (`ID`)
                                                          ON DELETE NO ACTION
                                                          ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`neighbours`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`neighbours` ;

CREATE TABLE IF NOT EXISTS `mydb`.`neighbours` (
                                                   `ID` INT NOT NULL AUTO_INCREMENT,
                                                   `neighbour_name` VARCHAR(256) NOT NULL,
                                                   `neighbour_ID` INT NOT NULL,
                                                   PRIMARY KEY (`ID`, `neighbour_ID`),
                                                   INDEX `fk_neighbours_countries1_idx` (`neighbour_ID` ASC) VISIBLE,
                                                   CONSTRAINT `fk_neighbours_countries1`
                                                       FOREIGN KEY (`neighbour_ID`)
                                                           REFERENCES `mydb`.`countries` (`ID`)
                                                           ON DELETE NO ACTION
                                                           ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MassMedia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`MassMedia` ;

CREATE TABLE IF NOT EXISTS `mydb`.`MassMedia` (
                                                  `ID` INT NOT NULL AUTO_INCREMENT,
                                                  `name_media` VARCHAR(45) NULL,
                                                  PRIMARY KEY (`ID`),
                                                  UNIQUE INDEX `name_media_UNIQUE` (`name_media` ASC) VISIBLE)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`user` ;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
                                                    `ID` INT NOT NULL AUTO_INCREMENT,
                                                    `user_login` VARCHAR(64) NOT NULL,
                                                    `user_password` VARCHAR(255) NOT NULL,
                                                    `user_first_name` VARCHAR(45) NULL DEFAULT NULL,
                                                    `user_last_name` VARCHAR(45) NULL DEFAULT NULL,
                                                    `user_age` INT UNSIGNED NULL DEFAULT NULL,
                                                    `user_role_id` INT NOT NULL,
                                                    `user_sex_id` INT NULL DEFAULT NULL,
                                                    `user_email` VARCHAR(255) NULL,
                                                    `user_last_update` DATE NULL,
                                                    PRIMARY KEY (`ID`),
                                                    UNIQUE INDEX `user_name_UNIQUE` (`user_login` ASC) VISIBLE,
                                                    INDEX `user_sex_id_idx` (`user_sex_id` ASC) VISIBLE,
                                                    INDEX `user_role_id_idx` (`user_role_id` ASC) VISIBLE,
                                                    CONSTRAINT `user_role_id`
                                                        FOREIGN KEY (`user_role_id`)
                                                            REFERENCES `mydb`.`userRole` (`ID`)
                                                            ON DELETE NO ACTION
                                                            ON UPDATE NO ACTION,
                                                    CONSTRAINT `user_sex_id`
                                                        FOREIGN KEY (`user_sex_id`)
                                                            REFERENCES `mydb`.`userSex` (`ID`)
                                                            ON DELETE NO ACTION
                                                            ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`comment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`comment` (
                                                `ID` INT NOT NULL AUTO_INCREMENT,
                                                `comment_author` INT NOT NULL,
                                                `comment_text` VARCHAR(5000) NULL,
                                                INDEX `comment_id_idx` (`comment_author` ASC) VISIBLE,
                                                PRIMARY KEY (`ID`, `comment_author`),
                                                CONSTRAINT `comment_author`
                                                    FOREIGN KEY (`comment_author`)
                                                        REFERENCES `mydb`.`user` (`ID`)
                                                        ON DELETE NO ACTION
                                                        ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`yellowPress`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`yellowPress` ;

CREATE TABLE IF NOT EXISTS `mydb`.`yellowPress` (
                                                    `ID` INT NOT NULL AUTO_INCREMENT,
                                                    `country_ID` INT NOT NULL,
                                                    `yellow_press_URL` VARCHAR(1000) NULL,
                                                    PRIMARY KEY (`ID`, `country_ID`),
                                                    INDEX `country_ID_idx` (`country_ID` ASC) VISIBLE,
                                                    CONSTRAINT `yellowPress_country_ID`
                                                        FOREIGN KEY (`country_ID`)
                                                            REFERENCES `mydb`.`countries` (`ID`)
                                                            ON DELETE NO ACTION
                                                            ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`filters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`filters` ;

CREATE TABLE IF NOT EXISTS `mydb`.`filters` (
                                                `ID` INT NOT NULL AUTO_INCREMENT,
                                                `filter_name` VARCHAR(64) NOT NULL,
                                                `filter_count` INT UNSIGNED NULL,
                                                PRIMARY KEY (`ID`),
                                                UNIQUE INDEX `filter_name_UNIQUE` (`filter_name` ASC) VISIBLE)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`statistic`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`statistic` ;

CREATE TABLE IF NOT EXISTS `mydb`.`statistic` (
                                                  `ID` INT NOT NULL AUTO_INCREMENT,
                                                  `user_id` INT NOT NULL,
                                                  `queries_count` INT NULL,
                                                  `filter_ID` INT NOT NULL,
                                                  `country_ID` INT NOT NULL,
                                                  `user_count` INT UNSIGNED NOT NULL,
                                                  PRIMARY KEY (`ID`),
                                                  INDEX `fk_statistic_user1_idx` (`user_id` ASC) VISIBLE,
                                                  INDEX `fk_statistic_filters1_idx` (`filter_ID` ASC) VISIBLE,
                                                  INDEX `fk_statistic_countries1_idx` (`country_ID` ASC) VISIBLE,
                                                  CONSTRAINT `fk_statistic_user1`
                                                      FOREIGN KEY (`user_id`)
                                                          REFERENCES `mydb`.`user` (`ID`)
                                                          ON DELETE NO ACTION
                                                          ON UPDATE NO ACTION,
                                                  CONSTRAINT `fk_statistic_filters1`
                                                      FOREIGN KEY (`filter_ID`)
                                                          REFERENCES `mydb`.`filters` (`ID`)
                                                          ON DELETE NO ACTION
                                                          ON UPDATE NO ACTION,
                                                  CONSTRAINT `fk_statistic_countries1`
                                                      FOREIGN KEY (`country_ID`)
                                                          REFERENCES `mydb`.`countries` (`ID`)
                                                          ON DELETE NO ACTION
                                                          ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`offCountrySources`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`offCountrySources` ;

CREATE TABLE IF NOT EXISTS `mydb`.`offCountrySources` (
                                                          `ID` INT NOT NULL AUTO_INCREMENT,
                                                          `source_URL` VARCHAR(1000) NOT NULL,
                                                          `mass_media_ID` INT NOT NULL,
                                                          `country_ID` INT NOT NULL,
                                                          UNIQUE INDEX `tw_URL_UNIQUE` (`source_URL` ASC) VISIBLE,
                                                          PRIMARY KEY (`ID`, `mass_media_ID`, `country_ID`),
                                                          INDEX `offCountrySources_country_ID_idx` (`country_ID` ASC) VISIBLE,
                                                          CONSTRAINT `fk_Twitter_MassMedia2`
                                                              FOREIGN KEY (`mass_media_ID`)
                                                                  REFERENCES `mydb`.`MassMedia` (`ID`)
                                                                  ON DELETE NO ACTION
                                                                  ON UPDATE NO ACTION,
                                                          CONSTRAINT `offCountrySources_country_ID`
                                                              FOREIGN KEY (`country_ID`)
                                                                  REFERENCES `mydb`.`countries` (`ID`)
                                                                  ON DELETE NO ACTION
                                                                  ON UPDATE NO ACTION)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;