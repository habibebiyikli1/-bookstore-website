-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Haz 2018, 15:16:09
-- Sunucu sürümü: 10.1.29-MariaDB
-- PHP Sürümü: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kutuphane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nick` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `nick`, `sifre`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alinankitaplar`
--

CREATE TABLE `alinankitaplar` (
  `id` int(10) UNSIGNED NOT NULL,
  `kitapid` int(11) NOT NULL,
  `alanad` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `alankimlik` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `alinankitaplar`
--

INSERT INTO `alinankitaplar` (`id`, `kitapid`, `alanad`, `alankimlik`, `tarih`) VALUES
(5, 1, 'mehmet kesik', '123301024', '2018-06-01 21:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `yazar` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `basimtarih` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `sayfa` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `salon` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `rafno` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `ozellik` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `resim` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`id`, `ad`, `yazar`, `basimtarih`, `sayfa`, `salon`, `rafno`, `ozellik`, `resim`, `tarih`) VALUES
(1, 'Hapishanenin Doğuşu', 'Michel Foucault', '2017', '445', 'C', 'B/22', 'Fransız/İlginç', 'resim1.jpg', '2018-05-17 20:52:08'),
(2, 'Empati', 'Üstün Dökmen', '2017', '391', 'B', 'D/14', 'Türk/Psikoloji', 'resim2.jpg', '2018-05-17 20:55:05');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `alinankitaplar`
--
ALTER TABLE `alinankitaplar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `alinankitaplar`
--
ALTER TABLE `alinankitaplar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kitaplar`
--
ALTER TABLE `kitaplar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
