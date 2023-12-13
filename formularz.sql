-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Gru 2023, 22:49
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `formularz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `formularz`
--

CREATE TABLE `formularz` (
  `id` int(11) NOT NULL,
  `imie` varchar(100) DEFAULT NULL,
  `nazwisko` varchar(100) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `adres_email` varchar(100) DEFAULT NULL,
  `telefon` int(11) DEFAULT NULL,
  `wojewodztwo` varchar(100) DEFAULT NULL,
  `płeć` varchar(50) DEFAULT NULL,
  `zgoda_na_newsletter` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `formularz`
--

INSERT INTO `formularz` (`id`, `imie`, `nazwisko`, `data_urodzenia`, `adres_email`, `telefon`, `wojewodztwo`, `płeć`, `zgoda_na_newsletter`) VALUES
(63, 'Jan', 'Kowalski', '2023-12-01', 'kanotaf109@hupoi.com', 123456789, 'mazowieckie', 'Mężczyzna', 'Tak'),
(64, 'Janina', 'Kowalska', '2023-12-01', 'kanotaf109@hupoi.com', 123456789, 'mazowieckie', 'Kobieta', 'Nie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `formularz`
--
ALTER TABLE `formularz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `formularz`
--
ALTER TABLE `formularz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
