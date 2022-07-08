--sukuriu alergijos lentelę

CREATE TABLE IF NOT EXISTS alergijos (
	id TINYINT,
    pavadinimas VARCHAR(20),
    PRIMARY KEY (id)
);
INSERT INTO `alergijos` (`id`, `pavadinimas`) VALUES
(1, 'glitimas'),
(2, 'veziagyviai'),
(3, 'kiausiniai'),
(4, 'zuvys'),
(5, 'zemes riesutai'),
(6, 'soju pupeles'),
(7, 'pienas'),
(8, 'riesutai'),
(9, 'salieras'),
(10, 'garstycios'),
(11, 'sezamo seklos'),
(12, 'sieros dioksidas'),
(13, 'lubinai'),
(14, 'moliuskai');