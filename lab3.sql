-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 07:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab3`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`) VALUES
(1, 'Production', 'A production department is a group of functions within a business that is responsible for the manufacture of goods. The production department can be the largest organization within a business. It may employee mechanics, machine setup specialists, maintenance personnel, and machine operators.'),
(2, 'Marketing', 'The Marketing Department plays a vital role in promoting the business and mission of an organization. Their job is to reach out to prospects, customers, investors and/or the community, while creating an overarching image that represents your company in a positive light.'),
(3, 'Accounting', 'Part of a company\'s administration that is responsible for preparing the financial statements, maintaining the general ledger, paying bills, billing customers, payroll, cost accounting, financial analysis, and more.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `name`, `password`, `registration_date`) VALUES
(1, 'youssef@gmail.com', 'Youssef', '25d55ad283aa400af464c76d713c07ad', '2020-12-24 20:56:32'),
(2, 'ahmed@gmail.com', 'Ahmed', 'f5bb0c8de146c67b44babbf4e6584cc0', '2020-12-24 20:57:46'),
(3, 'lolo@yahoo.com', 'lolo', 'c8837b23ff8aaa8a2dde915473ce0991', '2020-12-24 20:58:05'),
(7, 's@yahoo.com', 'Sara', 'f5bb0c8de146c67b44babbf4e6584cc0', '2020-12-24 21:26:10'),
(8, 'ramy@gmail.com', 'Ramy', 'f5bb0c8de146c67b44babbf4e6584cc0', '2020-12-25 14:20:10'),
(9, 'b@b.bb', 'Bob', 'f5bb0c8de146c67b44babbf4e6584cc0', '2020-12-25 16:10:48'),
(10, 'nourralaa1@gmail.com', 'Nour', 'f5bb0c8de146c67b44babbf4e6584cc0', '2020-12-25 16:15:09'),
(11, 'H@h.com', 'Hi', '698d51a19d8a121ce581499d7b701668', '2020-12-25 17:24:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
