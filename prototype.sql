-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2024 at 01:58 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prototype`
--

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `ID` int NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `producto_inicial` int DEFAULT NULL,
  `numero_pedido` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `medida` varchar(200) DEFAULT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `producto_final` int DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`ID`, `nombre`, `producto_inicial`, `numero_pedido`, `cantidad`, `medida`, `estado`, `producto_final`, `fecha`) VALUES
(1, '2', 2, 2, 2, '2', 'SOLDADURA', 2, '2024-03-22 14:43:16'),
(2, 'rollo de cinta roja', 12, 2859211, 10, 'metros', 'EMPAQUE', 11, '2024-03-22 14:43:16'),
(3, 'rollo cinta verde', 2, 32213, 52, 'centimetros', 'CORTE', 4, '2024-03-22 14:43:16'),
(4, 'rollo cinta naranja', 200, 32153, 125, 'metros', 'SOLDADURA', 123, '2024-03-22 14:43:16'),
(5, 'rollo cinta naranja', 200, 32153, 125, 'metros', 'SOLDADURA', 123, '2024-03-22 14:43:16'),
(6, 'cinta amarilla doble', 23, 1235512, 23, '28cm', 'EMPAQUE', 23, '2024-03-22 14:43:16'),
(7, 'producto con fecha', 234, 132414, 123, '25 metros', 'CORTE', 2, '2024-03-22 14:44:15'),
(8, 'testing producto fecha', 12321, 12321, 12321, '12312', 'SIN PROCESAR', 12312, '2024-03-22 17:11:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
