-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2016 at 04:04 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awesome_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, '1738', 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456370467, 0.00348711, '1', 200),
(2, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456371813, 0.00325108, '0', 403),
(3, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371823, 0.00544095, '1', 404),
(4, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371824, 0.00511312, '1', 404),
(5, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371824, 0.0049839, '1', 404),
(6, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371824, 0.00509715, '1', 404),
(7, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371825, 0.00533104, '1', 404),
(8, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371825, 0.00502396, '1', 404),
(9, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371826, 0.0050261, '1', 404),
(10, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371854, 0.00470901, '1', 404),
(11, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371856, 0.00441599, '1', 404),
(12, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371870, 0.00514102, '1', 404),
(13, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456371881, 0.00305104, '0', 403),
(14, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371944, 0.00468707, '1', 404),
(15, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371945, 0.00548816, '1', 404),
(16, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456371945, 0.00435901, '1', 404),
(17, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372009, 0.00643492, '1', 404),
(18, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372009, 0.00426888, '1', 404),
(19, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372015, 0.00447822, '1', 404),
(20, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372026, 0.00501013, '1', 404),
(21, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372027, 0.00542593, '1', 404),
(22, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372027, 0.00491595, '1', 404),
(23, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372066, 0.00699306, '1', 404),
(24, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372067, 0.00514698, '1', 404),
(25, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372070, 0.00502682, '1', 404),
(26, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372070, 0.0042789, '1', 404),
(27, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372071, 0.00488305, '1', 404),
(28, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372071, 0.00455213, '1', 404),
(29, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372071, 0.00556397, '1', 404),
(30, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372075, 0.00651121, '1', 404),
(31, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372085, 0.00622702, '1', 404),
(32, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372085, 0.00454187, '1', 404),
(33, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372224, 0.00470304, '1', 500),
(34, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372225, 0.00469303, '1', 500),
(35, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372226, 0.0043149, '1', 500),
(36, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372275, 0.00606513, '1', 200),
(37, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372362, 0.00463486, '1', 200),
(38, 'api/user/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372393, 0.0046339, '1', 200),
(39, 'api/user/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372504, 0.00468802, '1', 200),
(40, 'api/user/1', 'get', 'a:2:{i:0;N;i:1;N;}', '1738', '::1', 1456372504, 0.00422502, '1', 200),
(41, 'api/all_users', 'get', NULL, '1738', '::1', 1456372706, 0.00519586, '1', 200),
(42, 'api/all_users', 'get', NULL, '1738', '::1', 1456372709, 0.00479698, '1', 200),
(43, 'api/all_users', 'get', NULL, '1738', '::1', 1456372830, 0.00444794, '1', 200),
(44, 'api/all_users', 'get', NULL, '1738', '::1', 1456373046, 0.00554991, '1', 0),
(45, 'api/all_users', 'get', NULL, '1738', '::1', 1456373055, 0.00460696, '1', 200),
(46, 'api/all_users', 'get', NULL, '1738', '::1', 1456373101, 0.00466585, '1', 200),
(47, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456375147, 0.00323296, '0', 403),
(48, 'api/student/1', 'get', 'a:3:{i:0;N;s:3:"key";s:4:"1738";i:1;N;}', '', '::1', 1456375156, 0.00246, '0', 403),
(49, 'api/all_users', 'get', NULL, '1738', '::1', 1456375176, 0.00570297, '1', 200),
(50, 'api/student/1', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456375213, 0.00311112, '1', 200),
(51, 'api/student/1', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456375217, 0.00413299, '1', 200),
(52, 'api/student/1', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456375222, 0.00730205, '1', 200),
(53, 'api/student/2', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456375226, 0.00457692, '1', 200),
(54, 'api/user/2', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456375234, 0.187541, '1', 200),
(55, 'api/user/2', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456375236, 0.00449181, '1', 200),
(56, 'api/user/2', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456375237, 0.00543189, '1', 200),
(57, 'api/user/2', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456405858, 0.00436282, '1', 200),
(58, 'api/all_users', 'get', 'a:1:{s:9:"X-API-KEY";s:4:"1738";}', '1738', '::1', 1456405870, 0.00480795, '1', 200),
(59, 'api/all_users', 'get', 'a:1:{s:9:"X-API-KEY";s:4:"1738";}', '1738', '::1', 1456405880, 0.0045321, '1', 200),
(60, 'api/example/users', 'get', 'a:1:{s:5:"users";N;}', '', '::1', 1456406027, 0.00262403, '0', 403),
(61, 'api/rest_server', 'get', NULL, '', '::1', 1456406046, 0.003335, '0', 403),
(62, 'api/rest_server', 'get', NULL, '', '::1', 1456406068, 0.00541806, '0', 403),
(63, 'users', 'get', NULL, '', '::1', 1456406677, 0.00282598, '0', 403),
(64, 'users', 'get', NULL, '', '::1', 1456406880, 0.00303102, '0', 403),
(65, 'users/login', 'get', NULL, '', '::1', 1456406883, 0.00341606, '0', 403),
(66, 'users/l', 'get', NULL, '', '::1', 1456407024, 0.00457001, '0', 403),
(67, 'users', 'get', NULL, '', '::1', 1456407026, 0.00312304, '0', 403),
(68, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456407429, 0.00247717, '0', 403),
(69, 'api/student/1', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456407434, 0.00315094, '1', 200),
(70, 'api/student/1', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:4:"1738";i:1;N;}', '1738', '::1', 1456407527, 0.00458002, '1', 200),
(71, 'api/users', 'get', NULL, '', '::1', 1456407547, 0.00272107, '0', 403),
(72, 'api/users', 'get', NULL, '', '::1', 1456407589, 0.00277519, '0', 403),
(73, 'api/users', 'get', NULL, '', '::1', 1456407601, 0.00295281, '0', 403),
(74, 'Users_api/users', 'get', NULL, '', '::1', 1456407783, 0.00578308, '1', 200),
(75, 'Users_api/users', 'get', NULL, '', '::1', 1456407784, 0.00661588, '1', 200),
(76, 'Users_api/users', 'get', NULL, '', '::1', 1456407785, 0.00631213, '1', 200),
(77, 'Users_api/users', 'get', NULL, '', '::1', 1456407785, 0.00452805, '1', 200),
(78, 'Users_api/users', 'get', NULL, '', '::1', 1456407785, 0.00495291, '1', 200),
(79, 'api/student', 'get', NULL, '', '::1', 1456492959, 0.00713396, '1', 404),
(80, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456493631, 0.00324798, '1', 200),
(81, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456493632, 0.00289607, '1', 200),
(82, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456751923, 0.0388138, '1', 200),
(83, 'api/student', 'get', NULL, '', '::1', 1456752009, 0.00746989, '1', 404),
(84, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752016, 0.00874019, '1', 200),
(85, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752027, 0.00796103, '1', 200),
(86, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752028, 0.00288987, '1', 200),
(87, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752029, 0.00310278, '1', 200),
(88, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752060, 0.00409293, '1', 200),
(89, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752537, 0.00371218, '1', 200),
(90, 'api/all_users', 'get', NULL, '', '::1', 1456752546, 0.00833201, '1', 200),
(91, 'api/user/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752862, 0.00597882, '1', 200),
(92, 'api/student', 'get', NULL, '', '::1', 1456752899, 0.00306702, '1', 404),
(93, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1456752902, 0.00318193, '1', 200),
(94, 'api/user', 'get', NULL, '', '::1', 1456888090, 0.0126882, '1', 404),
(95, 'api/all_users', 'get', NULL, '', '::1', 1456888118, 0.00588512, '1', 200),
(96, 'api/user', 'get', NULL, '', '::1', 1456888120, 0.00434494, '1', 404),
(97, 'api/user', 'get', NULL, '', '::1', 1456888158, 0.00513196, '1', 404),
(98, 'api/user', 'put', NULL, '', '::1', 1456888162, NULL, '1', 0),
(99, 'api/user', 'put', NULL, '', '::1', 1456888164, NULL, '1', 0),
(100, 'api/user', 'put', NULL, '', '::1', 1456888165, NULL, '1', 0),
(101, 'api/user', 'put', NULL, '', '::1', 1456888167, NULL, '1', 0),
(102, 'api/user', 'put', NULL, '', '::1', 1456888176, NULL, '1', 0),
(103, 'api/user', 'put', NULL, '', '::1', 1456888177, NULL, '1', 0),
(104, 'api/user', 'put', NULL, '', '::1', 1456888178, NULL, '1', 0),
(105, 'api/user', 'put', NULL, '', '::1', 1456888202, 0.00355315, '1', 0),
(106, 'api/user', 'put', NULL, '', '::1', 1456888203, 0.00264096, '1', 0),
(107, 'api/user', 'put', NULL, '', '::1', 1456888204, 0.002846, '1', 0),
(108, 'api/user', 'put', NULL, '', '::1', 1456888204, 0.00200796, '1', 0),
(109, 'api/user', 'put', NULL, '', '::1', 1456888205, 0.00228786, '1', 0),
(110, 'api/user', 'put', NULL, '', '::1', 1456889151, 0.00671601, '1', 0),
(111, 'api/user', 'put', NULL, '', '::1', 1456889152, 0.00407791, '1', 0),
(112, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryU8yVJBfXMHe2o5Wg\r\nContent-Disposition:_form-data;_name";s:60:""test"\r\n\r\ntest\r\n------WebKitFormBoundaryU8yVJBfXMHe2o5Wg--\r\n";}', '', '::1', 1456889165, 0.00488496, '1', 0),
(113, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundary9EZEhpy9rfNHiF4V\r\nContent-Disposition:_form-data;_name";s:61:""email"\r\n\r\ntest\r\n------WebKitFormBoundary9EZEhpy9rfNHiF4V--\r\n";}', '', '::1', 1456889219, 0.00608802, '1', 0),
(114, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryJbDI0YvauZ1oNoql\r\nContent-Disposition:_form-data;_name";s:71:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundaryJbDI0YvauZ1oNoql--\r\n";}', '', '::1', 1456889225, 0.00490713, '1', 0),
(115, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundarygqTIX8MYlAPkr1bL\r\nContent-Disposition:_form-data;_name";s:71:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundarygqTIX8MYlAPkr1bL--\r\n";}', '', '::1', 1456889228, 0.00448108, '1', 0),
(116, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryMJue80EvLcPgwKxU\r\nContent-Disposition:_form-data;_name";s:71:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundaryMJue80EvLcPgwKxU--\r\n";}', '', '::1', 1456889229, 0.00479412, '1', 0),
(117, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundary3QBPL7TBoPVyOHBv\r\nContent-Disposition:_form-data;_name";s:71:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundary3QBPL7TBoPVyOHBv--\r\n";}', '', '::1', 1456889277, 0.00507021, '1', 0),
(118, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryEFrBq4UymODx507a\r\nContent-Disposition:_form-data;_name";s:71:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundaryEFrBq4UymODx507a--\r\n";}', '', '::1', 1456889280, 0.00422621, '1', 0),
(119, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryI8GwjUCoJd7JrnKJ\r\nContent-Disposition:_form-data;_name";s:71:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundaryI8GwjUCoJd7JrnKJ--\r\n";}', '', '::1', 1456889447, 0.00495386, '1', 400),
(120, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryOANFJd84eBcKH0kX\r\nContent-Disposition:_form-data;_name";s:71:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundaryOANFJd84eBcKH0kX--\r\n";}', '', '::1', 1456889537, 0.00557303, '1', 400),
(121, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryCs3KlSoJARvXT2At\r\nContent-Disposition:_form-data;_name";s:176:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundaryCs3KlSoJARvXT2At\r\nContent-Disposition: form-data; name="password"\r\n\r\nsadkfjasdf\r\n------WebKitFormBoundaryCs3KlSoJARvXT2At--\r\n";}', '', '::1', 1456889551, 0.00707316, '1', 400),
(122, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryYyVy4PBbBHN6H8oa\r\nContent-Disposition:_form-data;_name";s:179:""email"\r\n\r\ntest@gmail.com\r\n------WebKitFormBoundaryYyVy4PBbBHN6H8oa\r\nContent-Disposition: form-data; name="password"\r\n\r\nsadkfjasdf324\r\n------WebKitFormBoundaryYyVy4PBbBHN6H8oa--\r\n";}', '', '::1', 1456889555, 0.00540996, '1', 400),
(123, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryvsABoEeBcxuGmRad\r\nContent-Disposition:_form-data;_name";s:175:""email"\r\n\r\ntest@gmail\r\n------WebKitFormBoundaryvsABoEeBcxuGmRad\r\nContent-Disposition: form-data; name="password"\r\n\r\nsadkfjasdf324\r\n------WebKitFormBoundaryvsABoEeBcxuGmRad--\r\n";}', '', '::1', 1456889562, 0.00595188, '1', 400),
(124, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryQm9h81etQ5mlcVnB\r\nContent-Disposition:_form-data;_name";s:172:""email"\r\n\r\ntest@gmail\r\n------WebKitFormBoundaryQm9h81etQ5mlcVnB\r\nContent-Disposition: form-data; name="password"\r\n\r\nandreysk78\r\n------WebKitFormBoundaryQm9h81etQ5mlcVnB--\r\n";}', '', '::1', 1456889584, 0.00508904, '1', 400),
(125, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryETqXEe2GaxCAnfwf\r\nContent-Disposition:_form-data;_name";s:171:""email"\r\n\r\ntestgmail\r\n------WebKitFormBoundaryETqXEe2GaxCAnfwf\r\nContent-Disposition: form-data; name="password"\r\n\r\nandreysk78\r\n------WebKitFormBoundaryETqXEe2GaxCAnfwf--\r\n";}', '', '::1', 1456889603, 0.0058949, '1', 400),
(126, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryjBoZG0F5EZvkWexF\r\nContent-Disposition:_form-data;_name";s:171:""email"\r\n\r\ntestgmail\r\n------WebKitFormBoundaryjBoZG0F5EZvkWexF\r\nContent-Disposition: form-data; name="password"\r\n\r\nandreysk78\r\n------WebKitFormBoundaryjBoZG0F5EZvkWexF--\r\n";}', '', '::1', 1456889604, 0.00527501, '1', 400),
(127, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundarypbd8CifuQyWnT4mx\r\nContent-Disposition:_form-data;_name";s:171:""email"\r\n\r\ntestgmail\r\n------WebKitFormBoundarypbd8CifuQyWnT4mx\r\nContent-Disposition: form-data; name="password"\r\n\r\nandreysk78\r\n------WebKitFormBoundarypbd8CifuQyWnT4mx--\r\n";}', '', '::1', 1456889618, 0.00548697, '1', 400),
(128, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryForroOngxAACg0FI\r\nContent-Disposition:_form-data;_name";s:171:""email"\r\n\r\ntestgmail\r\n------WebKitFormBoundaryForroOngxAACg0FI\r\nContent-Disposition: form-data; name="password"\r\n\r\nandreysk78\r\n------WebKitFormBoundaryForroOngxAACg0FI--\r\n";}', '', '::1', 1456889618, 0.00588107, '1', 400),
(129, 'api/user', 'put', NULL, '', '::1', 1456889900, 0.00472498, '1', 400),
(130, 'api/user', 'put', NULL, '', '::1', 1456889901, 0.00509214, '1', 400),
(131, 'api/user', 'put', NULL, '', '::1', 1456889902, 0.00571704, '1', 400),
(132, 'api/user', 'put', NULL, '', '::1', 1456889904, 0.0051589, '1', 400),
(133, 'api/user', 'put', NULL, '', '::1', 1456889904, 0.00627613, '1', 400),
(134, 'api/user', 'put', NULL, '', '::1', 1456889905, 0.0045681, '1', 400),
(135, 'api/user', 'put', NULL, '', '::1', 1456889927, 0.00524807, '1', 400),
(136, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundaryo074WWDznXHgOjQE\r\nContent-Disposition:_form-data;_name";s:171:""email"\r\n\r\ntestgmail\r\n------WebKitFormBoundaryo074WWDznXHgOjQE\r\nContent-Disposition: form-data; name="password"\r\n\r\nandreysk78\r\n------WebKitFormBoundaryo074WWDznXHgOjQE--\r\n";}', '', '::1', 1456889930, 0.0596628, '1', 400),
(137, 'api/user', 'put', 'a:2:{s:5:"email";s:0:"";s:8:"password";s:0:"";}', '', '::1', 1456889957, 0.00546503, '1', 400),
(138, 'api/user', 'put', 'a:2:{s:5:"email";s:3:"asd";s:8:"password";s:4:"asdf";}', '', '::1', 1456889961, 0.00671387, '1', 400),
(139, 'api/user', 'put', 'a:2:{s:5:"email";s:3:"asd";s:8:"password";s:4:"asdf";}', '', '::1', 1456889965, 0.00577998, '1', 400),
(140, 'api/user', 'put', 'a:2:{s:5:"email";s:13:"asd@gmail.com";s:8:"password";s:4:"asdf";}', '', '::1', 1456889970, 0.00507498, '1', 400),
(141, 'api/user', 'put', 'a:2:{s:5:"email";s:13:"asd@gmail.com";s:8:"password";s:4:"asdf";}', '', '::1', 1456889970, 0.00478196, '1', 400),
(142, 'api/user', 'put', 'a:2:{s:5:"email";s:13:"asd@gmail.com";s:8:"password";s:11:"asdfa234234";}', '', '::1', 1456889974, 0.00776982, '1', 200),
(143, 'api/user', 'put', 'a:2:{s:5:"email";s:13:"asd@gmail.com";s:8:"password";s:11:"asdfa234234";}', '', '::1', 1456889975, 0.00637007, '1', 200),
(144, 'api/user', 'get', 'a:1:{s:5:"email";s:9:"asdnfasdf";}', '', '::1', 1456890181, 0.004632, '1', 404),
(145, 'api/user', 'get', 'a:2:{s:5:"email";s:9:"asdnfasdf";s:8:"password";s:8:"sadfsadf";}', '', '::1', 1456890202, 0.00576115, '1', 404),
(146, 'api/user', 'delete', 'a:1:{s:78:"------WebKitFormBoundaryB68L3t8PwHUZLMhz\r\nContent-Disposition:_form-data;_name";s:54:""id"\r\n\r\n\r\n------WebKitFormBoundaryB68L3t8PwHUZLMhz--\r\n";}', '', '::1', 1456978539, 0.0289931, '1', 0),
(147, 'api/user', 'delete', 'a:1:{s:78:"------WebKitFormBoundaryGJvDMmHJjMYjPndB\r\nContent-Disposition:_form-data;_name";s:55:""id"\r\n\r\n4\r\n------WebKitFormBoundaryGJvDMmHJjMYjPndB--\r\n";}', '', '::1', 1456978545, 0.00571203, '1', 0),
(148, 'api/user', 'delete', 'a:1:{s:78:"------WebKitFormBoundaryUYnn6VxlPpSPJBTs\r\nContent-Disposition:_form-data;_name";s:55:""id"\r\n\r\n4\r\n------WebKitFormBoundaryUYnn6VxlPpSPJBTs--\r\n";}', '', '::1', 1456978578, 0.00415087, '1', 0),
(149, 'api/user', 'delete', 'a:1:{s:78:"------WebKitFormBoundarykGb1adqGnhLuB97U\r\nContent-Disposition:_form-data;_name";s:55:""id"\r\n\r\n4\r\n------WebKitFormBoundarykGb1adqGnhLuB97U--\r\n";}', '', '::1', 1456978587, 0.0109041, '1', 0),
(150, 'api/user', 'delete', 'a:1:{s:78:"------WebKitFormBoundarySFPdx3AQEUaZD5SB\r\nContent-Disposition:_form-data;_name";s:55:""ID"\r\n\r\n4\r\n------WebKitFormBoundarySFPdx3AQEUaZD5SB--\r\n";}', '', '::1', 1456978641, 0.00503707, '1', 0),
(151, 'api/user', 'delete', 'a:1:{s:78:"------WebKitFormBoundaryS5xhrBsSrdSWYDzW\r\nContent-Disposition:_form-data;_name";s:55:""ID"\r\n\r\n4\r\n------WebKitFormBoundaryS5xhrBsSrdSWYDzW--\r\n";}', '', '::1', 1456978679, 0.00581908, '1', 0),
(152, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryI04Lwl1GWTy9lkWl--\r\n";s:0:"";}', '', '::1', 1456978702, 0.00590611, '1', 0),
(153, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryRxcZlqMLg2nZ8mra--\r\n";s:0:"";}', '', '::1', 1456978723, 0.00411105, '1', 0),
(154, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundarynacyBEhNIouroosH--\r\n";s:0:"";}', '', '::1', 1456978745, 0.00390697, '1', 0),
(155, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundarybBE0t5Jpr3KtlyTs--\r\n";s:0:"";}', '', '::1', 1456978746, 0.00521898, '1', 0),
(156, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryrOpC9PrKQJ1Gx03X--\r\n";s:0:"";}', '', '::1', 1456978768, 0.00391912, '1', 404),
(157, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryKKSbZYBAgPTlZIUT--\r\n";s:0:"";}', '', '::1', 1456978771, 0.00403595, '1', 404),
(158, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryQsuaQCKErXTrxWmW--\r\n";s:0:"";}', '', '::1', 1456978790, 0.00509191, '1', 404),
(159, 'api/user/1', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryGxdVMvsnASsJ625H--\r\n";s:0:"";}', '', '::1', 1456978793, 0.00435209, '1', 404),
(160, 'api/user/1', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryzPexPAAnlAWeZ3rh--\r\n";s:0:"";}', '', '::1', 1456978806, 0.00402403, '1', 0),
(161, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryJTduVpnBfW6oEdSu--\r\n";s:0:"";}', '', '::1', 1456978853, 0.00515699, '1', 404),
(162, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryDdMt5SpU3UoHhg1Y--\r\n";s:0:"";}', '', '::1', 1456978855, 0.00427103, '1', 404),
(163, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundarygBWmDktlkBU4ieZB--\r\n";s:0:"";}', '', '::1', 1456978855, 0.00404811, '1', 404),
(164, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryUNDfJyOONX6TrtfQ--\r\n";s:0:"";}', '', '::1', 1456978856, 0.00449705, '1', 404),
(165, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryfyiEkgv8fuIK2lAB--\r\n";s:0:"";}', '', '::1', 1456978856, 0.00431919, '1', 404),
(166, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryzNzIUoQrE5s0i9y4--\r\n";s:0:"";}', '', '::1', 1456978856, 0.00488997, '1', 404),
(167, 'api/user/4', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundary5tvTCWFRn4Ld1v8i--\r\n";s:0:"";}', '', '::1', 1456978856, 0.00448704, '1', 404),
(168, 'api/user/3', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryAchaZXB85K4Iht4Y--\r\n";s:0:"";}', '', '::1', 1456978913, 0.00515795, '1', 404),
(169, 'api/user/2', 'delete', 'a:2:{i:0;N;s:44:"------WebKitFormBoundaryTE5NtdxoIteCVViK--\r\n";s:0:"";}', '', '::1', 1456979023, 0.0092299, '1', 200),
(170, 'api/user', 'get', NULL, '', '::1', 1457358281, 0.011282, '1', 404),
(171, 'api/user', 'get', 'a:4:{s:5:"email";s:26:"andreydanil@andreydanil.me";s:9:"?password";s:7:"asdfkjs";i:0;s:7:"asdfkjs";i:1;s:7:"asdfkjs";}', '', '::1', 1457358321, 0.00450993, '1', 404),
(172, 'api/user', 'put', 'a:1:{s:78:"------WebKitFormBoundary4OIGNJIAN5V5bPYA\r\nContent-Disposition:_form-data;_name";s:171:""email"\r\n\r\ntestgmail\r\n------WebKitFormBoundary4OIGNJIAN5V5bPYA\r\nContent-Disposition: form-data; name="password"\r\n\r\nandreysk78\r\n------WebKitFormBoundary4OIGNJIAN5V5bPYA--\r\n";}', '', '::1', 1457358331, 0.00901794, '1', 400),
(173, 'api/user/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1457358438, 0.00644493, '1', 200),
(174, 'api/user', 'get', NULL, '', '::1', 1457358467, 0.0062089, '1', 404),
(175, 'api/all_users', 'get', NULL, '', '::1', 1457358521, 0.00530005, '1', 200),
(176, 'api/user/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1457358538, 0.00599408, '1', 200),
(177, 'api/student/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1458219231, 0.0050621, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `toid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `delete_userid` int(11) NOT NULL,
  `delete_toid` int(11) NOT NULL,
  `replies` int(11) NOT NULL DEFAULT '1',
  `last_reply_timestamp` int(11) NOT NULL,
  `unread_userid` int(11) NOT NULL,
  `unread_toid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `ID` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `created` int(11) NOT NULL,
  `duedate` int(11) NOT NULL,
  `completeddate` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `startdate` int(11) NOT NULL,
  `complete` int(11) NOT NULL,
  `complete_sync` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_logger`
--

CREATE TABLE `time_logger` (
  `ID` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `timestart` int(11) NOT NULL,
  `total_time` int(11) NOT NULL,
  `perhour` decimal(10,2) NOT NULL,
  `notes` varchar(1000) NOT NULL,
  `taskid` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `week_day` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `added` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `IP` varchar(255) NOT NULL,
  `access_level` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'guest.png',
  `status` int(11) NOT NULL,
  `paypal_email` varchar(500) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `email_noti` int(11) NOT NULL DEFAULT '1',
  `week_hours` int(11) NOT NULL,
  `active_groupid` int(11) NOT NULL,
  `task_noti` int(11) NOT NULL DEFAULT '1',
  `default_cat` int(11) NOT NULL,
  `points` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `token`, `IP`, `access_level`, `avatar`, `status`, `paypal_email`, `first_name`, `last_name`, `business_name`, `email_noti`, `week_hours`, `active_groupid`, `task_noti`, `default_cat`, `points`) VALUES
(1, 'test', 'test@gmail.com', 'md5("hello")', '', '', 0, 'guest.png', 1, '', '', '', '', 1, 0, 0, 1, 0, '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userid` (`userid`),
  ADD KEY `toid` (`toid`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `time_logger`
--
ALTER TABLE `time_logger`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `time_logger`
--
ALTER TABLE `time_logger`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
