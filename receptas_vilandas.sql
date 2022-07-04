CREATE TABLE IF NOT EXISTS receptas (
    id SMALLINT ZEROFILL NOT NULL AUTO_INCREMENT,
    pavadinimas VARCHAR(60) DEFAULT NULL,
    kolorijos_per100g int(4) NOT NULL,
    kategorija VARCHAR (40),
    PRIMARY KEY (`id`)
);

ALTER TABLE receptas
ADD COLUMN kaina DECIMAL (6,2) NOT NULL;

INSERT INTO `receptas` (`id`, `kaina`, `kalorijos_per100g`, `pavadinimas`, `kategorija`) VALUES
(1, 6.85, 600, 'Tabule couscous salotos', 'Vegetariški'),
(2, 15.03, 831, 'Tablue lebanietiškos salotos', 'Vegetariški'),
(3, 12.97, 622, 'Jautienos faršas su svogūnais', 'Pasaulio'),
(4, 26.86, 663, 'Kepta vištiena su svogūnu ir petražolėmis', 'Pasaulio'),
(5, 19.22, 754, 'Keptos bulvės su grietine', 'Vegetariški'),
(6, 9.52, 352, 'Bulvių košė', 'Vegetariški'),
(7, 18.76, 329, 'Teriyaki vištiena', 'Azijietiški'),
(8, 27.23, 1410, 'Lęšių ir avinžirnių sriuba', 'Vegetariški'),
(9, 8.12, 288, 'Avižinė košė', 'Vegetariški'),
(10, 8.75, 596, 'Mutinys', 'Lietuviški'),
(11, 2, 100, 'Košė', 'Vegetariški'),
(12, 3, 150, 'Salotos', 'Vegetariški'),
(17, 3.17, 100, 'Kotletai', 'Pasaulio');
