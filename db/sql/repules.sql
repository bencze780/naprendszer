-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2024. Ápr 25. 19:14
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
-- Tábla szerkezet ehhez a táblához `repules`
--

CREATE TABLE `repules` (
  `urhajosid` int(11) NOT NULL,
  `kuldetesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `repules`
--

INSERT INTO `repules` (`urhajosid`, `kuldetesid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(6, 23),
(6, 24),
(6, 25);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `repules`
--
ALTER TABLE `repules`
  ADD KEY `fk_urhajosid` (`urhajosid`),
  ADD KEY `fk_kuldetesid` (`kuldetesid`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
