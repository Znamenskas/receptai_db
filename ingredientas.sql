CREATE TABLE IF NOT EXISTS ingredientas (
    id SMALLINT NOT NULL,
    pavadinimas VARCHAR(40) NOT NULL,
    kaina DECIMAL (6,2),
    kolorijos_per100g SMALLINT NOT NULL,
    PRIMARY KEY (id)

);
INSERT INTO `ingredientas` (`id`, `kaina`, `kalorijos_per100g`, `pavadinimas`) VALUES
(1, 6.12, 166, 'Vištiena'),
(2, 8.55, 39, 'Jautienos faršas'),
(3, 3.53, 309, 'Braškės'),
(4, 4.53, 243, 'Pienas'),
(5, 3.59, 45, 'Avižiniai dribsniai'),
(6, 2.53, 72, 'Svogūnas'),
(7, 9.44, 313, 'Bulvės'),
(8, 5.93, 307, 'Grietinė'),
(9, 3.85, 134, 'Teriyaki marinatas'),
(10, 10.21, 290, 'Lęšiai'),
(11, 6.99, 423, 'Avinžirniai'),
(12, 1.57, 318, 'Petražolė'),
(13, 8.87, 311, 'Pomidoras'),
(14, 3.59, 436, 'Agurkas'),
(15, 2.57, 84, 'Couscous'),
(16, 0.69, 44, 'Duona');
COMMIT;