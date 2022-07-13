-- Sukūriau sujungimo lentelę.

CREATE TABLE IF NOT EXISTS `sujungimas_receptas_ingredientas`(
    `receptas_id` TINYINT NOT NULL,
    `ingredientas_id` TINYINT NOT NULL,
    PRIMARY KEY (`receptas_id`, `ingredientas_id`)
);
--sukūriau sujungimo receptas_ingredientas lentelę
INSERT INTO `sujungimas_receptas_ingredientas` (`receptas_id`, `ingredientas_id`) VALUES
(1, 6),
(1, 13),
(1, 14),
(1, 15),
(2, 12),
(2, 13),
(2, 14),
(3, 2),
(3, 6),
(4, 1),
(4, 6),
(4, 12),
(5, 6),
(5, 7),
(5, 8),
(6, 4),
(6, 7),
(7, 1),
(7, 9),
(8, 6),
(8, 8),
(8, 10),
(8, 11),
(8, 12),
(9, 4),
(9, 5),
(10, 3),
(10, 4),
(10, 16);

