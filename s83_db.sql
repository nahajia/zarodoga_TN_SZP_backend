-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 192.168.255.103
-- Létrehozás ideje: 2024. Ápr 11. 11:05
-- Kiszolgáló verziója: 10.11.4-MariaDB-log
-- PHP verzió: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `s83_db`
--
CREATE DATABASE IF NOT EXISTS `s83_db` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `s83_db`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autok`
--

CREATE TABLE `autok` (
  `auto_id` int(11) NOT NULL,
  `auto_marka` int(11) NOT NULL,
  `auto_modell` varchar(255) NOT NULL,
  `auto_evjarat` int(11) NOT NULL,
  `auto_hengerurt` int(11) NOT NULL,
  `auto_uzema` varchar(255) NOT NULL,
  `auto_kep` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `autok`
--

INSERT INTO `autok` (`auto_id`, `auto_marka`, `auto_modell`, `auto_evjarat`, `auto_hengerurt`, `auto_uzema`, `auto_kep`) VALUES
(1, 1, 'Civic', 2007, 1800, 'Benzin', 'Honda_civic.jpg'),
(2, 1, 'Accord', 2006, 1800, 'Benzin', 'Honda_accord.jpg'),
(3, 2, 'Ignis', 2006, 1300, 'Benzin', 'Suzuki_Ignis.jpg'),
(4, 2, 'Swift', 2006, 1200, 'Benzin', 'Suzuki_Swift.jpg'),
(5, 3, '350 Z', 2006, 3500, 'Benzin', 'Nissan_350Z.jpg'),
(6, 3, 'Navara', 2008, 2500, 'Dízel', 'Nissan_Navara.jpg'),
(7, 4, 'XC-5', 2013, 2100, 'Dízel', 'Mazda_CX-5.jpg'),
(8, 4, 'MX-5', 1995, 1800, 'Benzin', 'Mazda_MX-5.jpg'),
(9, 5, 'Legacy', 2004, 1500, 'Benzin', 'Subaru_Legacy.jpg'),
(10, 5, 'Baja', 2003, 2500, 'Benzin', 'Subaru_Baja.jpg'),
(11, 6, 'GT86', 2013, 2000, 'Benzin', 'Toyota_GT86.jpg'),
(12, 6, 'Celica', 1991, 1500, 'Benzin', 'Toyota_Celica.jpg'),
(13, 7, '3000 GT', 1994, 3000, 'Benzin', 'Mitsubishi_3000_GT.jpg'),
(14, 7, 'Galant', 1998, 2500, 'Benzin', 'Mitsubishi_Galant.jpg'),
(15, 1, 'JAZZ', 2004, 1400, 'Benzin', 'Honda_Jazz.jpg'),
(18, 1, 'LEGEND', 1996, 3500, 'Benzin', 'honda_legend.jpg'),
(21, 1, 'CR-V', 2009, 2000, 'Benzin', 'honda_cr_v.jpg'),
(24, 2, 'Baleno', 2016, 1200, 'Benzin', 'suzuki-baleno.jpg'),
(27, 2, 'Jimmy', 2007, 1500, 'Dízel', 'Suzuki-Jimmy.jpg'),
(30, 2, 'SX4', 2008, 1600, 'Dízel', 'Suzuki-sx4.jpg'),
(33, 3, 'QASHQAI', 2011, 1500, 'Dízel', 'nissan-qashqai.jpg'),
(36, 3, 'X-TRAIL', 2016, 1600, 'Dízel', 'nissan-x-trail.jpg'),
(39, 3, 'Micra', 2005, 1500, 'Dízel', 'nissan-micra.jpg'),
(42, 4, 'Mazda-6', 2011, 2200, 'Dízel', 'mazda-6.jpg'),
(45, 4, 'Mazda-3', 2014, 2000, 'Dízel', 'mazda-3.jpg'),
(48, 4, 'PREMACY', 2002, 2000, 'Dízel', 'mazda-premacy.jpg'),
(51, 5, 'Impreza', 1993, 1800, 'Dízel', 'subaru-impreza.jpg'),
(54, 5, 'OUTBACK', 2014, 2000, 'Dízel', 'subaru-outback.jpg'),
(57, 5, 'Justy', 1986, 1000, 'Dízel', 'subaru-justy.jpg'),
(60, 6, 'AYGO', 2007, 1000, 'Benzin', 'toyota-aygo.jpg'),
(63, 6, 'Auris', 2008, 1300, 'Dízel', 'toyota-auris.jpg'),
(66, 6, 'IQ', 2010, 1000, 'Benzin', 'Toyota-iQ.jpg'),
(69, 7, 'Outlander', 2003, 2000, 'Bezin', 'Mitsubishi-Outlander.jpg'),
(72, 7, 'asx', 2011, 1800, 'Dízel', 'mitsubishi-asx.jpg'),
(75, 7, 'ECLIPSE', 2001, 3000, 'Benzin', 'mitsubishi-eclipse.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auto_kepek`
--

