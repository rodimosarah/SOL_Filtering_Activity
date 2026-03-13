-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2026 at 03:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rodimo_sarah`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `membership_level` varchar(50) DEFAULT NULL,
  `join_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES
(1, 'Alice', 'Cebu', 'Gold', '2025-01-10'),
(2, 'Bob', 'Bohol', 'Silver', '2025-01-15'),
(3, 'Charlie', 'Cebu', 'Bronze', '2025-02-10'),
(4, 'Diana', 'Tagbilaran', 'Gold', '2025-02-12'),
(5, 'Ethan', 'Bohol', 'Silver', '2025-03-01'),
(6, 'Fiona', 'Cebu', 'Gold', '2025-03-05'),
(7, 'George', 'Tagbilaran', 'Bronze', '2025-03-08'),
(8, 'Hannah', 'Cebu', 'Silver', '2025-04-01'),
(9, 'Ian', 'Bohol', 'Gold', '2025-04-01'),
(10, 'Julia', 'Cebu', 'Bronze', '2025-04-15');
COMMIT;
--task 1
Select*FROM customer
WHERE city ='Cebu';


--task 2
Select*FROM customer
WHERE membership_level='Gold';


--task 3
Select*FROM customer
WHERE 'customer_name';


--task 4
SELECT * FROM Customer
 WHERE customer_name 
 LIKE 'A%' OR customer_name LIKE 'D%';


--task 5
SELECT * FROM Customer
 WHERE city = 'Cebu'
  AND membership_level IN ('Silver', 'Gold');


--task 6
SELECT * FROM Customer
WHERE join_date 
BETWEEN '2025-02-01' 
AND '2025-03-31';


--task 7
SELECT * FROM Customer
WHERE city IN ('Bohol', 'Tagbilaran') 
AND membership_level = 'Bronze';


--task 8
SELECT * FROM Customer
 WHERE city = 'Cebu' 
 AND membership_level = 'Gold' 
 AND join_date < '2025-03-01';


--task 9
SELECT * FROM Customer
 WHERE city IN ('Bohol', 'Tagbilaran') 
 AND join_date <= '2025-02-28' 
 AND membership_level IN ('Silver', 'Bronze');


--task 10
SELECT * FROM Customer
WHERE customer_id 
NOT IN (1, 4, 6) 
AND join_date > '2025-02-28';


--task 11
SELECT * FROM Customer
 WHERE MONTH(join_date) = 4 
 AND YEAR(join_date) = 2025
  AND city IN ('Cebu', 'Bohol') 
  AND membership_level != 'Bronze';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
