CREATE TABLE IF NOT EXISTS receptas (
    id SMALLINT ZEROFILL NOT NULL AUTO_INCREMENT,
    pavadinimas VARCHAR(60) DEFAULT NULL,
    kolorijos_per100g int(4) NOT NULL,
    kategorija VARCHAR (40),
    PRIMARY KEY (`id`)
);

ALTER TABLE receptas
ADD COLUMN kaina DECIMAL (6,2) NOT NULL;

INSERT INTO `receptas` (`id`,`kaina` , `kalorijos_per100g`, `pavadinimas`,`nurodymai`, `kategorija`) VALUES
(1, 6.85, 600, 'Tabule couscous salotos',`1. Paruošeme couscous 2. Supjaustom daržoves ir viską suberiam į vieną.`, 'Vegetariški'),
(2, 15.03, 831, 'Tablue lebanietiškos salotos',`1. Supjaustom daržoves ir viską suberiam į vieną.`, 'Vegetariški'),
(3, 12.97, 622, 'Jautienos faršas su svogūnais',`1. Pakepiname faršą.2. Pakepinam svogūną.3. Viską į vieną`, 'Pasaulio'),
(4, 26.86, 663, 'Kepta vištiena su svogūnu ir petražolėmis',`1.Supjaustome vištieną.2. Pakepinam vištieną 3. Pakepiname svogūną ir petražolę.4 .Viską į vieną`, 'Pasaulio'),
(5, 19.22, 754, 'Keptos bulvės su grietine',`1 .Supjaustom bulves ir svogūną.2. Pakepiname bulves ir svogūną.3. Iškepti`,'Vegetariški'),
(6, 9.52, 352, 'Bulvių košė',`1. Supjaustyti bulves 2.Išvirti 3. Sutrinti bulves maišant su pienu`, 'Vegetariški'),
(7, 18.76, 329, 'Teriyaki vištiena', `1. Supjaustyti juostelėmis vištieną. 2.Užmarinuoti teriyaki padaže. 3. Iškepti`, 'Azijietiški'),
(8, 27.23, 1410, 'Lęšių ir avinžirnių sriuba',`1. Supjaustyti daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4.Įdėti avinžirnius ir truputį pavirti. 5.Pateikti su grietinę`, 'Vegetariški'),
(9, 8.12, 288, 'Avižinė košė',`1. Išvirti dribsnius piene`,  'Vegetariški'),
(10, 8.75, 596, 'Mutinys',`1. Sumaišyti duoną, braškes ir pieną`, 'Lietuviški'),
(11, 2, 100, 'Košė',`1. Kruopas užpylti vandeniu. 2. Išvirti`,  'Vegetariški'),
(12, 3, 150, 'Salotos',`1. Supjaustyti salotas. 2. Sumaišyti su citrinos sultimis`,  'Vegetariški'),
(17, 3.17, 100, 'Kotletai',`1. Į faršą įmušti kiaušinį. 2. Suberti prieskonius. 3. Gerai išmynkiti. 4. Daryti psplotėlius ir kepti`, 'Pasaulio');

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

--Lentelės sukūrimas

INSERT INTO `receptas` (`id`, `pavadinimas`, `nurodymai`, `kolorijos_per100g`, `kaina`) VALUES
(1, 'Tabule couscous salotos', '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', 564, '6.85'),
(2, 'Tablue lebanietiškos salotos', '1. Supjausstom daržoves ir viską suberiam į vieną.', 831, '15.03'),
(3, 'Jautienos faršas su svogūnais', '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną', 622, '12.97'),
(4, 'Kepta vištiena su svogūnu ir petražolėmis', '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną', 663, '26.86'),
(5, 'Keptos bulvės su grietine', '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine', 754, '19.22'),
(6, 'Bulvių košė', '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu', 352, '9.52'),
(7, 'Teriyaki vištiena', '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti', 329, '18.76'),
(8, 'Lęšių ir avinžirnių sriuba', '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine', 1410, '27.23'),
(9, 'Avižinė košė', '1. Išvirti dribsnius piene', 288, '8.12'),
(10, 'Mutinys', '1. Sumaišyti duoną, braškes ir pieną', 596, '8.75');
   