CREATE TABLE `auto_kepek` (
  `kepek_auto_id` int(11) NOT NULL,
  `auto_kepek` varchar(255) NOT NULL,
  `idegenkulcs_auto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `auto_kepek`
--

INSERT INTO `auto_kepek` (`kepek_auto_id`, `auto_kepek`, `idegenkulcs_auto`) VALUES
(1, '1.jpg', 1),
(2, '2.jpg', 1),
(36, 'photo_1711108818330_photo.jpg', 1),
(39, 'photo_1711109050211_photo.jpg', 1),
(42, 'photo_1711540542579_photo.jpg', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepek_motor`
--

CREATE TABLE `kepek_motor` (
  `kepekmotor_id` int(11) NOT NULL,
  `motor_kep` varchar(255) NOT NULL,
  `idegenkulcs_motor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `kepek_motor`
--

INSERT INTO `kepek_motor` (`kepekmotor_id`, `motor_kep`, `idegenkulcs_motor`) VALUES
(1, '1.jpg', 1),
(2, '2.jpg', 1),
(78, 'photo_1707123074145_photo.jpg', 1),
(79, 'photo_1707123092390_photo.jpg', 1),
(80, 'photo_1707123238818_photo.jpg', 1),
(81, 'photo_1707125179176_photo.jpg', 1),
(84, 'photo_1707297332047_photo.jpg', 3),
(87, 'photo_1707297355894_photo.jpg', 3),
(90, 'photo_1710151480199_photo.jpg', 3),
(93, 'photo_1710151497906_photo.jpg', 3),
(96, 'photo_1710151520752_photo.jpg', 1),
(99, 'photo_1711109087093_photo.jpg', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `marka`
--

CREATE TABLE `marka` (
  `marka_id` int(11) NOT NULL,
  `marka_nev` varchar(255) NOT NULL,
  `marka_kepek` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `marka`
--

INSERT INTO `marka` (`marka_id`, `marka_nev`, `marka_kepek`) VALUES
(1, 'Honda', 'Honda.jpg'),
(2, 'Suzuki', 'Suzuki.jpg'),
(3, 'Nissan', 'Nissan.jpg'),
(4, 'Mazda', 'Mazda.jpg'),
(5, 'Subaru', 'Subaru.jpg'),
(6, 'Toyota', 'Toyota.jpg'),
(7, 'Mitsubishi', 'Mitsubishi.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `marka_motorok`
--

CREATE TABLE `marka_motorok` (
  `marka_id` int(11) NOT NULL,
  `marka_nev` varchar(255) NOT NULL,
  `marka_kepek` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `marka_motorok`
--

INSERT INTO `marka_motorok` (`marka_id`, `marka_nev`, `marka_kepek`) VALUES
(1, 'Kawasaki', 'Kawasaki.jpg'),
(2, 'Honda', 'Honda.jpg'),
(3, 'Suzuki', 'Suzuki.jpg'),
(4, 'Yamaha', 'Yamaha.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `motorok`
--

CREATE TABLE `motorok` (
  `motor_id` int(11) NOT NULL,
  `motor_marka` int(255) NOT NULL,
  `motor_modell` varchar(255) NOT NULL,
  `motor_evjarat` int(11) NOT NULL,
  `motor_hengerurt` int(11) NOT NULL,
  `motor_uzema` varchar(255) NOT NULL,
  `motor_kep` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `motorok`
--

INSERT INTO `motorok` (`motor_id`, `motor_marka`, `motor_modell`, `motor_evjarat`, `motor_hengerurt`, `motor_uzema`, `motor_kep`) VALUES
(1, 1, 'Ninja 400', 2010, 400, 'Benzin', 'Ninja400.jpg'),
(3, 1, 'Ninja 300', 2010, 300, 'Benzin', 'Ninja650.jpg'),
(4, 2, 'CBR 600', 2016, 600, 'Benzin', 'Hondacbr600.jpg'),
(5, 3, 'GSXR 600', 2010, 600, 'Benzin', 'SuzukiR600.jpg'),
(6, 3, 'GSXR 1000', 2007, 1000, 'Benzin', 'Suzuki1000.jpg'),
(7, 4, 'R1', 2010, 700, 'Benzin', 'YamahaR1.jpg'),
(8, 4, 'R6', 2014, 600, 'Benzin', 'YamahaR6.jpg'),
(9, 1, 'Ninja H2', 2023, 1000, 'Benzin', 'KawasakiH2.jpg'),
(12, 1, 'XR-6R', 2017, 600, 'Benzin', 'KawasakiXR-6R.jpg'),
(15, 1, 'Z750R', 2018, 750, 'Benzin', 'KawasakiZ750R.jpg'),
(18, 2, 'CBR 500', 2018, 500, 'Benzin', 'HondaCBR500.jpg'),
(21, 2, 'CBR 650R', 2020, 650, 'Benzin', 'HondaCBR650R.jpg'),
(24, 2, 'CBR 900RR', 2023, 900, 'Benzin', 'HondaCBR900RR.jpg'),
(27, 2, 'CBR 1000RR-R', 2015, 1000, 'Benzin', 'HondaCBR1000RR-R.jpg'),
(30, 3, 'GSX-8R', 2016, 750, 'Benzin', 'GSX-8R.jpg'),
(33, 3, 'GSX-R125', 2019, 125, 'Benzin', 'GSX-R125.jpg'),
(36, 3, 'GSX-R 750', 2023, 750, 'Benzin', 'GSX-R-750.jpg'),
(39, 4, 'R3', 2019, 300, 'Benzin', 'Yamaha-R3.jpg'),
(42, 4, 'R7', 2022, 700, 'Benzin', 'Yamaha-R7.jpg'),
(45, 4, 'YZF-R125', 2023, 125, 'Benzin', 'Yamaha-YZF-R125.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autok`
--
ALTER TABLE `autok`
  ADD PRIMARY KEY (`auto_id`);

--
-- A tábla indexei `auto_kepek`
--
ALTER TABLE `auto_kepek`
  ADD PRIMARY KEY (`kepek_auto_id`);

--
-- A tábla indexei `kepek_motor`
--
ALTER TABLE `kepek_motor`
  ADD PRIMARY KEY (`kepekmotor_id`);

--
-- A tábla indexei `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`marka_id`);

--
-- A tábla indexei `marka_motorok`
--
ALTER TABLE `marka_motorok`
  ADD PRIMARY KEY (`marka_id`);

--
-- A tábla indexei `motorok`
--
ALTER TABLE `motorok`
  ADD PRIMARY KEY (`motor_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `autok`
--
ALTER TABLE `autok`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT a táblához `auto_kepek`
--
ALTER TABLE `auto_kepek`
  MODIFY `kepek_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT a táblához `kepek_motor`
--
ALTER TABLE `kepek_motor`
  MODIFY `kepekmotor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT a táblához `marka`
--
ALTER TABLE `marka`
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `marka_motorok`
--
ALTER TABLE `marka_motorok`
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `motorok`
--
ALTER TABLE `motorok`
  MODIFY `motor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
