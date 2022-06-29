CREATE TABLE IF NOT EXISTS receptas (
    id SMALLINT ZEROFILL NOT NULL AUTO_INCREMENT,
    pavadinimas VARCHAR(60) DEFAULT NULL,
    kolorijos_per100g int(4) NOT NULL,
    kategorija VARCHAR (40),
    PRIMARY KEY (`id`)