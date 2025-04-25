-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2025 at 10:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weatherdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `crop_health`
--

CREATE TABLE `crop_health` (
  `id` int(11) NOT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `health_value` int(11) DEFAULT NULL,
  `soil_moisture` int(11) DEFAULT NULL,
  `pest_infestation_rate` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crop_health`
--

INSERT INTO `crop_health` (`id`, `field_name`, `health_value`, `soil_moisture`, `pest_infestation_rate`, `latitude`, `longitude`, `timestamp`) VALUES
(1, 'Field A', 20, 40, 60, 5.356942, 100.271968, '2025-04-24 07:35:10'),
(2, 'Field B', 52, 55, 35, 5.357984, 100.2715, '2025-04-24 07:35:10'),
(3, 'Field C', 70, 80, 10, 5.357834, 100.268814, '2025-04-24 07:35:10'),
(4, 'Field D', 80, 40, 50, 5.355197, 100.267365, '2025-04-24 07:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `harvest_yield_after_system`
--

CREATE TABLE `harvest_yield_after_system` (
  `month` varchar(10) DEFAULT NULL,
  `harvest_yield_tons` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harvest_yield_after_system`
--

INSERT INTO `harvest_yield_after_system` (`month`, `harvest_yield_tons`) VALUES
('Jan', 55),
('Feb', 60),
('Mar', 68),
('Apr', 70),
('May', 75),
('Jun', 80),
('Jul', 85),
('Aug', 88),
('Sep', 92),
('Oct', 95),
('Nov', 98),
('Dec', 100);

-- --------------------------------------------------------

--
-- Table structure for table `pest_infestation_levels`
--

CREATE TABLE `pest_infestation_levels` (
  `month` varchar(10) NOT NULL,
  `safe_level` int(11) DEFAULT NULL,
  `moderate_level` int(11) DEFAULT NULL,
  `critical_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pest_infestation_levels`
--

INSERT INTO `pest_infestation_levels` (`month`, `safe_level`, `moderate_level`, `critical_level`) VALUES
('Apr', 22, 33, 45),
('Feb', 30, 40, 25),
('Jul', 42, 39, 20),
('Jun', 40, 45, 30),
('Mar', 35, 38, 28),
('May', 29, 35, 42);

-- --------------------------------------------------------

--
-- Table structure for table `soil_fertility_levels`
--

CREATE TABLE `soil_fertility_levels` (
  `month` varchar(10) DEFAULT NULL,
  `soil_fertility_level` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soil_fertility_levels`
--

INSERT INTO `soil_fertility_levels` (`month`, `soil_fertility_level`) VALUES
('Jan', 6.3),
('Feb', 6.8),
('Mar', 7.1),
('Apr', 7.0),
('May', 7.6),
('Jun', 8.0),
('Jul', 7.9),
('Aug', 7.7),
('Sep', 7.4),
('Oct', 7.1),
('Nov', 6.7),
('Dec', 6.5);

-- --------------------------------------------------------

--
-- Table structure for table `water_consumption_analysis`
--

CREATE TABLE `water_consumption_analysis` (
  `month` varchar(10) NOT NULL,
  `water_consumption_liters` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `water_consumption_analysis`
--

INSERT INTO `water_consumption_analysis` (`month`, `water_consumption_liters`) VALUES
('Apr', 37),
('Aug', 46),
('Dec', 38),
('Feb', 39),
('Jan', 42),
('Jul', 48),
('Jun', 49),
('Mar', 45),
('May', 35),
('Nov', 41),
('Oct', 44),
('Sep', 47);

-- --------------------------------------------------------

--
-- Table structure for table `weather_forecast`
--

CREATE TABLE `weather_forecast` (
  `id` int(11) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `humidity` int(11) DEFAULT NULL,
  `wind_speed` float DEFAULT NULL,
  `precipitation` float DEFAULT NULL,
  `forecast_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather_forecast`
--

INSERT INTO `weather_forecast` (`id`, `city`, `temperature`, `description`, `humidity`, `wind_speed`, `precipitation`, `forecast_date`) VALUES
(1, 'Penang', 30.27, 'broken clouds', 72, 2.13, 0, '2025-04-24'),
(2, 'Penang', 29.49, 'broken clouds', 78, 2.44, 0, '2025-04-24'),
(3, 'Penang', 28.66, 'overcast clouds', 81, 0.14, 0, '2025-04-24'),
(4, 'Penang', 28.32, 'overcast clouds', 83, 1.36, 0, '2025-04-24'),
(5, 'Penang', 25.42, 'overcast clouds', 85, 1.2, 0, '2025-04-24'),
(6, 'Penang', 25.23, 'broken clouds', 89, 2.22, 0, '2025-04-25'),
(7, 'Penang', 27.85, 'overcast clouds', 78, 1.6, 0, '2025-04-25'),
(8, 'Penang', 29.36, 'overcast clouds', 72, 2.64, 0, '2025-04-25'),
(9, 'Penang', 28.96, 'scattered clouds', 74, 3.69, 0, '2025-04-25'),
(10, 'Penang', 28.01, 'broken clouds', 77, 1.91, 0, '2025-04-25'),
(11, 'Penang', 27.46, 'light rain', 81, 2, 1.09, '2025-04-25'),
(12, 'Penang', 26.8, 'light rain', 84, 1.39, 1.98, '2025-04-25'),
(13, 'Penang', 26.21, 'light rain', 86, 1.58, 2.9, '2025-04-25'),
(14, 'Penang', 26.28, 'light rain', 87, 2.12, 1.06, '2025-04-26'),
(15, 'Penang', 28.65, 'clear sky', 76, 0.35, 0, '2025-04-26'),
(16, 'Penang', 29.95, 'few clouds', 69, 3.66, 0, '2025-04-26'),
(17, 'Penang', 29.46, 'light rain', 70, 3.28, 0.54, '2025-04-26'),
(18, 'Penang', 28.29, 'light rain', 74, 2.91, 0.73, '2025-04-26'),
(19, 'Penang', 24.83, 'moderate rain', 96, 4.36, 4.23, '2025-04-26'),
(20, 'Penang', 24.82, 'light rain', 91, 1.92, 1.32, '2025-04-26'),
(21, 'Penang', 25.21, 'overcast clouds', 85, 1.51, 0, '2025-04-26'),
(22, 'Penang', 25.57, 'overcast clouds', 83, 1.7, 0, '2025-04-27'),
(23, 'Penang', 27.54, 'overcast clouds', 74, 0.91, 0, '2025-04-27'),
(24, 'Penang', 28.99, 'broken clouds', 68, 2.75, 0, '2025-04-27'),
(25, 'Penang', 28.89, 'few clouds', 70, 3.29, 0, '2025-04-27'),
(26, 'Penang', 27.86, 'broken clouds', 76, 1.85, 0, '2025-04-27'),
(27, 'Penang', 27.41, 'light rain', 79, 2.06, 0.35, '2025-04-27'),
(28, 'Penang', 26.52, 'light rain', 82, 1.78, 1.07, '2025-04-27'),
(29, 'Penang', 25.65, 'light rain', 86, 2.04, 2.04, '2025-04-27'),
(30, 'Penang', 25.64, 'light rain', 86, 1.83, 0.67, '2025-04-28'),
(31, 'Penang', 28.44, 'few clouds', 75, 0.7, 0, '2025-04-28'),
(32, 'Penang', 29.17, 'light rain', 72, 3.22, 0.55, '2025-04-28'),
(33, 'Penang', 29.4, 'light rain', 70, 2.99, 0.87, '2025-04-28'),
(34, 'Penang', 28.07, 'light rain', 76, 2.52, 0.15, '2025-04-28'),
(35, 'Penang', 27.05, 'light rain', 80, 1.97, 1.42, '2025-04-28'),
(36, 'Penang', 26.35, 'light rain', 83, 1.93, 1.4, '2025-04-28'),
(37, 'Penang', 25.76, 'light rain', 86, 2.3, 0.99, '2025-04-28'),
(38, 'Penang', 25.53, 'scattered clouds', 88, 2.38, 0, '2025-04-29'),
(39, 'Penang', 28.06, 'clear sky', 76, 0.99, 0, '2025-04-29'),
(40, 'Penang', 29, 'light rain', 73, 2.89, 0.3, '2025-04-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crop_health`
--
ALTER TABLE `crop_health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pest_infestation_levels`
--
ALTER TABLE `pest_infestation_levels`
  ADD PRIMARY KEY (`month`);

--
-- Indexes for table `water_consumption_analysis`
--
ALTER TABLE `water_consumption_analysis`
  ADD PRIMARY KEY (`month`);

--
-- Indexes for table `weather_forecast`
--
ALTER TABLE `weather_forecast`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crop_health`
--
ALTER TABLE `crop_health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weather_forecast`
--
ALTER TABLE `weather_forecast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
