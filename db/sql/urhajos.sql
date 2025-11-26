-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2024. Ápr 25. 18:50
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `urhajozas`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `urhajos`
--

CREATE TABLE `urhajos` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `orszag` varchar(3) NOT NULL,
  `nem` varchar(1) NOT NULL,
  `szulev` int(11) NOT NULL,
  `urido` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `urhajos`
--

INSERT INTO `urhajos` (`id`, `nev`, `orszag`, `nem`, `szulev`, `urido`, `url`) VALUES
(1, 'Stuart Roosa', 'USA', 'F', 1933, 'T009:00:01', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Roosa_cropped.jpg/1024px-Roosa_cropped.jpg'),
(2, 'Gennady Padalka', 'RUS', 'F', 1958, 'T878:11:29', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Padalka.jpg/1024px-Padalka.jpg'),
(3, 'Valery Korzun', 'RUS', 'F', 1953, 'T381:15:41', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Waleri_Grigorjewitsch_Korsun.jpg'),
(4, 'Scott Carpenter', 'USA', 'F', 1925, 'T000:04:56', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Carpenter_suiting_up.jpg/1024px-Carpenter_suiting_up.jpg'),
(5, 'Vladislav Volkov', 'URS', 'F', 1935, 'T028:20:02', 'https://www.april12.eu/russcosm/photo/volkov43.jpg'),
(6, 'Umberto Guidoni', 'ITA', 'F', 1954, 'T027:15:11', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Leonid_Kadenyuk.jpg/1024px-Leonid_Kadenyuk.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `urhajos`
--
ALTER TABLE `urhajos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nev` (`nev`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
