-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 May 2024, 12:38:45
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `site`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isler`
--

CREATE TABLE `isler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text DEFAULT NULL,
  `tarih` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `isler`
--

INSERT INTO `isler` (`id`, `baslik`, `aciklama`, `tarih`) VALUES
(2, 'gıda mühendis', '4 yıl gıda sektöründe tecrübe kazanmış gıda mühendisi arıyoruz. anadolu yakasında yaşamalı.', '2024-05-30'),
(3, 'programcı', '2 yıl c# deneyimi olan programcı arıyoruz', '2024-05-23'),
(4, 'elektrikçi', 'tesisatı baştan yapabilecek elektrikçi aranıyor', '2024-05-30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `kategori` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `job` varchar(30) NOT NULL,
  `experience` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `uye_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `job`, `experience`, `address`, `contact`, `uye_id`) VALUES
(1, 'aysenur', 'acoztrk@gmail.com', 'sssss', 'ssssss', 's', 's', 2),
(2, 'BURAK', 'burakisler@gmail.com', 'aaa', 'aa', 'aa', 'aa', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `ad` varchar(25) NOT NULL,
  `soyad` varchar(25) NOT NULL,
  `email` varchar(60) NOT NULL,
  `sifre` varchar(250) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `ad`, `soyad`, `email`, `sifre`, `kid`) VALUES
(2, 'ays', 'öztürk', 'acoztrk@gmail.com', '12345', NULL),
(3, 'burak', 'işler', 'burakisler@gmail.com', '12456', NULL),
(4, '', '', '', '', NULL),
(5, '', '', '', '', NULL),
(6, '', '', '', '', NULL),
(7, '', '', '', '', NULL),
(8, '', '', '', '', NULL),
(9, '', '', '', '', NULL),
(10, '', '', '', '', NULL),
(11, '', '', '', '', NULL),
(12, '', '', '', '', NULL),
(13, '', '', '', '', NULL),
(14, '', '', '', '', NULL),
(15, '', '', '', '', NULL),
(16, '', '', '', '', NULL),
(17, '', '', '', '', NULL),
(18, '', '', '', '', NULL),
(19, '', '', '', '', NULL),
(20, '', '', '', '', NULL),
(21, 'ac', 'dnm', 'cerenoztrk2003@gmail.com', '10293', NULL),
(22, 's', 'a', 'd@gmail.com', '14567', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `isler`
--
ALTER TABLE `isler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uye_id` (`uye_id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`),

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `isler`
--
ALTER TABLE `isler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
