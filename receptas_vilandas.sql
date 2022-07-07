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

--grąžinu ingredientu visas kainas.
SELECT kaina
FROM ingredientas
-- grąžinu visų ingredientų pavadinimą ir kalorijas per 100g. stulpelius,kurios mažesnės už 90. 
SELECT pavadinimas, kolorijos_per100g
FROM ingredientas
WHERE kolorijos_per100g < 90

SELECT pavadinimas, kaina
FROM ingredientas
WHERE kaina > 2.20 AND kaina < 5.80

--grąžinu visų stulpelius,nuo 6 iki 10 imtinai
SELECT*
FROM ingredientas
WHERE id >= 6 AND id <= 10;

--grąžinu brangiausią ingrediento kainą
SELECT
    *
FROM
    `ingredientas`
WHERE
    kaina =(
    SELECT
        MAX(kaina)
    FROM
        `ingredientas`
)
--grąžinu visų receptų id ir kainą
SELECT
    id, kaina
FROM
    `receptas`

--grąžinu visų receptų id ir pavadinimą
SELECT
    id, pavadinimas
FROM
    `receptas`

--grąžinu visų kainu recepto vidurkį
SELECT
    AVG(kaina)
FROM
    `receptas`;

--grąžinu visų receptų kainų sumą
SELECT
    SUM(kaina)
FROM
    `receptas`;

--Grąžinu receptų id,pavadinimą ir kalorijas kurios didesnės nei 500
SELECT
    id,
    pavadinimas
FROM
    `receptas`
WHERE
    id >= 3 AND id <= 8 AND kolorijos_per100g > 500

--Grąžinu pavadinimą kurie yra pigesni nei 10 ir turi mažiau nei 350 kalorijų

SELECT
    pavadinimas,kolorijos_per100g, kaina
FROM
    `receptas`
WHERE
    kaina <= 10 AND kolorijos_per100g < 350;

--Gąžinau receptų nuo 1 iki 5 id vidutinį kolorijų skaičių

SELECT
    id,AVG (kolorijos_per100g)
FROM
    `receptas`
WHERE
    id >= 1 AND id <=5 

--Grąžinau brangiausio recepto id ir pavadinimą.

SELECT
    id, pavadinimas, MAX(kaina)
FROM
    `receptas`

--Grąžinu daugiausiai koloringo recepto pavadinimą.
SELECT
    pavadinimas, MAX(kolorijos_per100g)
FROM
    `receptas`

--Grąžinu top 3 brangiausių receptų kainas.
SELECT
    kaina
FROM
    `receptas`
ORDER BY
    kaina
DESC
LIMIT 3;
   