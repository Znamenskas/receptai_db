CREATE TABLE IF NOT EXISTS dieta (
    id TINYINT,
    patiekalu_kiekis_per_diena TINYINT,
    trukme_dienomis TINYINT,
    PRIMARY KEY (id);
);
INSERT INTO `dieta` (`id`, `patiekalu_kiekis_per_diena`, `trukme_dienomis`) VALUES
(1, 2, 2),
(2, 2, 4),
(3, 3, 3);
