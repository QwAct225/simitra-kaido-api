-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2025 at 01:41 PM
-- Server version: 10.6.23-MariaDB-cll-lve
-- PHP Version: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpskotam_db_mitra_kaido`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `breezy_sessions`
--

CREATE TABLE `breezy_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `panel_id` varchar(255) DEFAULT NULL,
  `guard` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1760516684),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1760516684;', 1760516684),
('livewire-rate-limiter:0c24f66a9e3401ec514eea6bb68f75ae4da48204', 'i:1;', 1760684673),
('livewire-rate-limiter:0c24f66a9e3401ec514eea6bb68f75ae4da48204:timer', 'i:1760684673;', 1760684673),
('livewire-rate-limiter:239bb09f3f9fc0f9bd3d1bb4fb79232657768ca6', 'i:2;', 1760519239),
('livewire-rate-limiter:239bb09f3f9fc0f9bd3d1bb4fb79232657768ca6:timer', 'i:1760519239;', 1760519239),
('livewire-rate-limiter:2c6d47eb1ff240219275dace67ef8bef395e5d9f', 'i:1;', 1760535172),
('livewire-rate-limiter:2c6d47eb1ff240219275dace67ef8bef395e5d9f:timer', 'i:1760535172;', 1760535172),
('livewire-rate-limiter:2d1798f93c619eacecbdace3b391a48640531f3e', 'i:1;', 1760680899),
('livewire-rate-limiter:2d1798f93c619eacecbdace3b391a48640531f3e:timer', 'i:1760680899;', 1760680899),
('livewire-rate-limiter:5a7cbe19e5f4b5aac71696094bc9fc9450a8319d', 'i:1;', 1760520179),
('livewire-rate-limiter:5a7cbe19e5f4b5aac71696094bc9fc9450a8319d:timer', 'i:1760520179;', 1760520179),
('livewire-rate-limiter:5b0f57f00e6112cce6e10dafd70b92c738ab56db', 'i:1;', 1760517910),
('livewire-rate-limiter:5b0f57f00e6112cce6e10dafd70b92c738ab56db:timer', 'i:1760517910;', 1760517910),
('livewire-rate-limiter:749d8c2e1e817dd74e10491d174faf89e2837f3c', 'i:1;', 1760668803),
('livewire-rate-limiter:749d8c2e1e817dd74e10491d174faf89e2837f3c:timer', 'i:1760668803;', 1760668803),
('livewire-rate-limiter:988ffa6a551b7ee40d1d3757de8169e41b2c043b', 'i:2;', 1760586545),
('livewire-rate-limiter:988ffa6a551b7ee40d1d3757de8169e41b2c043b:timer', 'i:1760586545;', 1760586545),
('livewire-rate-limiter:b8e85c875fd6e6398251640ede67d77a803d0c3b', 'i:1;', 1760518506),
('livewire-rate-limiter:b8e85c875fd6e6398251640ede67d77a803d0c3b:timer', 'i:1760518506;', 1760518506),
('livewire-rate-limiter:eee6042ae9ac8fd948d9effc61ec8594a04f790e', 'i:1;', 1760586515),
('livewire-rate-limiter:eee6042ae9ac8fd948d9effc61ec8594a04f790e:timer', 'i:1760586515;', 1760586515),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:184:{i:0;a:4:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:9:\"view_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";s:1:\"2\";s:1:\"b\";s:13:\"view_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";s:1:\"3\";s:1:\"b\";s:11:\"create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";s:1:\"4\";s:1:\"b\";s:11:\"update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";s:1:\"5\";s:1:\"b\";s:12:\"restore_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";s:1:\"6\";s:1:\"b\";s:16:\"restore_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";s:1:\"7\";s:1:\"b\";s:14:\"replicate_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";s:1:\"8\";s:1:\"b\";s:12:\"reorder_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";s:1:\"9\";s:1:\"b\";s:11:\"delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";s:2:\"10\";s:1:\"b\";s:15:\"delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";s:2:\"11\";s:1:\"b\";s:17:\"force_delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";s:2:\"12\";s:1:\"b\";s:21:\"force_delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";s:2:\"13\";s:1:\"b\";s:16:\"book:create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";s:2:\"14\";s:1:\"b\";s:16:\"book:update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";s:2:\"15\";s:1:\"b\";s:16:\"book:delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";s:2:\"16\";s:1:\"b\";s:20:\"book:pagination_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";s:2:\"17\";s:1:\"b\";s:16:\"book:detail_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";s:2:\"18\";s:1:\"b\";s:13:\"view_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:18;a:4:{s:1:\"a\";s:2:\"19\";s:1:\"b\";s:17:\"view_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:19;a:4:{s:1:\"a\";s:2:\"20\";s:1:\"b\";s:15:\"create_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";s:2:\"21\";s:1:\"b\";s:15:\"update_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";s:2:\"22\";s:1:\"b\";s:16:\"restore_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";s:2:\"23\";s:1:\"b\";s:20:\"restore_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";s:2:\"24\";s:1:\"b\";s:18:\"replicate_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";s:2:\"25\";s:1:\"b\";s:16:\"reorder_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";s:2:\"26\";s:1:\"b\";s:15:\"delete_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";s:2:\"27\";s:1:\"b\";s:19:\"delete_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";s:2:\"28\";s:1:\"b\";s:21:\"force_delete_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";s:2:\"29\";s:1:\"b\";s:25:\"force_delete_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";s:2:\"30\";s:1:\"b\";s:10:\"view_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:30;a:4:{s:1:\"a\";s:2:\"31\";s:1:\"b\";s:14:\"view_any_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:\"a\";s:2:\"32\";s:1:\"b\";s:12:\"create_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";s:2:\"33\";s:1:\"b\";s:12:\"update_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";s:2:\"34\";s:1:\"b\";s:13:\"restore_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";s:2:\"35\";s:1:\"b\";s:17:\"restore_any_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";s:2:\"36\";s:1:\"b\";s:15:\"replicate_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";s:2:\"37\";s:1:\"b\";s:13:\"reorder_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";s:2:\"38\";s:1:\"b\";s:12:\"delete_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";s:2:\"39\";s:1:\"b\";s:16:\"delete_any_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";s:2:\"40\";s:1:\"b\";s:18:\"force_delete_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";s:2:\"41\";s:1:\"b\";s:22:\"force_delete_any_mitra\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";s:2:\"42\";s:1:\"b\";s:19:\"view_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:42;a:4:{s:1:\"a\";s:2:\"43\";s:1:\"b\";s:23:\"view_any_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:43;a:4:{s:1:\"a\";s:2:\"44\";s:1:\"b\";s:21:\"create_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";s:2:\"45\";s:1:\"b\";s:21:\"update_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";s:2:\"46\";s:1:\"b\";s:22:\"restore_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";s:2:\"47\";s:1:\"b\";s:26:\"restore_any_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";s:2:\"48\";s:1:\"b\";s:24:\"replicate_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";s:2:\"49\";s:1:\"b\";s:22:\"reorder_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";s:2:\"50\";s:1:\"b\";s:21:\"delete_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";s:2:\"51\";s:1:\"b\";s:25:\"delete_any_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";s:2:\"52\";s:1:\"b\";s:27:\"force_delete_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";s:2:\"53\";s:1:\"b\";s:31:\"force_delete_any_mitra::teladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";s:2:\"54\";s:1:\"b\";s:11:\"view_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:54;a:4:{s:1:\"a\";s:2:\"55\";s:1:\"b\";s:15:\"view_any_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";s:2:\"56\";s:1:\"b\";s:13:\"create_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";s:2:\"57\";s:1:\"b\";s:13:\"update_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";s:2:\"58\";s:1:\"b\";s:14:\"restore_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";s:2:\"59\";s:1:\"b\";s:18:\"restore_any_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";s:2:\"60\";s:1:\"b\";s:16:\"replicate_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";s:2:\"61\";s:1:\"b\";s:14:\"reorder_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";s:2:\"62\";s:1:\"b\";s:13:\"delete_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";s:2:\"63\";s:1:\"b\";s:17:\"delete_any_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";s:2:\"64\";s:1:\"b\";s:19:\"force_delete_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";s:2:\"65\";s:1:\"b\";s:23:\"force_delete_any_nilai1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";s:2:\"66\";s:1:\"b\";s:11:\"view_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:\"a\";s:2:\"67\";s:1:\"b\";s:15:\"view_any_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:67;a:4:{s:1:\"a\";s:2:\"68\";s:1:\"b\";s:13:\"create_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:68;a:4:{s:1:\"a\";s:2:\"69\";s:1:\"b\";s:13:\"update_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:69;a:4:{s:1:\"a\";s:2:\"70\";s:1:\"b\";s:14:\"restore_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";s:2:\"71\";s:1:\"b\";s:18:\"restore_any_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";s:2:\"72\";s:1:\"b\";s:16:\"replicate_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";s:2:\"73\";s:1:\"b\";s:14:\"reorder_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";s:2:\"74\";s:1:\"b\";s:13:\"delete_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";s:2:\"75\";s:1:\"b\";s:17:\"delete_any_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";s:2:\"76\";s:1:\"b\";s:19:\"force_delete_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";s:2:\"77\";s:1:\"b\";s:23:\"force_delete_any_nilai2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";s:2:\"78\";s:1:\"b\";s:12:\"view_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:78;a:4:{s:1:\"a\";s:2:\"79\";s:1:\"b\";s:16:\"view_any_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:79;a:4:{s:1:\"a\";s:2:\"80\";s:1:\"b\";s:14:\"create_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:80;a:4:{s:1:\"a\";s:2:\"81\";s:1:\"b\";s:14:\"update_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:81;a:4:{s:1:\"a\";s:2:\"82\";s:1:\"b\";s:15:\"restore_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:82;a:4:{s:1:\"a\";s:2:\"83\";s:1:\"b\";s:19:\"restore_any_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";s:2:\"84\";s:1:\"b\";s:17:\"replicate_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";s:2:\"85\";s:1:\"b\";s:15:\"reorder_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";s:2:\"86\";s:1:\"b\";s:14:\"delete_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";s:2:\"87\";s:1:\"b\";s:18:\"delete_any_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";s:2:\"88\";s:1:\"b\";s:20:\"force_delete_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";s:2:\"89\";s:1:\"b\";s:24:\"force_delete_any_payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";s:2:\"90\";s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";s:2:\"91\";s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";s:2:\"92\";s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";s:2:\"93\";s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";s:2:\"94\";s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";s:2:\"95\";s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";s:2:\"96\";s:1:\"b\";s:11:\"view_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:96;a:4:{s:1:\"a\";s:2:\"97\";s:1:\"b\";s:15:\"view_any_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:97;a:4:{s:1:\"a\";s:2:\"98\";s:1:\"b\";s:13:\"create_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:98;a:4:{s:1:\"a\";s:2:\"99\";s:1:\"b\";s:13:\"update_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:99;a:4:{s:1:\"a\";s:3:\"100\";s:1:\"b\";s:14:\"restore_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";s:3:\"101\";s:1:\"b\";s:18:\"restore_any_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";s:3:\"102\";s:1:\"b\";s:16:\"replicate_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";s:3:\"103\";s:1:\"b\";s:14:\"reorder_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";s:3:\"104\";s:1:\"b\";s:13:\"delete_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";s:3:\"105\";s:1:\"b\";s:17:\"delete_any_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";s:3:\"106\";s:1:\"b\";s:19:\"force_delete_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";s:3:\"107\";s:1:\"b\";s:23:\"force_delete_any_survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";s:3:\"108\";s:1:\"b\";s:9:\"view_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:108;a:4:{s:1:\"a\";s:3:\"109\";s:1:\"b\";s:13:\"view_any_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:109;a:4:{s:1:\"a\";s:3:\"110\";s:1:\"b\";s:11:\"create_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";s:3:\"111\";s:1:\"b\";s:11:\"update_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";s:3:\"112\";s:1:\"b\";s:12:\"restore_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";s:3:\"113\";s:1:\"b\";s:16:\"restore_any_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";s:3:\"114\";s:1:\"b\";s:14:\"replicate_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";s:3:\"115\";s:1:\"b\";s:12:\"reorder_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";s:3:\"116\";s:1:\"b\";s:11:\"delete_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";s:3:\"117\";s:1:\"b\";s:15:\"delete_any_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";s:3:\"118\";s:1:\"b\";s:17:\"force_delete_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";s:3:\"119\";s:1:\"b\";s:21:\"force_delete_any_team\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";s:3:\"120\";s:1:\"b\";s:10:\"view_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";s:3:\"121\";s:1:\"b\";s:14:\"view_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";s:3:\"122\";s:1:\"b\";s:12:\"create_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";s:3:\"123\";s:1:\"b\";s:12:\"update_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";s:3:\"124\";s:1:\"b\";s:13:\"restore_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";s:3:\"125\";s:1:\"b\";s:17:\"restore_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";s:3:\"126\";s:1:\"b\";s:15:\"replicate_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";s:3:\"127\";s:1:\"b\";s:13:\"reorder_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";s:3:\"128\";s:1:\"b\";s:12:\"delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";s:3:\"129\";s:1:\"b\";s:16:\"delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";s:3:\"130\";s:1:\"b\";s:18:\"force_delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";s:3:\"131\";s:1:\"b\";s:22:\"force_delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";s:3:\"132\";s:1:\"b\";s:16:\"view_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:132;a:4:{s:1:\"a\";s:3:\"133\";s:1:\"b\";s:20:\"view_any_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:133;a:4:{s:1:\"a\";s:3:\"134\";s:1:\"b\";s:18:\"create_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";s:3:\"135\";s:1:\"b\";s:18:\"update_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";s:3:\"136\";s:1:\"b\";s:19:\"restore_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";s:3:\"137\";s:1:\"b\";s:23:\"restore_any_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";s:3:\"138\";s:1:\"b\";s:21:\"replicate_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";s:3:\"139\";s:1:\"b\";s:19:\"reorder_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";s:3:\"140\";s:1:\"b\";s:18:\"delete_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";s:3:\"141\";s:1:\"b\";s:22:\"delete_any_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";s:3:\"142\";s:1:\"b\";s:24:\"force_delete_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";s:3:\"143\";s:1:\"b\";s:28:\"force_delete_any_transaction\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";s:3:\"144\";s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:144;a:4:{s:1:\"a\";s:3:\"145\";s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:145;a:4:{s:1:\"a\";s:3:\"146\";s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";s:3:\"147\";s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";s:3:\"148\";s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";s:3:\"149\";s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";s:3:\"150\";s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";s:3:\"151\";s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";s:3:\"152\";s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";s:3:\"153\";s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";s:3:\"154\";s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:154;a:4:{s:1:\"a\";s:3:\"155\";s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:155;a:4:{s:1:\"a\";s:3:\"156\";s:1:\"b\";s:25:\"page_EmployeeNilai2Status\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:156;a:4:{s:1:\"a\";s:3:\"157\";s:1:\"b\";s:18:\"page_ManageSetting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:157;a:4:{s:1:\"a\";s:3:\"158\";s:1:\"b\";s:23:\"page_SelectMitraTeladan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:5;}}i:158;a:4:{s:1:\"a\";s:3:\"159\";s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:159;a:4:{s:1:\"a\";s:3:\"160\";s:1:\"b\";s:18:\"page_MyProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:160;a:4:{s:1:\"a\";s:3:\"161\";s:1:\"b\";s:19:\"view_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:161;a:4:{s:1:\"a\";s:3:\"162\";s:1:\"b\";s:23:\"view_any_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:162;a:4:{s:1:\"a\";s:3:\"163\";s:1:\"b\";s:21:\"view_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:163;a:4:{s:1:\"a\";s:3:\"164\";s:1:\"b\";s:25:\"view_any_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:164;a:4:{s:1:\"a\";s:3:\"165\";s:1:\"b\";s:21:\"create_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:165;a:4:{s:1:\"a\";s:3:\"166\";s:1:\"b\";s:21:\"update_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:166;a:4:{s:1:\"a\";s:3:\"167\";s:1:\"b\";s:22:\"restore_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:167;a:4:{s:1:\"a\";s:3:\"168\";s:1:\"b\";s:26:\"restore_any_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:168;a:4:{s:1:\"a\";s:3:\"169\";s:1:\"b\";s:24:\"replicate_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:169;a:4:{s:1:\"a\";s:3:\"170\";s:1:\"b\";s:22:\"reorder_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:170;a:4:{s:1:\"a\";s:3:\"171\";s:1:\"b\";s:21:\"delete_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:171;a:4:{s:1:\"a\";s:3:\"172\";s:1:\"b\";s:25:\"delete_any_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:172;a:4:{s:1:\"a\";s:3:\"173\";s:1:\"b\";s:27:\"force_delete_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:173;a:4:{s:1:\"a\";s:3:\"174\";s:1:\"b\";s:31:\"force_delete_any_master::survey\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:174;a:4:{s:1:\"a\";s:3:\"175\";s:1:\"b\";s:23:\"create_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:175;a:4:{s:1:\"a\";s:3:\"176\";s:1:\"b\";s:23:\"update_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:176;a:4:{s:1:\"a\";s:3:\"177\";s:1:\"b\";s:24:\"restore_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:177;a:4:{s:1:\"a\";s:3:\"178\";s:1:\"b\";s:28:\"restore_any_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:178;a:4:{s:1:\"a\";s:3:\"179\";s:1:\"b\";s:26:\"replicate_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:179;a:4:{s:1:\"a\";s:3:\"180\";s:1:\"b\";s:24:\"reorder_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:180;a:4:{s:1:\"a\";s:3:\"181\";s:1:\"b\";s:23:\"delete_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:181;a:4:{s:1:\"a\";s:3:\"182\";s:1:\"b\";s:27:\"delete_any_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:182;a:4:{s:1:\"a\";s:3:\"183\";s:1:\"b\";s:29:\"force_delete_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:183;a:4:{s:1:\"a\";s:3:\"184\";s:1:\"b\";s:33:\"force_delete_any_maximal::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";s:1:\"2\";s:1:\"b\";s:7:\"Pegawai\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";s:1:\"3\";s:1:\"b\";s:9:\"Ketua Tim\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";s:1:\"5\";s:1:\"b\";s:9:\"Ketua SDM\";s:1:\"c\";s:3:\"web\";}}}', 1761005917);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `nip` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `nip`, `jenis_kelamin`, `user_id`, `team_id`, `tanggal_lahir`, `created_at`, `updated_at`) VALUES
(1, 'Umar Sjaifudin M.Si', '197012161997031005', 'Laki-Laki', 2, 6, '1970-12-16', '2025-07-10 07:28:07', '2025-07-10 07:28:07'),
(2, 'Ir. Dwi Handayani Prasetyawati M.AP', '196810281994012001', 'Perempuan', 3, 7, '1968-10-28', '2025-07-10 07:28:07', '2025-07-10 08:20:14'),
(3, 'Ir. Wahyu Furqandari M.M', '196901181994012001', 'Perempuan', 4, 6, '1969-01-18', '2025-07-10 07:28:07', '2025-07-10 07:28:07'),
(4, 'Tasmilah SST, M.E', '198309102006022001', 'Perempuan', 5, 5, '1983-09-10', '2025-07-10 07:28:08', '2025-07-10 07:28:08'),
(5, 'Ir. Agustina Martha M.M', '196808231994012001', 'Perempuan', 6, 3, '1968-08-23', '2025-07-10 07:28:08', '2025-07-10 07:28:08'),
(6, 'Ahmad Junaedi S.Si, M.M', '197501311994011001', 'Laki-Laki', 7, 3, '1975-01-31', '2025-07-10 07:28:09', '2025-07-10 07:28:09'),
(7, 'Anggi Fatwa Mauliza A.Md.Kb.N', '200006272022012005', 'Perempuan', 8, 1, '2000-06-27', '2025-07-10 07:28:09', '2025-07-10 07:28:09'),
(8, 'Arini Ismiati S.ST', '197912202003122006', 'Perempuan', 9, 1, '1979-12-20', '2025-07-10 07:28:09', '2025-07-10 07:28:09'),
(9, 'Baqtiar Arifin S.Stat., MM', '197806272005021002', 'Laki-Laki', 10, 1, '1978-06-27', '2025-07-10 07:28:10', '2025-07-10 07:28:10'),
(10, 'Bima Sakti Krisdianto SST', '199511062017011001', 'Laki-Laki', 11, 6, '1995-11-06', '2025-07-10 07:28:10', '2025-07-10 07:28:10'),
(11, 'Eka Arifianto A.Md. Lib', '199709202023211005', 'Laki-Laki', 12, 6, '1997-09-20', '2025-07-10 07:28:11', '2025-07-10 07:28:11'),
(12, 'Erlisa Cantika Herawati S.Si', '199408052019032003', 'Perempuan', 13, 4, '1994-08-05', '2025-07-10 07:28:11', '2025-07-10 07:28:11'),
(14, 'Heru Kartiko SST', '197604211999031003', 'Laki-Laki', 15, 6, '1976-04-21', '2025-07-10 07:28:12', '2025-07-10 07:28:12'),
(15, 'Rachmad Widi Wijayanto', '197704042006041016', 'Laki-Laki', 16, 1, '1977-04-04', '2025-07-10 07:28:13', '2025-07-10 07:28:13'),
(16, 'Ratri Adhipradani Ratih S.Si', '198510022009022012', 'Perempuan', 17, 3, '1985-10-02', '2025-07-10 07:28:13', '2025-07-10 07:28:13'),
(17, 'Rendra Anandhika A.Md', '198802292011011005', 'Laki-Laki', 18, 6, '1988-02-29', '2025-07-10 07:28:13', '2025-07-10 07:28:13'),
(18, 'Rhyke Chrisdiana Novita S.E', '198404122005022001', 'Perempuan', 19, 3, '1984-04-12', '2025-07-10 07:28:14', '2025-07-10 07:28:14'),
(19, 'Rizky Maulidya SST, M.AP', '199109302014102001', 'Perempuan', 20, 5, '1991-09-30', '2025-07-10 07:28:15', '2025-07-10 07:28:15'),
(20, 'Saras Wati Utami S.Si, M.E', '198803302010122002', 'Perempuan', 21, 4, '1988-03-30', '2025-07-10 07:28:15', '2025-07-10 07:28:15'),
(21, 'Saruni Gincahyo SE', '196802281989031003', 'Laki-Laki', 22, 3, '1968-02-28', '2025-07-10 07:28:16', '2025-07-10 07:28:16'),
(22, 'Satria Candra Wibawa A.Md', '198810282011011004', 'Laki-Laki', 23, 6, '1988-10-28', '2025-07-10 07:28:16', '2025-07-10 07:28:16'),
(23, 'Siti Barokatun Solihah SST', '199110232016022001', 'Perempuan', 24, 2, '1999-11-02', '2025-07-10 07:28:16', '2025-07-10 07:28:16'),
(24, 'Soekesi Irawati S.Psi., M.M', '197009251994012001', 'Perempuan', 25, 4, '1970-09-25', '2025-07-10 07:28:17', '2025-07-10 07:28:17'),
(25, 'Windi Wijayanti S.Si, M.E', '198712182011012022', 'Perempuan', 26, 2, '1987-12-18', '2025-07-10 07:28:17', '2025-07-10 07:28:17'),
(26, 'Yenita Mirawanti SST., M.Si', '197806032000122002', 'Perempuan', 27, 2, '1978-06-03', '2025-07-10 07:28:17', '2025-07-10 07:28:17'),
(27, 'Yusuf Fatoni SE', '197012251997031004', 'Laki-Laki', 28, 4, '1970-12-25', '2025-07-10 07:28:18', '2025-07-10 07:28:18'),
(28, 'Jasmine Amalia Nastiti S.Tr.Stat.', '199805162021042001', 'Perempuan', 80, 3, '1998-05-16', '2025-07-10 16:30:56', '2025-07-10 16:30:56'),
(29, 'Christiayu Natalia SST, M.E', '199109162014102002', 'Perempuan', 422, 7, '1991-09-16', '2025-10-17 02:38:17', '2025-10-17 02:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `exporter` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `validation_error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `importer` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"8c8b3919-1da4-4afb-8181-a0734d8658a3\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:80;}s:9:\\\"relations\\\";a:1:{i:0;s:14:\\\"breezySessions\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:39:\\\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\\\":2:{s:3:\\\"url\\\";s:194:\\\"https:\\/\\/mitra.bpskotamalang.id\\/email-verification\\/verify\\/80\\/c1cab1911c72ae528968925da09650f6809ce8a0?expires=1752399314&signature=a780ada30f71818cc28600f30d83e50bc1ae5b3ab3465080f01ec486969a98fd\\\";s:2:\\\"id\\\";s:36:\\\"019a6db8-4886-4106-893e-71ccc50c4731\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1752395714, 1752395714),
(2, 'default', '{\"uuid\":\"5eecd412-74f0-4e40-872c-cf28a007fa17\",\"displayName\":\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:80;}s:9:\\\"relations\\\";a:1:{i:0;s:14:\\\"breezySessions\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:39:\\\"Filament\\\\Notifications\\\\Auth\\\\VerifyEmail\\\":2:{s:3:\\\"url\\\";s:194:\\\"https:\\/\\/mitra.bpskotamalang.id\\/email-verification\\/verify\\/80\\/c1cab1911c72ae528968925da09650f6809ce8a0?expires=1752401235&signature=d8f512d0c462928503214c193341a8588fcd22a1af19ecf107a9b0691097589e\\\";s:2:\\\"id\\\";s:36:\\\"c24e9588-5c29-4bbf-b127-61f16edb4a09\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1752397635, 1752397635);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_surveys`
--

CREATE TABLE `master_surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_surveys`
--

INSERT INTO `master_surveys` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(3, 'Pengolahan Survei Sosial Ekonomi Nasional', 'SUSENAS', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(5, 'Survey Ketenagakerjaan Nasional', 'SAK', '2025-07-07 16:22:24', '2025-10-15 04:32:31'),
(7, 'Survei Nasional Literasi dan Inklusi Keuangan', 'SNLIK', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(8, 'Survei Sosial Ekonomi Nasional', 'SSN', '2025-07-07 16:22:24', '2025-10-15 05:14:51'),
(12, 'Pengolahan Survei Ekonomi Rumah Tangga Triwulanan', 'P-SERUTI', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(13, 'Pengolahan Survei Sosial Ekonomi Nasional', 'SUSENAS', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(14, 'Survei Harga Kemahalan Konstruksi', 'SHKK', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(16, 'Survei Ekonomi Rumah Tangga', 'SERUTI', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(17, 'Survei Nasional Literasi dan Inklusi Keuangan', 'SNLIK', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(18, 'Survei Sosial Ekonomi Nasional', 'SUSENASMARET', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(19, 'Survey Industri Besar Sedang', 'IBS', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(20, 'Survey Konstruksi Triwulanan', 'KONSTRUKSI', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(21, 'Kerangka Sampel Area', 'KSA', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(22, 'Laporan Pemotongan Ternak Bulanan', 'LPTB', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(23, 'Survei Perusahaan Air Bersih', 'SPAB', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(24, 'Survey Ubinan', 'UBINAN', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(25, 'Survei Khusus Lembaga Non Profit Rumah Tangga', 'SKLNPRT', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(26, 'Survei Khusus Triwulanan Neraca Produksi', 'SKTNP', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(27, 'Survei Triwulanan Kegiatan Usaha', 'SKTU', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(29, 'Survey Harga Konsumen', 'SHK', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(30, 'Survei Harga Produsen', 'SHP', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(31, 'Survei Harga Perdagangan Besar', 'SHPB', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(32, 'Survey Harga Produsen', 'SHP', '2025-07-07 16:22:24', '2025-07-07 16:22:24'),
(33, 'Pengolahan Survei Sosial Ekonomi Nasional', 'P-SSN', '2025-07-07 16:22:24', '2025-10-15 08:20:25'),
(34, 'Survei Objek Daya Tarik Wisata', 'VDTW', '2025-07-10 08:03:05', '2025-07-10 08:03:05'),
(35, 'Survei Perusahaan/Usaha Penyedia Jasa Akomodasi', 'VHTL', '2025-07-10 08:15:58', '2025-07-10 08:15:58'),
(36, 'Survei Tingkat Penghunian Kamar Hotel', 'VHTS', '2025-07-10 08:18:11', '2025-07-10 08:18:11'),
(37, 'Survei Perdagangan Barang Domestik', 'VPBD', '2025-07-10 08:21:37', '2025-07-10 08:21:37'),
(38, 'Survei Pergudangan dan Jasa Penunjang Angkutan', 'VPEK', '2025-07-10 08:23:14', '2025-07-10 08:23:14'),
(39, 'Survei Usaha Penyediaan Makanan Minuman', 'VREST', '2025-07-10 08:24:37', '2025-07-10 08:24:37'),
(40, 'Survei Survei Pola Usaha Non Pertanian', 'SPUNP', '2025-07-10 08:27:32', '2025-07-10 08:27:32'),
(41, 'Updating Direktori', 'UD', '2025-07-10 08:29:06', '2025-07-10 08:29:06'),
(42, 'Survei Lembaga Keuangan', 'SLK', '2025-07-10 08:30:16', '2025-07-10 08:30:16'),
(43, 'Survei Volume Penjualan Eceran Beras', 'SVPEB', '2025-07-10 08:41:13', '2025-07-10 08:41:13'),
(44, 'Potensi Desa', 'PODES', '2025-07-10 08:43:34', '2025-07-10 08:43:34'),
(45, 'Survei Captive Power', 'SCP', '2025-07-10 08:49:31', '2025-07-10 08:49:31'),
(46, 'Survei Industri Mikro dan Kecil', 'IMK', '2025-07-10 08:56:49', '2025-07-10 08:56:49'),
(47, 'Survei Non Migas', 'SNM', '2025-07-10 09:10:55', '2025-07-10 09:10:55'),
(48, 'Survei Perusahaan Hortikultura', 'SPH', '2025-07-10 09:18:07', '2025-07-10 09:18:07'),
(49, 'Survei Perusahaan Kehutanan', 'SPK', '2025-07-10 09:19:35', '2025-07-10 09:19:35'),
(50, 'Survei Perusahaan Peternakan', 'SPP', '2025-07-10 09:20:51', '2025-07-10 09:20:51'),
(51, 'Survei Khusus Lembaga Non Profit Rumah Tangga Triwulanan', 'SKLNPRT', '2025-07-10 09:26:15', '2025-07-10 09:26:15'),
(52, 'Survey Bahan Pokok', 'SBP', '2025-10-15 03:38:25', '2025-10-15 03:38:25'),
(53, 'E-Commerce', 'EC', '2025-10-15 03:54:05', '2025-10-15 03:54:05'),
(54, 'Survey Pola Distribusi', 'SPD', '2025-10-15 04:08:46', '2025-10-15 04:08:46'),
(55, 'Survei Volume Penjualan Eceran Komoditas Spesifik', 'SVK', '2025-10-15 04:26:17', '2025-10-15 04:26:17'),
(56, 'Survei Penduduk Antar Sensus', 'SUPAS', '2025-10-15 05:10:17', '2025-10-15 05:10:17'),
(57, 'Survei Industri Mikro dan Kecil Tahunan', 'IMK-T', '2025-10-15 05:20:40', '2025-10-15 05:20:40'),
(58, 'Survei Konversi Gabah ke Beras', 'SKGB', '2025-10-15 07:37:21', '2025-10-15 07:37:21'),
(59, 'Makanan Bergizi Gratis Baseline', 'MBG-Baseline', '2025-10-15 07:42:46', '2025-10-15 07:42:46'),
(60, 'Makanan Bergizi Gratis Khusus', 'MBG-Khusus', '2025-10-15 07:46:00', '2025-10-15 07:46:00'),
(61, 'Survei Khusus Studi Penyusunan Perubahan Inventori', 'SKSPPI', '2025-10-15 07:50:08', '2025-10-15 07:50:08'),
(62, 'Updating Wilayah Kerja Statistik', 'WILKERSTAT', '2025-10-15 07:56:53', '2025-10-15 07:56:53'),
(63, 'Pengolahan Updating Wilayah Kerja Statistik', 'P-WILKERSTAT', '2025-10-15 08:14:31', '2025-10-15 08:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `maximal_payments`
--

CREATE TABLE `maximal_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Monthly Cap',
  `value` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `singleton` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maximal_payments`
--

INSERT INTO `maximal_payments` (`id`, `name`, `value`, `singleton`, `created_at`, `updated_at`) VALUES
(1, 'SBML', 0, 1, '2025-10-15 03:42:10', '2025-10-15 03:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2022_12_14_083707_create_settings_table', 1),
(5, '2024_12_04_025120_create_media_table', 1),
(6, '2024_12_04_041953_create_breezy_sessions_table', 1),
(7, '2025_01_01_120813_create_books_table', 1),
(8, '2025_01_02_064819_create_permission_tables', 1),
(9, '2025_01_02_225927_add_avatar_url_column_to_users_table', 1),
(10, '2025_01_03_114929_create_personal_access_tokens_table', 1),
(11, '2025_01_04_125650_create_posts_table', 1),
(12, '2025_01_08_152510_create_kaido_settings', 1),
(13, '2025_01_08_233142_create_socialite_users_table', 1),
(14, '2025_01_09_225908_update_user_table_make_password_column_nullable', 1),
(15, '2025_01_12_031340_create_notifications_table', 1),
(16, '2025_01_12_031357_create_imports_table', 1),
(17, '2025_01_12_031358_create_exports_table', 1),
(18, '2025_01_12_031359_create_failed_import_rows_table', 1),
(19, '2025_01_12_091355_create_contacts_table', 1),
(20, '2025_01_31_020024_add_themes_settings_to_users_table', 1),
(21, '2025_04_10_082435_create_mitras_table', 1),
(22, '2025_04_10_084851_create_teams_table', 1),
(23, '2025_04_10_084919_create_employees_table', 1),
(24, '2025_04_10_163140_create_payments_table', 1),
(25, '2025_04_10_163451_create_surveys_table', 1),
(26, '2025_04_10_165714_create_transactions_table', 1),
(27, '2025_04_10_192738_create_nilai1s_table', 1),
(28, '2025_04_11_161853_create_mitra_teladans_table', 1),
(29, '2025_07_07_231115_create_master_surveys_table', 1),
(30, '2025_07_07_231256_add_master_survey_id_to_surveys_table', 1),
(31, '2025_07_07_232322_remove_name_code_from_surveys_table', 1),
(32, '2025_07_08_095132_add_year_to_surveys_table', 1),
(33, '2025_07_08_140341_add_all_column_to_nilai2s_table', 1),
(34, '2025_07_10_102532_rename_employee_id_to_user_id_in_nilai2s_table', 1),
(35, '2025_09_09_105545_add_payment_month_to_surveys_table', 2),
(36, '2025_09_16_133545_create_maximal_payments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sobat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mitras`
--

INSERT INTO `mitras` (`id`, `sobat_id`, `name`, `user_id`, `email`, `pendidikan`, `jenis_kelamin`, `tanggal_lahir`, `photo`, `created_at`, `updated_at`) VALUES
(1, 357322090040, 'SUTARTI YUNI ASTUTIK', 32, 'astuti.sya@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:07:44', '2025-07-10 08:07:44'),
(2, 357322030002, 'Emman Suparji', 29, 'e81emm4n5@gmail.com', '5', 'Perempuan', '1981-06-21', NULL, '2025-07-10 08:14:57', '2025-07-10 08:14:57'),
(3, 357322010048, 'SONNA ASDINATA', 30, 'Sonna.asdinata19@gmail.com', '5', 'Perempuan', '1982-04-19', NULL, '2025-07-10 08:14:57', '2025-07-10 08:14:57'),
(4, 357322090027, 'Didiet Ananto Widodo', 31, 'didietwidodo33@gmail.com', '3', 'Perempuan', '1964-03-21', NULL, '2025-07-10 08:14:58', '2025-07-10 08:14:58'),
(5, 357322090007, 'Shindy Ayu Widyaswara', 33, 'shindyayu.widyaswara@gmail.com', '5', 'Perempuan', '1993-10-26', NULL, '2025-07-10 08:16:42', '2025-07-10 08:16:42'),
(6, 357322090013, 'Hilda Seskowati', 34, 'hildayasmin2211@gmail.com', '3', 'Perempuan', '1991-06-18', NULL, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(7, 357322090177, 'Zulfian Arif', 35, 'zulfian.arif@gmail.com', '5', 'Perempuan', '1968-02-29', NULL, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(8, 357323070003, 'Arif Hambali', 36, 'hambali.arif@gmail.com', '5', 'Perempuan', '1983-10-28', NULL, '2025-07-10 08:16:45', '2025-07-10 08:16:45'),
(9, 357323110322, 'Tri Wahyu Utomo', 37, 'my_hygeva@yahoo.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:16:45', '2025-07-10 08:16:45'),
(10, 839724452, 'Dessy Anggrainy', 38, 'dessy.anggrainy87@gmail.com', '3', 'Perempuan', '1987-01-31', NULL, '2025-07-10 08:22:06', '2025-07-10 08:22:06'),
(11, 839814778, 'KUSMILAH', 39, 'Bundakus42300@gmail.com', '3', 'Perempuan', '1973-07-24', NULL, '2025-07-10 08:22:07', '2025-07-10 08:22:07'),
(12, 839804489, 'TITIEK TRISOESILOWATI', 40, 'ndhoxsusie@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:22:07', '2025-07-10 08:22:07'),
(13, 357322090103, 'IKE MARDIANA SADIYAH', 41, 'ikerafi1@gmail.com', '5', 'Perempuan', '1972-09-14', NULL, '2025-07-10 08:25:03', '2025-07-10 08:25:03'),
(14, 357323110133, 'Muhammad Jehan Rabbani', 42, 'mjgila8@gmail.com', '3', 'Perempuan', '2005-04-26', NULL, '2025-07-10 08:29:37', '2025-07-10 08:29:37'),
(15, 357322030004, 'Riyono', 43, 'kopler87@gmail.com', '5', 'Perempuan', '1979-04-22', NULL, '2025-07-10 08:29:38', '2025-07-10 08:29:38'),
(16, 357322030023, 'Ardhea Citra Dhamayanty', 44, 'ardheacitraa2807@gmail.com', '5', 'Perempuan', '1997-07-28', NULL, '2025-07-10 08:37:01', '2025-07-10 08:37:01'),
(17, 357322030026, 'Mila Nurjana', 45, 'aisyah.nurjanah116@gmail.com', '3', 'Perempuan', '1985-04-16', NULL, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(18, 357322030032, 'Ila Nur Chasanah', 46, 'ilanurchasanah5@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(19, 357322050019, 'Khoirunisa Sukma Hadi', 47, 'sukma.khoirunisa21@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(20, 357322100017, 'Yessy Tri Hardiyanti', 48, 'hardiyantiyessy@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:37:03', '2025-07-10 08:37:03'),
(21, 357322090185, 'Indah Wahyuningsih', 49, 'sbw.mlg@gmail.com', '6', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:37:03', '2025-07-10 08:37:03'),
(22, 357323110001, 'Sharon Mahar Tanjung', 50, 'sharonmahartn@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:37:04', '2025-07-10 08:37:04'),
(23, 357322090014, 'Arry Puspitasari', 51, 'trust.indigo@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:38:26', '2025-07-10 08:38:26'),
(24, 357322020041, 'Rujiyani', 52, 'rujiyaniyani@gmail.com', '3', 'Perempuan', '1972-07-19', NULL, '2025-07-10 08:44:15', '2025-07-10 08:44:15'),
(25, 357323030009, 'Theresiana Septioningrum', 53, 'theresiana07@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:44:17', '2025-07-10 08:44:17'),
(26, 357322030009, 'Puji Rahayu', 54, 'doublesix664@gmail.com', '5', 'Perempuan', '1977-11-18', NULL, '2025-07-10 08:46:37', '2025-07-10 08:46:37'),
(27, 357322090108, 'Era Dhani Restari', 55, 'Eradhani588@gmail.com', '3', 'Perempuan', '1976-06-22', NULL, '2025-07-10 08:46:38', '2025-07-10 08:46:38'),
(28, 357322030029, 'ROOS PANDAN WANGI(WIWIN).SH', 56, 'roospandanwangi24@gmail.com', '5', 'Perempuan', '1973-04-26', NULL, '2025-07-10 08:46:38', '2025-07-10 08:46:38'),
(29, 357322030044, 'Farida Achadyah', 57, 'faridachadyah1309@gmail.com', '5', 'Perempuan', '1970-09-13', NULL, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(30, 357322030059, 'Aris Sugiarti', 58, 'mbkaris80@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(31, 357322090163, 'YUNIAR PANDANSARI', 59, 'yuniarpandansari67@gmail.com', '5', 'Perempuan', '1967-06-15', NULL, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(32, 357322100100, 'Rodiyah', 60, 'rodiyah44307@gmail.com', '4', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(33, 357322090417, 'Dewi Ayu Indriani', 61, 'dewia4101@gmail.com', '5', 'Perempuan', '1982-02-22', NULL, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(34, 357323110167, 'HERTIN SULISTYO RINI', 62, 'hertinrini59@gmail.com', '3', 'Perempuan', '1979-09-16', NULL, '2025-07-10 08:46:41', '2025-07-10 08:46:41'),
(35, 357322100385, 'Eka Astuti', 63, 'ekaastuti1980@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(36, 357322090428, 'HENI KUSUMAWATI', 64, 'Henikusuma29@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(37, 357323030003, 'Dicky Ramadhan', 65, 'Dickyrammm97@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:50:13', '2025-07-10 08:50:13'),
(38, 357322030003, 'Juwariyah', 66, 'e85riasuparji@gmail.com', '4', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(39, 357322020022, 'Muhammad Handy Rizki Prasetyo', 67, 'tunjungsekarppl@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(40, 357322010053, 'TEJO WIRAWAN', 68, 'tejowirawan1@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:57:26', '2025-07-10 08:57:26'),
(41, 357322020080, 'Agus Dwi Prasetyo', 69, 'agusdwiprasetyo07@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:57:26', '2025-07-10 08:57:26'),
(42, 357322030031, 'Fenny Gunawan', 70, 'fennymarsudi@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(43, 357322100321, 'ERNAWATI', 71, 'ernaina6@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(44, 357323030002, 'Maulid Diyah Kholis Saputri', 72, 'diyahmaulid234@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 08:57:28', '2025-07-10 08:57:28'),
(45, 840744433, 'Nurfuady Rafi\' Alfauznursy', 73, 'nurfuady1@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 09:09:07', '2025-07-10 09:09:07'),
(46, 357323110096, 'TALITHA ALIFAH', 74, 'talithaalifah99@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 09:30:42', '2025-07-10 09:30:42'),
(47, 357322030027, 'ALFIATUL KHAMIMAH', 75, 'alfi.sewing@gmail.com', '3', 'Perempuan', '1988-10-21', NULL, '2025-07-10 09:30:43', '2025-07-10 09:30:43'),
(48, 357322030035, 'Arinda Putri Dewi', 76, 'dewiarindaputri3@gmail.com', '5', 'Perempuan', '1993-03-22', NULL, '2025-07-10 09:30:43', '2025-07-10 09:30:43'),
(49, 839734549, 'Aulia Rachman', 77, 'armand.m.513@gmail.com', '3', 'Perempuan', '1970-01-01', NULL, '2025-07-10 09:33:34', '2025-07-10 09:33:34'),
(50, 839764446, 'Catur Sandy Cahyono', 78, 'catursandy70@gmail.com', '5', 'Perempuan', '1970-01-01', NULL, '2025-07-10 09:33:34', '2025-07-10 09:33:34'),
(51, 839724505, 'Feri Achmad Ardiansyah', 79, 'feriachmad683@gmail.com', '4', 'Perempuan', '2000-08-23', NULL, '2025-07-10 09:33:35', '2025-07-10 09:33:35'),
(52, 357322040023, 'Ariesta Putri Sayekti', 81, 'Ariestaps9@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 03:58:47', '2025-10-15 03:58:47'),
(53, 357322090317, 'Devita Aprilia Purwitasari', 87, 'devitaaprilia65@gmail.com', 'Tamat D4/S1', 'Perempuan', '1998-04-05', NULL, '2025-10-15 04:43:26', '2025-10-15 04:43:26'),
(54, 357322090100, 'Retno Herawati', 90, 'retno.herawatti@gmail.com', 'Tamat D4/S1', 'Perempuan', '1995-04-24', NULL, '2025-10-15 04:43:27', '2025-10-15 04:43:27'),
(55, 357322100330, 'Wiwik Ambarwati', 95, 'Wiwiekcentil@gmail.com', 'Tamat D4/S1', 'Perempuan', '1990-06-02', NULL, '2025-10-15 04:43:29', '2025-10-15 04:43:29'),
(56, 357322090296, 'YULIATI', 96, 'yulenkayuliati@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-06-30', NULL, '2025-10-15 04:43:30', '2025-10-15 04:43:30'),
(57, 357322090050, 'MIFTAKHUL HIDAYAH', 91, 'emiphid@gmail.com', 'Tamat D4/S1', 'Perempuan', '1976-07-14', NULL, '2025-10-15 04:45:50', '2025-10-15 04:45:50'),
(58, 357322010009, 'Dian Falah Fitriyana', 82, 'dianff19@gmail.com', 'Tamat D4/S1', 'Perempuan', '1992-03-19', NULL, '2025-10-15 04:53:08', '2025-10-15 04:53:08'),
(59, 357322010026, 'SRI WILUJENG', 83, 'ajengsriwilujeng.78@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1978-08-31', NULL, '2025-10-15 04:53:09', '2025-10-15 04:53:09'),
(60, 357322010033, 'Sekar Widiasmara', 84, 'sekar.w.asmara@gmail.com', 'Tamat D4/S1', 'Perempuan', '1988-03-14', NULL, '2025-10-15 04:53:09', '2025-10-15 04:53:09'),
(61, 357322030033, 'Orlin Tiara Oktavia Purnama', 85, 'tiaraorlin@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1999-10-14', NULL, '2025-10-15 04:53:10', '2025-10-15 04:53:10'),
(62, 357322100358, 'Sulastri Ningsih', 86, 'nsulastri685@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1981-05-30', NULL, '2025-10-15 04:53:12', '2025-10-15 04:53:12'),
(63, 357322090029, 'Suhariyanti', 88, 'nurulyantwibisana@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1986-10-14', NULL, '2025-10-15 04:53:13', '2025-10-15 04:53:13'),
(64, 357322090051, 'Anis Zauzzaenah', 89, 'zauza.anis86@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 04:53:14', '2025-10-15 04:53:14'),
(65, 357322090408, 'Ninik Wahyuni', 92, 'ninikwahyuni53@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1978-03-17', NULL, '2025-10-15 04:53:16', '2025-10-15 04:53:16'),
(66, 357322090549, 'Anggraeni Istanti', 93, 'anggraenistantist@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1977-10-18', NULL, '2025-10-15 04:53:17', '2025-10-15 04:53:17'),
(67, 357322090274, 'FITRI HIDAYATI', 94, 'fitrihidayati2108@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1979-08-21', NULL, '2025-10-15 04:53:17', '2025-10-15 04:53:17'),
(68, 357322100264, 'MARISA RAHMAWATI', 97, 'marisarahma06@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 04:53:19', '2025-10-15 04:53:19'),
(69, 357322090161, 'YENI MILAWATI', 100, 'Milawatiyeni1@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1976-06-16', NULL, '2025-10-15 05:04:57', '2025-10-15 05:04:57'),
(70, 357322090370, 'NINA YULIANA PRIYATININGSIH', 101, 'ninasepohrakharaykha@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1984-07-05', NULL, '2025-10-15 05:04:57', '2025-10-15 05:04:57'),
(71, 357322090219, 'Eddy Subagio', 102, 'eddysubagio32@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:04:59', '2025-10-15 05:04:59'),
(72, 357322040008, 'Lilis Sunarmi', 98, 'lilis30sni@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1981-03-30', NULL, '2025-10-15 05:07:02', '2025-10-15 05:07:02'),
(73, 357322090036, 'Diana Christanty Handayani', 99, 'dianachristantyhandayani@gmail.com', 'Tamat D4/S1', 'Perempuan', '1972-03-13', NULL, '2025-10-15 05:07:05', '2025-10-15 05:07:05'),
(74, 357322090544, 'Windy Arum Ningtyas', 107, 'windyberseri@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:11:00', '2025-10-15 05:11:00'),
(75, 357322090128, 'SRI HARTINI', 103, 'titinsri301@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:12:16', '2025-10-15 05:12:16'),
(76, 357322090123, 'SRI HARTATIK', 104, 'sritatik0312@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:12:16', '2025-10-15 05:12:16'),
(77, 357322090393, 'Sri mutini', 105, 'srimutini2016@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:12:18', '2025-10-15 05:12:18'),
(78, 357322090575, 'Enis Dwi Sri Wahyuni', 106, 'enisbudi87@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1988-10-17', NULL, '2025-10-15 05:12:18', '2025-10-15 05:12:18'),
(79, 357323110164, 'Selina Fathriska Ramadani', 112, 'selinafath71@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:21:53', '2025-10-15 05:21:53'),
(80, 357322010072, 'Alifionita Nur Hikmaningtyas', 108, 'alifionita99@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:23:08', '2025-10-15 05:23:08'),
(81, 357322090077, 'LULIS RAHAYUNINGSIH', 109, 'lulisrahayu70@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 05:23:10', '2025-10-15 05:23:10'),
(82, 357322090095, 'Atik Mujiati', 110, 'atiek8885@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1974-03-23', NULL, '2025-10-15 05:23:11', '2025-10-15 05:23:11'),
(83, 357322090471, 'Dewi Agustiningrum', 111, 'agustiningrumdewi@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1977-08-15', NULL, '2025-10-15 05:23:12', '2025-10-15 05:23:12'),
(84, 357322090131, 'Rike indarwati', 113, 'indarwati.rike96@gmail.com', 'Tamat D4/S1', 'Perempuan', '1987-03-31', NULL, '2025-10-15 07:38:43', '2025-10-15 07:38:43'),
(85, 357322090273, 'Eni Widiarti', 114, 'eniwidya1712@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1973-12-17', NULL, '2025-10-15 07:52:06', '2025-10-15 07:52:06'),
(86, 357323110115, 'Fitriatin Yulaikah', 117, 'yullshabreena@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1983-07-18', NULL, '2025-10-15 07:59:37', '2025-10-15 07:59:37'),
(87, 357323110077, 'Mila Amalia Damayanti', 118, 'milaamaliad@gmail.com', 'Tamat D4/S1', 'Perempuan', '2025-07-22', NULL, '2025-10-15 07:59:37', '2025-10-15 07:59:37'),
(88, 357323110098, 'Ani koirunisak', 120, 'anikoirunisak5@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1989-07-05', NULL, '2025-10-15 07:59:38', '2025-10-15 07:59:38'),
(89, 357325050001, 'Dimas Zainul Umar Fahri', 122, 'dimaszainulumarfahri@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:39', '2025-10-15 07:59:39'),
(90, 357322010002, 'Indah Wulandari', 124, 'indah.indahwulandari99@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1995-06-05', NULL, '2025-10-15 07:59:40', '2025-10-15 07:59:40'),
(91, 357322010064, 'Oria Arda Bella', 125, 'oriaardabella@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1982-07-06', NULL, '2025-10-15 07:59:40', '2025-10-15 07:59:40'),
(92, 357322010003, 'Zulfikar Rifqi', 127, 'zr2692@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1992-06-26', NULL, '2025-10-15 07:59:41', '2025-10-15 07:59:41'),
(93, 357322010052, 'Saiful arif', 130, 'sawunkaconk@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:42', '2025-10-15 07:59:42'),
(94, 357322010051, 'Lidya Pradina Ayuningtyas', 134, 'lidyaayuningtyas@gmail.com', 'Tamat D4/S1', 'Perempuan', '1985-07-25', NULL, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(95, 357322030053, 'Yulli Handayani', 135, 'handafani@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1981-07-18', NULL, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(96, 357322020023, 'Indrawati', 136, 'inoxin79@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:44', '2025-10-15 07:59:44'),
(97, 357322030051, 'Arvina', 138, 'Arvinamakmurjaya@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:44', '2025-10-15 07:59:44'),
(98, 357322020017, 'Rr. Nanien Setyaningsih', 139, 'nanien_setyaningsih@yahoo.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(99, 357322010021, 'Titania Franciska Dewi', 140, 'Titaniafranciska11@gmail.com', 'Tamat D4/S1', 'Perempuan', '1998-07-11', NULL, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(100, 357322010024, 'Purwatiningsih', 141, 'galuh.tietie@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(101, 357322010018, 'Sofyan, S.Ap', 143, 'isofyan0381@gmail.com', 'Tamat D4/S1', 'Perempuan', '1981-07-03', NULL, '2025-10-15 07:59:46', '2025-10-15 07:59:46'),
(102, 357322010028, 'Adi Khisbul Wathon', 145, 'kissbull@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(103, 357322020036, 'Novi Inisyahika', 146, 'samjir0n46@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(104, 357322010034, 'Sugeng Hari Priyanto', 149, 'ngekhharipriyanto@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:48', '2025-10-15 07:59:48'),
(105, 357322020016, 'Siti Cholifah', 154, 'siticholifah0607@gmail.com', 'Tamat D4/S1', 'Perempuan', '1967-07-09', NULL, '2025-10-15 07:59:50', '2025-10-15 07:59:50'),
(106, 357322010063, 'Rusmiana', 164, 'rusmianatutut@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:54', '2025-10-15 07:59:54'),
(107, 357322030013, 'Dian Purwanti', 165, 'dianpurwanti49@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1991-06-13', NULL, '2025-10-15 07:59:54', '2025-10-15 07:59:54'),
(108, 357322020070, 'M. Hafizh Al Hanif, SE.', 172, 'hafisnsi@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:56', '2025-10-15 07:59:56'),
(109, 357322020053, 'Rani Karlina', 174, 'leenaran@yahoo.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:57', '2025-10-15 07:59:57'),
(110, 357322020052, 'HERDYAN APRIANTO', 175, 'Dianapri460@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:57', '2025-10-15 07:59:57'),
(111, 357322030036, 'SUNARSIH', 180, 'sunnarsih494@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 07:59:59', '2025-10-15 07:59:59'),
(112, 357322020103, 'Novi mahmudah lailatus stani', 187, 'Staninovi5@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(113, 357322020105, 'Elly Herlinda', 188, 'ellyherlinda3@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(114, 357322020102, 'DZIKRI MUDHOFAR', 189, 'dzikrimudhofar04@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2025-07-04', NULL, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(115, 357322090054, 'Erlin Prasetyowati', 191, '08170525730.a@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:02', '2025-10-15 08:00:02'),
(116, 357322100062, 'Sri Indrayani', 192, 'indrayanisri203@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1985-07-11', NULL, '2025-10-15 08:00:03', '2025-10-15 08:00:03'),
(117, 357322030015, 'Ratrin blester linata', 196, 'blesterratrin@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1991-07-31', NULL, '2025-10-15 08:00:05', '2025-10-15 08:00:05'),
(118, 357322030040, 'Kartika Dwi Ariyani', 198, 'Kartikada04@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:07', '2025-10-15 08:00:07'),
(119, 357322040017, 'Aisni Nurul Rochmah', 202, 'aisni.rochmah@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:08', '2025-10-15 08:00:08'),
(120, 357322090015, 'Irfan Santosa', 203, 'Irfansantoso3084@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1985-07-30', NULL, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(121, 337222050009, 'Rakryan Shelbidilla', 204, 'rakryan52@gmail.com', 'Tamat D4/S1', 'Perempuan', '2025-07-10', NULL, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(122, 357322090010, 'MUSLIHIN', 206, 'caliztamazta@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1974-07-07', NULL, '2025-10-15 08:00:10', '2025-10-15 08:00:10'),
(123, 357322090018, 'VANNI PUJI HERMAWATI', 207, 'vannipuji30@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:10', '2025-10-15 08:00:10'),
(124, 357322090009, 'Azizah', 208, 'zhizha2012@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:11', '2025-10-15 08:00:11'),
(125, 357322090012, 'Wahyu Ika Setyaningsih', 210, 'wahyuikas1980@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:12', '2025-10-15 08:00:12'),
(126, 357322090083, 'Titik Indrawati', 212, 'titikindrawati0507@gmail.com', 'Tamat D4/S1', 'Perempuan', '1980-07-05', NULL, '2025-10-15 08:00:13', '2025-10-15 08:00:13'),
(127, 357322090210, 'FATCHIYAH SE', 218, 'fatchiyah1965@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:14', '2025-10-15 08:00:14'),
(128, 357322090412, 'Chiqmatus Sania', 220, 'Sofyanaprianto01@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:16', '2025-10-15 08:00:16'),
(129, 357322100199, 'FEMMY FIRMAN WIGATI', 221, 'wigatifemmy@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:16', '2025-10-15 08:00:16'),
(130, 357322090330, 'RIZCHA VERDA AMARILLO', 225, 'rizchaverda94@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2025-06-27', NULL, '2025-10-15 08:00:18', '2025-10-15 08:00:18'),
(131, 357322090254, 'Atik purwati', 233, 'atikp3@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:21', '2025-10-15 08:00:21'),
(132, 357322090280, 'Tri Wahyuni', 234, 'khareem3333@gmail.com', 'Tamat D4/S1', 'Perempuan', '1978-06-12', NULL, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(133, 357322100057, 'Bella Novanda', 235, 'akyuncadhangan@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(134, 357322100257, 'Moh Agus Romadhoni', 236, 'romadhoni.mlg0780@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1980-07-27', NULL, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(135, 357322090135, 'Yusnia Rizky Amalia', 237, 'Yusniara88@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1988-06-06', NULL, '2025-10-15 08:00:23', '2025-10-15 08:00:23'),
(136, 357322100344, 'Hanik mashuda', 242, 'Hanikmashuda@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:25', '2025-10-15 08:00:25'),
(137, 357322100029, 'Hanang Asmuntoro', 243, 'kawulohanang@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:26', '2025-10-15 08:00:26'),
(138, 357322090353, 'Puryadi', 244, 'ppuryadi08@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1974-07-16', NULL, '2025-10-15 08:00:26', '2025-10-15 08:00:26'),
(139, 357322090130, 'AL AMIN BAYU MUSTIKA', 245, 'bayualseven2@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:27', '2025-10-15 08:00:27'),
(140, 357322090225, 'Risky Fajar Afrianto', 248, 'riskyfajarr321@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:28', '2025-10-15 08:00:28'),
(141, 357322090198, 'Rinil Indarti', 249, 'rinilndrt@gmail.com', 'Tamat D4/S1', 'Perempuan', '1967-07-26', NULL, '2025-10-15 08:00:29', '2025-10-15 08:00:29'),
(142, 357322090157, 'Amin Yuli Astuti', 251, 'astuti131@gmail.com', 'Tamat D4/S1', 'Perempuan', '1981-07-13', NULL, '2025-10-15 08:00:29', '2025-10-15 08:00:29'),
(143, 357322090286, 'SUGIANTO', 258, 'giantosugiantosugianto323@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(144, 357322090248, 'Anik Hidayati', 259, 'azzahraleon13@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(145, 357322090193, 'Yuyun Rinawati Ningsih', 260, 'yuyun.rinawati75@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1975-06-14', NULL, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(146, 357322100261, 'Maulut ulfa dwiyanti', 264, 'Ulpeupe@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:34', '2025-10-15 08:00:34'),
(147, 357322100222, 'Lilun arbiyanti salatina', 266, 'lilunsalatina@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(148, 357322090577, 'Riris Rukma Nisita', 267, 'riris.rukma@gmail.com', 'Tamat D4/S1', 'Perempuan', '1989-06-19', NULL, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(149, 357322090358, 'Anggi maudy priyanti', 268, 'Anggimaudy42@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1999-06-25', NULL, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(150, 357322090582, 'Vika Lusita Anggraeni', 271, 'vlanggraeni.vla2@gmail.com', 'Tamat D4/S1', 'Perempuan', '1992-07-29', NULL, '2025-10-15 08:00:36', '2025-10-15 08:00:36'),
(151, 357322100204, 'SUSIOWATI', 272, 'Susiowati909@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:36', '2025-10-15 08:00:36'),
(152, 357322100176, 'Waode Pristanti Nuri Rachmawati', 274, 'waodepristanti@gmail.com', 'Tamat S2', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:37', '2025-10-15 08:00:37'),
(153, 357322090525, 'Herni natalia', 276, 'elisabethherni1984@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:38', '2025-10-15 08:00:38'),
(154, 357322090354, 'MAYA INDRIYANI', 279, 'mayaindri03@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:39', '2025-10-15 08:00:39'),
(155, 357322100208, 'Rina indiana', 282, 'adysule12@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:40', '2025-10-15 08:00:40'),
(156, 357322090474, 'ENGGA RESTU DIAN SAGITA', 284, 'rdsengga@gmail.com', 'Tamat D4/S1', 'Perempuan', '1986-06-12', NULL, '2025-10-15 08:00:41', '2025-10-15 08:00:41'),
(157, 357322090566, 'Anni Khoirun Nisa', 287, 'annikhoirunn@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:42', '2025-10-15 08:00:42'),
(158, 357322090530, 'Aataina Thoi\'in', 290, 'aatainathoiin@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:42', '2025-10-15 08:00:42'),
(159, 357322090532, 'NENI YUTRIKASARI', 291, 'neniyutrikasari@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1987-07-24', NULL, '2025-10-15 08:00:43', '2025-10-15 08:00:43'),
(160, 357322090426, 'Sherly anggraeni cahya putri', 292, 'jziiiaannzkr01@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2025-06-25', NULL, '2025-10-15 08:00:43', '2025-10-15 08:00:43'),
(161, 357322090436, 'Cynthia June Indah Widiyasari', 294, 'cynthiajuneiw@gmail.com', 'Tamat D4/S1', 'Perempuan', '1994-06-01', NULL, '2025-10-15 08:00:44', '2025-10-15 08:00:44'),
(162, 357322090466, 'Vita rakhmawati', 299, 'Tarasaga74@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1993-06-30', NULL, '2025-10-15 08:00:46', '2025-10-15 08:00:46'),
(163, 357322090486, 'Radias Tarwoco Putro', 301, 'radias.tarwoco@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:47', '2025-10-15 08:00:47'),
(164, 357322100098, 'SANDRA DEWI SARASWATI', 302, 'sandraiwed83@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(165, 357322100185, 'Wilda Wahyuningsih', 303, 'wilda.wahyuni123@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(166, 357322100250, 'Ika Rahmawati', 304, 'ikarahmakusuma87@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1987-07-28', NULL, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(167, 357322090518, 'Maudini Mutiara Wandarti', 306, 'maudinimutiarawandarti@gmail.com', 'Tamat D4/S1', 'Perempuan', '2025-06-04', NULL, '2025-10-15 08:00:49', '2025-10-15 08:00:49'),
(168, 357323110008, 'Erdina Elfi Riana', 307, 'erdinaelfiriana@gmail.com', 'Tamat D4/S1', 'Perempuan', '1994-07-08', NULL, '2025-10-15 08:00:49', '2025-10-15 08:00:49'),
(169, 357322100500, 'VENNIA DIAN RESTANI', 309, 'Venniadianrestani@gmwil.com', 'Tamat SMS/Sederajat', 'Perempuan', '1999-07-23', NULL, '2025-10-15 08:00:50', '2025-10-15 08:00:50'),
(170, 357322090534, 'Diah Mesti', 310, 'diahmesti.ri@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:51', '2025-10-15 08:00:51'),
(171, 357322100240, 'Satya Bram Wiratma', 311, 'bho.satya@gmail.com', 'Tamat D4/S1', 'Perempuan', '1989-06-23', NULL, '2025-10-15 08:00:51', '2025-10-15 08:00:51'),
(172, 357322100386, 'Chusnul Chotimah', 312, 'chusnul27041991@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:52', '2025-10-15 08:00:52'),
(173, 357322100370, 'Suryani Pradina Mp', 316, 'dinakiran13@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:54', '2025-10-15 08:00:54'),
(174, 357322100070, 'SUCIANI KUMARIAH', 317, 'Sucianikumariah6@gmail.com', 'Tamat D4/S1', 'Perempuan', '1983-07-08', NULL, '2025-10-15 08:00:54', '2025-10-15 08:00:54'),
(175, 357322100096, 'JULIZA TRIPUSPITA RACHMAWATI', 318, 'julyzha69@gmail.com', 'Tamat D4/S1', 'Perempuan', '1995-07-11', NULL, '2025-10-15 08:00:55', '2025-10-15 08:00:55'),
(176, 357322100209, 'Pratiwi dita ayu putri setya permana', 319, 'pratiwidita1404@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:55', '2025-10-15 08:00:55'),
(177, 357322100477, 'Eli Saputri', 323, 'elisaputri682@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:57', '2025-10-15 08:00:57'),
(178, 357324100030, 'ENI SUCI HARIATI', 327, 'kh4risma74@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:59', '2025-10-15 08:00:59'),
(179, 357323110021, 'Andi Bagus Alfrianto', 328, 'alfrianto00@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:00:59', '2025-10-15 08:00:59'),
(180, 357323110003, 'Lina Siti Maryamah', 330, 'stm.lina@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:00', '2025-10-15 08:01:00'),
(181, 350723110151, 'Jati Laksono', 331, 'djati.laksono79@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2025-06-05', NULL, '2025-10-15 08:01:00', '2025-10-15 08:01:00'),
(182, 351824090001, 'NADIA NURBAITI', 334, 'nadianurbaiti13@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:02', '2025-10-15 08:01:02'),
(183, 350223060063, 'Rr Ajar Wikhu Redhati', 336, 'roroajarwikhu@gmail.com', 'Tamat D4/S1', 'Perempuan', '1999-06-09', NULL, '2025-10-15 08:01:02', '2025-10-15 08:01:02'),
(184, 351423080009, 'NABIILAH RAUDHANISA', 337, 'nabiilahr322@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:03', '2025-10-15 08:01:03'),
(185, 357323110207, 'Eka Indah Nur Fatimah Mashud', 340, 'ekin0696@gmail.com', 'Tamat D4/S1', 'Perempuan', '1996-06-12', NULL, '2025-10-15 08:01:04', '2025-10-15 08:01:04'),
(186, 357323110064, 'DYANA IKA SARI', 341, 'dyanaikasari@gmail.com', 'Tamat D4/S1', 'Perempuan', '1988-06-28', NULL, '2025-10-15 08:01:04', '2025-10-15 08:01:04'),
(187, 357323110144, 'Achmad Fatchur Rizqi', 344, 'rizqielfath16095@gmail.com', 'Tamat D4/S1', 'Perempuan', '1998-06-14', NULL, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(188, 357323110129, 'ZAKIYATUL FAKHIROH', 345, 'zakiyatull90@gmail.com', 'Tamat D4/S1', 'Perempuan', '1990-07-21', NULL, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(189, 350723110360, 'Rosi Risa Haris', 346, 'rosiryan1982@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(190, 357323110170, 'Mas Lutfi Afandi', 347, 'masloethfieafandi@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:07', '2025-10-15 08:01:07'),
(191, 357323110321, 'Muhammad Riza Fachruddin', 348, 'Ezataher82@gmail.com', 'Tamat D4/S1', 'Perempuan', '1994-06-10', NULL, '2025-10-15 08:01:07', '2025-10-15 08:01:07'),
(192, 350723110027, 'PUTRI WAHYU SARIARTI', 353, 'putrisariarti24@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:09', '2025-10-15 08:01:09'),
(193, 357323110262, 'Ferary ayu novitasari', 356, 'Feraryayunovi@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:10', '2025-10-15 08:01:10'),
(194, 357323110216, 'Eka Prasetya Nugraha', 357, 'nugrahaekaprasetya@gmail.com', 'Tamat D4/S1', 'Perempuan', '1996-06-14', NULL, '2025-10-15 08:01:10', '2025-10-15 08:01:10'),
(195, 350723110361, 'Mustika Siwi Amumpuni', 359, 'tikacw52@gmail.com', 'Tamat D4/S1', 'Perempuan', '1980-07-13', NULL, '2025-10-15 08:01:11', '2025-10-15 08:01:11'),
(196, 357324100010, 'Tarisya Izzahirah Permana', 361, 'tarisyatarisya@gmail.com', 'Tamat D4/S1', 'Perempuan', '2025-07-25', NULL, '2025-10-15 08:01:11', '2025-10-15 08:01:11'),
(197, 350723110341, 'Laili Dzakiyyah Efendi', 362, 'lailidzakiyyah@gmail.com', 'Tamat D4/S1', 'Perempuan', '2025-07-22', NULL, '2025-10-15 08:01:12', '2025-10-15 08:01:12'),
(198, 357324100025, 'Benny Yogga Pratama', 366, 'yoga@pulsawae.com', 'Tamat D1/D2/D3', 'Perempuan', '1985-07-22', NULL, '2025-10-15 08:01:13', '2025-10-15 08:01:13'),
(199, 357324100020, 'FIRMANSYAH HARIS HERLAMBANG', 370, 'firmansyah.haris.h@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:14', '2025-10-15 08:01:14'),
(200, 357324100027, 'Maudi Eka Putri', 372, 'maudieka4@gmail.com', 'Tamat D4/S1', 'Perempuan', '2025-06-01', NULL, '2025-10-15 08:01:15', '2025-10-15 08:01:15'),
(201, 357324100064, 'Setyarini', 375, 'ririnsetyarini18@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1972-06-26', NULL, '2025-10-15 08:01:16', '2025-10-15 08:01:16'),
(202, 357324100012, 'KEVYN GALUH JUARDINO', 377, 'galuhjuardino@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:17', '2025-10-15 08:01:17'),
(203, 357324100066, 'Nelly Avrilia Nur Putri', 378, 'nellyavrilia67@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:18', '2025-10-15 08:01:18'),
(204, 357324100009, 'KHARISMA LATIFATUNNISA', 379, 'khrisma88@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2025-06-23', NULL, '2025-10-15 08:01:18', '2025-10-15 08:01:18'),
(205, 357325050004, 'DYAH BAYU EKA PRAMESWARI', 380, 'prameswaridyah43@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:19', '2025-10-15 08:01:19'),
(206, 357324100022, 'Nurul azmi', 382, 'RasyaOke60@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:19', '2025-10-15 08:01:19'),
(207, 357324100006, 'Nova Lailatul Zanah', 388, 'nova20856@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:21', '2025-10-15 08:01:21'),
(208, 357324100049, 'Nadine Ranisyademas H.C', 389, 'ranisnadine@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:22', '2025-10-15 08:01:22'),
(209, 357324100067, 'ADYATMA NUGRAHSANTO WICAKSONO', 394, 'adyatmahebat@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:23', '2025-10-15 08:01:23'),
(210, 357324100035, 'Iqbal Firmansyah', 396, 'iqbalfirmansyah971@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:24', '2025-10-15 08:01:24'),
(211, 357324100047, 'Muhammad Khoirul Basyar', 398, 'basyar0106@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1998-06-01', NULL, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(212, 357324100063, 'Naufal Khalid Ghali  muhammad', 399, 'khaliedwoii@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(213, 357325050005, 'Adelisa Rizki Zaharani', 400, 'adelisarizki@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(214, 357325050006, 'Novi Silvia', 401, 'nsilvia2330@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:26', '2025-10-15 08:01:26'),
(215, 357325050007, 'Nurfikri Amru Al-fayi\'nursy', 402, 'nurfikri090905@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:26', '2025-10-15 08:01:26'),
(216, 357325050023, 'Moch Aldi Putra Permata', 406, 'aldiputrapermata16@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2025-06-16', NULL, '2025-10-15 08:01:27', '2025-10-15 08:01:27'),
(217, 357325050022, 'MUHAMMAD CHOLILI', 408, 'cholilibaly@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:01:28', '2025-10-15 08:01:28'),
(218, 357323110055, 'Melinda Kristin', 116, 'melindamelindakristin@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:02:44', '2025-10-15 08:02:44'),
(219, 357324100057, 'Desi harini', 119, 'desiharini2021@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1980-12-26', NULL, '2025-10-15 08:02:45', '2025-10-15 08:02:45'),
(220, 357323110104, 'Christin Mairina Priandini', 121, 'chrstn.mairina@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:02:46', '2025-10-15 08:02:46'),
(221, 357322010067, 'Desi Puspita', 129, 'desiathallah07@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:02:49', '2025-10-15 08:02:49'),
(222, 357322010068, 'Ahmad Fariz Rahmadani', 131, 'farizdani002@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:02:50', '2025-10-15 08:02:50'),
(223, 357322090302, 'Ferry Hardiansyah Hadi Seputra', 137, 'fhardiansyahhadis@gmail.com', 'Tamat D4/S1', 'Perempuan', '1980-12-15', NULL, '2025-10-15 08:02:52', '2025-10-15 08:02:52'),
(224, 357322020018, 'Idham Kholiq', 147, 'idhamcorner@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:02:55', '2025-10-15 08:02:55'),
(225, 357322010036, 'Mulyono Arief', 148, 'mulyonoarief9@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:02:56', '2025-10-15 08:02:56'),
(226, 357322020013, 'Nurul Siti Fatimah', 155, 'adityanurulnirwan@gmail.com', 'Tamat S2', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:02:59', '2025-10-15 08:02:59'),
(227, 357322020008, 'Saiful Akbar', 156, 'akbarnacal@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1973-12-31', NULL, '2025-10-15 08:02:59', '2025-10-15 08:02:59'),
(228, 357322020005, 'Moch.Heri Utomo', 158, 'ireh.ceko@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:00', '2025-10-15 08:03:00'),
(229, 357322010062, 'Vicky Prasetia Bakti', 160, 'ekiviky@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:01', '2025-10-15 08:03:01'),
(230, 357322020011, 'Kadang Pancoro', 161, 'kadangpancoro@gmail.com', 'Tamat D4/S1', 'Perempuan', '1972-12-20', NULL, '2025-10-15 08:03:01', '2025-10-15 08:03:01'),
(231, 357322090229, 'Muhammad Adam Dairis', 169, 'muhadam1220@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1999-12-20', NULL, '2025-10-15 08:03:04', '2025-10-15 08:03:04'),
(232, 357322090134, 'CANDRA SRI UTAMI', 171, 'candrasriutamiu61@gmail.com', 'Tamat D4/S1', 'Perempuan', '1980-12-25', NULL, '2025-10-15 08:03:05', '2025-10-15 08:03:05'),
(233, 357322020089, 'Ignasius Tri Hariyono', 184, 'm.trihariyono@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:09', '2025-10-15 08:03:09'),
(234, 357322020090, 'Umbar Wulandari', 185, 'rengganisumbarwulandari@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:10', '2025-10-15 08:03:10'),
(235, 357322020093, 'Mira Kurniasari', 186, 'Kurniasarimira74@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1974-05-23', NULL, '2025-10-15 08:03:10', '2025-10-15 08:03:10'),
(236, 357323030005, 'NELA DWINGUDIYAHSARI', 193, 'nelakankim@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:12', '2025-10-15 08:03:12'),
(237, 357325050002, 'Raihan Adenoer Ekaputra', 213, 'raihanadenoerekaputra@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:21', '2025-10-15 08:03:21'),
(238, 357322090090, 'Sudarmi', 216, 'pinkynio75@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1975-12-17', NULL, '2025-10-15 08:03:21', '2025-10-15 08:03:21'),
(239, 357322090063, 'Nur Farida', 217, 'rezqianorafardhan20@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1993-12-31', NULL, '2025-10-15 08:03:22', '2025-10-15 08:03:22'),
(240, 357322090066, 'RATIH MAYKURNIA', 222, 'ratihmaykurnia1@gmail.com', 'Tamat D4/S1', 'Perempuan', '1984-05-16', NULL, '2025-10-15 08:03:25', '2025-10-15 08:03:25'),
(241, 357322100355, 'Risha alfa safitri', 223, 'Rishaalfasafitri@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:25', '2025-10-15 08:03:25'),
(242, 357322090143, 'Wiwik Indriani', 224, 'wiwikindriani13@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1993-12-29', NULL, '2025-10-15 08:03:26', '2025-10-15 08:03:26'),
(243, 357322090399, 'MOH SLAMET', 250, 'nurs4llim@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1986-12-16', NULL, '2025-10-15 08:03:36', '2025-10-15 08:03:36'),
(244, 357322090598, 'ISTIKOMAH WIDYA', 252, 'widya.talita27@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:37', '2025-10-15 08:03:37'),
(245, 357322090171, 'Doni Erfanto', 254, 'azka.albaik@gmail.com', 'Tamat D4/S1', 'Perempuan', '1979-12-27', NULL, '2025-10-15 08:03:38', '2025-10-15 08:03:38'),
(246, 357322090181, 'Faisal Amin', 257, 'aminsal426@gmail.com', 'Tamat D4/S1', 'Perempuan', '1999-05-17', NULL, '2025-10-15 08:03:39', '2025-10-15 08:03:39'),
(247, 357322090247, 'Khusnul Kholidah', 269, 'KhusnulKholidah@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:43', '2025-10-15 08:03:43'),
(248, 357322100407, 'Samsul Mashuri', 270, 'samsulmashuri84@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1984-05-14', NULL, '2025-10-15 08:03:43', '2025-10-15 08:03:43'),
(249, 357325050003, 'Muhammad Hanif Firnanda', 275, 'amirfauzie1@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:45', '2025-10-15 08:03:45'),
(250, 357322090295, 'Ika Suryaningsih', 277, 'nafillahikari56@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:45', '2025-10-15 08:03:45'),
(251, 357322090299, 'Dessy Anggraeni', 280, 'dessyanggraeni269@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1990-12-22', NULL, '2025-10-15 08:03:47', '2025-10-15 08:03:47'),
(252, 357322090301, 'MERLINA ADI KURNIAWATI', 283, 'arsyilamalang901@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:03:47', '2025-10-15 08:03:47'),
(253, 357322100420, 'Rani Hafilianawati', 295, 'bundarun.e@gmail.com', 'Tamat D4/S1', 'Perempuan', '1980-05-24', NULL, '2025-10-15 08:03:51', '2025-10-15 08:03:51'),
(254, 357322090470, 'Ismi Alfiah', 296, 'Alfiahismi06@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1991-05-26', NULL, '2025-10-15 08:03:52', '2025-10-15 08:03:52'),
(255, 357322100090, 'FIFIN AGUS PRIYA UTAMA', 298, 'mrayyan3a@gmail.com', 'Tamat D4/S1', 'Perempuan', '1982-05-21', NULL, '2025-10-15 08:03:53', '2025-10-15 08:03:53'),
(256, 357322100419, 'Tria Warsa Enggal', 308, 'triawarsaenggal@gmail.com', 'Tamat D4/S1', 'Perempuan', '1986-12-31', NULL, '2025-10-15 08:03:57', '2025-10-15 08:03:57'),
(257, 357322100425, 'Yasmina Majidah Imanamahirah', 321, 'yasminamajidah@gmail.com', 'Tamat D4/S1', 'Perempuan', '2000-05-25', NULL, '2025-10-15 08:04:01', '2025-10-15 08:04:01'),
(258, 357322100512, 'Qorina Anindhita Prameswari', 324, 'qorinaanindhita708@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:02', '2025-10-15 08:04:02'),
(259, 357322110015, 'Daniel', 325, 'Daniel.sulik88@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1988-05-22', NULL, '2025-10-15 08:04:02', '2025-10-15 08:04:02'),
(260, 357322110029, 'Fahrisyal Ainur Roziqin', 326, 'fahrisyalroz59@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:03', '2025-10-15 08:04:03'),
(261, 357324100040, 'Dian Ratnasari', 329, 'dhianata@yahoo.com', 'Tamat S2', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:04', '2025-10-15 08:04:04'),
(262, 357323110336, 'Dista Dwi Cahyani', 338, 'distadc@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '2001-05-21', NULL, '2025-10-15 08:04:08', '2025-10-15 08:04:08'),
(263, 357324100042, 'Farhan Mirza Zakky', 339, 'farhan.zakky354@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '2001-12-31', NULL, '2025-10-15 08:04:08', '2025-10-15 08:04:08'),
(264, 357323110065, 'Achmad Firmansah', 342, 'raveculture9@gmail.com', 'Tamat D4/S1', 'Perempuan', '1982-05-28', NULL, '2025-10-15 08:04:09', '2025-10-15 08:04:09'),
(265, 350723110283, 'Bahjatul Imaniyyah', 350, 'bahjatul.kerja@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:12', '2025-10-15 08:04:12'),
(266, 357323110211, 'Sofwan Meiridho', 352, 'meiridho@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:13', '2025-10-15 08:04:13'),
(267, 357324100008, 'Helmalia Intan Azzahra', 360, 'Azzahraintan976@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:16', '2025-10-15 08:04:16'),
(268, 357324100024, 'Dewi Hafi Doturochma', 363, 'Kendz34@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:17', '2025-10-15 08:04:17'),
(269, 351323110387, 'Aji Muktioko Utomo', 365, 'muktiokoaji@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1989-12-14', NULL, '2025-10-15 08:04:18', '2025-10-15 08:04:18'),
(270, 357324100070, 'NANDA ANDI PURNAMANSYAH, S.Si.', 373, 'purnamalevi05@gmail.com', 'Tamat D4/S1', 'Perempuan', '2002-05-14', NULL, '2025-10-15 08:04:22', '2025-10-15 08:04:22'),
(271, 357324100054, 'Amelia nur rahma', 374, 'amelianurrahma23@gmail.com', 'Tamat D4/S1', 'Perempuan', '1999-12-23', NULL, '2025-10-15 08:04:22', '2025-10-15 08:04:22'),
(272, 357324100058, 'Nunik Indrawati', 384, 'nunikindraw@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:25', '2025-10-15 08:04:25'),
(273, 357324100056, 'ARIS HIDAYAT', 385, 'aris.ukwk@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:26', '2025-10-15 08:04:26'),
(274, 357324100007, 'Berliano budiono', 387, 'berlianobudiono99@gmail.com', 'Tamat D4/S1', 'Perempuan', '1999-05-15', NULL, '2025-10-15 08:04:26', '2025-10-15 08:04:26'),
(275, 357324100014, 'Ruliyanto Ratno Saputro', 393, 'ruliyantoratno@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:28', '2025-10-15 08:04:28'),
(276, 357325050019, 'Mochamad bandi', 404, 'bandi3453@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:04:32', '2025-10-15 08:04:32'),
(277, 357323110363, 'MOCHAMMAD REVALINO VARGAS', 123, 'revalinovargas684@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:32', '2025-10-15 08:06:32'),
(278, 357322040029, 'Eka Pujiyanti', 126, 'ekapujiyantitutut@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1981-10-28', NULL, '2025-10-15 08:06:33', '2025-10-15 08:06:33'),
(279, 357322010006, 'Avilia agustin', 128, 'vilaagustin988@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:34', '2025-10-15 08:06:34'),
(280, 357322030041, 'M. Rudi', 132, 'bpssimitra@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:35', '2025-10-15 08:06:35'),
(281, 357322020002, 'Suliati', 133, 'Mamacun42@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1976-03-20', NULL, '2025-10-15 08:06:36', '2025-10-15 08:06:36'),
(282, 357322010015, 'Ovita Sellgi Liesdamaiyanti', 142, 'ovsellgi@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:39', '2025-10-15 08:06:39'),
(283, 357322090165, 'Nani Puji Rahayu', 152, 'Rahayu76nani@gmail.com', 'Tamat D4/S1', 'Perempuan', '1974-08-25', NULL, '2025-10-15 08:06:44', '2025-10-15 08:06:44'),
(284, 357322020020, 'BENNY RIYANTO', 153, 'bennyriyan@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:44', '2025-10-15 08:06:44'),
(285, 357322010056, 'M. Asny Fajri Ulama\'i', 157, 'fajrey12@gmail.com', 'Tamat D4/S1', 'Perempuan', '1996-03-24', NULL, '2025-10-15 08:06:46', '2025-10-15 08:06:46'),
(286, 357322020003, 'Catur Sisworini', 159, 'rinicatur09@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:47', '2025-10-15 08:06:47'),
(287, 357322010066, 'Akhmad Budi', 162, 'akhmadbudidg77@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1986-02-21', NULL, '2025-10-15 08:06:48', '2025-10-15 08:06:48'),
(288, 357322020027, 'Woro Ratih Andayani', 163, 'woro.dedykayana@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1985-10-16', NULL, '2025-10-15 08:06:48', '2025-10-15 08:06:48'),
(289, 357322020010, 'LAILATUL FADJRIJAH', 166, 'lfadjrijah@gmail.com', 'Tamat D4/S1', 'Perempuan', '1968-10-24', NULL, '2025-10-15 08:06:49', '2025-10-15 08:06:49'),
(290, 357322020026, 'Nur chasanah', 167, 'nurpsm3@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:49', '2025-10-15 08:06:49'),
(291, 357322020043, 'Anang Maret Tri Basuki', 170, 'alpasigma69@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:51', '2025-10-15 08:06:51'),
(292, 357322020050, 'SRI ASIH', 173, 'asri50526@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:52', '2025-10-15 08:06:52'),
(293, 357322020059, 'Seno Febriyanto', 176, 'senofebryanto@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:53', '2025-10-15 08:06:53'),
(294, 357322020047, 'Moch syarifudin hidayatullah', 177, 'asoy9112@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1992-10-16', NULL, '2025-10-15 08:06:53', '2025-10-15 08:06:53'),
(295, 357322020076, 'Witria Linawati', 178, 'witria.linawati.id@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(296, 357322020057, 'Hargi Pranoto', 179, 'hargipranoto96@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(297, 357322020075, 'Ani mutmainah', 181, 'almozaani@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1983-02-25', NULL, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(298, 357322020086, 'Ina Fayati', 182, 'inafayati@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:55', '2025-10-15 08:06:55');
INSERT INTO `mitras` (`id`, `sobat_id`, `name`, `user_id`, `email`, `pendidikan`, `jenis_kelamin`, `tanggal_lahir`, `photo`, `created_at`, `updated_at`) VALUES
(299, 357322020088, 'CHANDRA WIDY HARTATO', 183, 'wchandra1190@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:06:56', '2025-10-15 08:06:56'),
(300, 357322030021, 'Lensi Rachmawati', 194, 'lensirachma40@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1981-03-14', NULL, '2025-10-15 08:07:00', '2025-10-15 08:07:00'),
(301, 357322030022, 'Yulfaridah Eka Ariani', 195, 'yulfaridah9@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:00', '2025-10-15 08:07:00'),
(302, 357322030024, 'Inawan Pamoengkas', 197, 'Gambyohgamby@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1978-03-20', NULL, '2025-10-15 08:07:01', '2025-10-15 08:07:01'),
(303, 357322030043, 'Meryta Devi Anggraini', 200, 'merytadevi46@gmail.com', 'Tamat D4/S1', 'Perempuan', '1997-03-27', NULL, '2025-10-15 08:07:03', '2025-10-15 08:07:03'),
(304, 357322090056, 'Eryk Sareyang Hasan', 209, 'wgrp2009@gmail.com', 'Tamat D4/S1', 'Perempuan', '1976-08-25', NULL, '2025-10-15 08:07:07', '2025-10-15 08:07:07'),
(305, 357322090021, 'Wahdaniar Sri Utami', 211, 'Wahdaniar.utami@gmail.com', 'Tamat S2', 'Perempuan', '1989-03-17', NULL, '2025-10-15 08:07:08', '2025-10-15 08:07:08'),
(306, 357322100073, 'Marliya Ika Irmawati', 214, 'ikasahroni@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1991-03-13', NULL, '2025-10-15 08:07:09', '2025-10-15 08:07:09'),
(307, 357322090035, 'NURMA KURNIAWATI', 215, 'nurmakurnia0403@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:10', '2025-10-15 08:07:10'),
(308, 357322090147, 'Ida Kurnia wati', 219, 'idakurniawati991@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1979-08-13', NULL, '2025-10-15 08:07:12', '2025-10-15 08:07:12'),
(309, 357322100278, 'EVIE RESTU WILUJENG', 226, 'everestuui@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:15', '2025-10-15 08:07:15'),
(310, 357324100031, 'Titik nurhajati', 227, 'Plongkowati9@gmail.com', 'Tamat D4/S1', 'Perempuan', '1972-10-17', NULL, '2025-10-15 08:07:15', '2025-10-15 08:07:15'),
(311, 357322090365, 'ERIA FEBRI SUSANTI', 229, 'eriasusantiyuhu@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:16', '2025-10-15 08:07:16'),
(312, 357322090535, 'Mitha Munawaroh', 230, 'panich2005@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1987-02-23', NULL, '2025-10-15 08:07:16', '2025-10-15 08:07:16'),
(313, 357322090472, 'Cindy Christiningsih Neno', 231, 'cindyneno897@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1997-08-29', NULL, '2025-10-15 08:07:17', '2025-10-15 08:07:17'),
(314, 357322090164, 'Reny Diana', 232, 'renydiana05@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:17', '2025-10-15 08:07:17'),
(315, 357322100404, 'SOEHERIS', 238, 'herissoe@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:19', '2025-10-15 08:07:19'),
(316, 357322090124, 'Yuny Damayanti', 241, 'lagilagiveronica@gmail.com', 'Tamat D4/S1', 'Perempuan', '1988-03-14', NULL, '2025-10-15 08:07:21', '2025-10-15 08:07:21'),
(317, 357322090303, 'SRI HARI WURYANTI', 246, 'amywury08@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1968-08-19', NULL, '2025-10-15 08:07:23', '2025-10-15 08:07:23'),
(318, 357322090312, 'Yonarisa Febryanti', 253, 'yonarisa84@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:27', '2025-10-15 08:07:27'),
(319, 357324100002, 'Ilham Octavia Pratama', 255, 'ilhamokta1916@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2002-10-15', NULL, '2025-10-15 08:07:28', '2025-10-15 08:07:28'),
(320, 357322090180, 'Suherna', 256, 'suherna143@gmail.com', 'Tamat D4/S1', 'Perempuan', '1968-02-29', NULL, '2025-10-15 08:07:28', '2025-10-15 08:07:28'),
(321, 357322090262, 'Rini Arthanti Agustini', 261, 'arthanti02@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:29', '2025-10-15 08:07:29'),
(322, 357322100399, 'Ivana kartikasari', 262, 'vanaz90687@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1984-03-31', NULL, '2025-10-15 08:07:30', '2025-10-15 08:07:30'),
(323, 357322090228, 'LIA KURNIA SARI', 263, 'liakurnia8815@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1988-08-15', NULL, '2025-10-15 08:07:30', '2025-10-15 08:07:30'),
(324, 357322090217, 'Ridha Nur Rohma', 265, 'ridhanurrohma@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1998-10-17', NULL, '2025-10-15 08:07:31', '2025-10-15 08:07:31'),
(325, 357322100001, 'Kartika juwita', 273, 'carteacajoe@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1983-08-16', NULL, '2025-10-15 08:07:33', '2025-10-15 08:07:33'),
(326, 357322090369, 'Karuniawati', 278, 'Karuniaw71@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1980-03-16', NULL, '2025-10-15 08:07:35', '2025-10-15 08:07:35'),
(327, 357322090314, 'EVA OKTAVININGSIH', 281, 'evaoktaok42@gmail.com', 'Tamat D4/S1', 'Perempuan', '1984-10-24', NULL, '2025-10-15 08:07:36', '2025-10-15 08:07:36'),
(328, 357322090350, 'MEGA CAHYANI', 285, 'megachaa.26@gmail.com', 'Tamat D4/S1', 'Perempuan', '1992-08-26', NULL, '2025-10-15 08:07:37', '2025-10-15 08:07:37'),
(329, 357322090326, 'Septiana iriyanti', 286, 'septiana.qaisara@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1995-10-23', NULL, '2025-10-15 08:07:37', '2025-10-15 08:07:37'),
(330, 357322090345, 'Ita Christina', 288, 'itachristinabesoet@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:38', '2025-10-15 08:07:38'),
(331, 357322090522, 'Agis Suryawan', 289, 'Kinanthiregina1@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1969-08-17', NULL, '2025-10-15 08:07:39', '2025-10-15 08:07:39'),
(332, 357324100038, 'Danty Oktiana Prastiwi', 293, 'oktianadanty@gmail.com', 'Tamat D4/S1', 'Perempuan', '1998-10-14', NULL, '2025-10-15 08:07:40', '2025-10-15 08:07:40'),
(333, 357322090515, 'SULIS INDRAWATI', 297, 'Sulisindra83@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1983-08-25', NULL, '2025-10-15 08:07:41', '2025-10-15 08:07:41'),
(334, 357322090508, 'Zulfa Amelia', 300, 'amelzulfa22@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1999-03-22', NULL, '2025-10-15 08:07:42', '2025-10-15 08:07:42'),
(335, 357322100377, 'Agus Tri Andriatmoko', 305, 'milanino88@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1974-08-28', NULL, '2025-10-15 08:07:44', '2025-10-15 08:07:44'),
(336, 357322100243, 'Aulia Lestari', 314, 'kheylaauriella@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:47', '2025-10-15 08:07:47'),
(337, 357322100045, 'Erwis wirdiyanti', 315, 'Erwisanik@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1973-10-28', NULL, '2025-10-15 08:07:47', '2025-10-15 08:07:47'),
(338, 517122100631, 'Vonny', 320, 'vonnyamalia14@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1976-10-14', NULL, '2025-10-15 08:07:48', '2025-10-15 08:07:48'),
(339, 357323020002, 'Sri Wilujeng', 322, 'sriwilujeng@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:49', '2025-10-15 08:07:49'),
(340, 350723060093, 'Fajar Widiyanto', 332, 'fajarwivi@gmail.com', 'Tamat D4/S1', 'Perempuan', '1980-03-31', NULL, '2025-10-15 08:07:53', '2025-10-15 08:07:53'),
(341, 351323110844, 'Ahmad Rijal Pahlevy', 333, 'ahmadrijalpahlevy@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:53', '2025-10-15 08:07:53'),
(342, 357324100033, 'Ayu Puspita Sari', 335, 'ayupus259@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:54', '2025-10-15 08:07:54'),
(343, 357323110072, 'Bella Agustina Pratiwi', 343, 'agustinapratiwibella@gmail.com', 'Tamat D4/S1', 'Perempuan', '1994-08-13', NULL, '2025-10-15 08:07:57', '2025-10-15 08:07:57'),
(344, 350723110300, 'Istiqomatul Amanah Amalia Nur Azizah', 349, 'azizah.amalia0203@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:07:59', '2025-10-15 08:07:59'),
(345, 357324100043, 'Mukhammad Athok Illah', 351, 'athokillah409@gmail.com', 'Tamat D4/S1', 'Perempuan', '1999-10-28', NULL, '2025-10-15 08:08:00', '2025-10-15 08:08:00'),
(346, 357323110002, 'Lestari', 354, 'kenlestari15@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1973-10-15', NULL, '2025-10-15 08:08:01', '2025-10-15 08:08:01'),
(347, 357324100018, 'Vina Irawati', 355, 'irawativina0@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:01', '2025-10-15 08:08:01'),
(348, 357324100013, 'Widyaningsih', 358, 'widyaningsih.040@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:02', '2025-10-15 08:08:02'),
(349, 350723110362, 'AS\'AD ANDI YAHYA', 364, 'asadyahya00@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2000-03-24', NULL, '2025-10-15 08:08:04', '2025-10-15 08:08:04'),
(350, 357324100044, 'Sapphiretita Oktarissa Farakh Heydina', 367, 'sapphire.ofh@gmail.com', 'Tamat D4/S1', 'Perempuan', '1997-10-31', NULL, '2025-10-15 08:08:05', '2025-10-15 08:08:05'),
(351, 352523110826, 'Robiatul Adawiyah', 368, 'ra.aladawiyah@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:05', '2025-10-15 08:08:05'),
(352, 357324100028, 'Silva ahmad adini', 369, 'Silva.adin.m@gmail.com', 'Tamat D4/S1', 'Perempuan', '1988-08-31', NULL, '2025-10-15 08:08:06', '2025-10-15 08:08:06'),
(353, 357324100021, 'Dewi Martia Ningsih', 371, 'dewimotivator@gmail.com', 'Tamat D4/S1', 'Perempuan', '1991-03-21', NULL, '2025-10-15 08:08:06', '2025-10-15 08:08:06'),
(354, 357324100029, 'Wiwin Widya Wati', 376, 'wiwinwid.www@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:08', '2025-10-15 08:08:08'),
(355, 357324100041, 'Chandra Rusbianto', 383, 'chandrarusbianto@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:11', '2025-10-15 08:08:11'),
(356, 357324100062, 'David Rakha Sutjipto', 386, 'rakhad96@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:12', '2025-10-15 08:08:12'),
(357, 357324100046, 'linda oktavia irawati', 390, 'octalinda28@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1995-10-21', NULL, '2025-10-15 08:08:14', '2025-10-15 08:08:14'),
(358, 357324100050, 'MAHBUBATUN NISWAH', 391, 'mahbubatunniswah14@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:14', '2025-10-15 08:08:14'),
(359, 357324100065, 'Brillian Musa Maulana', 395, 'brillimaulana06022004@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:15', '2025-10-15 08:08:15'),
(360, 357324100036, 'Rani Indahwati', 397, 'rani.indahwati.ri@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:16', '2025-10-15 08:08:16'),
(361, 357325050013, 'Bagus Mahardika Satria Nugraha', 403, 'satriabagus948@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1984-08-27', NULL, '2025-10-15 08:08:18', '2025-10-15 08:08:18'),
(362, 357325050018, 'MERRY KUSUMAWATI', 405, 'ameesuprayogi4@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:19', '2025-10-15 08:08:19'),
(363, 357325050021, 'Enuk Egowati', 407, 'egowati08@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:08:19', '2025-10-15 08:08:19'),
(364, 357324100069, 'Asri Wulandari Purnayudya', 115, 'awpyud@gmail.com', 'Tamat D4/S1', 'Perempuan', '1985-01-19', NULL, '2025-10-15 08:09:46', '2025-10-15 08:09:46'),
(365, 357322010022, 'DWI YOES TINUS PRIHANTO', 144, 'Yoestinusdwi@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:09:56', '2025-10-15 08:09:56'),
(366, 357322010035, 'Moh Kristiawan Trimaryono', 150, 'kristiawan.trimaryono86@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1986-01-30', NULL, '2025-10-15 08:09:58', '2025-10-15 08:09:58'),
(367, 357322090546, 'M. Pancalaharti', 151, 'pancamashuri@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-26', NULL, '2025-10-15 08:09:59', '2025-10-15 08:09:59'),
(368, 357322020001, 'Aqila Nur Rahmalia', 168, 'aqilanr97@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:10:05', '2025-10-15 08:10:05'),
(369, 357322020108, 'Ongki Antonio', 190, 'spiderpakman182@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1990-01-20', NULL, '2025-10-15 08:10:12', '2025-10-15 08:10:12'),
(370, 357322040009, 'Intan Eka Purnama Sari', 199, 'Abyanatar@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1988-01-22', NULL, '2025-10-15 08:10:17', '2025-10-15 08:10:17'),
(371, 357322030046, 'Noer Cahyono Setyawan', 201, 'gangsarsablon@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1983-01-28', NULL, '2025-10-15 08:10:18', '2025-10-15 08:10:18'),
(372, 357322050012, 'Faisal Ahmad Rodhi', 205, 'faisalahmad1697@gmail.com', 'Tamat D1/D2/D3', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:10:20', '2025-10-15 08:10:20'),
(373, 357322090062, 'Rahmah nur cahyani', 228, 'rahmahnurcahyani@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1999-01-13', NULL, '2025-10-15 08:10:29', '2025-10-15 08:10:29'),
(374, 357322090236, 'Angela Ratih Kusuma Andari, SE', 239, 'rkaangela12@gmail.com', 'Tamat D4/S1', 'Perempuan', '1984-01-22', NULL, '2025-10-15 08:10:35', '2025-10-15 08:10:35'),
(375, 357322090119, 'Warti ratna ikawati', 240, 'Ikawatiratna78@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1978-01-28', NULL, '2025-10-15 08:10:36', '2025-10-15 08:10:36'),
(376, 357322090300, 'zainul arifin', 247, 'zainularifin2365@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1965-01-23', NULL, '2025-10-15 08:10:38', '2025-10-15 08:10:38'),
(377, 357322100359, 'SUSWATI', 313, 'suswatisuswati273@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:11:00', '2025-10-15 08:11:00'),
(378, 357324100077, 'GARANITA MANGGAR PUTRI', 381, 'garanitaarsyila@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:11:22', '2025-10-15 08:11:22'),
(379, 357324100011, 'Ravika Indah Kharisma', 392, 'ravikaindah@student.ub.ac.id', 'Tamat D4/S1', 'Perempuan', '2002-01-30', NULL, '2025-10-15 08:11:26', '2025-10-15 08:11:26'),
(380, 357322050011, 'AINUN SEGAR RAHMAWATI', 411, 'ainun.rhmwti@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2025-07-03', NULL, '2025-10-15 08:15:40', '2025-10-15 08:15:40'),
(381, 357325050008, 'Wilda Aulia Fathoni', 413, 'wilda.fath.geo10@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:15:43', '2025-10-15 08:15:43'),
(382, 357325050010, 'Ahmad Habibi', 415, 'ahmadhabibi020919@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:15:44', '2025-10-15 08:15:44'),
(383, 357325050011, 'Dhuiki Nursepta Aldiansyah', 416, 'nurseptadhuiki@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:15:44', '2025-10-15 08:15:44'),
(384, 357325050016, 'Sajidan Wildan Ahmad', 420, 'ahmad.sajidanwildan@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:15:46', '2025-10-15 08:15:46'),
(385, 357323110177, 'MUCHAMMAD RIZAL SYAKIRUDDIN', 409, 'muchrizall09@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:17:07', '2025-10-15 08:17:07'),
(386, 357322090333, 'Irena Salsabila', 412, 'irenasalsabila@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:17:09', '2025-10-15 08:17:09'),
(387, 357325050009, 'Christian Nathanael', 414, 'christiannathanaelsiagian@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2002-01-16', NULL, '2025-10-15 08:17:12', '2025-10-15 08:17:12'),
(388, 357325050012, 'Muhammad Muzaky Verdian Firmansyah', 417, 'muzakyverdian@gmail.com', 'Tamat SMS/Sederajat', 'Perempuan', '2004-05-27', NULL, '2025-10-15 08:17:13', '2025-10-15 08:17:13'),
(389, 357325050014, 'Akemat Rio Setiawan', 418, 'riorachell29@gmail.com', 'Tamat D4/S1', 'Perempuan', '2003-01-29', NULL, '2025-10-15 08:17:13', '2025-10-15 08:17:13'),
(390, 357325050015, 'Moh Taufiq Ismu Abadi', 419, 'ismu.taufiq@gmail.com', 'Tamat D4/S1', 'Perempuan', '1993-05-24', NULL, '2025-10-15 08:17:14', '2025-10-15 08:17:14'),
(391, 357325050017, 'Yonatan Hendra Wijaya', 421, 'yonatan.hendra.2204326@students.um.ac.id', 'Tamat SMS/Sederajat', 'Perempuan', '2004-05-19', NULL, '2025-10-15 08:17:14', '2025-10-15 08:17:14'),
(392, 357322040025, 'Devy Prasetyono', 410, 'devyprasetyono.geo@gmail.com', 'Tamat D4/S1', 'Perempuan', '1970-01-01', NULL, '2025-10-15 08:17:54', '2025-10-15 08:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `mitra_teladans`
--

CREATE TABLE `mitra_teladans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mitra_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL,
  `quarter` tinyint(3) UNSIGNED NOT NULL,
  `avg_rating_1` decimal(4,2) DEFAULT NULL,
  `avg_rating_2` decimal(4,2) DEFAULT NULL,
  `surveys_count` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status_phase_2` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mitra_teladans`
--

INSERT INTO `mitra_teladans` (`id`, `mitra_id`, `team_id`, `year`, `quarter`, `avg_rating_1`, `avg_rating_2`, `surveys_count`, `status_phase_2`, `created_at`, `updated_at`) VALUES
(1, 2, 4, '2025', 2, 4.00, 9.07, 7, 1, '2025-07-10 08:34:41', '2025-07-13 09:28:27'),
(2, 21, 7, '2025', 2, 5.00, 8.64, 3, 1, '2025-07-10 08:42:03', '2025-07-13 09:28:36'),
(3, 2, 2, '2025', 2, 4.67, 9.02, 1, 1, '2025-07-10 09:23:29', '2025-07-13 09:28:22'),
(4, 36, 3, '2025', 2, 4.44, 8.88, 9, 1, '2025-07-10 09:23:32', '2025-07-13 09:28:25'),
(5, 50, 6, '2025', 2, 5.00, 9.10, 1, 1, '2025-07-10 09:33:44', '2025-07-13 09:28:33'),
(6, 13, 5, '2025', 2, 4.67, 8.82, 1, 1, '2025-07-10 09:54:12', '2025-07-13 09:28:30'),
(7, 21, 7, '2025', 3, 4.78, 8.48, 3, 1, '2025-10-15 04:27:46', '2025-10-17 07:05:32'),
(8, 66, 2, '2025', 3, 4.84, 8.60, 4, 1, '2025-10-15 05:16:13', '2025-10-17 07:06:06'),
(9, 5, 4, '2025', 3, 4.11, 8.55, 3, 1, '2025-10-15 07:28:47', '2025-10-17 07:06:02'),
(10, 43, 3, '2025', 3, 5.00, 8.65, 4, 1, '2025-10-15 07:40:53', '2025-10-17 07:06:04'),
(11, 1, 5, '2025', 3, 5.00, 8.73, 2, 1, '2025-10-15 07:55:24', '2025-10-17 07:05:58'),
(12, 371, 6, '2025', 3, 4.67, 8.50, 2, 1, '2025-10-15 08:28:34', '2025-10-17 07:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 422),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 21),
(5, 'App\\Models\\User', 24);

-- --------------------------------------------------------

--
-- Table structure for table `nilai1s`
--

CREATE TABLE `nilai1s` (
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `aspek1` tinyint(3) UNSIGNED NOT NULL,
  `aspek2` tinyint(3) UNSIGNED NOT NULL,
  `aspek3` tinyint(3) UNSIGNED NOT NULL,
  `rerata` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai1s`
--

INSERT INTO `nilai1s` (`transaction_id`, `aspek1`, `aspek2`, `aspek3`, `rerata`, `created_at`, `updated_at`) VALUES
(2, 4, 4, 4, 4.00, '2025-07-10 08:14:57', '2025-07-10 08:14:57'),
(3, 4, 4, 4, 4.00, '2025-07-10 08:14:57', '2025-07-10 08:14:57'),
(4, 4, 4, 4, 4.00, '2025-07-10 08:14:58', '2025-07-10 08:14:58'),
(1, 4, 4, 4, 4.00, '2025-07-10 08:14:58', '2025-07-10 08:14:58'),
(5, 4, 4, 4, 4.00, '2025-07-10 08:16:42', '2025-07-10 08:16:42'),
(6, 4, 4, 4, 4.00, '2025-07-10 08:16:42', '2025-07-10 08:16:42'),
(7, 4, 4, 4, 4.00, '2025-07-10 08:16:43', '2025-07-10 08:16:43'),
(8, 4, 4, 4, 4.00, '2025-07-10 08:16:43', '2025-07-10 08:16:43'),
(9, 4, 4, 4, 4.00, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(10, 4, 4, 4, 4.00, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(11, 4, 4, 4, 4.00, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(12, 4, 4, 4, 4.00, '2025-07-10 08:16:45', '2025-07-10 08:16:45'),
(13, 4, 4, 4, 4.00, '2025-07-10 08:16:45', '2025-07-10 08:16:45'),
(14, 4, 4, 4, 4.00, '2025-07-10 08:19:42', '2025-07-10 08:19:42'),
(15, 4, 4, 4, 4.00, '2025-07-10 08:19:42', '2025-07-10 08:19:42'),
(16, 4, 4, 4, 4.00, '2025-07-10 08:19:43', '2025-07-10 08:19:43'),
(17, 4, 4, 4, 4.00, '2025-07-10 08:19:43', '2025-07-10 08:19:43'),
(18, 4, 4, 4, 4.00, '2025-07-10 08:19:43', '2025-07-10 08:19:43'),
(19, 4, 4, 4, 4.00, '2025-07-10 08:19:44', '2025-07-10 08:19:44'),
(20, 4, 4, 4, 4.00, '2025-07-10 08:19:44', '2025-07-10 08:19:44'),
(21, 4, 4, 4, 4.00, '2025-07-10 08:19:44', '2025-07-10 08:19:44'),
(22, 4, 4, 4, 4.00, '2025-07-10 08:19:45', '2025-07-10 08:19:45'),
(23, 4, 4, 4, 4.00, '2025-07-10 08:22:06', '2025-07-10 08:22:06'),
(24, 4, 4, 4, 4.00, '2025-07-10 08:22:06', '2025-07-10 08:22:06'),
(25, 4, 5, 4, 4.33, '2025-07-10 08:22:06', '2025-07-10 08:22:06'),
(26, 4, 4, 4, 4.00, '2025-07-10 08:22:07', '2025-07-10 08:22:07'),
(27, 4, 4, 4, 4.00, '2025-07-10 08:22:07', '2025-07-10 08:22:07'),
(28, 4, 4, 4, 4.00, '2025-07-10 08:22:08', '2025-07-10 08:22:08'),
(29, 4, 4, 4, 4.00, '2025-07-10 08:23:37', '2025-07-10 08:23:37'),
(30, 4, 4, 4, 4.00, '2025-07-10 08:25:02', '2025-07-10 08:25:02'),
(31, 4, 4, 4, 4.00, '2025-07-10 08:25:02', '2025-07-10 08:25:02'),
(32, 4, 4, 4, 4.00, '2025-07-10 08:25:03', '2025-07-10 08:25:03'),
(33, 4, 4, 4, 4.00, '2025-07-10 08:25:03', '2025-07-10 08:25:03'),
(34, 4, 4, 4, 4.00, '2025-07-10 08:28:04', '2025-07-10 08:28:04'),
(35, 4, 4, 4, 4.00, '2025-07-10 08:28:04', '2025-07-10 08:28:04'),
(36, 4, 4, 4, 4.00, '2025-07-10 08:28:04', '2025-07-10 08:28:04'),
(37, 4, 4, 4, 4.00, '2025-07-10 08:29:37', '2025-07-10 08:29:37'),
(38, 4, 4, 4, 4.00, '2025-07-10 08:29:37', '2025-07-10 08:29:37'),
(39, 4, 4, 4, 4.00, '2025-07-10 08:29:37', '2025-07-10 08:29:37'),
(40, 4, 4, 4, 4.00, '2025-07-10 08:29:38', '2025-07-10 08:29:38'),
(41, 4, 4, 4, 4.00, '2025-07-10 08:29:38', '2025-07-10 08:29:38'),
(42, 4, 4, 4, 4.00, '2025-07-10 08:29:38', '2025-07-10 08:29:38'),
(43, 4, 4, 4, 4.00, '2025-07-10 08:29:39', '2025-07-10 08:29:39'),
(44, 4, 4, 4, 4.00, '2025-07-10 08:29:39', '2025-07-10 08:29:39'),
(45, 4, 4, 4, 4.00, '2025-07-10 08:29:39', '2025-07-10 08:29:39'),
(46, 4, 4, 4, 4.00, '2025-07-10 08:29:40', '2025-07-10 08:29:40'),
(47, 4, 4, 4, 4.00, '2025-07-10 08:29:40', '2025-07-10 08:29:40'),
(48, 4, 4, 4, 4.00, '2025-07-10 08:29:40', '2025-07-10 08:29:40'),
(49, 4, 4, 4, 4.00, '2025-07-10 08:31:02', '2025-07-10 08:31:02'),
(50, 4, 4, 4, 4.00, '2025-07-10 08:31:03', '2025-07-10 08:31:03'),
(51, 5, 5, 5, 5.00, '2025-07-10 08:37:01', '2025-07-10 08:37:01'),
(52, 4, 5, 5, 4.67, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(53, 4, 5, 5, 4.67, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(54, 5, 4, 5, 4.67, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(55, 5, 4, 5, 4.67, '2025-07-10 08:37:03', '2025-07-10 08:37:03'),
(56, 5, 5, 5, 5.00, '2025-07-10 08:37:03', '2025-07-10 08:37:03'),
(57, 5, 4, 5, 4.67, '2025-07-10 08:37:04', '2025-07-10 08:37:04'),
(58, 5, 4, 5, 4.67, '2025-07-10 08:38:25', '2025-07-10 08:38:25'),
(59, 5, 5, 4, 4.67, '2025-07-10 08:38:25', '2025-07-10 08:38:25'),
(60, 5, 4, 5, 4.67, '2025-07-10 08:38:26', '2025-07-10 08:38:26'),
(61, 5, 4, 4, 4.33, '2025-07-10 08:38:26', '2025-07-10 08:38:26'),
(62, 5, 5, 5, 5.00, '2025-07-10 08:38:27', '2025-07-10 08:38:27'),
(63, 5, 5, 5, 5.00, '2025-07-10 08:38:27', '2025-07-10 08:38:27'),
(64, 5, 5, 5, 5.00, '2025-07-10 08:38:28', '2025-07-10 08:38:28'),
(65, 5, 5, 5, 5.00, '2025-07-10 08:40:33', '2025-07-10 08:40:33'),
(66, 5, 4, 5, 4.67, '2025-07-10 08:40:34', '2025-07-10 08:40:34'),
(67, 5, 5, 5, 5.00, '2025-07-10 08:40:34', '2025-07-10 08:40:34'),
(68, 5, 4, 5, 4.67, '2025-07-10 08:40:34', '2025-07-10 08:40:34'),
(69, 4, 5, 5, 4.67, '2025-07-10 08:40:35', '2025-07-10 08:40:35'),
(70, 4, 5, 5, 4.67, '2025-07-10 08:40:35', '2025-07-10 08:40:35'),
(71, 5, 5, 5, 5.00, '2025-07-10 08:41:53', '2025-07-10 08:41:53'),
(72, 5, 5, 5, 5.00, '2025-07-10 08:41:53', '2025-07-10 08:41:53'),
(73, 5, 5, 5, 5.00, '2025-07-10 08:41:53', '2025-07-10 08:41:53'),
(74, 5, 4, 5, 4.67, '2025-07-10 08:44:15', '2025-07-10 08:44:15'),
(75, 4, 5, 5, 4.67, '2025-07-10 08:44:15', '2025-07-10 08:44:15'),
(76, 4, 5, 4, 4.33, '2025-07-10 08:44:15', '2025-07-10 08:44:15'),
(77, 4, 4, 4, 4.00, '2025-07-10 08:44:16', '2025-07-10 08:44:16'),
(78, 4, 5, 5, 4.67, '2025-07-10 08:44:16', '2025-07-10 08:44:16'),
(79, 4, 4, 4, 4.00, '2025-07-10 08:44:17', '2025-07-10 08:44:17'),
(80, 4, 4, 5, 4.33, '2025-07-10 08:46:37', '2025-07-10 08:46:37'),
(81, 4, 4, 4, 4.00, '2025-07-10 08:46:38', '2025-07-10 08:46:38'),
(82, 4, 5, 4, 4.33, '2025-07-10 08:46:38', '2025-07-10 08:46:38'),
(83, 4, 4, 5, 4.33, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(84, 4, 5, 4, 4.33, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(85, 4, 5, 5, 4.67, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(86, 4, 4, 4, 4.00, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(87, 4, 4, 4, 4.00, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(88, 4, 4, 4, 4.00, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(89, 4, 4, 4, 4.00, '2025-07-10 08:46:41', '2025-07-10 08:46:41'),
(91, 5, 5, 5, 5.00, '2025-07-10 08:50:11', '2025-07-10 08:50:11'),
(92, 5, 5, 5, 5.00, '2025-07-10 08:50:11', '2025-07-10 08:50:11'),
(93, 5, 5, 5, 5.00, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(94, 5, 5, 5, 5.00, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(95, 5, 4, 5, 4.67, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(96, 5, 4, 5, 4.67, '2025-07-10 08:50:13', '2025-07-10 08:50:13'),
(97, 5, 4, 5, 4.67, '2025-07-10 08:51:43', '2025-07-10 08:51:43'),
(98, 5, 5, 5, 5.00, '2025-07-10 08:51:43', '2025-07-10 08:51:43'),
(99, 5, 5, 5, 5.00, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(100, 5, 4, 5, 4.67, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(101, 5, 5, 5, 5.00, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(102, 5, 5, 5, 5.00, '2025-07-10 08:57:26', '2025-07-10 08:57:26'),
(103, 5, 4, 4, 4.33, '2025-07-10 08:57:26', '2025-07-10 08:57:26'),
(104, 5, 5, 5, 5.00, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(105, 5, 5, 5, 5.00, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(106, 5, 5, 5, 5.00, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(107, 5, 4, 4, 4.33, '2025-07-10 08:57:28', '2025-07-10 08:57:28'),
(108, 5, 4, 4, 4.33, '2025-07-10 08:57:28', '2025-07-10 08:57:28'),
(109, 5, 4, 4, 4.33, '2025-07-10 08:58:48', '2025-07-10 08:58:48'),
(110, 5, 4, 4, 4.33, '2025-07-10 08:58:48', '2025-07-10 08:58:48'),
(111, 5, 5, 5, 5.00, '2025-07-10 08:58:49', '2025-07-10 08:58:49'),
(112, 5, 4, 4, 4.33, '2025-07-10 08:58:49', '2025-07-10 08:58:49'),
(113, 5, 4, 4, 4.33, '2025-07-10 08:58:50', '2025-07-10 08:58:50'),
(114, 5, 5, 5, 5.00, '2025-07-10 08:58:51', '2025-07-10 08:58:51'),
(115, 5, 4, 4, 4.33, '2025-07-10 08:58:51', '2025-07-10 08:58:51'),
(116, 5, 5, 5, 5.00, '2025-07-10 09:01:33', '2025-07-10 09:01:33'),
(117, 5, 5, 5, 5.00, '2025-07-10 09:01:33', '2025-07-10 09:01:33'),
(118, 5, 4, 4, 4.33, '2025-07-10 09:01:33', '2025-07-10 09:01:33'),
(119, 5, 5, 5, 5.00, '2025-07-10 09:01:34', '2025-07-10 09:01:34'),
(120, 5, 4, 4, 4.33, '2025-07-10 09:01:34', '2025-07-10 09:01:34'),
(121, 5, 4, 4, 4.33, '2025-07-10 09:09:07', '2025-07-10 09:09:07'),
(122, 5, 4, 5, 4.67, '2025-07-10 09:11:17', '2025-07-10 09:11:17'),
(123, 5, 4, 4, 4.33, '2025-07-10 09:12:23', '2025-07-10 09:12:23'),
(124, 5, 5, 5, 5.00, '2025-07-10 09:18:38', '2025-07-10 09:18:38'),
(125, 5, 4, 4, 4.33, '2025-07-10 09:18:39', '2025-07-10 09:18:39'),
(126, 5, 4, 4, 4.33, '2025-07-10 09:20:00', '2025-07-10 09:20:00'),
(127, 5, 4, 4, 4.33, '2025-07-10 09:21:58', '2025-07-10 09:21:58'),
(128, 5, 5, 5, 5.00, '2025-07-10 09:22:49', '2025-07-10 09:22:49'),
(129, 5, 5, 5, 5.00, '2025-07-10 09:22:50', '2025-07-10 09:22:50'),
(130, 5, 5, 5, 5.00, '2025-07-10 09:22:50', '2025-07-10 09:22:50'),
(131, 5, 4, 4, 4.33, '2025-07-10 09:22:50', '2025-07-10 09:22:50'),
(132, 5, 5, 5, 5.00, '2025-07-10 09:29:08', '2025-07-10 09:29:08'),
(133, 5, 5, 5, 5.00, '2025-07-10 09:29:08', '2025-07-10 09:29:08'),
(134, 5, 5, 4, 4.67, '2025-07-10 09:29:09', '2025-07-10 09:29:09'),
(135, 5, 5, 4, 4.67, '2025-07-10 09:30:42', '2025-07-10 09:30:42'),
(136, 5, 5, 4, 4.67, '2025-07-10 09:30:42', '2025-07-10 09:30:42'),
(137, 5, 4, 5, 4.67, '2025-07-10 09:30:43', '2025-07-10 09:30:43'),
(138, 5, 5, 5, 5.00, '2025-07-10 09:30:43', '2025-07-10 09:30:43'),
(139, 5, 5, 5, 5.00, '2025-07-10 09:30:44', '2025-07-10 09:30:44'),
(140, 5, 5, 4, 4.67, '2025-07-10 09:33:34', '2025-07-10 09:33:34'),
(141, 5, 5, 5, 5.00, '2025-07-10 09:33:35', '2025-07-10 09:33:35'),
(142, 4, 5, 5, 4.67, '2025-07-10 09:33:35', '2025-07-10 09:33:35'),
(143, 4, 4, 4, 4.00, '2025-10-15 03:51:40', '2025-10-15 03:51:40'),
(144, 4, 4, 4, 4.00, '2025-10-15 03:51:40', '2025-10-15 03:51:40'),
(145, 4, 5, 4, 4.33, '2025-10-15 03:51:41', '2025-10-15 03:51:41'),
(146, 4, 4, 4, 4.00, '2025-10-15 03:51:41', '2025-10-15 03:51:41'),
(147, 4, 5, 4, 4.33, '2025-10-15 03:51:41', '2025-10-15 03:51:41'),
(148, 4, 4, 4, 4.00, '2025-10-15 03:51:42', '2025-10-15 03:51:42'),
(149, 4, 5, 4, 4.33, '2025-10-15 03:51:42', '2025-10-15 03:51:42'),
(150, 4, 4, 4, 4.00, '2025-10-15 03:51:42', '2025-10-15 03:51:42'),
(151, 4, 5, 4, 4.33, '2025-10-15 03:51:43', '2025-10-15 03:51:43'),
(152, 4, 5, 4, 4.33, '2025-10-15 03:51:43', '2025-10-15 03:51:43'),
(153, 4, 4, 4, 4.00, '2025-10-15 03:51:43', '2025-10-15 03:51:43'),
(154, 4, 4, 4, 4.00, '2025-10-15 03:51:44', '2025-10-15 03:51:44'),
(155, 4, 4, 4, 4.00, '2025-10-15 03:55:14', '2025-10-15 03:55:14'),
(156, 4, 4, 4, 4.00, '2025-10-15 03:55:15', '2025-10-15 03:55:15'),
(157, 4, 5, 4, 4.33, '2025-10-15 03:55:15', '2025-10-15 03:55:15'),
(158, 4, 4, 4, 4.00, '2025-10-15 03:58:47', '2025-10-15 03:58:47'),
(159, 4, 4, 4, 4.00, '2025-10-15 04:09:53', '2025-10-15 04:09:53'),
(160, 4, 5, 4, 4.33, '2025-10-15 04:09:54', '2025-10-15 04:09:54'),
(161, 4, 4, 4, 4.00, '2025-10-15 04:09:54', '2025-10-15 04:09:54'),
(162, 4, 4, 4, 4.00, '2025-10-15 04:12:05', '2025-10-15 04:12:05'),
(163, 4, 5, 4, 4.33, '2025-10-15 04:12:06', '2025-10-15 04:12:06'),
(164, 4, 4, 4, 4.00, '2025-10-15 04:12:06', '2025-10-15 04:12:06'),
(165, 4, 5, 4, 4.33, '2025-10-15 04:16:52', '2025-10-15 04:16:52'),
(166, 4, 4, 4, 4.00, '2025-10-15 04:16:52', '2025-10-15 04:16:52'),
(167, 4, 4, 4, 4.00, '2025-10-15 04:16:52', '2025-10-15 04:16:52'),
(168, 4, 5, 4, 4.33, '2025-10-15 04:16:53', '2025-10-15 04:16:53'),
(169, 4, 4, 4, 4.00, '2025-10-15 04:16:53', '2025-10-15 04:16:53'),
(170, 4, 5, 4, 4.33, '2025-10-15 04:16:53', '2025-10-15 04:16:53'),
(171, 4, 4, 4, 4.00, '2025-10-15 04:16:54', '2025-10-15 04:16:54'),
(172, 4, 4, 4, 4.00, '2025-10-15 04:16:54', '2025-10-15 04:16:54'),
(173, 4, 4, 4, 4.00, '2025-10-15 04:16:54', '2025-10-15 04:16:54'),
(174, 5, 5, 5, 5.00, '2025-10-15 04:20:46', '2025-10-15 04:20:46'),
(175, 4, 5, 5, 4.67, '2025-10-15 04:20:46', '2025-10-15 04:20:46'),
(176, 4, 5, 5, 4.67, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(177, 5, 4, 5, 4.67, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(178, 5, 5, 5, 5.00, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(179, 5, 5, 5, 5.00, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(180, 5, 5, 4, 4.67, '2025-10-15 04:22:24', '2025-10-15 04:22:24'),
(181, 4, 5, 5, 4.67, '2025-10-15 04:22:24', '2025-10-15 04:22:24'),
(182, 4, 5, 5, 4.67, '2025-10-15 04:22:24', '2025-10-15 04:22:24'),
(183, 4, 5, 5, 4.67, '2025-10-15 04:22:25', '2025-10-15 04:22:25'),
(184, 4, 5, 5, 4.67, '2025-10-15 04:22:25', '2025-10-15 04:22:25'),
(185, 4, 5, 5, 4.67, '2025-10-15 04:22:26', '2025-10-15 04:22:26'),
(186, 5, 5, 5, 5.00, '2025-10-15 04:22:26', '2025-10-15 04:22:26'),
(187, 5, 5, 4, 4.67, '2025-10-15 04:23:41', '2025-10-15 04:23:41'),
(188, 5, 5, 4, 4.67, '2025-10-15 04:23:41', '2025-10-15 04:23:41'),
(189, 5, 5, 5, 5.00, '2025-10-15 04:23:42', '2025-10-15 04:23:42'),
(190, 5, 5, 4, 4.67, '2025-10-15 04:23:42', '2025-10-15 04:23:42'),
(191, 5, 5, 4, 4.67, '2025-10-15 04:23:42', '2025-10-15 04:23:42'),
(192, 5, 5, 4, 4.67, '2025-10-15 04:23:43', '2025-10-15 04:23:43'),
(193, 5, 5, 5, 5.00, '2025-10-15 04:27:12', '2025-10-15 04:27:12'),
(194, 4, 5, 5, 4.67, '2025-10-15 04:27:13', '2025-10-15 04:27:13'),
(195, 4, 5, 5, 4.67, '2025-10-15 04:27:13', '2025-10-15 04:27:13'),
(196, 5, 4, 5, 4.67, '2025-10-15 04:27:13', '2025-10-15 04:27:13'),
(197, 5, 4, 5, 4.67, '2025-10-15 04:27:14', '2025-10-15 04:27:14'),
(198, 4, 5, 5, 4.67, '2025-10-15 04:27:14', '2025-10-15 04:27:14'),
(199, 5, 4, 5, 4.67, '2025-10-15 04:27:14', '2025-10-15 04:27:14'),
(200, 4, 5, 4, 4.33, '2025-10-15 04:33:03', '2025-10-15 04:33:03'),
(201, 5, 5, 5, 5.00, '2025-10-15 04:33:04', '2025-10-15 04:33:04'),
(202, 5, 5, 4, 4.67, '2025-10-15 04:33:04', '2025-10-15 04:33:04'),
(203, 4, 4, 4, 4.00, '2025-10-15 04:33:05', '2025-10-15 04:33:05'),
(204, 4, 4, 4, 4.00, '2025-10-15 04:33:05', '2025-10-15 04:33:05'),
(205, 4, 4, 4, 4.00, '2025-10-15 04:33:06', '2025-10-15 04:33:06'),
(206, 4, 4, 4, 4.00, '2025-10-15 04:33:06', '2025-10-15 04:33:06'),
(207, 4, 4, 4, 4.00, '2025-10-15 04:33:07', '2025-10-15 04:33:07'),
(208, 4, 4, 4, 4.00, '2025-10-15 04:33:08', '2025-10-15 04:33:08'),
(209, 4, 4, 4, 4.00, '2025-10-15 04:33:10', '2025-10-15 04:33:10'),
(210, 4, 4, 4, 4.00, '2025-10-15 04:33:10', '2025-10-15 04:33:10'),
(211, 5, 5, 5, 5.00, '2025-10-15 04:33:12', '2025-10-15 04:33:12'),
(212, 4, 4, 4, 4.00, '2025-10-15 04:33:12', '2025-10-15 04:33:12'),
(213, 4, 4, 5, 4.33, '2025-10-15 04:43:26', '2025-10-15 04:43:26'),
(214, 4, 4, 4, 4.00, '2025-10-15 04:43:27', '2025-10-15 04:43:27'),
(215, 4, 4, 4, 4.00, '2025-10-15 04:43:29', '2025-10-15 04:43:29'),
(216, 4, 4, 5, 4.33, '2025-10-15 04:43:30', '2025-10-15 04:43:30'),
(217, 4, 4, 4, 4.00, '2025-10-15 04:45:50', '2025-10-15 04:45:50'),
(218, 4, 4, 5, 4.33, '2025-10-15 04:53:08', '2025-10-15 04:53:08'),
(219, 5, 5, 5, 5.00, '2025-10-15 04:53:09', '2025-10-15 04:53:09'),
(220, 3, 4, 4, 3.67, '2025-10-15 04:53:09', '2025-10-15 04:53:09'),
(221, 4, 3, 4, 3.67, '2025-10-15 04:53:10', '2025-10-15 04:53:10'),
(222, 3, 3, 3, 3.00, '2025-10-15 04:53:12', '2025-10-15 04:53:12'),
(223, 4, 4, 4, 4.00, '2025-10-15 04:53:13', '2025-10-15 04:53:13'),
(224, 4, 4, 4, 4.00, '2025-10-15 04:53:14', '2025-10-15 04:53:14'),
(225, 4, 4, 4, 4.00, '2025-10-15 04:53:16', '2025-10-15 04:53:16'),
(226, 5, 5, 5, 5.00, '2025-10-15 04:53:17', '2025-10-15 04:53:17'),
(227, 4, 4, 4, 4.00, '2025-10-15 04:53:17', '2025-10-15 04:53:17'),
(228, 4, 4, 4, 4.00, '2025-10-15 04:53:19', '2025-10-15 04:53:19'),
(229, 5, 5, 5, 5.00, '2025-10-15 04:55:03', '2025-10-15 04:55:03'),
(230, 4, 5, 5, 4.67, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(231, 4, 5, 4, 4.33, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(232, 5, 5, 4, 4.67, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(233, 4, 5, 4, 4.33, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(234, 4, 3, 4, 3.67, '2025-10-15 04:55:05', '2025-10-15 04:55:05'),
(235, 4, 5, 5, 4.67, '2025-10-15 04:55:05', '2025-10-15 04:55:05'),
(236, 4, 5, 5, 4.67, '2025-10-15 04:55:06', '2025-10-15 04:55:06'),
(237, 4, 5, 5, 4.67, '2025-10-15 04:55:06', '2025-10-15 04:55:06'),
(238, 5, 5, 5, 5.00, '2025-10-15 04:55:07', '2025-10-15 04:55:07'),
(239, 4, 5, 4, 4.33, '2025-10-15 04:55:08', '2025-10-15 04:55:08'),
(240, 4, 5, 5, 4.67, '2025-10-15 04:55:08', '2025-10-15 04:55:08'),
(241, 5, 5, 4, 4.67, '2025-10-15 04:55:09', '2025-10-15 04:55:09'),
(242, 4, 5, 4, 4.33, '2025-10-15 04:55:09', '2025-10-15 04:55:09'),
(243, 5, 5, 5, 5.00, '2025-10-15 04:55:09', '2025-10-15 04:55:09'),
(244, 4, 5, 4, 4.33, '2025-10-15 04:55:10', '2025-10-15 04:55:10'),
(245, 4, 5, 5, 4.67, '2025-10-15 05:04:57', '2025-10-15 05:04:57'),
(246, 4, 5, 5, 4.67, '2025-10-15 05:04:57', '2025-10-15 05:04:57'),
(247, 5, 5, 5, 5.00, '2025-10-15 05:04:59', '2025-10-15 05:04:59'),
(248, 5, 5, 4, 4.67, '2025-10-15 05:07:02', '2025-10-15 05:07:02'),
(249, 5, 4, 5, 4.67, '2025-10-15 05:07:05', '2025-10-15 05:07:05'),
(250, 4, 4, 4, 4.00, '2025-10-15 05:10:50', '2025-10-15 05:10:50'),
(251, 4, 4, 4, 4.00, '2025-10-15 05:10:51', '2025-10-15 05:10:51'),
(252, 5, 5, 5, 5.00, '2025-10-15 05:10:51', '2025-10-15 05:10:51'),
(253, 4, 4, 3, 3.67, '2025-10-15 05:10:51', '2025-10-15 05:10:51'),
(254, 4, 3, 4, 3.67, '2025-10-15 05:10:52', '2025-10-15 05:10:52'),
(255, 4, 5, 5, 4.67, '2025-10-15 05:10:52', '2025-10-15 05:10:52'),
(256, 4, 4, 4, 4.00, '2025-10-15 05:10:53', '2025-10-15 05:10:53'),
(257, 4, 4, 4, 4.00, '2025-10-15 05:10:53', '2025-10-15 05:10:53'),
(258, 4, 4, 4, 4.00, '2025-10-15 05:10:54', '2025-10-15 05:10:54'),
(259, 5, 4, 5, 4.67, '2025-10-15 05:10:54', '2025-10-15 05:10:54'),
(260, 4, 4, 4, 4.00, '2025-10-15 05:10:54', '2025-10-15 05:10:54'),
(261, 4, 4, 4, 4.00, '2025-10-15 05:10:55', '2025-10-15 05:10:55'),
(262, 4, 4, 4, 4.00, '2025-10-15 05:10:55', '2025-10-15 05:10:55'),
(263, 4, 4, 4, 4.00, '2025-10-15 05:10:55', '2025-10-15 05:10:55'),
(264, 5, 5, 5, 5.00, '2025-10-15 05:10:56', '2025-10-15 05:10:56'),
(265, 4, 4, 4, 4.00, '2025-10-15 05:10:56', '2025-10-15 05:10:56'),
(266, 5, 4, 5, 4.67, '2025-10-15 05:10:57', '2025-10-15 05:10:57'),
(267, 4, 5, 4, 4.33, '2025-10-15 05:10:58', '2025-10-15 05:10:58'),
(268, 4, 4, 4, 4.00, '2025-10-15 05:10:58', '2025-10-15 05:10:58'),
(269, 4, 5, 5, 4.67, '2025-10-15 05:10:58', '2025-10-15 05:10:58'),
(270, 5, 5, 5, 5.00, '2025-10-15 05:10:59', '2025-10-15 05:10:59'),
(271, 4, 4, 4, 4.00, '2025-10-15 05:10:59', '2025-10-15 05:10:59'),
(272, 4, 5, 4, 4.33, '2025-10-15 05:11:00', '2025-10-15 05:11:00'),
(273, 4, 4, 4, 4.00, '2025-10-15 05:11:00', '2025-10-15 05:11:00'),
(274, 4, 4, 4, 4.00, '2025-10-15 05:12:16', '2025-10-15 05:12:16'),
(275, 4, 4, 4, 4.00, '2025-10-15 05:12:16', '2025-10-15 05:12:16'),
(276, 4, 4, 4, 4.00, '2025-10-15 05:12:18', '2025-10-15 05:12:18'),
(277, 4, 4, 4, 4.00, '2025-10-15 05:12:18', '2025-10-15 05:12:18'),
(278, 4, 5, 5, 4.67, '2025-10-15 05:15:44', '2025-10-15 05:15:44'),
(279, 4, 5, 4, 4.33, '2025-10-15 05:15:44', '2025-10-15 05:15:44'),
(280, 4, 4, 4, 4.00, '2025-10-15 05:15:45', '2025-10-15 05:15:45'),
(281, 5, 5, 4, 4.67, '2025-10-15 05:15:45', '2025-10-15 05:15:45'),
(282, 4, 4, 4, 4.00, '2025-10-15 05:15:45', '2025-10-15 05:15:45'),
(283, 4, 4, 4, 4.00, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(284, 5, 5, 5, 5.00, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(285, 4, 5, 4, 4.33, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(286, 5, 5, 5, 5.00, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(287, 4, 4, 5, 4.33, '2025-10-15 05:15:47', '2025-10-15 05:15:47'),
(288, 4, 4, 4, 4.00, '2025-10-15 05:15:47', '2025-10-15 05:15:47'),
(289, 5, 5, 5, 5.00, '2025-10-15 05:15:47', '2025-10-15 05:15:47'),
(290, 4, 4, 5, 4.33, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(291, 4, 4, 4, 4.00, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(292, 4, 5, 4, 4.33, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(293, 4, 5, 4, 4.33, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(294, 5, 5, 5, 5.00, '2025-10-15 05:15:49', '2025-10-15 05:15:49'),
(295, 5, 5, 4, 4.67, '2025-10-15 05:15:49', '2025-10-15 05:15:49'),
(296, 4, 5, 4, 4.33, '2025-10-15 05:15:49', '2025-10-15 05:15:49'),
(297, 5, 5, 5, 5.00, '2025-10-15 05:15:50', '2025-10-15 05:15:50'),
(298, 4, 5, 4, 4.33, '2025-10-15 05:15:50', '2025-10-15 05:15:50'),
(299, 5, 5, 4, 4.67, '2025-10-15 05:19:25', '2025-10-15 05:19:25'),
(300, 5, 5, 5, 5.00, '2025-10-15 05:21:46', '2025-10-15 05:21:46'),
(301, 5, 5, 5, 5.00, '2025-10-15 05:21:46', '2025-10-15 05:21:46'),
(302, 5, 5, 4, 4.67, '2025-10-15 05:21:47', '2025-10-15 05:21:47'),
(303, 5, 5, 5, 5.00, '2025-10-15 05:21:47', '2025-10-15 05:21:47'),
(304, 5, 5, 5, 5.00, '2025-10-15 05:21:48', '2025-10-15 05:21:48'),
(305, 5, 5, 5, 5.00, '2025-10-15 05:21:49', '2025-10-15 05:21:49'),
(306, 5, 5, 5, 5.00, '2025-10-15 05:21:49', '2025-10-15 05:21:49'),
(307, 5, 5, 4, 4.67, '2025-10-15 05:21:49', '2025-10-15 05:21:49'),
(308, 5, 5, 5, 5.00, '2025-10-15 05:21:50', '2025-10-15 05:21:50'),
(309, 5, 5, 5, 5.00, '2025-10-15 05:21:50', '2025-10-15 05:21:50'),
(310, 5, 5, 5, 5.00, '2025-10-15 05:21:51', '2025-10-15 05:21:51'),
(311, 5, 5, 5, 5.00, '2025-10-15 05:21:51', '2025-10-15 05:21:51'),
(312, 5, 5, 5, 5.00, '2025-10-15 05:21:52', '2025-10-15 05:21:52'),
(313, 5, 5, 4, 4.67, '2025-10-15 05:21:53', '2025-10-15 05:21:53'),
(314, 5, 4, 4, 4.33, '2025-10-15 05:21:53', '2025-10-15 05:21:53'),
(315, 4, 4, 4, 4.00, '2025-10-15 05:23:08', '2025-10-15 05:23:08'),
(316, 5, 5, 5, 5.00, '2025-10-15 05:23:10', '2025-10-15 05:23:10'),
(317, 5, 5, 5, 5.00, '2025-10-15 05:23:11', '2025-10-15 05:23:11'),
(318, 5, 5, 4, 4.67, '2025-10-15 05:23:12', '2025-10-15 05:23:12'),
(319, 5, 5, 5, 5.00, '2025-10-15 06:00:23', '2025-10-15 06:00:23'),
(320, 5, 5, 4, 4.67, '2025-10-15 06:00:24', '2025-10-15 06:00:24'),
(321, 5, 5, 5, 5.00, '2025-10-15 06:00:24', '2025-10-15 06:00:24'),
(322, 5, 5, 5, 5.00, '2025-10-15 06:00:24', '2025-10-15 06:00:24'),
(323, 5, 5, 5, 5.00, '2025-10-15 06:00:25', '2025-10-15 06:00:25'),
(324, 5, 5, 5, 5.00, '2025-10-15 06:00:25', '2025-10-15 06:00:25'),
(325, 5, 5, 5, 5.00, '2025-10-15 06:00:26', '2025-10-15 06:00:26'),
(326, 5, 5, 5, 5.00, '2025-10-15 06:00:26', '2025-10-15 06:00:26'),
(327, 5, 5, 4, 4.67, '2025-10-15 06:00:26', '2025-10-15 06:00:26'),
(328, 5, 5, 4, 4.67, '2025-10-15 06:00:26', '2025-10-15 06:00:26'),
(329, 5, 5, 5, 5.00, '2025-10-15 07:30:38', '2025-10-15 07:30:38'),
(330, 5, 5, 5, 5.00, '2025-10-15 07:30:39', '2025-10-15 07:30:39'),
(331, 5, 5, 5, 5.00, '2025-10-15 07:30:39', '2025-10-15 07:30:39'),
(332, 5, 5, 4, 4.67, '2025-10-15 07:30:40', '2025-10-15 07:30:40'),
(333, 5, 5, 4, 4.67, '2025-10-15 07:30:40', '2025-10-15 07:30:40'),
(334, 5, 5, 4, 4.67, '2025-10-15 07:32:20', '2025-10-15 07:32:20'),
(335, 5, 5, 4, 4.67, '2025-10-15 07:37:53', '2025-10-15 07:37:53'),
(336, 5, 5, 4, 4.67, '2025-10-15 07:38:43', '2025-10-15 07:38:43'),
(337, 5, 5, 5, 5.00, '2025-10-15 07:40:21', '2025-10-15 07:40:21'),
(338, 5, 5, 5, 5.00, '2025-10-15 07:40:22', '2025-10-15 07:40:22'),
(339, 5, 5, 5, 5.00, '2025-10-15 07:40:22', '2025-10-15 07:40:22'),
(340, 5, 5, 4, 4.67, '2025-10-15 07:40:22', '2025-10-15 07:40:22'),
(341, 5, 5, 5, 5.00, '2025-10-15 07:44:03', '2025-10-15 07:44:03'),
(342, 5, 4, 4, 4.33, '2025-10-15 07:44:03', '2025-10-15 07:44:03'),
(343, 4, 4, 4, 4.00, '2025-10-15 07:44:03', '2025-10-15 07:44:03'),
(344, 4, 5, 5, 4.67, '2025-10-15 07:44:04', '2025-10-15 07:44:04'),
(345, 4, 4, 4, 4.00, '2025-10-15 07:46:39', '2025-10-15 07:46:39'),
(346, 5, 5, 5, 5.00, '2025-10-15 07:48:45', '2025-10-15 07:48:45'),
(347, 4, 4, 4, 4.00, '2025-10-15 07:48:45', '2025-10-15 07:48:45'),
(348, 4, 5, 4, 4.33, '2025-10-15 07:48:45', '2025-10-15 07:48:45'),
(349, 5, 5, 5, 5.00, '2025-10-15 07:51:26', '2025-10-15 07:51:26'),
(350, 4, 5, 4, 4.33, '2025-10-15 07:51:27', '2025-10-15 07:51:27'),
(351, 4, 4, 4, 4.00, '2025-10-15 07:51:27', '2025-10-15 07:51:27'),
(352, 5, 5, 4, 4.67, '2025-10-15 07:51:27', '2025-10-15 07:51:27'),
(353, 5, 4, 5, 4.67, '2025-10-15 07:51:28', '2025-10-15 07:51:28'),
(354, 4, 4, 5, 4.33, '2025-10-15 07:52:06', '2025-10-15 07:52:06'),
(355, 4, 4, 5, 4.33, '2025-10-15 07:54:30', '2025-10-15 07:54:30'),
(356, 4, 5, 4, 4.33, '2025-10-15 07:54:31', '2025-10-15 07:54:31'),
(357, 5, 5, 5, 5.00, '2025-10-15 07:54:31', '2025-10-15 07:54:31'),
(358, 4, 4, 4, 4.00, '2025-10-15 07:54:31', '2025-10-15 07:54:31'),
(359, 5, 4, 4, 4.33, '2025-10-15 07:54:32', '2025-10-15 07:54:32'),
(360, 4, 5, 4, 4.33, '2025-10-15 07:59:37', '2025-10-15 07:59:37'),
(361, 4, 5, 4, 4.33, '2025-10-15 07:59:37', '2025-10-15 07:59:37'),
(362, 4, 5, 4, 4.33, '2025-10-15 07:59:38', '2025-10-15 07:59:38'),
(363, 4, 5, 4, 4.33, '2025-10-15 07:59:38', '2025-10-15 07:59:38'),
(364, 4, 5, 4, 4.33, '2025-10-15 07:59:39', '2025-10-15 07:59:39'),
(365, 4, 5, 4, 4.33, '2025-10-15 07:59:40', '2025-10-15 07:59:40'),
(366, 4, 5, 4, 4.33, '2025-10-15 07:59:40', '2025-10-15 07:59:40'),
(367, 4, 5, 4, 4.33, '2025-10-15 07:59:41', '2025-10-15 07:59:41'),
(368, 4, 5, 4, 4.33, '2025-10-15 07:59:42', '2025-10-15 07:59:42'),
(369, 4, 5, 4, 4.33, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(370, 4, 5, 4, 4.33, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(371, 4, 5, 4, 4.33, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(372, 4, 5, 4, 4.33, '2025-10-15 07:59:44', '2025-10-15 07:59:44'),
(373, 4, 5, 4, 4.33, '2025-10-15 07:59:44', '2025-10-15 07:59:44'),
(374, 4, 5, 4, 4.33, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(375, 4, 5, 4, 4.33, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(376, 4, 5, 4, 4.33, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(377, 4, 5, 4, 4.33, '2025-10-15 07:59:46', '2025-10-15 07:59:46'),
(378, 5, 5, 5, 5.00, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(379, 4, 5, 4, 4.33, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(380, 4, 5, 4, 4.33, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(381, 4, 5, 4, 4.33, '2025-10-15 07:59:48', '2025-10-15 07:59:48'),
(382, 4, 5, 4, 4.33, '2025-10-15 07:59:49', '2025-10-15 07:59:49'),
(383, 4, 5, 4, 4.33, '2025-10-15 07:59:50', '2025-10-15 07:59:50'),
(384, 4, 5, 4, 4.33, '2025-10-15 07:59:51', '2025-10-15 07:59:51'),
(385, 4, 5, 4, 4.33, '2025-10-15 07:59:54', '2025-10-15 07:59:54'),
(386, 4, 5, 4, 4.33, '2025-10-15 07:59:54', '2025-10-15 07:59:54'),
(387, 4, 5, 4, 4.33, '2025-10-15 07:59:55', '2025-10-15 07:59:55'),
(388, 4, 5, 4, 4.33, '2025-10-15 07:59:56', '2025-10-15 07:59:56'),
(389, 4, 5, 4, 4.33, '2025-10-15 07:59:57', '2025-10-15 07:59:57'),
(390, 4, 5, 4, 4.33, '2025-10-15 07:59:57', '2025-10-15 07:59:57'),
(391, 4, 5, 4, 4.33, '2025-10-15 07:59:59', '2025-10-15 07:59:59'),
(392, 4, 5, 4, 4.33, '2025-10-15 07:59:59', '2025-10-15 07:59:59'),
(393, 4, 5, 4, 4.33, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(394, 4, 5, 4, 4.33, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(395, 4, 5, 4, 4.33, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(396, 4, 5, 4, 4.33, '2025-10-15 08:00:02', '2025-10-15 08:00:02'),
(397, 4, 5, 4, 4.33, '2025-10-15 08:00:02', '2025-10-15 08:00:02'),
(398, 4, 5, 4, 4.33, '2025-10-15 08:00:03', '2025-10-15 08:00:03'),
(399, 4, 5, 4, 4.33, '2025-10-15 08:00:05', '2025-10-15 08:00:05'),
(400, 4, 5, 4, 4.33, '2025-10-15 08:00:05', '2025-10-15 08:00:05'),
(401, 4, 5, 4, 4.33, '2025-10-15 08:00:06', '2025-10-15 08:00:06'),
(402, 4, 5, 4, 4.33, '2025-10-15 08:00:06', '2025-10-15 08:00:06'),
(403, 5, 5, 5, 5.00, '2025-10-15 08:00:06', '2025-10-15 08:00:06'),
(404, 4, 5, 4, 4.33, '2025-10-15 08:00:07', '2025-10-15 08:00:07'),
(405, 4, 5, 4, 4.33, '2025-10-15 08:00:08', '2025-10-15 08:00:08'),
(406, 5, 5, 5, 5.00, '2025-10-15 08:00:08', '2025-10-15 08:00:08'),
(407, 4, 5, 4, 4.33, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(408, 4, 5, 4, 4.33, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(409, 4, 5, 4, 4.33, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(410, 4, 5, 4, 4.33, '2025-10-15 08:00:10', '2025-10-15 08:00:10'),
(411, 4, 5, 4, 4.33, '2025-10-15 08:00:10', '2025-10-15 08:00:10'),
(412, 4, 5, 4, 4.33, '2025-10-15 08:00:11', '2025-10-15 08:00:11'),
(413, 4, 5, 4, 4.33, '2025-10-15 08:00:11', '2025-10-15 08:00:11'),
(414, 4, 5, 4, 4.33, '2025-10-15 08:00:12', '2025-10-15 08:00:12'),
(415, 4, 5, 4, 4.33, '2025-10-15 08:00:12', '2025-10-15 08:00:12'),
(416, 4, 5, 4, 4.33, '2025-10-15 08:00:13', '2025-10-15 08:00:13'),
(417, 4, 5, 4, 4.33, '2025-10-15 08:00:14', '2025-10-15 08:00:14'),
(418, 4, 5, 4, 4.33, '2025-10-15 08:00:15', '2025-10-15 08:00:15'),
(419, 4, 5, 5, 4.67, '2025-10-15 08:00:15', '2025-10-15 08:00:15'),
(420, 4, 5, 5, 4.67, '2025-10-15 08:00:15', '2025-10-15 08:00:15'),
(421, 4, 5, 4, 4.33, '2025-10-15 08:00:16', '2025-10-15 08:00:16'),
(422, 4, 5, 5, 4.67, '2025-10-15 08:00:16', '2025-10-15 08:00:16'),
(423, 5, 5, 5, 5.00, '2025-10-15 08:00:17', '2025-10-15 08:00:17'),
(424, 4, 5, 4, 4.33, '2025-10-15 08:00:17', '2025-10-15 08:00:17'),
(425, 4, 5, 4, 4.33, '2025-10-15 08:00:18', '2025-10-15 08:00:18'),
(426, 4, 5, 4, 4.33, '2025-10-15 08:00:20', '2025-10-15 08:00:20'),
(427, 4, 5, 4, 4.33, '2025-10-15 08:00:21', '2025-10-15 08:00:21'),
(428, 4, 5, 4, 4.33, '2025-10-15 08:00:21', '2025-10-15 08:00:21'),
(429, 4, 5, 4, 4.33, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(430, 4, 5, 4, 4.33, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(431, 4, 5, 4, 4.33, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(432, 4, 5, 4, 4.33, '2025-10-15 08:00:23', '2025-10-15 08:00:23'),
(433, 4, 5, 4, 4.33, '2025-10-15 08:00:23', '2025-10-15 08:00:23'),
(434, 4, 5, 4, 4.33, '2025-10-15 08:00:24', '2025-10-15 08:00:24'),
(435, 4, 5, 4, 4.33, '2025-10-15 08:00:25', '2025-10-15 08:00:25'),
(436, 4, 5, 4, 4.33, '2025-10-15 08:00:25', '2025-10-15 08:00:25'),
(437, 4, 5, 4, 4.33, '2025-10-15 08:00:26', '2025-10-15 08:00:26'),
(438, 4, 5, 4, 4.33, '2025-10-15 08:00:26', '2025-10-15 08:00:26'),
(439, 4, 5, 4, 4.33, '2025-10-15 08:00:27', '2025-10-15 08:00:27'),
(440, 4, 5, 4, 4.33, '2025-10-15 08:00:27', '2025-10-15 08:00:27'),
(441, 4, 5, 4, 4.33, '2025-10-15 08:00:28', '2025-10-15 08:00:28'),
(442, 4, 5, 4, 4.33, '2025-10-15 08:00:28', '2025-10-15 08:00:28'),
(443, 4, 5, 4, 4.33, '2025-10-15 08:00:28', '2025-10-15 08:00:28'),
(444, 4, 5, 4, 4.33, '2025-10-15 08:00:29', '2025-10-15 08:00:29'),
(445, 4, 5, 4, 4.33, '2025-10-15 08:00:29', '2025-10-15 08:00:29'),
(446, 4, 5, 4, 4.33, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(447, 4, 5, 4, 4.33, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(448, 4, 5, 4, 4.33, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(449, 4, 5, 4, 4.33, '2025-10-15 08:00:34', '2025-10-15 08:00:34'),
(450, 4, 5, 4, 4.33, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(451, 4, 5, 4, 4.33, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(452, 4, 5, 4, 4.33, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(453, 4, 5, 4, 4.33, '2025-10-15 08:00:36', '2025-10-15 08:00:36'),
(454, 4, 5, 4, 4.33, '2025-10-15 08:00:36', '2025-10-15 08:00:36'),
(455, 4, 5, 4, 4.33, '2025-10-15 08:00:37', '2025-10-15 08:00:37'),
(456, 5, 5, 4, 4.67, '2025-10-15 08:00:38', '2025-10-15 08:00:38'),
(457, 4, 5, 4, 4.33, '2025-10-15 08:00:39', '2025-10-15 08:00:39'),
(458, 4, 5, 4, 4.33, '2025-10-15 08:00:40', '2025-10-15 08:00:40'),
(459, 4, 5, 4, 4.33, '2025-10-15 08:00:41', '2025-10-15 08:00:41'),
(460, 4, 5, 4, 4.33, '2025-10-15 08:00:42', '2025-10-15 08:00:42'),
(461, 4, 5, 4, 4.33, '2025-10-15 08:00:42', '2025-10-15 08:00:42'),
(462, 4, 5, 4, 4.33, '2025-10-15 08:00:43', '2025-10-15 08:00:43'),
(463, 4, 5, 4, 4.33, '2025-10-15 08:00:43', '2025-10-15 08:00:43'),
(464, 4, 5, 4, 4.33, '2025-10-15 08:00:44', '2025-10-15 08:00:44'),
(465, 4, 5, 4, 4.33, '2025-10-15 08:00:46', '2025-10-15 08:00:46'),
(466, 4, 5, 4, 4.33, '2025-10-15 08:00:46', '2025-10-15 08:00:46'),
(467, 4, 5, 4, 4.33, '2025-10-15 08:00:47', '2025-10-15 08:00:47'),
(468, 4, 5, 4, 4.33, '2025-10-15 08:00:47', '2025-10-15 08:00:47'),
(469, 4, 5, 4, 4.33, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(470, 4, 5, 4, 4.33, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(471, 4, 5, 4, 4.33, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(472, 4, 5, 4, 4.33, '2025-10-15 08:00:49', '2025-10-15 08:00:49'),
(473, 4, 5, 4, 4.33, '2025-10-15 08:00:49', '2025-10-15 08:00:49'),
(474, 4, 5, 4, 4.33, '2025-10-15 08:00:50', '2025-10-15 08:00:50'),
(475, 4, 5, 4, 4.33, '2025-10-15 08:00:50', '2025-10-15 08:00:50'),
(476, 4, 5, 4, 4.33, '2025-10-15 08:00:51', '2025-10-15 08:00:51'),
(477, 4, 5, 4, 4.33, '2025-10-15 08:00:51', '2025-10-15 08:00:51'),
(478, 4, 5, 4, 4.33, '2025-10-15 08:00:52', '2025-10-15 08:00:52'),
(479, 4, 5, 4, 4.33, '2025-10-15 08:00:54', '2025-10-15 08:00:54'),
(480, 4, 5, 4, 4.33, '2025-10-15 08:00:54', '2025-10-15 08:00:54'),
(481, 4, 5, 4, 4.33, '2025-10-15 08:00:55', '2025-10-15 08:00:55'),
(482, 4, 5, 4, 4.33, '2025-10-15 08:00:55', '2025-10-15 08:00:55'),
(483, 4, 5, 4, 4.33, '2025-10-15 08:00:57', '2025-10-15 08:00:57'),
(484, 4, 5, 4, 4.33, '2025-10-15 08:00:59', '2025-10-15 08:00:59'),
(485, 4, 5, 4, 4.33, '2025-10-15 08:00:59', '2025-10-15 08:00:59'),
(486, 4, 5, 4, 4.33, '2025-10-15 08:01:00', '2025-10-15 08:01:00'),
(487, 4, 5, 4, 4.33, '2025-10-15 08:01:00', '2025-10-15 08:01:00'),
(488, 4, 5, 4, 4.33, '2025-10-15 08:01:02', '2025-10-15 08:01:02'),
(489, 4, 5, 4, 4.33, '2025-10-15 08:01:02', '2025-10-15 08:01:02'),
(490, 4, 5, 4, 4.33, '2025-10-15 08:01:03', '2025-10-15 08:01:03'),
(491, 4, 5, 4, 4.33, '2025-10-15 08:01:03', '2025-10-15 08:01:03'),
(492, 4, 5, 4, 4.33, '2025-10-15 08:01:04', '2025-10-15 08:01:04'),
(493, 4, 5, 4, 4.33, '2025-10-15 08:01:04', '2025-10-15 08:01:04'),
(494, 4, 5, 4, 4.33, '2025-10-15 08:01:05', '2025-10-15 08:01:05'),
(495, 4, 5, 4, 4.33, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(496, 4, 5, 4, 4.33, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(497, 4, 5, 4, 4.33, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(498, 4, 5, 4, 4.33, '2025-10-15 08:01:07', '2025-10-15 08:01:07'),
(499, 4, 5, 4, 4.33, '2025-10-15 08:01:07', '2025-10-15 08:01:07'),
(500, 4, 5, 4, 4.33, '2025-10-15 08:01:08', '2025-10-15 08:01:08'),
(501, 4, 5, 4, 4.33, '2025-10-15 08:01:09', '2025-10-15 08:01:09'),
(502, 4, 5, 4, 4.33, '2025-10-15 08:01:10', '2025-10-15 08:01:10'),
(503, 4, 5, 4, 4.33, '2025-10-15 08:01:10', '2025-10-15 08:01:10'),
(504, 4, 5, 4, 4.33, '2025-10-15 08:01:11', '2025-10-15 08:01:11'),
(505, 4, 5, 4, 4.33, '2025-10-15 08:01:11', '2025-10-15 08:01:11'),
(506, 4, 5, 4, 4.33, '2025-10-15 08:01:12', '2025-10-15 08:01:12'),
(507, 4, 5, 4, 4.33, '2025-10-15 08:01:13', '2025-10-15 08:01:13'),
(508, 4, 5, 4, 4.33, '2025-10-15 08:01:14', '2025-10-15 08:01:14'),
(509, 4, 5, 4, 4.33, '2025-10-15 08:01:15', '2025-10-15 08:01:15'),
(510, 4, 5, 4, 4.33, '2025-10-15 08:01:16', '2025-10-15 08:01:16'),
(511, 4, 5, 4, 4.33, '2025-10-15 08:01:17', '2025-10-15 08:01:17'),
(512, 4, 5, 4, 4.33, '2025-10-15 08:01:18', '2025-10-15 08:01:18'),
(513, 4, 5, 4, 4.33, '2025-10-15 08:01:18', '2025-10-15 08:01:18'),
(514, 4, 5, 4, 4.33, '2025-10-15 08:01:19', '2025-10-15 08:01:19'),
(515, 4, 5, 4, 4.33, '2025-10-15 08:01:19', '2025-10-15 08:01:19'),
(516, 4, 5, 4, 4.33, '2025-10-15 08:01:21', '2025-10-15 08:01:21'),
(517, 4, 5, 4, 4.33, '2025-10-15 08:01:22', '2025-10-15 08:01:22'),
(518, 4, 5, 4, 4.33, '2025-10-15 08:01:23', '2025-10-15 08:01:23'),
(519, 4, 5, 4, 4.33, '2025-10-15 08:01:24', '2025-10-15 08:01:24'),
(520, 4, 5, 4, 4.33, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(521, 4, 5, 4, 4.33, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(522, 4, 5, 4, 4.33, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(523, 4, 5, 4, 4.33, '2025-10-15 08:01:26', '2025-10-15 08:01:26'),
(524, 4, 5, 4, 4.33, '2025-10-15 08:01:26', '2025-10-15 08:01:26'),
(525, 4, 5, 4, 4.33, '2025-10-15 08:01:27', '2025-10-15 08:01:27'),
(526, 4, 5, 4, 4.33, '2025-10-15 08:01:28', '2025-10-15 08:01:28'),
(527, 4, 5, 4, 4.33, '2025-10-15 08:02:44', '2025-10-15 08:02:44'),
(528, 4, 5, 4, 4.33, '2025-10-15 08:02:45', '2025-10-15 08:02:45'),
(529, 4, 5, 4, 4.33, '2025-10-15 08:02:46', '2025-10-15 08:02:46'),
(530, 4, 5, 4, 4.33, '2025-10-15 08:02:49', '2025-10-15 08:02:49'),
(531, 4, 5, 4, 4.33, '2025-10-15 08:02:50', '2025-10-15 08:02:50'),
(532, 4, 5, 4, 4.33, '2025-10-15 08:02:52', '2025-10-15 08:02:52'),
(533, 4, 5, 4, 4.33, '2025-10-15 08:02:55', '2025-10-15 08:02:55'),
(534, 4, 5, 4, 4.33, '2025-10-15 08:02:56', '2025-10-15 08:02:56'),
(535, 4, 5, 4, 4.33, '2025-10-15 08:02:59', '2025-10-15 08:02:59'),
(536, 4, 5, 4, 4.33, '2025-10-15 08:02:59', '2025-10-15 08:02:59'),
(537, 4, 5, 4, 4.33, '2025-10-15 08:03:00', '2025-10-15 08:03:00'),
(538, 4, 5, 4, 4.33, '2025-10-15 08:03:01', '2025-10-15 08:03:01'),
(539, 5, 5, 4, 4.67, '2025-10-15 08:03:01', '2025-10-15 08:03:01'),
(540, 4, 5, 4, 4.33, '2025-10-15 08:03:04', '2025-10-15 08:03:04'),
(541, 4, 5, 4, 4.33, '2025-10-15 08:03:05', '2025-10-15 08:03:05'),
(542, 4, 5, 4, 4.33, '2025-10-15 08:03:09', '2025-10-15 08:03:09'),
(543, 4, 5, 4, 4.33, '2025-10-15 08:03:10', '2025-10-15 08:03:10'),
(544, 4, 5, 4, 4.33, '2025-10-15 08:03:10', '2025-10-15 08:03:10'),
(545, 4, 5, 4, 4.33, '2025-10-15 08:03:12', '2025-10-15 08:03:12'),
(546, 4, 5, 4, 4.33, '2025-10-15 08:03:21', '2025-10-15 08:03:21'),
(547, 4, 5, 4, 4.33, '2025-10-15 08:03:21', '2025-10-15 08:03:21'),
(548, 4, 5, 4, 4.33, '2025-10-15 08:03:22', '2025-10-15 08:03:22'),
(549, 4, 5, 4, 4.33, '2025-10-15 08:03:25', '2025-10-15 08:03:25'),
(550, 4, 5, 4, 4.33, '2025-10-15 08:03:25', '2025-10-15 08:03:25'),
(551, 4, 5, 4, 4.33, '2025-10-15 08:03:26', '2025-10-15 08:03:26'),
(552, 4, 5, 4, 4.33, '2025-10-15 08:03:36', '2025-10-15 08:03:36'),
(553, 4, 5, 4, 4.33, '2025-10-15 08:03:37', '2025-10-15 08:03:37'),
(554, 4, 5, 4, 4.33, '2025-10-15 08:03:38', '2025-10-15 08:03:38'),
(555, 4, 5, 4, 4.33, '2025-10-15 08:03:39', '2025-10-15 08:03:39'),
(556, 4, 5, 4, 4.33, '2025-10-15 08:03:43', '2025-10-15 08:03:43'),
(557, 4, 5, 4, 4.33, '2025-10-15 08:03:43', '2025-10-15 08:03:43'),
(558, 4, 5, 4, 4.33, '2025-10-15 08:03:45', '2025-10-15 08:03:45'),
(559, 4, 5, 4, 4.33, '2025-10-15 08:03:45', '2025-10-15 08:03:45'),
(560, 4, 5, 4, 4.33, '2025-10-15 08:03:47', '2025-10-15 08:03:47'),
(561, 4, 5, 4, 4.33, '2025-10-15 08:03:47', '2025-10-15 08:03:47'),
(562, 4, 5, 4, 4.33, '2025-10-15 08:03:51', '2025-10-15 08:03:51'),
(563, 4, 5, 4, 4.33, '2025-10-15 08:03:52', '2025-10-15 08:03:52'),
(564, 4, 5, 4, 4.33, '2025-10-15 08:03:53', '2025-10-15 08:03:53'),
(565, 4, 5, 4, 4.33, '2025-10-15 08:03:57', '2025-10-15 08:03:57'),
(566, 4, 5, 4, 4.33, '2025-10-15 08:04:01', '2025-10-15 08:04:01'),
(567, 4, 5, 4, 4.33, '2025-10-15 08:04:02', '2025-10-15 08:04:02'),
(568, 4, 5, 4, 4.33, '2025-10-15 08:04:02', '2025-10-15 08:04:02'),
(569, 4, 5, 4, 4.33, '2025-10-15 08:04:03', '2025-10-15 08:04:03'),
(570, 4, 5, 4, 4.33, '2025-10-15 08:04:04', '2025-10-15 08:04:04'),
(571, 4, 5, 4, 4.33, '2025-10-15 08:04:08', '2025-10-15 08:04:08'),
(572, 4, 5, 4, 4.33, '2025-10-15 08:04:08', '2025-10-15 08:04:08'),
(573, 4, 5, 4, 4.33, '2025-10-15 08:04:09', '2025-10-15 08:04:09'),
(574, 4, 5, 4, 4.33, '2025-10-15 08:04:12', '2025-10-15 08:04:12'),
(575, 4, 5, 4, 4.33, '2025-10-15 08:04:13', '2025-10-15 08:04:13'),
(576, 4, 5, 4, 4.33, '2025-10-15 08:04:16', '2025-10-15 08:04:16'),
(577, 4, 5, 4, 4.33, '2025-10-15 08:04:17', '2025-10-15 08:04:17'),
(578, 4, 5, 4, 4.33, '2025-10-15 08:04:18', '2025-10-15 08:04:18'),
(579, 4, 5, 4, 4.33, '2025-10-15 08:04:22', '2025-10-15 08:04:22'),
(580, 4, 5, 4, 4.33, '2025-10-15 08:04:22', '2025-10-15 08:04:22'),
(581, 4, 5, 4, 4.33, '2025-10-15 08:04:25', '2025-10-15 08:04:25'),
(582, 4, 5, 4, 4.33, '2025-10-15 08:04:26', '2025-10-15 08:04:26'),
(583, 4, 5, 4, 4.33, '2025-10-15 08:04:26', '2025-10-15 08:04:26'),
(584, 4, 5, 4, 4.33, '2025-10-15 08:04:28', '2025-10-15 08:04:28'),
(585, 4, 5, 4, 4.33, '2025-10-15 08:04:32', '2025-10-15 08:04:32'),
(586, 4, 5, 4, 4.33, '2025-10-15 08:06:32', '2025-10-15 08:06:32'),
(587, 4, 5, 4, 4.33, '2025-10-15 08:06:33', '2025-10-15 08:06:33'),
(588, 4, 5, 4, 4.33, '2025-10-15 08:06:34', '2025-10-15 08:06:34'),
(589, 4, 5, 4, 4.33, '2025-10-15 08:06:35', '2025-10-15 08:06:35'),
(590, 4, 5, 4, 4.33, '2025-10-15 08:06:36', '2025-10-15 08:06:36'),
(591, 4, 5, 4, 4.33, '2025-10-15 08:06:39', '2025-10-15 08:06:39'),
(592, 4, 5, 4, 4.33, '2025-10-15 08:06:44', '2025-10-15 08:06:44'),
(593, 5, 5, 4, 4.67, '2025-10-15 08:06:45', '2025-10-15 08:06:45'),
(594, 4, 5, 4, 4.33, '2025-10-15 08:06:46', '2025-10-15 08:06:46'),
(595, 4, 5, 4, 4.33, '2025-10-15 08:06:47', '2025-10-15 08:06:47'),
(596, 4, 5, 4, 4.33, '2025-10-15 08:06:48', '2025-10-15 08:06:48'),
(597, 4, 5, 4, 4.33, '2025-10-15 08:06:48', '2025-10-15 08:06:48'),
(598, 4, 5, 4, 4.33, '2025-10-15 08:06:49', '2025-10-15 08:06:49'),
(599, 4, 5, 4, 4.33, '2025-10-15 08:06:49', '2025-10-15 08:06:49'),
(600, 4, 5, 4, 4.33, '2025-10-15 08:06:51', '2025-10-15 08:06:51'),
(601, 4, 5, 4, 4.33, '2025-10-15 08:06:52', '2025-10-15 08:06:52'),
(602, 4, 5, 4, 4.33, '2025-10-15 08:06:53', '2025-10-15 08:06:53'),
(603, 4, 5, 4, 4.33, '2025-10-15 08:06:53', '2025-10-15 08:06:53'),
(604, 4, 5, 4, 4.33, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(605, 4, 5, 4, 4.33, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(606, 4, 5, 4, 4.33, '2025-10-15 08:06:55', '2025-10-15 08:06:55'),
(607, 4, 5, 4, 4.33, '2025-10-15 08:06:55', '2025-10-15 08:06:55'),
(608, 4, 5, 4, 4.33, '2025-10-15 08:06:56', '2025-10-15 08:06:56'),
(609, 4, 5, 4, 4.33, '2025-10-15 08:07:00', '2025-10-15 08:07:00'),
(610, 4, 5, 4, 4.33, '2025-10-15 08:07:00', '2025-10-15 08:07:00'),
(611, 4, 5, 4, 4.33, '2025-10-15 08:07:01', '2025-10-15 08:07:01'),
(612, 4, 5, 4, 4.33, '2025-10-15 08:07:03', '2025-10-15 08:07:03'),
(613, 4, 5, 4, 4.33, '2025-10-15 08:07:07', '2025-10-15 08:07:07'),
(614, 4, 5, 4, 4.33, '2025-10-15 08:07:08', '2025-10-15 08:07:08'),
(615, 4, 5, 4, 4.33, '2025-10-15 08:07:09', '2025-10-15 08:07:09'),
(616, 4, 5, 4, 4.33, '2025-10-15 08:07:10', '2025-10-15 08:07:10'),
(617, 4, 5, 4, 4.33, '2025-10-15 08:07:12', '2025-10-15 08:07:12'),
(618, 4, 5, 4, 4.33, '2025-10-15 08:07:15', '2025-10-15 08:07:15'),
(619, 4, 5, 4, 4.33, '2025-10-15 08:07:15', '2025-10-15 08:07:15'),
(620, 4, 5, 4, 4.33, '2025-10-15 08:07:16', '2025-10-15 08:07:16'),
(621, 4, 5, 4, 4.33, '2025-10-15 08:07:16', '2025-10-15 08:07:16'),
(622, 4, 5, 4, 4.33, '2025-10-15 08:07:17', '2025-10-15 08:07:17'),
(623, 4, 5, 4, 4.33, '2025-10-15 08:07:17', '2025-10-15 08:07:17'),
(624, 4, 5, 4, 4.33, '2025-10-15 08:07:19', '2025-10-15 08:07:19'),
(625, 4, 5, 4, 4.33, '2025-10-15 08:07:21', '2025-10-15 08:07:21'),
(626, 4, 5, 4, 4.33, '2025-10-15 08:07:23', '2025-10-15 08:07:23'),
(627, 4, 5, 4, 4.33, '2025-10-15 08:07:27', '2025-10-15 08:07:27'),
(628, 4, 5, 4, 4.33, '2025-10-15 08:07:28', '2025-10-15 08:07:28'),
(629, 4, 5, 4, 4.33, '2025-10-15 08:07:28', '2025-10-15 08:07:28'),
(630, 4, 5, 4, 4.33, '2025-10-15 08:07:29', '2025-10-15 08:07:29'),
(631, 4, 5, 4, 4.33, '2025-10-15 08:07:30', '2025-10-15 08:07:30'),
(632, 5, 5, 5, 5.00, '2025-10-15 08:07:30', '2025-10-15 08:07:30'),
(633, 4, 5, 4, 4.33, '2025-10-15 08:07:31', '2025-10-15 08:07:31'),
(634, 4, 5, 4, 4.33, '2025-10-15 08:07:33', '2025-10-15 08:07:33'),
(635, 4, 5, 4, 4.33, '2025-10-15 08:07:35', '2025-10-15 08:07:35'),
(636, 4, 5, 4, 4.33, '2025-10-15 08:07:36', '2025-10-15 08:07:36'),
(637, 4, 5, 4, 4.33, '2025-10-15 08:07:37', '2025-10-15 08:07:37'),
(638, 4, 5, 4, 4.33, '2025-10-15 08:07:38', '2025-10-15 08:07:38'),
(639, 4, 5, 4, 4.33, '2025-10-15 08:07:38', '2025-10-15 08:07:38'),
(640, 4, 5, 4, 4.33, '2025-10-15 08:07:39', '2025-10-15 08:07:39'),
(641, 4, 5, 4, 4.33, '2025-10-15 08:07:40', '2025-10-15 08:07:40'),
(642, 4, 5, 4, 4.33, '2025-10-15 08:07:41', '2025-10-15 08:07:41'),
(643, 4, 5, 4, 4.33, '2025-10-15 08:07:42', '2025-10-15 08:07:42'),
(644, 4, 5, 4, 4.33, '2025-10-15 08:07:44', '2025-10-15 08:07:44'),
(645, 4, 5, 4, 4.33, '2025-10-15 08:07:47', '2025-10-15 08:07:47'),
(646, 4, 5, 4, 4.33, '2025-10-15 08:07:47', '2025-10-15 08:07:47'),
(647, 4, 5, 4, 4.33, '2025-10-15 08:07:48', '2025-10-15 08:07:48'),
(648, 4, 5, 4, 4.33, '2025-10-15 08:07:49', '2025-10-15 08:07:49'),
(649, 4, 5, 4, 4.33, '2025-10-15 08:07:53', '2025-10-15 08:07:53'),
(650, 4, 5, 4, 4.33, '2025-10-15 08:07:53', '2025-10-15 08:07:53'),
(651, 4, 5, 4, 4.33, '2025-10-15 08:07:54', '2025-10-15 08:07:54'),
(652, 4, 5, 4, 4.33, '2025-10-15 08:07:57', '2025-10-15 08:07:57'),
(653, 4, 5, 4, 4.33, '2025-10-15 08:07:59', '2025-10-15 08:07:59'),
(654, 4, 5, 4, 4.33, '2025-10-15 08:08:00', '2025-10-15 08:08:00'),
(655, 4, 5, 4, 4.33, '2025-10-15 08:08:01', '2025-10-15 08:08:01'),
(656, 4, 5, 4, 4.33, '2025-10-15 08:08:01', '2025-10-15 08:08:01'),
(657, 4, 5, 4, 4.33, '2025-10-15 08:08:02', '2025-10-15 08:08:02'),
(658, 4, 5, 4, 4.33, '2025-10-15 08:08:04', '2025-10-15 08:08:04'),
(659, 4, 5, 4, 4.33, '2025-10-15 08:08:05', '2025-10-15 08:08:05'),
(660, 4, 5, 4, 4.33, '2025-10-15 08:08:05', '2025-10-15 08:08:05'),
(661, 4, 5, 4, 4.33, '2025-10-15 08:08:06', '2025-10-15 08:08:06'),
(662, 4, 5, 4, 4.33, '2025-10-15 08:08:06', '2025-10-15 08:08:06'),
(663, 4, 5, 4, 4.33, '2025-10-15 08:08:08', '2025-10-15 08:08:08'),
(664, 4, 5, 4, 4.33, '2025-10-15 08:08:11', '2025-10-15 08:08:11'),
(665, 4, 5, 4, 4.33, '2025-10-15 08:08:12', '2025-10-15 08:08:12'),
(666, 4, 5, 4, 4.33, '2025-10-15 08:08:14', '2025-10-15 08:08:14'),
(667, 4, 5, 4, 4.33, '2025-10-15 08:08:14', '2025-10-15 08:08:14'),
(668, 4, 5, 4, 4.33, '2025-10-15 08:08:15', '2025-10-15 08:08:15'),
(669, 4, 5, 4, 4.33, '2025-10-15 08:08:16', '2025-10-15 08:08:16'),
(670, 4, 5, 4, 4.33, '2025-10-15 08:08:18', '2025-10-15 08:08:18'),
(671, 4, 5, 4, 4.33, '2025-10-15 08:08:19', '2025-10-15 08:08:19'),
(672, 4, 5, 4, 4.33, '2025-10-15 08:08:19', '2025-10-15 08:08:19'),
(673, 4, 5, 5, 4.67, '2025-10-15 08:09:46', '2025-10-15 08:09:46'),
(674, 4, 5, 4, 4.33, '2025-10-15 08:09:56', '2025-10-15 08:09:56'),
(675, 4, 5, 4, 4.33, '2025-10-15 08:09:58', '2025-10-15 08:09:58'),
(676, 4, 5, 4, 4.33, '2025-10-15 08:09:59', '2025-10-15 08:09:59'),
(677, 4, 5, 4, 4.33, '2025-10-15 08:10:05', '2025-10-15 08:10:05'),
(678, 4, 5, 4, 4.33, '2025-10-15 08:10:12', '2025-10-15 08:10:12'),
(679, 4, 5, 4, 4.33, '2025-10-15 08:10:17', '2025-10-15 08:10:17'),
(680, 4, 5, 4, 4.33, '2025-10-15 08:10:18', '2025-10-15 08:10:18'),
(681, 4, 5, 4, 4.33, '2025-10-15 08:10:20', '2025-10-15 08:10:20'),
(682, 4, 5, 4, 4.33, '2025-10-15 08:10:29', '2025-10-15 08:10:29'),
(683, 4, 5, 4, 4.33, '2025-10-15 08:10:35', '2025-10-15 08:10:35'),
(684, 4, 5, 4, 4.33, '2025-10-15 08:10:36', '2025-10-15 08:10:36'),
(685, 4, 5, 4, 4.33, '2025-10-15 08:10:38', '2025-10-15 08:10:38'),
(686, 4, 5, 4, 4.33, '2025-10-15 08:11:00', '2025-10-15 08:11:00'),
(687, 4, 5, 4, 4.33, '2025-10-15 08:11:23', '2025-10-15 08:11:23'),
(688, 4, 5, 4, 4.33, '2025-10-15 08:11:26', '2025-10-15 08:11:26'),
(689, 4, 5, 4, 4.33, '2025-10-15 08:15:38', '2025-10-15 08:15:38'),
(690, 4, 5, 4, 4.33, '2025-10-15 08:15:39', '2025-10-15 08:15:39'),
(691, 5, 4, 4, 4.33, '2025-10-15 08:15:40', '2025-10-15 08:15:40'),
(692, 5, 4, 4, 4.33, '2025-10-15 08:15:40', '2025-10-15 08:15:40'),
(693, 4, 4, 5, 4.33, '2025-10-15 08:15:40', '2025-10-15 08:15:40'),
(694, 4, 5, 4, 4.33, '2025-10-15 08:15:41', '2025-10-15 08:15:41'),
(695, 4, 5, 4, 4.33, '2025-10-15 08:15:41', '2025-10-15 08:15:41'),
(696, 4, 4, 5, 4.33, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(697, 5, 5, 5, 5.00, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(698, 4, 5, 4, 4.33, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(699, 5, 4, 4, 4.33, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(701, 4, 4, 5, 4.33, '2025-10-15 08:15:43', '2025-10-15 08:15:43'),
(702, 5, 4, 4, 4.33, '2025-10-15 08:15:44', '2025-10-15 08:15:44'),
(703, 5, 4, 4, 4.33, '2025-10-15 08:15:44', '2025-10-15 08:15:44'),
(704, 4, 4, 5, 4.33, '2025-10-15 08:15:46', '2025-10-15 08:15:46'),
(705, 4, 5, 4, 4.33, '2025-10-15 08:17:07', '2025-10-15 08:17:07'),
(706, 4, 4, 5, 4.33, '2025-10-15 08:17:09', '2025-10-15 08:17:09'),
(707, 4, 5, 4, 4.33, '2025-10-15 08:17:12', '2025-10-15 08:17:12'),
(708, 4, 5, 4, 4.33, '2025-10-15 08:17:13', '2025-10-15 08:17:13'),
(709, 4, 5, 4, 4.33, '2025-10-15 08:17:13', '2025-10-15 08:17:13'),
(710, 4, 4, 5, 4.33, '2025-10-15 08:17:14', '2025-10-15 08:17:14'),
(711, 4, 4, 5, 4.33, '2025-10-15 08:17:14', '2025-10-15 08:17:14'),
(712, 5, 5, 5, 5.00, '2025-10-15 08:17:54', '2025-10-15 08:17:54'),
(713, 5, 5, 5, 5.00, '2025-10-15 08:21:16', '2025-10-15 08:21:16'),
(714, 4, 4, 5, 4.33, '2025-10-15 08:21:16', '2025-10-15 08:21:16'),
(715, 4, 4, 4, 4.00, '2025-10-15 08:21:16', '2025-10-15 08:21:16'),
(716, 4, 4, 5, 4.33, '2025-10-15 08:21:17', '2025-10-15 08:21:17'),
(717, 4, 4, 4, 4.00, '2025-10-15 08:21:17', '2025-10-15 08:21:17'),
(718, 4, 4, 4, 4.00, '2025-10-15 08:23:48', '2025-10-15 08:23:48'),
(719, 5, 5, 5, 5.00, '2025-10-15 08:23:49', '2025-10-15 08:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `nilai2s`
--

CREATE TABLE `nilai2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mitra_teladan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `aspek1` int(11) NOT NULL,
  `aspek2` int(11) NOT NULL,
  `aspek3` int(11) NOT NULL,
  `aspek4` int(11) NOT NULL,
  `aspek5` int(11) NOT NULL,
  `aspek6` int(11) NOT NULL,
  `aspek7` int(11) NOT NULL,
  `aspek8` int(11) NOT NULL,
  `aspek9` int(11) NOT NULL,
  `aspek10` int(11) NOT NULL,
  `rerata` float NOT NULL,
  `is_final` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai2s`
--

INSERT INTO `nilai2s` (`id`, `mitra_teladan_id`, `user_id`, `aspek1`, `aspek2`, `aspek3`, `aspek4`, `aspek5`, `aspek6`, `aspek7`, `aspek8`, `aspek9`, `aspek10`, `rerata`, `is_final`, `created_at`, `updated_at`) VALUES
(1, 3, 11, 10, 10, 9, 10, 10, 10, 9, 10, 10, 10, 9.8, 1, '2025-07-10 16:19:37', '2025-07-10 16:19:37'),
(2, 3, 24, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-11 00:38:27', '2025-07-13 10:01:06'),
(3, 4, 24, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 00:52:18', '2025-07-13 09:59:22'),
(4, 1, 24, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-11 00:52:35', '2025-07-13 09:58:34'),
(5, 6, 24, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 00:57:15', '2025-07-13 09:59:48'),
(6, 5, 24, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 00:57:41', '2025-07-13 10:00:08'),
(7, 2, 24, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 00:57:59', '2025-07-13 10:00:53'),
(8, 3, 17, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 06:22:18', '2025-07-11 06:22:18'),
(9, 4, 17, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, '2025-07-11 06:22:37', '2025-07-11 06:22:37'),
(10, 1, 17, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 06:23:03', '2025-07-11 06:23:03'),
(11, 6, 17, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, '2025-07-11 06:23:23', '2025-07-11 06:23:23'),
(12, 5, 17, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, '2025-07-11 06:23:39', '2025-07-11 06:23:39'),
(13, 2, 17, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 06:23:58', '2025-07-11 06:23:58'),
(14, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:34:53', '2025-07-11 06:34:53'),
(15, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:34:56', '2025-07-11 06:34:56'),
(16, 4, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:35:28', '2025-07-11 06:35:28'),
(17, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:36:02', '2025-07-11 06:36:02'),
(18, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:36:05', '2025-07-11 06:36:05'),
(19, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:36:35', '2025-07-11 06:36:35'),
(20, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:36:39', '2025-07-11 06:36:39'),
(21, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:37:02', '2025-07-11 06:37:02'),
(22, 6, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:37:30', '2025-07-11 06:37:30'),
(23, 3, 21, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-11 06:38:35', '2025-07-13 10:03:15'),
(24, 4, 21, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-11 06:38:50', '2025-07-13 10:02:56'),
(25, 1, 21, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-07-11 06:39:09', '2025-07-13 10:04:07'),
(26, 6, 21, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 06:39:25', '2025-07-13 10:04:38'),
(27, 5, 21, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 06:39:38', '2025-07-13 10:05:37'),
(28, 2, 21, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 06:39:51', '2025-07-13 10:06:16'),
(29, 3, 27, 10, 10, 10, 10, 10, 10, 10, 9, 10, 10, 9.9, 0, '2025-07-11 06:40:37', '2025-07-11 06:40:37'),
(30, 3, 27, 10, 10, 10, 10, 10, 10, 10, 9, 10, 10, 9.9, 1, '2025-07-11 06:40:39', '2025-07-11 06:40:39'),
(31, 4, 27, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8.9, 1, '2025-07-11 06:41:03', '2025-07-11 06:41:03'),
(32, 1, 27, 9, 10, 10, 10, 10, 10, 10, 9, 10, 10, 9.8, 0, '2025-07-11 06:41:30', '2025-07-11 06:41:30'),
(33, 6, 27, 9, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9.2, 0, '2025-07-11 06:41:55', '2025-07-11 06:41:55'),
(34, 5, 27, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 06:42:25', '2025-07-11 06:42:25'),
(35, 2, 27, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 06:42:46', '2025-07-11 06:42:46'),
(36, 2, 27, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 06:42:50', '2025-07-11 06:42:50'),
(37, 3, 12, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 06:43:09', '2025-07-11 06:43:09'),
(38, 4, 12, 8, 9, 9, 9, 8, 8, 9, 8, 8, 8, 8.4, 1, '2025-07-11 06:45:11', '2025-07-11 06:45:11'),
(39, 1, 12, 9, 8, 9, 9, 9, 9, 9, 9, 8, 8, 8.7, 1, '2025-07-11 06:45:57', '2025-07-11 06:45:57'),
(40, 6, 12, 8, 9, 9, 8, 8, 8, 8, 9, 8, 8, 8.3, 1, '2025-07-11 06:47:32', '2025-07-11 06:47:32'),
(41, 5, 12, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-07-11 06:48:19', '2025-07-11 06:48:19'),
(42, 2, 12, 9, 9, 9, 10, 10, 9, 9, 10, 9, 9, 9.3, 1, '2025-07-11 06:49:08', '2025-07-11 06:49:08'),
(43, 4, 11, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:03:08', '2025-07-11 09:03:08'),
(44, 1, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:03:27', '2025-07-11 09:03:27'),
(45, 6, 11, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 8.2, 0, '2025-07-11 09:03:35', '2025-07-11 09:03:35'),
(46, 5, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-11 09:03:45', '2025-07-11 09:03:45'),
(47, 2, 11, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-11 09:04:01', '2025-07-11 09:04:01'),
(48, 3, 4, 9, 9, 9, 9, 9, 9, 8, 9, 9, 9, 8.9, 0, '2025-07-11 09:33:48', '2025-07-11 09:33:48'),
(49, 4, 4, 9, 8, 9, 8, 9, 8, 9, 8, 9, 8, 8.5, 0, '2025-07-11 09:34:21', '2025-07-11 09:34:21'),
(50, 3, 19, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 09:34:25', '2025-07-11 09:34:25'),
(51, 5, 23, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-07-11 09:34:31', '2025-07-11 09:34:31'),
(52, 1, 4, 8, 9, 8, 9, 9, 9, 9, 9, 9, 9, 8.8, 0, '2025-07-11 09:34:50', '2025-07-11 09:34:50'),
(53, 3, 23, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, '2025-07-11 09:34:59', '2025-07-11 09:34:59'),
(54, 4, 19, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-11 09:35:16', '2025-07-11 09:35:16'),
(55, 6, 4, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 09:35:24', '2025-07-11 09:35:24'),
(56, 4, 23, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:35:27', '2025-07-11 09:35:27'),
(57, 5, 4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-07-11 09:35:55', '2025-07-11 09:35:55'),
(58, 1, 19, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-11 09:35:56', '2025-07-11 09:35:56'),
(59, 1, 23, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:35:57', '2025-07-11 09:35:57'),
(60, 6, 23, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:36:21', '2025-07-11 09:36:21'),
(61, 2, 4, 9, 8, 9, 8, 9, 8, 9, 8, 9, 8, 8.5, 0, '2025-07-11 09:36:25', '2025-07-11 09:36:25'),
(62, 2, 23, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:36:54', '2025-07-11 09:36:54'),
(63, 6, 19, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:36:54', '2025-07-11 09:36:54'),
(64, 5, 19, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:37:27', '2025-07-11 09:37:27'),
(65, 2, 19, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:37:55', '2025-07-11 09:37:55'),
(66, 3, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:40:29', '2025-07-11 09:40:29'),
(67, 3, 22, 10, 9, 10, 10, 10, 9, 10, 10, 10, 10, 9.8, 1, '2025-07-11 09:41:57', '2025-07-11 09:41:57'),
(68, 4, 22, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:44:09', '2025-07-11 09:44:09'),
(69, 3, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-11 09:44:15', '2025-07-11 09:44:15'),
(70, 4, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-11 09:44:34', '2025-07-11 09:44:34'),
(71, 1, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-11 09:44:57', '2025-07-11 09:44:57'),
(72, 6, 5, 8, 8, 9, 8, 8, 8, 8, 9, 9, 9, 8.4, 1, '2025-07-11 09:45:16', '2025-07-11 09:45:16'),
(73, 6, 22, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:45:28', '2025-07-11 09:45:28'),
(74, 5, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:45:29', '2025-07-11 09:45:29'),
(75, 2, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-11 09:45:51', '2025-07-11 09:45:51'),
(76, 5, 22, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-07-11 09:46:19', '2025-07-11 09:46:19'),
(77, 1, 22, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:46:53', '2025-07-11 09:46:53'),
(78, 4, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:47:17', '2025-07-11 09:47:17'),
(79, 2, 22, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:47:25', '2025-07-11 09:47:25'),
(80, 2, 22, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-11 09:47:27', '2025-07-11 09:47:27'),
(81, 1, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:47:54', '2025-07-11 09:47:54'),
(82, 6, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:48:28', '2025-07-11 09:48:28'),
(83, 5, 15, 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 9.4, 0, '2025-07-11 09:49:11', '2025-07-11 09:49:11'),
(84, 2, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-07-11 09:49:46', '2025-07-11 09:49:46'),
(85, 3, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:36:10', '2025-07-13 00:36:10'),
(86, 3, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:36:12', '2025-07-13 00:36:12'),
(87, 4, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:36:26', '2025-07-13 00:36:26'),
(88, 1, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-07-13 00:36:40', '2025-07-13 00:36:40'),
(89, 6, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:36:55', '2025-07-13 00:36:55'),
(90, 6, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:36:57', '2025-07-13 00:36:57'),
(91, 5, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:37:10', '2025-07-13 00:37:10'),
(92, 5, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:37:12', '2025-07-13 00:37:12'),
(93, 2, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 00:37:25', '2025-07-13 00:37:25'),
(94, 3, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 06:54:02', '2025-07-13 06:54:02'),
(95, 4, 20, 8, 8, 9, 9, 7, 9, 8, 8, 8, 9, 8.3, 0, '2025-07-13 06:55:53', '2025-07-13 06:55:53'),
(96, 4, 20, 8, 8, 9, 9, 7, 9, 8, 8, 8, 9, 8.3, 1, '2025-07-13 06:55:56', '2025-07-13 06:55:56'),
(97, 1, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 06:56:33', '2025-07-13 06:56:33'),
(98, 1, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 06:56:36', '2025-07-13 06:56:36'),
(99, 6, 20, 7, 9, 9, 9, 9, 9, 8, 9, 9, 9, 8.7, 1, '2025-07-13 06:57:38', '2025-07-13 06:57:38'),
(100, 5, 20, 10, 8, 8, 8, 8, 8, 10, 8, 10, 8, 8.6, 1, '2025-07-13 06:58:19', '2025-07-13 06:58:19'),
(101, 2, 20, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 06:58:48', '2025-07-13 06:58:48'),
(102, 2, 20, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 06:58:49', '2025-07-13 06:58:49'),
(103, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:00:27', '2025-07-13 07:00:27'),
(104, 4, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:00:53', '2025-07-13 07:00:53'),
(105, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:01:08', '2025-07-13 07:01:08'),
(106, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:01:22', '2025-07-13 07:08:22'),
(107, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:01:37', '2025-07-13 07:01:37'),
(108, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:01:54', '2025-07-13 07:08:45'),
(109, 3, 6, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:10:04', '2025-07-13 07:10:04'),
(110, 4, 6, 9, 10, 10, 10, 10, 10, 9, 10, 9, 10, 9.7, 1, '2025-07-13 07:10:43', '2025-07-13 07:10:43'),
(111, 1, 6, 10, 10, 10, 10, 9, 10, 9, 9, 10, 9, 9.6, 1, '2025-07-13 07:12:23', '2025-07-13 07:12:23'),
(112, 6, 6, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:13:10', '2025-07-13 07:13:10'),
(113, 5, 6, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:13:24', '2025-07-13 07:13:24'),
(114, 2, 6, 9, 9, 10, 10, 10, 10, 9, 9, 9, 9, 9.4, 1, '2025-07-13 07:14:01', '2025-07-13 07:14:01'),
(115, 3, 18, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:15:51', '2025-07-13 07:15:51'),
(116, 4, 18, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:16:04', '2025-07-13 07:16:04'),
(117, 1, 18, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:16:21', '2025-07-13 07:16:21'),
(118, 6, 18, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:16:34', '2025-07-13 07:16:34'),
(119, 5, 18, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-07-13 07:16:48', '2025-07-13 07:16:48'),
(120, 2, 18, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:17:04', '2025-07-13 07:17:04'),
(121, 3, 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:19:32', '2025-07-13 07:19:32'),
(122, 4, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:19:50', '2025-07-13 07:19:50'),
(123, 1, 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:20:12', '2025-07-13 07:20:12'),
(124, 6, 3, 8, 8, 9, 9, 8, 9, 8, 9, 8, 8, 8.4, 1, '2025-07-13 07:20:41', '2025-07-13 07:20:41'),
(125, 5, 3, 7, 7, 8, 8, 7, 8, 7, 8, 7, 7, 7.4, 1, '2025-07-13 07:21:08', '2025-07-13 07:21:08'),
(126, 2, 3, 9, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9.8, 1, '2025-07-13 07:21:40', '2025-07-13 07:21:40'),
(127, 3, 25, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:22:54', '2025-07-13 07:22:54'),
(128, 4, 25, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:23:13', '2025-07-13 07:23:13'),
(129, 1, 25, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:23:36', '2025-07-13 07:23:36'),
(130, 6, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:24:01', '2025-07-13 07:24:01'),
(131, 5, 25, 8, 8, 9, 9, 9, 9, 9, 8, 9, 9, 8.7, 1, '2025-07-13 07:25:05', '2025-07-13 07:25:05'),
(132, 2, 25, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:25:24', '2025-07-13 07:25:24'),
(133, 3, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:26:32', '2025-07-13 07:26:32'),
(134, 4, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:26:43', '2025-07-13 07:26:43'),
(135, 1, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:26:55', '2025-07-13 07:26:55'),
(136, 6, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:27:08', '2025-07-13 07:27:08'),
(137, 5, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:27:22', '2025-07-13 07:27:22'),
(138, 2, 10, 8, 8, 10, 10, 8, 10, 10, 8, 8, 8, 8.8, 1, '2025-07-13 07:27:52', '2025-07-13 07:27:52'),
(139, 3, 13, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9.9, 1, '2025-07-13 07:28:55', '2025-07-13 07:28:55'),
(140, 4, 13, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 9.9, 1, '2025-07-13 07:29:21', '2025-07-13 07:29:21'),
(141, 1, 13, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9.9, 1, '2025-07-13 07:29:42', '2025-07-13 07:29:42'),
(142, 6, 13, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9.9, 1, '2025-07-13 07:30:09', '2025-07-13 07:30:09'),
(143, 5, 13, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9.9, 1, '2025-07-13 07:30:31', '2025-07-13 07:30:31'),
(144, 2, 13, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:30:56', '2025-07-13 07:30:56'),
(145, 3, 26, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:32:21', '2025-07-13 07:32:21'),
(146, 4, 26, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-07-13 07:32:41', '2025-07-13 07:32:41'),
(147, 1, 26, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:33:00', '2025-07-13 07:33:00'),
(148, 6, 26, 9, 9, 10, 10, 10, 10, 10, 10, 10, 9, 9.7, 1, '2025-07-13 07:33:35', '2025-07-13 07:33:35'),
(149, 5, 26, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:33:55', '2025-07-13 07:33:55'),
(150, 2, 26, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-07-13 07:34:15', '2025-07-13 07:34:15'),
(151, 3, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 07:36:15', '2025-07-13 07:36:15'),
(152, 4, 8, 10, 9, 10, 10, 9, 10, 10, 10, 10, 10, 9.8, 1, '2025-07-13 07:36:53', '2025-07-13 07:36:53'),
(153, 1, 8, 10, 10, 10, 10, 9, 10, 10, 10, 10, 9, 9.8, 1, '2025-07-13 07:37:19', '2025-07-13 07:37:19'),
(154, 6, 8, 9, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9.8, 1, '2025-07-13 07:37:43', '2025-07-13 07:37:43'),
(155, 5, 8, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9.9, 1, '2025-07-13 07:38:07', '2025-07-13 07:38:07'),
(156, 2, 8, 10, 9, 10, 10, 10, 10, 9, 10, 10, 9, 9.7, 1, '2025-07-13 07:38:34', '2025-07-13 07:38:34'),
(157, 3, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:42:27', '2025-07-13 07:42:27'),
(158, 4, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:42:40', '2025-07-13 07:42:40'),
(159, 1, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:42:58', '2025-07-13 07:42:58'),
(160, 6, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:43:13', '2025-07-13 07:43:13'),
(161, 5, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:43:29', '2025-07-13 07:43:29'),
(162, 2, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-07-13 07:43:49', '2025-07-13 07:43:49'),
(163, 3, 16, 9, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9.1, 1, '2025-07-13 07:49:05', '2025-07-13 07:49:05'),
(164, 4, 16, 9, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9.1, 1, '2025-07-13 07:49:20', '2025-07-13 07:49:20'),
(165, 1, 16, 9, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9.1, 1, '2025-07-13 07:49:34', '2025-07-13 07:49:34'),
(166, 6, 16, 9, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9.1, 1, '2025-07-13 07:49:47', '2025-07-13 07:49:47'),
(167, 5, 16, 9, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9.1, 1, '2025-07-13 07:50:00', '2025-07-13 07:50:00'),
(168, 2, 16, 9, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9.1, 1, '2025-07-13 07:50:17', '2025-07-13 07:50:17'),
(169, 3, 80, 9, 9, 10, 10, 10, 10, 9, 10, 10, 10, 9.7, 1, '2025-07-13 09:24:23', '2025-07-13 09:24:23'),
(170, 4, 80, 10, 9, 10, 10, 10, 10, 10, 10, 10, 9, 9.8, 1, '2025-07-13 09:25:29', '2025-07-13 09:25:29'),
(171, 4, 80, 10, 9, 10, 10, 10, 10, 10, 10, 10, 9, 9.8, 1, '2025-07-13 09:25:31', '2025-07-13 09:25:31'),
(172, 1, 80, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 09:25:53', '2025-07-13 09:25:53'),
(173, 6, 80, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 09:26:34', '2025-07-13 09:26:34'),
(174, 5, 80, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 09:27:07', '2025-07-13 09:27:07'),
(175, 2, 80, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-07-13 09:27:30', '2025-07-13 09:27:30'),
(176, 8, 24, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-10-15 08:38:27', '2025-10-15 08:38:27'),
(177, 10, 24, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-15 08:38:43', '2025-10-15 08:38:43'),
(178, 9, 24, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:38:58', '2025-10-15 08:38:58'),
(179, 11, 24, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:39:10', '2025-10-15 08:39:10'),
(180, 12, 24, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:39:24', '2025-10-15 08:39:24'),
(181, 8, 23, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:39:37', '2025-10-17 04:39:45'),
(182, 7, 24, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-15 08:39:39', '2025-10-15 08:39:39'),
(183, 10, 23, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-15 08:39:53', '2025-10-15 08:39:53'),
(184, 9, 23, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:40:26', '2025-10-15 08:40:26'),
(185, 11, 23, 10, 10, 9, 9, 10, 10, 10, 10, 10, 9, 9.7, 1, '2025-10-15 08:40:51', '2025-10-15 08:40:51'),
(186, 12, 23, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:41:19', '2025-10-15 08:41:19'),
(187, 7, 23, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:41:32', '2025-10-15 08:41:32'),
(188, 8, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-15 08:42:18', '2025-10-15 08:42:18'),
(189, 10, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-15 08:42:39', '2025-10-15 08:42:39'),
(190, 9, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-15 08:43:01', '2025-10-15 08:43:01'),
(191, 11, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-10-15 08:43:37', '2025-10-15 08:43:37'),
(192, 12, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-15 08:44:03', '2025-10-15 08:44:03'),
(195, 7, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-15 08:44:35', '2025-10-15 08:44:35'),
(198, 8, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-15 08:46:12', '2025-10-15 08:46:12'),
(199, 8, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:46:15', '2025-10-15 08:46:15'),
(200, 10, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:46:46', '2025-10-15 08:46:46'),
(201, 10, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-15 08:46:55', '2025-10-15 08:46:55'),
(202, 9, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:01', '2025-10-15 08:47:01'),
(203, 11, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:14', '2025-10-15 08:48:47'),
(204, 12, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-10-15 08:47:18', '2025-10-15 08:47:18'),
(205, 9, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-15 08:47:23', '2025-10-15 08:47:23'),
(206, 7, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:24', '2025-10-15 08:47:24'),
(207, 12, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:31', '2025-10-15 08:47:31'),
(208, 11, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:31', '2025-10-15 08:47:31'),
(209, 9, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:38', '2025-10-15 08:47:38'),
(210, 10, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:44', '2025-10-15 08:47:44'),
(211, 8, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:50', '2025-10-15 08:47:50'),
(212, 7, 5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-15 08:47:53', '2025-10-15 08:47:53'),
(213, 11, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-15 08:47:54', '2025-10-15 08:47:54'),
(214, 12, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-15 08:48:07', '2025-10-15 08:48:07'),
(215, 7, 15, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-15 08:48:29', '2025-10-15 08:48:29'),
(216, 12, 4, 10, 10, 10, 10, 10, 9, 10, 10, 10, 10, 9.9, 0, '2025-10-16 00:42:37', '2025-10-16 00:42:37'),
(217, 7, 4, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8.9, 0, '2025-10-16 00:43:17', '2025-10-16 00:43:17'),
(218, 8, 4, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 00:44:43', '2025-10-16 00:44:43'),
(219, 10, 4, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 00:45:10', '2025-10-16 00:45:10'),
(220, 9, 4, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 00:45:57', '2025-10-16 00:45:57'),
(221, 11, 4, 9, 9, 9, 8, 9, 9, 8, 8, 8, 9, 8.6, 0, '2025-10-16 00:46:25', '2025-10-16 00:46:25'),
(222, 8, 26, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-10-16 01:22:54', '2025-10-16 01:22:54'),
(223, 8, 26, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-10-16 01:22:55', '2025-10-16 01:22:55'),
(224, 10, 26, 8, 8, 9, 8, 8, 8, 8, 8, 8, 8, 8.1, 0, '2025-10-16 01:23:36', '2025-10-16 01:23:36'),
(225, 9, 26, 9, 8, 9, 8, 8, 8, 9, 9, 8, 8, 8.4, 0, '2025-10-16 01:24:01', '2025-10-16 01:24:01'),
(226, 11, 26, 9, 9, 9, 9, 8, 8, 8, 9, 9, 8, 8.6, 0, '2025-10-16 01:24:22', '2025-10-16 01:24:22'),
(227, 12, 26, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 01:24:35', '2025-10-16 01:24:35'),
(228, 7, 26, 8, 8, 8, 8, 8, 7, 8, 8, 8, 8, 7.9, 1, '2025-10-16 01:25:09', '2025-10-16 01:25:09'),
(229, 8, 6, 8, 9, 9, 9, 8, 8, 9, 8, 9, 8, 8.5, 1, '2025-10-16 01:51:08', '2025-10-16 01:51:08'),
(230, 8, 6, 8, 9, 9, 9, 8, 8, 9, 8, 9, 8, 8.5, 1, '2025-10-16 01:51:09', '2025-10-16 01:51:09'),
(231, 10, 6, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-10-16 01:53:54', '2025-10-16 01:53:54'),
(232, 9, 6, 9, 8, 9, 8, 8, 9, 9, 8, 8, 9, 8.5, 1, '2025-10-16 01:56:33', '2025-10-16 01:56:33'),
(233, 11, 6, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8, 8.6, 1, '2025-10-16 01:57:02', '2025-10-16 01:57:02'),
(234, 12, 6, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 01:57:28', '2025-10-16 01:57:28'),
(235, 10, 17, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, '2025-10-16 02:00:56', '2025-10-16 02:00:56'),
(236, 8, 17, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, '2025-10-16 02:01:19', '2025-10-16 02:01:19'),
(237, 9, 17, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 02:01:33', '2025-10-16 02:01:33'),
(238, 11, 17, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 02:01:46', '2025-10-16 02:01:46'),
(239, 12, 17, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, '2025-10-16 02:01:57', '2025-10-16 02:01:57'),
(240, 7, 17, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, '2025-10-16 02:02:20', '2025-10-16 02:02:20'),
(241, 7, 6, 9, 8, 9, 8, 9, 9, 8, 9, 8, 9, 8.6, 1, '2025-10-16 02:04:19', '2025-10-16 02:04:19'),
(242, 8, 7, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-16 02:07:11', '2025-10-16 02:07:11'),
(243, 10, 7, 9, 9, 9, 10, 9, 9, 9, 9, 9, 9, 9.1, 0, '2025-10-16 02:07:53', '2025-10-16 02:07:53'),
(244, 9, 7, 8, 8, 8, 9, 8, 8, 8, 8, 8, 8, 8.1, 0, '2025-10-16 02:08:51', '2025-10-16 02:08:51'),
(245, 11, 7, 9, 9, 9, 10, 9, 9, 9, 9, 9, 9, 9.1, 0, '2025-10-16 02:16:56', '2025-10-16 02:16:56'),
(246, 12, 7, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-16 02:17:44', '2025-10-16 02:17:44'),
(247, 7, 7, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-16 02:18:27', '2025-10-16 02:18:27'),
(248, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:51:24', '2025-10-16 03:51:24'),
(249, 10, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:51:36', '2025-10-16 03:51:36'),
(250, 9, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:51:49', '2025-10-16 03:51:49'),
(251, 11, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:52:02', '2025-10-16 03:52:02'),
(252, 12, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:52:14', '2025-10-16 03:52:14'),
(253, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:52:25', '2025-10-16 03:52:25'),
(254, 7, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:52:28', '2025-10-16 03:52:28'),
(255, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:52:47', '2025-10-16 03:52:47'),
(256, 8, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 03:52:53', '2025-10-16 03:52:53'),
(257, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:53:04', '2025-10-16 03:53:04'),
(258, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:53:20', '2025-10-16 03:53:20'),
(259, 10, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 03:53:21', '2025-10-16 03:53:21'),
(260, 12, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:53:35', '2025-10-16 03:53:35'),
(261, 9, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 03:53:51', '2025-10-16 03:53:51'),
(262, 7, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 03:53:52', '2025-10-16 03:53:52'),
(263, 11, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 03:54:24', '2025-10-16 03:54:24'),
(264, 12, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 03:54:54', '2025-10-16 03:54:54'),
(265, 7, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 03:55:22', '2025-10-16 03:55:22'),
(266, 11, 27, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 04:09:12', '2025-10-16 04:09:12'),
(267, 8, 27, 9, 9, 9, 9, 9, 8, 9, 9, 9, 9, 8.9, 0, '2025-10-16 04:09:36', '2025-10-16 04:09:36'),
(268, 10, 27, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8.8, 1, '2025-10-16 04:10:01', '2025-10-16 04:10:01'),
(269, 9, 27, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8.8, 1, '2025-10-16 04:10:18', '2025-10-16 04:10:18'),
(270, 12, 27, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8.8, 1, '2025-10-16 04:10:36', '2025-10-16 04:10:36'),
(271, 7, 27, 9, 9, 9, 9, 9, 8, 9, 8, 9, 9, 8.8, 1, '2025-10-16 04:10:54', '2025-10-16 04:10:54'),
(272, 8, 13, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 07:15:20', '2025-10-16 07:15:20'),
(273, 9, 13, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 07:15:52', '2025-10-16 07:15:52'),
(274, 12, 13, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 07:16:10', '2025-10-16 07:16:10'),
(275, 7, 13, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-16 07:16:22', '2025-10-16 07:16:22'),
(276, 11, 13, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-16 07:16:41', '2025-10-16 07:16:41'),
(277, 10, 13, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8.6, 0, '2025-10-16 07:39:02', '2025-10-16 07:39:02'),
(278, 10, 13, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8.6, 0, '2025-10-16 07:39:08', '2025-10-16 07:39:08'),
(279, 8, 21, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 07:48:29', '2025-10-16 07:48:29'),
(280, 10, 21, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 07:48:51', '2025-10-16 07:48:51'),
(281, 9, 21, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-10-16 07:49:09', '2025-10-16 07:49:09'),
(282, 11, 21, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 07:49:33', '2025-10-16 07:49:33'),
(283, 12, 21, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 07:49:48', '2025-10-16 07:49:48'),
(284, 7, 21, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 07:50:02', '2025-10-16 07:50:02'),
(285, 8, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:19:38', '2025-10-16 08:19:38'),
(286, 8, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:19:39', '2025-10-16 08:19:39'),
(287, 10, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:19:57', '2025-10-16 08:19:57'),
(288, 8, 22, 8, 8, 9, 9, 9, 8, 9, 9, 10, 9, 8.8, 1, '2025-10-16 08:20:22', '2025-10-16 08:20:22'),
(289, 9, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:20:23', '2025-10-16 08:20:23'),
(290, 9, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:20:24', '2025-10-16 08:20:24'),
(291, 11, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:20:35', '2025-10-16 08:20:35'),
(292, 12, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:20:50', '2025-10-16 08:20:50'),
(293, 7, 18, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:21:02', '2025-10-16 08:21:02'),
(294, 10, 22, 8, 10, 9, 10, 9, 9, 9, 10, 10, 10, 9.4, 0, '2025-10-16 08:22:07', '2025-10-16 08:22:07'),
(295, 9, 22, 8, 8, 10, 9, 9, 8, 8, 8, 9, 9, 8.6, 0, '2025-10-16 08:23:30', '2025-10-16 08:23:30'),
(296, 11, 22, 9, 10, 9, 9, 8, 9, 9, 10, 9, 9, 9.1, 0, '2025-10-16 08:24:33', '2025-10-16 08:24:33'),
(297, 8, 20, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 08:25:57', '2025-10-16 08:25:57'),
(298, 12, 22, 9, 8, 8, 9, 9, 8, 9, 9, 8, 9, 8.6, 0, '2025-10-16 08:25:59', '2025-10-16 08:25:59'),
(299, 10, 20, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 08:26:18', '2025-10-16 08:26:18'),
(300, 9, 20, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 08:26:36', '2025-10-16 08:26:36'),
(301, 11, 20, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-16 08:26:53', '2025-10-16 08:26:53'),
(302, 7, 22, 8, 8, 9, 8, 8, 9, 9, 8, 8, 8, 8.3, 0, '2025-10-16 08:27:13', '2025-10-16 08:27:13'),
(303, 12, 20, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 9.6, 1, '2025-10-16 08:27:14', '2025-10-16 08:27:14'),
(304, 7, 20, 10, 8, 9, 8, 8, 8, 8, 8, 8, 8, 8.3, 1, '2025-10-16 08:27:29', '2025-10-16 08:27:29'),
(305, 8, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, '2025-10-16 08:27:51', '2025-10-16 08:27:51'),
(306, 10, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, '2025-10-16 08:28:07', '2025-10-16 08:28:07'),
(307, 9, 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 08:28:33', '2025-10-16 08:28:33'),
(308, 11, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-10-16 08:28:54', '2025-10-16 08:28:54'),
(309, 12, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, '2025-10-16 08:29:14', '2025-10-16 08:29:14'),
(310, 7, 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 08:29:31', '2025-10-16 08:29:31'),
(311, 7, 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-16 08:29:32', '2025-10-16 08:29:32'),
(312, 8, 80, 8, 8, 9, 8, 9, 8, 9, 8, 8, 8, 8.3, 1, '2025-10-17 02:11:56', '2025-10-17 02:11:56'),
(313, 10, 80, 10, 9, 9, 8, 9, 8, 8, 8, 9, 9, 8.7, 1, '2025-10-17 02:12:45', '2025-10-17 02:12:45'),
(314, 9, 80, 9, 9, 9, 9, 8, 9, 8, 9, 8, 9, 8.7, 0, '2025-10-17 02:13:13', '2025-10-17 02:13:13'),
(315, 11, 80, 9, 9, 9, 9, 8, 10, 8, 8, 8, 8, 8.6, 0, '2025-10-17 02:13:29', '2025-10-17 02:13:29'),
(316, 12, 80, 9, 8, 10, 9, 8, 9, 8, 9, 8, 9, 8.7, 1, '2025-10-17 02:13:43', '2025-10-17 02:13:43'),
(317, 7, 80, 9, 10, 9, 8, 9, 8, 9, 9, 9, 9, 8.9, 1, '2025-10-17 02:13:58', '2025-10-17 02:13:58'),
(318, 8, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-17 02:31:57', '2025-10-17 02:31:57'),
(319, 10, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-17 02:32:09', '2025-10-17 02:32:09'),
(320, 9, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-17 02:32:19', '2025-10-17 02:32:19'),
(321, 11, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-17 02:32:30', '2025-10-17 02:32:30'),
(322, 12, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-17 02:32:53', '2025-10-17 02:32:53'),
(323, 7, 28, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, '2025-10-17 02:33:04', '2025-10-17 02:33:04'),
(324, 8, 2, 9, 8, 9, 9, 9, 9, 9, 9, 9, 9, 8.9, 1, '2025-10-17 02:53:46', '2025-10-17 02:53:46'),
(325, 10, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-17 02:54:38', '2025-10-17 02:54:38'),
(326, 9, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-17 02:55:07', '2025-10-17 02:55:07'),
(327, 11, 2, 9, 9, 9, 9, 9, 9, 10, 9, 9, 9, 9.1, 0, '2025-10-17 02:55:31', '2025-10-17 02:55:31'),
(328, 12, 2, 9, 8, 8, 9, 9, 9, 9, 9, 9, 9, 8.8, 1, '2025-10-17 02:56:01', '2025-10-17 02:56:01'),
(329, 7, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-17 02:56:21', '2025-10-17 02:56:21'),
(330, 8, 19, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-17 02:58:16', '2025-10-17 02:58:16'),
(331, 10, 19, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2025-10-17 02:58:40', '2025-10-17 02:58:40'),
(332, 9, 19, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-17 02:59:09', '2025-10-17 02:59:09'),
(333, 11, 19, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-17 02:59:23', '2025-10-17 02:59:23'),
(334, 12, 19, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, '2025-10-17 02:59:44', '2025-10-17 02:59:44'),
(335, 7, 19, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-17 03:00:00', '2025-10-17 03:00:00'),
(336, 8, 16, 8, 9, 9, 9, 8, 9, 9, 8, 8, 9, 8.6, 1, '2025-10-17 03:23:58', '2025-10-17 03:23:58'),
(337, 10, 16, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8.5, 1, '2025-10-17 03:24:30', '2025-10-17 03:24:30'),
(338, 9, 16, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8.5, 1, '2025-10-17 03:25:32', '2025-10-17 03:25:32'),
(339, 11, 16, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8.5, 1, '2025-10-17 03:26:03', '2025-10-17 03:26:03'),
(340, 8, 12, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, '2025-10-17 03:26:04', '2025-10-17 03:26:04'),
(341, 12, 16, 9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8.6, 1, '2025-10-17 03:26:39', '2025-10-17 03:26:39'),
(342, 10, 12, 8, 8, 8, 8, 8, 7, 9, 8, 8, 8, 8, 0, '2025-10-17 03:27:05', '2025-10-17 03:27:05'),
(343, 7, 16, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8.5, 1, '2025-10-17 03:27:12', '2025-10-17 03:27:12'),
(344, 9, 12, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-17 03:27:43', '2025-10-17 03:27:43'),
(345, 11, 12, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-17 03:28:19', '2025-10-17 03:28:19'),
(346, 12, 12, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2025-10-17 03:29:05', '2025-10-17 04:39:26'),
(347, 7, 12, 9, 8, 9, 8, 8, 8, 8, 9, 9, 8, 8.4, 0, '2025-10-17 03:29:58', '2025-10-17 03:29:58'),
(348, 8, 422, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-17 05:57:33', '2025-10-17 05:57:33'),
(349, 10, 422, 8, 8, 9, 8, 8, 8, 8, 8, 8, 8, 8.1, 0, '2025-10-17 05:58:36', '2025-10-17 05:58:36'),
(350, 9, 422, 9, 8, 9, 8, 8, 8, 8, 9, 8, 8, 8.3, 0, '2025-10-17 05:59:03', '2025-10-17 05:59:03'),
(351, 11, 422, 8, 9, 8, 9, 8, 8, 9, 8, 9, 8, 8.4, 0, '2025-10-17 05:59:21', '2025-10-17 05:59:21'),
(352, 12, 422, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, '2025-10-17 05:59:43', '2025-10-17 05:59:43'),
(353, 7, 422, 8, 8, 9, 8, 8, 8, 9, 8, 9, 8, 8.3, 0, '2025-10-17 06:00:04', '2025-10-17 06:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_type`, `created_at`, `updated_at`) VALUES
(1, 'Orang Bulan', NULL, NULL),
(2, 'Dokumen', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(2, 'view_any_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(3, 'create_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(4, 'update_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(5, 'restore_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(6, 'restore_any_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(7, 'replicate_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(8, 'reorder_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(9, 'delete_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(10, 'delete_any_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(11, 'force_delete_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(12, 'force_delete_any_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(13, 'book:create_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(14, 'book:update_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(15, 'book:delete_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(16, 'book:pagination_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(17, 'book:detail_book', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(18, 'view_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(19, 'view_any_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(20, 'create_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(21, 'update_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(22, 'restore_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(23, 'restore_any_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(24, 'replicate_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(25, 'reorder_employee', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(26, 'delete_employee', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(27, 'delete_any_employee', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(28, 'force_delete_employee', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(29, 'force_delete_any_employee', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(30, 'view_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(31, 'view_any_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(32, 'create_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(33, 'update_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(34, 'restore_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(35, 'restore_any_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(36, 'replicate_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(37, 'reorder_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(38, 'delete_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(39, 'delete_any_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(40, 'force_delete_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(41, 'force_delete_any_mitra', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(42, 'view_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(43, 'view_any_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(44, 'create_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(45, 'update_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(46, 'restore_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(47, 'restore_any_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(48, 'replicate_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(49, 'reorder_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(50, 'delete_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(51, 'delete_any_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(52, 'force_delete_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(53, 'force_delete_any_mitra::teladan', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(54, 'view_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(55, 'view_any_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(56, 'create_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(57, 'update_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(58, 'restore_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(59, 'restore_any_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(60, 'replicate_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(61, 'reorder_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(62, 'delete_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(63, 'delete_any_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(64, 'force_delete_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(65, 'force_delete_any_nilai1', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(66, 'view_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(67, 'view_any_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(68, 'create_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(69, 'update_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(70, 'restore_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(71, 'restore_any_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(72, 'replicate_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(73, 'reorder_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(74, 'delete_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(75, 'delete_any_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(76, 'force_delete_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(77, 'force_delete_any_nilai2', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(78, 'view_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(79, 'view_any_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(80, 'create_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(81, 'update_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(82, 'restore_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(83, 'restore_any_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(84, 'replicate_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(85, 'reorder_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(86, 'delete_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(87, 'delete_any_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(88, 'force_delete_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(89, 'force_delete_any_payment', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(90, 'view_role', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(91, 'view_any_role', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(92, 'create_role', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(93, 'update_role', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(94, 'delete_role', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(95, 'delete_any_role', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(96, 'view_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(97, 'view_any_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(98, 'create_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(99, 'update_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(100, 'restore_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(101, 'restore_any_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(102, 'replicate_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(103, 'reorder_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(104, 'delete_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(105, 'delete_any_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(106, 'force_delete_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(107, 'force_delete_any_survey', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(108, 'view_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(109, 'view_any_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(110, 'create_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(111, 'update_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(112, 'restore_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(113, 'restore_any_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(114, 'replicate_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(115, 'reorder_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(116, 'delete_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(117, 'delete_any_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(118, 'force_delete_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(119, 'force_delete_any_team', 'web', '2025-07-10 07:32:12', '2025-07-10 07:32:12'),
(120, 'view_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(121, 'view_any_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(122, 'create_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(123, 'update_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(124, 'restore_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(125, 'restore_any_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(126, 'replicate_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(127, 'reorder_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(128, 'delete_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(129, 'delete_any_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(130, 'force_delete_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(131, 'force_delete_any_token', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(132, 'view_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(133, 'view_any_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(134, 'create_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(135, 'update_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(136, 'restore_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(137, 'restore_any_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(138, 'replicate_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(139, 'reorder_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(140, 'delete_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(141, 'delete_any_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(142, 'force_delete_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(143, 'force_delete_any_transaction', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(144, 'view_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(145, 'view_any_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(146, 'create_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(147, 'update_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(148, 'restore_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(149, 'restore_any_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(150, 'replicate_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(151, 'reorder_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(152, 'delete_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(153, 'delete_any_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(154, 'force_delete_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(155, 'force_delete_any_user', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(156, 'page_EmployeeNilai2Status', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(157, 'page_ManageSetting', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(158, 'page_SelectMitraTeladan', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(159, 'page_Themes', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(160, 'page_MyProfilePage', 'web', '2025-07-10 07:32:13', '2025-07-10 07:32:13'),
(161, 'view_master::survey', 'web', '2025-10-17 01:44:09', '2025-10-17 01:44:09'),
(162, 'view_any_master::survey', 'web', '2025-10-17 01:44:09', '2025-10-17 01:44:09'),
(163, 'view_maximal::payment', 'web', '2025-10-17 01:44:09', '2025-10-17 01:44:09'),
(164, 'view_any_maximal::payment', 'web', '2025-10-17 01:44:09', '2025-10-17 01:44:09'),
(165, 'create_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(166, 'update_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(167, 'restore_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(168, 'restore_any_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(169, 'replicate_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(170, 'reorder_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(171, 'delete_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(172, 'delete_any_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(173, 'force_delete_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(174, 'force_delete_any_master::survey', 'web', '2025-10-17 01:45:13', '2025-10-17 01:45:13'),
(175, 'create_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(176, 'update_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(177, 'restore_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(178, 'restore_any_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(179, 'replicate_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(180, 'reorder_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(181, 'delete_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(182, 'delete_any_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(183, 'force_delete_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14'),
(184, 'force_delete_any_maximal::payment', 'web', '2025-10-17 01:45:14', '2025-10-17 01:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-07-10 07:32:11', '2025-07-10 07:32:11'),
(2, 'Pegawai', 'web', '2025-07-10 07:34:16', '2025-07-10 07:34:16'),
(3, 'Ketua Tim', 'web', '2025-07-10 07:35:15', '2025-07-10 07:35:15'),
(4, 'Mitra', 'web', '2025-07-10 07:35:43', '2025-07-10 07:35:43'),
(5, 'Ketua SDM', 'web', '2025-07-11 17:43:40', '2025-07-11 17:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(78, 2),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(96, 2),
(96, 3),
(97, 1),
(97, 2),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(108, 2),
(108, 3),
(109, 1),
(109, 2),
(109, 3),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(132, 2),
(133, 1),
(133, 2),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(144, 2),
(145, 1),
(145, 2),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(156, 2),
(157, 1),
(158, 1),
(158, 2),
(158, 5),
(159, 1),
(160, 1),
(161, 1),
(161, 2),
(162, 1),
(162, 2),
(163, 1),
(163, 2),
(164, 1),
(164, 2),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0lsTmV46HH4MSsC7VKfa2UFQtmhoQJVZ2mHIXIK8', NULL, '103.121.97.129', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnNMNElPWFhtMHlxWldDM3lqNTAxalJiVVhRS3Q2d1RnSUNrU1R5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760686950),
('9frYT7636JaxP5uMTiq9n3T0bdYVx0ANW6qWy6rA', 422, '103.121.97.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiekhpbW1sWkVGYVl6Y1djaDl5TUhxYVZPNDZPWXBXeFQ4YThqcnl2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZC9tb25pdG9yaW5nLXBlbmlsYWlhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl8zZGM3YTkxM2VmNWZkNGI4OTBlY2FiZTM0ODcwODU1NzNlMTZjZjgyIjtpOjQyMjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJElnbDFpM0hqdXZzejRBMC9paEwzanU1NUdnNzA2Vk1MVGc3ay80TDE4ZVZOVFNmcm41Ym5DIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1760680818),
('GDrai8piGfljZrvYKarFLIqA3rvFheRwKyHvPsgK', NULL, '182.4.133.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDlKN1pzN0FxVHMwT29sbE1lcFpFc1FwSG8wa2x5Q1YzdUxnam5vOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZC9sb2dpbiI7fX0=', 1760686309),
('GFwas2kFHIhQhcLT6aqLO5CGzGS9X26DWV6i45XH', 18, '103.121.96.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 OPR/122.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMldLN2NGTFV2UjZXVnJPZXlTNmRaOVBjaGdPcjhFZEZUYllsMnNSZSI7czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTg7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRvcTZyamZtaXpmaERIUWdNYTF6cG1lNnRMeHRqcHpLQUg5R1NYSnNBcDBDNVUwRVdIVXhOTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZC9tb25pdG9yaW5nLXBlbmlsYWlhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760919522),
('kd2ksMGC3lT88Irpg57R1cbekUdBe1CBj11Z4gRT', 422, '103.121.96.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidTUzNnREWEpjWGdHMm9oSzZvZHczamw2OGZzRVVsaTgwOUowVE1LeCI7czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6NDIyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkSWdsMWkzSGp1dnN6NEEwL2loTDNqdTU1R2c3MDZWTUxUZzdrLzRMMThlVk5UU2ZybjVibkMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU4OiJodHRwczovL21pdHJhLmJwc2tvdGFtYWxhbmcuaWQvbW9uaXRvcmluZy1wZW5pbGFpYW4/cGFnZT0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1760926418),
('KiaDvZDb2f99lfSoErZHU4xUgApwGiAO51Ps1jG9', 422, '103.121.97.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWkpoa0R3UnRUR1RlYjdxcGJuQWJWY2szaUxBa2Q3VjhvcHZ2SFZWdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZC9tb25pdG9yaW5nLXBlbmlsYWlhbj9wYWdlPTMiO31zOjUwOiJsb2dpbl93ZWJfM2RjN2E5MTNlZjVmZDRiODkwZWNhYmUzNDg3MDg1NTczZTE2Y2Y4MiI7aTo0MjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRJZ2wxaTNIanV2c3o0QTAvaWhMM2p1NTVHZzcwNlZNTFRnN2svNEwxOGVWTlRTZnJuNWJuQyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9taXRyYS5icHNrb3RhbWFsYW5nLmlkIjt9fQ==', 1760690601),
('RFE4isNVQqqnYyChiwVql2MpIE9QfTBufB1rcs3d', NULL, '146.70.185.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlpWVlpvTGJrbXRaSGY5YUpjSGlWbXhtN1RHVm1lTUU2cjNrTGI5ZyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9taXRyYS5icHNrb3RhbWFsYW5nLmlkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1760993695),
('sYQzZ7Mi66ETEIHZRy4g9OCY8nBmFv3z5J5YP0qi', NULL, '106.75.157.207', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY3RudmhtekNFellNcXFoZlFoaFBzNGM1dFlGT0Fva2tvMzJGZTJJMyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9taXRyYS5icHNrb3RhbWFsYW5nLmlkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760993105),
('UyJeZNxCiwXDRBM5HcDeb298dStURlPQnHQzALlV', 1, '103.121.97.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM3ZMaHlYRGI3MTk4QzVVMUt3VnVlem9DcVN4b0tRRkd2aTlBUEJFVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZC9wZW5pbGFpYW4tbWl0cmEtdGVsYWRhbiI7fXM6NTA6ImxvZ2luX3dlYl8zZGM3YTkxM2VmNWZkNGI4OTBlY2FiZTM0ODcwODU1NzNlMTZjZjgyIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiR3dENYdEZ2VE1ZY1FrT0FuTFlTd3Z1NnZCSWtCOU9wcEoxRHVSaHlQcjlXelVzdE0vcGM1LiI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1760686503),
('vovUGVxIcVOrVhDiq4ubnSWQiw8Q2cFItCj6nmAT', NULL, '52.167.144.191', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkR2QlhoekFzd25uTWFJMjlMdk9VTjF3UTZnMEtqazN6MHJSdFREQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761099841),
('ZEKxagBYZru9N6KlXqSFXV1JGFFzauwbV3W3T1Ef', NULL, '106.75.164.139', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWtUd1psMTM2QjZJaGNKTjU2RmVuUWFsUllNOWNZVmJKMnI0aDEzYyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9taXRyYS5icHNrb3RhbWFsYW5nLmlkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760993105),
('zWKL26QPcfBMqtM0hPH4cpQyn0IbM6vPnrCt7W9h', NULL, '106.75.165.62', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieHd4MDBoSlhDcEltb0twWkxZa2tjazZXekhWTlI1Vzhnc0JkN2pKdCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cHM6Ly9taXRyYS5icHNrb3RhbWFsYW5nLmlkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbWl0cmEuYnBza290YW1hbGFuZy5pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760993105);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`payload`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'KaidoSetting', 'site_name', 0, '\"Spatie\"', '2025-07-10 07:27:58', '2025-07-10 10:04:37'),
(2, 'KaidoSetting', 'site_active', 0, 'true', '2025-07-10 07:27:58', '2025-07-10 10:04:37'),
(3, 'KaidoSetting', 'registration_enabled', 0, 'false', '2025-07-10 07:27:58', '2025-07-10 10:04:37'),
(4, 'KaidoSetting', 'login_enabled', 0, 'true', '2025-07-10 07:27:58', '2025-07-10 10:04:37'),
(5, 'KaidoSetting', 'password_reset_enabled', 0, 'false', '2025-07-10 07:27:58', '2025-07-10 10:04:37'),
(6, 'KaidoSetting', 'sso_enabled', 0, 'false', '2025-07-10 07:27:58', '2025-07-10 10:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `socialite_users`
--

CREATE TABLE `socialite_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_survey_id` bigint(20) UNSIGNED DEFAULT NULL,
  `triwulan` tinyint(3) UNSIGNED DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `payment_month` int(11) DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `is_scored` tinyint(1) NOT NULL DEFAULT 0,
  `is_synced` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('not started','in progress','done') NOT NULL DEFAULT 'not started',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `master_survey_id`, `triwulan`, `year`, `payment_month`, `payment_id`, `team_id`, `rate`, `file`, `is_scored`, `is_synced`, `status`, `created_at`, `updated_at`) VALUES
(1, 34, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:03:24', '2025-07-10 08:15:11'),
(2, 35, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:16:21', '2025-07-10 08:16:54'),
(3, 36, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:18:32', '2025-07-10 08:19:52'),
(4, 37, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:21:49', '2025-07-10 08:22:11'),
(5, 38, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:23:22', '2025-07-10 08:23:44'),
(6, 39, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:24:47', '2025-07-10 08:25:08'),
(7, 40, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:27:40', '2025-07-10 08:28:17'),
(8, 41, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:29:13', '2025-07-10 08:29:45'),
(9, 42, 2, 2025, NULL, 1, 4, 1, NULL, 1, 0, 'not started', '2025-07-10 08:30:28', '2025-07-10 08:31:06'),
(10, 29, 2, 2025, NULL, 1, 7, 1, NULL, 1, 0, 'not started', '2025-07-10 08:36:36', '2025-07-10 08:37:16'),
(11, 30, 2, 2025, NULL, 1, 7, 1, NULL, 1, 0, 'not started', '2025-07-10 08:37:53', '2025-07-10 08:38:43'),
(12, 31, 2, 2025, NULL, 1, 7, 1, NULL, 1, 0, 'not started', '2025-07-10 08:40:10', '2025-07-10 08:40:53'),
(13, 43, 2, 2025, NULL, 1, 7, 1, NULL, 1, 0, 'not started', '2025-07-10 08:41:35', '2025-07-10 08:41:57'),
(14, 44, 2, 2025, NULL, 1, 2, 1, NULL, 1, 0, 'not started', '2025-07-10 08:43:45', '2025-07-10 08:44:25'),
(15, 16, 2, 2025, NULL, 1, 2, 1, NULL, 1, 0, 'not started', '2025-07-10 08:45:49', '2025-07-10 08:46:45'),
(16, 45, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 08:49:39', '2025-07-10 08:50:18'),
(17, 19, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 08:51:26', '2025-07-10 08:51:48'),
(18, 46, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 08:56:58', '2025-07-10 08:57:38'),
(19, 20, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 08:58:31', '2025-07-10 08:58:56'),
(20, 21, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 08:59:34', '2025-07-10 09:02:08'),
(21, 22, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 09:03:26', '2025-07-10 09:09:12'),
(22, 47, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 09:11:03', '2025-07-10 09:11:19'),
(23, 23, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 09:12:06', '2025-07-10 09:12:30'),
(24, 48, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 09:18:16', '2025-07-10 09:18:46'),
(25, 49, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 09:19:47', '2025-07-10 09:20:07'),
(26, 50, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 09:21:03', '2025-07-10 09:22:04'),
(27, 24, 2, 2025, NULL, 1, 3, 1, NULL, 1, 0, 'not started', '2025-07-10 09:22:36', '2025-07-10 09:22:56'),
(28, 51, 2, 2025, NULL, 1, 5, 1, NULL, 1, 0, 'not started', '2025-07-10 09:26:50', '2025-07-10 09:29:31'),
(29, 26, 2, 2025, NULL, 1, 5, 1, NULL, 1, 0, 'not started', '2025-07-10 09:30:07', '2025-07-10 09:30:50'),
(30, 12, 2, 2025, NULL, 1, 6, 1, NULL, 0, 0, 'not started', '2025-07-10 09:32:40', '2025-07-10 09:32:40'),
(31, 52, 3, 2025, 10, 2, 4, 1, NULL, 1, 0, 'not started', '2025-10-15 03:42:18', '2025-10-15 03:52:50'),
(32, 53, 3, 2025, 10, 1, 4, 1, NULL, 1, 0, 'not started', '2025-10-15 03:54:25', '2025-10-15 03:58:55'),
(33, 54, 3, 2025, 10, 2, 4, 1, NULL, 1, 0, 'not started', '2025-10-15 04:08:59', '2025-10-15 04:10:25'),
(34, 40, 3, 2025, 10, 2, 4, 1, NULL, 1, 0, 'not started', '2025-10-15 04:11:49', '2025-10-15 04:12:26'),
(35, 36, 3, 2025, 10, 2, 4, 1, NULL, 1, 0, 'not started', '2025-10-15 04:16:19', '2025-10-15 04:17:07'),
(36, 29, 3, 2025, 10, 2, 7, 1, NULL, 1, 0, 'not started', '2025-10-15 04:20:02', '2025-10-15 04:21:05'),
(37, 30, 3, 2025, 10, 2, 7, 1, NULL, 1, 0, 'not started', '2025-10-15 04:21:34', '2025-10-15 04:22:38'),
(38, 31, 3, 2025, 10, 2, 7, 1, NULL, 1, 0, 'not started', '2025-10-15 04:23:14', '2025-10-15 04:23:49'),
(39, 55, 3, 2025, 10, 2, 7, 1, NULL, 1, 0, 'not started', '2025-10-15 04:26:26', '2025-10-15 04:27:32'),
(40, 5, 3, 2025, 10, 2, 2, 1, NULL, 1, 0, 'not started', '2025-10-15 04:31:36', '2025-10-15 04:53:29'),
(41, 16, 3, 2025, 10, 2, 2, 1, NULL, 1, 0, 'not started', '2025-10-15 04:54:37', '2025-10-15 05:07:18'),
(42, 56, 3, 2025, 9, 1, 2, 1, NULL, 1, 0, 'not started', '2025-10-15 05:10:29', '2025-10-15 05:12:29'),
(43, 8, 3, 2025, 10, 2, 2, 1, NULL, 1, 0, 'not started', '2025-10-15 05:15:27', '2025-10-15 05:15:59'),
(44, 23, 3, 2025, 10, 1, 3, 1, NULL, 1, 0, 'not started', '2025-10-15 05:19:04', '2025-10-15 05:19:32'),
(45, 57, 3, 2025, 10, 2, 3, 1, NULL, 1, 0, 'not started', '2025-10-15 05:20:56', '2025-10-15 05:23:28'),
(46, 46, 3, 2025, 9, 2, 3, 1, NULL, 1, 0, 'not started', '2025-10-15 05:59:19', '2025-10-15 06:00:37'),
(47, 21, 3, 2025, 10, 2, 3, 1, NULL, 1, 0, 'not started', '2025-10-15 07:30:09', '2025-10-15 07:30:51'),
(48, 22, 3, 2025, 10, 2, 3, 1, NULL, 1, 0, 'not started', '2025-10-15 07:32:00', '2025-10-15 07:33:14'),
(49, 58, 3, 2025, 10, 2, 3, 1, NULL, 1, 0, 'not started', '2025-10-15 07:37:34', '2025-10-15 07:38:54'),
(50, 24, 3, 2025, 10, 1, 3, 1, NULL, 1, 0, 'not started', '2025-10-15 07:39:33', '2025-10-15 07:40:31'),
(51, 59, 3, 2025, 10, 1, 5, 1, NULL, 1, 0, 'not started', '2025-10-15 07:42:58', '2025-10-15 07:44:25'),
(52, 60, 3, 2025, 9, 1, 5, 1, NULL, 1, 0, 'not started', '2025-10-15 07:46:12', '2025-10-15 07:46:50'),
(53, 25, 3, 2025, 10, 1, 5, 1, NULL, 1, 0, 'not started', '2025-10-15 07:48:28', '2025-10-15 07:49:21'),
(54, 61, 3, 2025, 10, 1, 5, 1, NULL, 1, 0, 'not started', '2025-10-15 07:50:25', '2025-10-15 07:52:19'),
(55, 26, 3, 2025, 10, 2, 5, 1, NULL, 1, 0, 'not started', '2025-10-15 07:54:10', '2025-10-15 07:55:09'),
(56, 62, 3, 2025, 9, 1, 6, 1, NULL, 1, 0, 'not started', '2025-10-15 07:57:17', '2025-10-15 08:12:37'),
(57, 63, 3, 2025, 10, 1, 6, 1, NULL, 1, 0, 'not started', '2025-10-15 08:14:43', '2025-10-15 08:18:08'),
(58, 33, 3, 2025, 10, 2, 6, 1, NULL, 1, 0, 'not started', '2025-10-15 08:20:51', '2025-10-15 08:21:30'),
(59, 12, 3, 2025, 10, 2, 6, 1, NULL, 1, 0, 'not started', '2025-10-15 08:22:31', '2025-10-15 08:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `has_survey` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `has_survey`, `created_at`, `updated_at`) VALUES
(1, 'Umum', 0, NULL, NULL),
(2, 'Sosial', 1, NULL, NULL),
(3, 'Produksi', 1, NULL, NULL),
(4, 'Distribusi', 1, NULL, NULL),
(5, 'Neraca', 1, NULL, NULL),
(6, 'IPDS', 1, NULL, NULL),
(7, 'Harga', 1, '2025-07-10 08:18:41', '2025-07-10 08:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mitra_id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `target` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `mitra_id`, `survey_id`, `target`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2025-07-10 08:07:44', '2025-07-10 08:07:44'),
(2, 2, 1, 1, 1, '2025-07-10 08:14:57', '2025-07-10 08:14:57'),
(3, 3, 1, 1, 1, '2025-07-10 08:14:57', '2025-07-10 08:14:57'),
(4, 4, 1, 1, 1, '2025-07-10 08:14:58', '2025-07-10 08:14:58'),
(5, 5, 2, 1, 1, '2025-07-10 08:16:42', '2025-07-10 08:16:42'),
(6, 2, 2, 1, 1, '2025-07-10 08:16:42', '2025-07-10 08:16:42'),
(7, 3, 2, 1, 1, '2025-07-10 08:16:43', '2025-07-10 08:16:43'),
(8, 4, 2, 1, 1, '2025-07-10 08:16:43', '2025-07-10 08:16:43'),
(9, 6, 2, 1, 1, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(10, 1, 2, 1, 1, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(11, 7, 2, 1, 1, '2025-07-10 08:16:44', '2025-07-10 08:16:44'),
(12, 8, 2, 1, 1, '2025-07-10 08:16:45', '2025-07-10 08:16:45'),
(13, 9, 2, 1, 1, '2025-07-10 08:16:45', '2025-07-10 08:16:45'),
(14, 5, 3, 1, 1, '2025-07-10 08:19:42', '2025-07-10 08:19:42'),
(15, 2, 3, 1, 1, '2025-07-10 08:19:42', '2025-07-10 08:19:42'),
(16, 3, 3, 1, 1, '2025-07-10 08:19:43', '2025-07-10 08:19:43'),
(17, 4, 3, 1, 1, '2025-07-10 08:19:43', '2025-07-10 08:19:43'),
(18, 6, 3, 1, 1, '2025-07-10 08:19:43', '2025-07-10 08:19:43'),
(19, 1, 3, 1, 1, '2025-07-10 08:19:44', '2025-07-10 08:19:44'),
(20, 7, 3, 1, 1, '2025-07-10 08:19:44', '2025-07-10 08:19:44'),
(21, 8, 3, 1, 1, '2025-07-10 08:19:44', '2025-07-10 08:19:44'),
(22, 9, 3, 1, 1, '2025-07-10 08:19:45', '2025-07-10 08:19:45'),
(23, 10, 4, 1, 1, '2025-07-10 08:22:06', '2025-07-10 08:22:06'),
(24, 2, 4, 1, 1, '2025-07-10 08:22:06', '2025-07-10 08:22:06'),
(25, 4, 4, 1, 1, '2025-07-10 08:22:06', '2025-07-10 08:22:06'),
(26, 11, 4, 1, 1, '2025-07-10 08:22:07', '2025-07-10 08:22:07'),
(27, 12, 4, 1, 1, '2025-07-10 08:22:07', '2025-07-10 08:22:07'),
(28, 7, 4, 1, 1, '2025-07-10 08:22:08', '2025-07-10 08:22:08'),
(29, 8, 5, 1, 1, '2025-07-10 08:23:37', '2025-07-10 08:23:37'),
(30, 5, 6, 1, 1, '2025-07-10 08:25:02', '2025-07-10 08:25:02'),
(31, 6, 6, 1, 1, '2025-07-10 08:25:02', '2025-07-10 08:25:02'),
(32, 12, 6, 1, 1, '2025-07-10 08:25:03', '2025-07-10 08:25:03'),
(33, 13, 6, 1, 1, '2025-07-10 08:25:03', '2025-07-10 08:25:03'),
(34, 2, 7, 1, 1, '2025-07-10 08:28:04', '2025-07-10 08:28:04'),
(35, 12, 7, 1, 1, '2025-07-10 08:28:04', '2025-07-10 08:28:04'),
(36, 7, 7, 1, 1, '2025-07-10 08:28:04', '2025-07-10 08:28:04'),
(37, 14, 8, 1, 1, '2025-07-10 08:29:37', '2025-07-10 08:29:37'),
(38, 5, 8, 1, 1, '2025-07-10 08:29:37', '2025-07-10 08:29:37'),
(39, 10, 8, 1, 1, '2025-07-10 08:29:37', '2025-07-10 08:29:37'),
(40, 2, 8, 1, 1, '2025-07-10 08:29:38', '2025-07-10 08:29:38'),
(41, 3, 8, 1, 1, '2025-07-10 08:29:38', '2025-07-10 08:29:38'),
(42, 15, 8, 1, 1, '2025-07-10 08:29:38', '2025-07-10 08:29:38'),
(43, 6, 8, 1, 1, '2025-07-10 08:29:39', '2025-07-10 08:29:39'),
(44, 1, 8, 1, 1, '2025-07-10 08:29:39', '2025-07-10 08:29:39'),
(45, 12, 8, 1, 1, '2025-07-10 08:29:39', '2025-07-10 08:29:39'),
(46, 13, 8, 1, 1, '2025-07-10 08:29:40', '2025-07-10 08:29:40'),
(47, 7, 8, 1, 1, '2025-07-10 08:29:40', '2025-07-10 08:29:40'),
(48, 8, 8, 1, 1, '2025-07-10 08:29:40', '2025-07-10 08:29:40'),
(49, 2, 9, 1, 1, '2025-07-10 08:31:02', '2025-07-10 08:31:02'),
(50, 12, 9, 1, 1, '2025-07-10 08:31:03', '2025-07-10 08:31:03'),
(51, 16, 10, 1, 1, '2025-07-10 08:37:01', '2025-07-10 08:37:01'),
(52, 17, 10, 1, 1, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(53, 18, 10, 1, 1, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(54, 19, 10, 1, 1, '2025-07-10 08:37:02', '2025-07-10 08:37:02'),
(55, 20, 10, 1, 1, '2025-07-10 08:37:03', '2025-07-10 08:37:03'),
(56, 21, 10, 1, 1, '2025-07-10 08:37:03', '2025-07-10 08:37:03'),
(57, 22, 10, 1, 1, '2025-07-10 08:37:04', '2025-07-10 08:37:04'),
(58, 2, 11, 1, 1, '2025-07-10 08:38:25', '2025-07-10 08:38:25'),
(59, 15, 11, 1, 1, '2025-07-10 08:38:25', '2025-07-10 08:38:25'),
(60, 4, 11, 1, 1, '2025-07-10 08:38:26', '2025-07-10 08:38:26'),
(61, 23, 11, 1, 1, '2025-07-10 08:38:26', '2025-07-10 08:38:26'),
(62, 11, 11, 1, 1, '2025-07-10 08:38:27', '2025-07-10 08:38:27'),
(63, 12, 11, 1, 1, '2025-07-10 08:38:27', '2025-07-10 08:38:27'),
(64, 7, 11, 1, 1, '2025-07-10 08:38:28', '2025-07-10 08:38:28'),
(65, 2, 12, 1, 1, '2025-07-10 08:40:33', '2025-07-10 08:40:33'),
(66, 7, 12, 1, 1, '2025-07-10 08:40:34', '2025-07-10 08:40:34'),
(67, 21, 12, 1, 1, '2025-07-10 08:40:34', '2025-07-10 08:40:34'),
(68, 12, 12, 1, 1, '2025-07-10 08:40:34', '2025-07-10 08:40:34'),
(69, 4, 12, 1, 1, '2025-07-10 08:40:35', '2025-07-10 08:40:35'),
(70, 1, 12, 1, 1, '2025-07-10 08:40:35', '2025-07-10 08:40:35'),
(71, 16, 13, 1, 1, '2025-07-10 08:41:53', '2025-07-10 08:41:53'),
(72, 17, 13, 1, 1, '2025-07-10 08:41:53', '2025-07-10 08:41:53'),
(73, 21, 13, 1, 1, '2025-07-10 08:41:53', '2025-07-10 08:41:53'),
(74, 5, 14, 1, 1, '2025-07-10 08:44:15', '2025-07-10 08:44:15'),
(75, 2, 14, 1, 1, '2025-07-10 08:44:15', '2025-07-10 08:44:15'),
(76, 24, 14, 1, 1, '2025-07-10 08:44:15', '2025-07-10 08:44:15'),
(77, 6, 14, 1, 1, '2025-07-10 08:44:16', '2025-07-10 08:44:16'),
(78, 13, 14, 1, 1, '2025-07-10 08:44:16', '2025-07-10 08:44:16'),
(79, 25, 14, 1, 1, '2025-07-10 08:44:17', '2025-07-10 08:44:17'),
(80, 26, 15, 1, 1, '2025-07-10 08:46:37', '2025-07-10 08:46:37'),
(81, 27, 15, 1, 1, '2025-07-10 08:46:38', '2025-07-10 08:46:38'),
(82, 28, 15, 1, 1, '2025-07-10 08:46:38', '2025-07-10 08:46:38'),
(83, 29, 15, 1, 1, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(84, 30, 15, 1, 1, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(85, 31, 15, 1, 1, '2025-07-10 08:46:39', '2025-07-10 08:46:39'),
(86, 23, 15, 1, 1, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(87, 32, 15, 1, 1, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(88, 33, 15, 1, 1, '2025-07-10 08:46:40', '2025-07-10 08:46:40'),
(89, 34, 15, 1, 1, '2025-07-10 08:46:41', '2025-07-10 08:46:41'),
(90, 5, 16, 1, 1, '2025-07-10 08:50:11', '2025-07-10 08:50:11'),
(91, 23, 16, 1, 1, '2025-07-10 08:50:11', '2025-07-10 08:50:11'),
(92, 11, 16, 1, 1, '2025-07-10 08:50:11', '2025-07-10 08:50:11'),
(93, 12, 16, 1, 1, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(94, 35, 16, 1, 1, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(95, 36, 16, 1, 1, '2025-07-10 08:50:12', '2025-07-10 08:50:12'),
(96, 37, 16, 1, 1, '2025-07-10 08:50:13', '2025-07-10 08:50:13'),
(97, 36, 17, 1, 1, '2025-07-10 08:51:43', '2025-07-10 08:51:43'),
(98, 2, 17, 1, 1, '2025-07-10 08:51:43', '2025-07-10 08:51:43'),
(99, 38, 18, 1, 1, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(100, 39, 18, 1, 1, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(101, 24, 18, 1, 1, '2025-07-10 08:57:25', '2025-07-10 08:57:25'),
(102, 40, 18, 1, 1, '2025-07-10 08:57:26', '2025-07-10 08:57:26'),
(103, 41, 18, 1, 1, '2025-07-10 08:57:26', '2025-07-10 08:57:26'),
(104, 42, 18, 1, 1, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(105, 12, 18, 1, 1, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(106, 43, 18, 1, 1, '2025-07-10 08:57:27', '2025-07-10 08:57:27'),
(107, 36, 18, 1, 1, '2025-07-10 08:57:28', '2025-07-10 08:57:28'),
(108, 44, 18, 1, 1, '2025-07-10 08:57:28', '2025-07-10 08:57:28'),
(109, 39, 19, 1, 1, '2025-07-10 08:58:48', '2025-07-10 08:58:48'),
(110, 41, 19, 1, 1, '2025-07-10 08:58:48', '2025-07-10 08:58:48'),
(111, 12, 19, 1, 1, '2025-07-10 08:58:49', '2025-07-10 08:58:49'),
(112, 44, 19, 1, 1, '2025-07-10 08:58:49', '2025-07-10 08:58:49'),
(113, 37, 19, 1, 1, '2025-07-10 08:58:50', '2025-07-10 08:58:50'),
(114, 11, 19, 1, 1, '2025-07-10 08:58:51', '2025-07-10 08:58:51'),
(115, 36, 19, 1, 1, '2025-07-10 08:58:51', '2025-07-10 08:58:51'),
(116, 11, 20, 1, 1, '2025-07-10 08:59:49', '2025-07-10 08:59:49'),
(117, 43, 20, 1, 1, '2025-07-10 08:59:49', '2025-07-10 08:59:49'),
(118, 36, 20, 1, 1, '2025-07-10 08:59:49', '2025-07-10 08:59:49'),
(119, 35, 20, 1, 1, '2025-07-10 08:59:50', '2025-07-10 08:59:50'),
(120, 37, 20, 1, 1, '2025-07-10 08:59:50', '2025-07-10 08:59:50'),
(121, 45, 21, 1, 1, '2025-07-10 09:09:07', '2025-07-10 09:09:07'),
(122, 36, 22, 1, 1, '2025-07-10 09:11:17', '2025-07-10 09:11:17'),
(123, 36, 23, 1, 1, '2025-07-10 09:12:23', '2025-07-10 09:12:23'),
(124, 12, 24, 1, 1, '2025-07-10 09:18:38', '2025-07-10 09:18:38'),
(125, 44, 24, 1, 1, '2025-07-10 09:18:39', '2025-07-10 09:18:39'),
(126, 36, 25, 1, 1, '2025-07-10 09:20:00', '2025-07-10 09:20:00'),
(127, 36, 26, 1, 1, '2025-07-10 09:21:58', '2025-07-10 09:21:58'),
(128, 11, 27, 1, 1, '2025-07-10 09:22:49', '2025-07-10 09:22:49'),
(129, 43, 27, 1, 1, '2025-07-10 09:22:50', '2025-07-10 09:22:50'),
(130, 35, 27, 1, 1, '2025-07-10 09:22:50', '2025-07-10 09:22:50'),
(131, 37, 27, 1, 1, '2025-07-10 09:22:50', '2025-07-10 09:22:50'),
(132, 1, 28, 1, 1, '2025-07-10 09:29:08', '2025-07-10 09:29:08'),
(133, 13, 28, 1, 1, '2025-07-10 09:29:08', '2025-07-10 09:29:08'),
(134, 25, 28, 1, 1, '2025-07-10 09:29:09', '2025-07-10 09:29:09'),
(135, 46, 29, 1, 1, '2025-07-10 09:30:42', '2025-07-10 09:30:42'),
(136, 10, 29, 1, 1, '2025-07-10 09:30:42', '2025-07-10 09:30:42'),
(137, 47, 29, 1, 1, '2025-07-10 09:30:43', '2025-07-10 09:30:43'),
(138, 48, 29, 1, 1, '2025-07-10 09:30:43', '2025-07-10 09:30:43'),
(139, 35, 29, 1, 1, '2025-07-10 09:30:44', '2025-07-10 09:30:44'),
(140, 49, 30, 1, 1, '2025-07-10 09:33:34', '2025-07-10 09:33:34'),
(141, 50, 30, 1, 1, '2025-07-10 09:33:35', '2025-07-10 09:33:35'),
(142, 51, 30, 1, 1, '2025-07-10 09:33:35', '2025-07-10 09:33:35'),
(143, 5, 31, 1, 1, '2025-10-15 03:42:49', '2025-10-15 03:42:49'),
(144, 10, 31, 1, 1, '2025-10-15 03:42:49', '2025-10-15 03:42:49'),
(145, 2, 31, 1, 1, '2025-10-15 03:42:49', '2025-10-15 03:42:49'),
(146, 15, 31, 1, 1, '2025-10-15 03:42:50', '2025-10-15 03:42:50'),
(147, 17, 31, 1, 1, '2025-10-15 03:42:50', '2025-10-15 03:42:50'),
(148, 47, 31, 1, 1, '2025-10-15 03:42:50', '2025-10-15 03:42:50'),
(149, 4, 31, 1, 1, '2025-10-15 03:42:51', '2025-10-15 03:42:51'),
(150, 6, 31, 1, 1, '2025-10-15 03:42:51', '2025-10-15 03:42:51'),
(151, 12, 31, 1, 1, '2025-10-15 03:42:51', '2025-10-15 03:42:51'),
(152, 13, 31, 1, 1, '2025-10-15 03:42:52', '2025-10-15 03:42:52'),
(153, 7, 31, 1, 1, '2025-10-15 03:42:52', '2025-10-15 03:42:52'),
(154, 8, 31, 1, 1, '2025-10-15 03:42:52', '2025-10-15 03:42:52'),
(155, 5, 32, 1, 1, '2025-10-15 03:55:14', '2025-10-15 03:55:14'),
(156, 6, 32, 1, 1, '2025-10-15 03:55:15', '2025-10-15 03:55:15'),
(157, 13, 32, 1, 1, '2025-10-15 03:55:15', '2025-10-15 03:55:15'),
(158, 52, 32, 1, 1, '2025-10-15 03:58:47', '2025-10-15 03:58:47'),
(159, 16, 33, 1, 1, '2025-10-15 04:09:53', '2025-10-15 04:09:53'),
(160, 17, 33, 1, 1, '2025-10-15 04:09:54', '2025-10-15 04:09:54'),
(161, 21, 33, 1, 1, '2025-10-15 04:09:54', '2025-10-15 04:09:54'),
(162, 2, 34, 1, 1, '2025-10-15 04:12:05', '2025-10-15 04:12:05'),
(163, 12, 34, 1, 1, '2025-10-15 04:12:06', '2025-10-15 04:12:06'),
(164, 7, 34, 1, 1, '2025-10-15 04:12:06', '2025-10-15 04:12:06'),
(165, 5, 35, 1, 1, '2025-10-15 04:16:52', '2025-10-15 04:16:52'),
(166, 2, 35, 1, 1, '2025-10-15 04:16:52', '2025-10-15 04:16:52'),
(167, 3, 35, 1, 1, '2025-10-15 04:16:52', '2025-10-15 04:16:52'),
(168, 4, 35, 1, 1, '2025-10-15 04:16:53', '2025-10-15 04:16:53'),
(169, 6, 35, 1, 1, '2025-10-15 04:16:53', '2025-10-15 04:16:53'),
(170, 1, 35, 1, 1, '2025-10-15 04:16:53', '2025-10-15 04:16:53'),
(171, 7, 35, 1, 1, '2025-10-15 04:16:54', '2025-10-15 04:16:54'),
(172, 8, 35, 1, 1, '2025-10-15 04:16:54', '2025-10-15 04:16:54'),
(173, 9, 35, 1, 1, '2025-10-15 04:16:54', '2025-10-15 04:16:54'),
(174, 16, 36, 1, 1, '2025-10-15 04:20:46', '2025-10-15 04:20:46'),
(175, 17, 36, 1, 1, '2025-10-15 04:20:46', '2025-10-15 04:20:46'),
(176, 18, 36, 1, 1, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(177, 19, 36, 1, 1, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(178, 21, 36, 1, 1, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(179, 22, 36, 1, 1, '2025-10-15 04:20:47', '2025-10-15 04:20:47'),
(180, 2, 37, 1, 1, '2025-10-15 04:22:24', '2025-10-15 04:22:24'),
(181, 15, 37, 1, 1, '2025-10-15 04:22:24', '2025-10-15 04:22:24'),
(182, 4, 37, 1, 1, '2025-10-15 04:22:24', '2025-10-15 04:22:24'),
(183, 23, 37, 1, 1, '2025-10-15 04:22:25', '2025-10-15 04:22:25'),
(184, 11, 37, 1, 1, '2025-10-15 04:22:25', '2025-10-15 04:22:25'),
(185, 12, 37, 1, 1, '2025-10-15 04:22:26', '2025-10-15 04:22:26'),
(186, 7, 37, 1, 1, '2025-10-15 04:22:26', '2025-10-15 04:22:26'),
(187, 2, 38, 1, 1, '2025-10-15 04:23:41', '2025-10-15 04:23:41'),
(188, 4, 38, 1, 1, '2025-10-15 04:23:41', '2025-10-15 04:23:41'),
(189, 1, 38, 1, 1, '2025-10-15 04:23:42', '2025-10-15 04:23:42'),
(190, 12, 38, 1, 1, '2025-10-15 04:23:42', '2025-10-15 04:23:42'),
(191, 7, 38, 1, 1, '2025-10-15 04:23:42', '2025-10-15 04:23:42'),
(192, 21, 38, 1, 1, '2025-10-15 04:23:43', '2025-10-15 04:23:43'),
(193, 16, 39, 6, 1, '2025-10-15 04:27:12', '2025-10-15 04:27:12'),
(194, 17, 39, 6, 1, '2025-10-15 04:27:13', '2025-10-15 04:27:13'),
(195, 18, 39, 6, 1, '2025-10-15 04:27:13', '2025-10-15 04:27:13'),
(196, 19, 39, 5, 1, '2025-10-15 04:27:13', '2025-10-15 04:27:13'),
(197, 20, 39, 5, 1, '2025-10-15 04:27:14', '2025-10-15 04:27:14'),
(198, 21, 39, 6, 1, '2025-10-15 04:27:14', '2025-10-15 04:27:14'),
(199, 22, 39, 6, 1, '2025-10-15 04:27:14', '2025-10-15 04:27:14'),
(200, 2, 40, 1, 1, '2025-10-15 04:33:03', '2025-10-15 04:33:03'),
(201, 24, 40, 1, 1, '2025-10-15 04:33:04', '2025-10-15 04:33:04'),
(202, 40, 40, 1, 1, '2025-10-15 04:33:04', '2025-10-15 04:33:04'),
(203, 26, 40, 1, 1, '2025-10-15 04:33:05', '2025-10-15 04:33:05'),
(204, 27, 40, 1, 1, '2025-10-15 04:33:05', '2025-10-15 04:33:05'),
(205, 28, 40, 1, 1, '2025-10-15 04:33:06', '2025-10-15 04:33:06'),
(206, 29, 40, 1, 1, '2025-10-15 04:33:06', '2025-10-15 04:33:06'),
(207, 30, 40, 1, 1, '2025-10-15 04:33:07', '2025-10-15 04:33:07'),
(208, 23, 40, 1, 1, '2025-10-15 04:33:08', '2025-10-15 04:33:08'),
(209, 32, 40, 1, 1, '2025-10-15 04:33:10', '2025-10-15 04:33:10'),
(210, 33, 40, 1, 1, '2025-10-15 04:33:10', '2025-10-15 04:33:10'),
(211, 25, 40, 1, 1, '2025-10-15 04:33:12', '2025-10-15 04:33:12'),
(212, 34, 40, 1, 1, '2025-10-15 04:33:12', '2025-10-15 04:33:12'),
(213, 53, 40, 1, 1, '2025-10-15 04:43:26', '2025-10-15 04:43:26'),
(214, 54, 40, 1, 1, '2025-10-15 04:43:27', '2025-10-15 04:43:27'),
(215, 55, 40, 1, 1, '2025-10-15 04:43:29', '2025-10-15 04:43:29'),
(216, 56, 40, 1, 1, '2025-10-15 04:43:30', '2025-10-15 04:43:30'),
(217, 57, 40, 1, 1, '2025-10-15 04:45:50', '2025-10-15 04:45:50'),
(218, 58, 40, 1, 1, '2025-10-15 04:53:08', '2025-10-15 04:53:08'),
(219, 59, 40, 1, 1, '2025-10-15 04:53:09', '2025-10-15 04:53:09'),
(220, 60, 40, 1, 1, '2025-10-15 04:53:09', '2025-10-15 04:53:09'),
(221, 61, 40, 1, 1, '2025-10-15 04:53:10', '2025-10-15 04:53:10'),
(222, 62, 40, 1, 1, '2025-10-15 04:53:12', '2025-10-15 04:53:12'),
(223, 63, 40, 1, 1, '2025-10-15 04:53:13', '2025-10-15 04:53:13'),
(224, 64, 40, 1, 1, '2025-10-15 04:53:14', '2025-10-15 04:53:14'),
(225, 65, 40, 1, 1, '2025-10-15 04:53:16', '2025-10-15 04:53:16'),
(226, 66, 40, 1, 1, '2025-10-15 04:53:17', '2025-10-15 04:53:17'),
(227, 67, 40, 1, 1, '2025-10-15 04:53:17', '2025-10-15 04:53:17'),
(228, 68, 40, 1, 1, '2025-10-15 04:53:19', '2025-10-15 04:53:19'),
(229, 38, 41, 1, 1, '2025-10-15 04:55:03', '2025-10-15 04:55:03'),
(230, 26, 41, 1, 1, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(231, 27, 41, 1, 1, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(232, 48, 41, 1, 1, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(233, 28, 41, 1, 1, '2025-10-15 04:55:04', '2025-10-15 04:55:04'),
(234, 62, 41, 1, 1, '2025-10-15 04:55:05', '2025-10-15 04:55:05'),
(235, 30, 41, 1, 1, '2025-10-15 04:55:05', '2025-10-15 04:55:05'),
(236, 31, 41, 1, 1, '2025-10-15 04:55:06', '2025-10-15 04:55:06'),
(237, 23, 41, 1, 1, '2025-10-15 04:55:06', '2025-10-15 04:55:06'),
(238, 1, 41, 1, 1, '2025-10-15 04:55:07', '2025-10-15 04:55:07'),
(239, 32, 41, 1, 1, '2025-10-15 04:55:08', '2025-10-15 04:55:08'),
(240, 33, 41, 1, 1, '2025-10-15 04:55:08', '2025-10-15 04:55:08'),
(241, 66, 41, 1, 1, '2025-10-15 04:55:09', '2025-10-15 04:55:09'),
(242, 55, 41, 1, 1, '2025-10-15 04:55:09', '2025-10-15 04:55:09'),
(243, 25, 41, 1, 1, '2025-10-15 04:55:09', '2025-10-15 04:55:09'),
(244, 34, 41, 1, 1, '2025-10-15 04:55:10', '2025-10-15 04:55:10'),
(245, 69, 41, 1, 1, '2025-10-15 05:04:57', '2025-10-15 05:04:57'),
(246, 70, 41, 1, 1, '2025-10-15 05:04:57', '2025-10-15 05:04:57'),
(247, 71, 41, 1, 1, '2025-10-15 05:04:59', '2025-10-15 05:04:59'),
(248, 72, 41, 1, 1, '2025-10-15 05:07:02', '2025-10-15 05:07:02'),
(249, 73, 41, 1, 1, '2025-10-15 05:07:05', '2025-10-15 05:07:05'),
(250, 46, 42, 1, 1, '2025-10-15 05:10:50', '2025-10-15 05:10:50'),
(251, 58, 42, 1, 1, '2025-10-15 05:10:51', '2025-10-15 05:10:51'),
(252, 59, 42, 1, 1, '2025-10-15 05:10:51', '2025-10-15 05:10:51'),
(253, 38, 42, 1, 1, '2025-10-15 05:10:51', '2025-10-15 05:10:51'),
(254, 61, 42, 1, 1, '2025-10-15 05:10:52', '2025-10-15 05:10:52'),
(255, 15, 42, 1, 1, '2025-10-15 05:10:52', '2025-10-15 05:10:52'),
(256, 47, 42, 1, 1, '2025-10-15 05:10:53', '2025-10-15 05:10:53'),
(257, 48, 42, 1, 1, '2025-10-15 05:10:53', '2025-10-15 05:10:53'),
(258, 72, 42, 1, 1, '2025-10-15 05:10:54', '2025-10-15 05:10:54'),
(259, 53, 42, 1, 1, '2025-10-15 05:10:54', '2025-10-15 05:10:54'),
(260, 63, 42, 1, 1, '2025-10-15 05:10:54', '2025-10-15 05:10:54'),
(261, 73, 42, 1, 1, '2025-10-15 05:10:55', '2025-10-15 05:10:55'),
(262, 64, 42, 1, 1, '2025-10-15 05:10:55', '2025-10-15 05:10:55'),
(263, 54, 42, 1, 1, '2025-10-15 05:10:55', '2025-10-15 05:10:55'),
(264, 1, 42, 1, 1, '2025-10-15 05:10:56', '2025-10-15 05:10:56'),
(265, 57, 42, 1, 1, '2025-10-15 05:10:56', '2025-10-15 05:10:56'),
(266, 69, 42, 1, 1, '2025-10-15 05:10:57', '2025-10-15 05:10:57'),
(267, 65, 42, 1, 1, '2025-10-15 05:10:58', '2025-10-15 05:10:58'),
(268, 70, 42, 1, 1, '2025-10-15 05:10:58', '2025-10-15 05:10:58'),
(269, 71, 42, 1, 1, '2025-10-15 05:10:58', '2025-10-15 05:10:58'),
(270, 66, 42, 1, 1, '2025-10-15 05:10:59', '2025-10-15 05:10:59'),
(271, 67, 42, 1, 1, '2025-10-15 05:10:59', '2025-10-15 05:10:59'),
(272, 74, 42, 1, 1, '2025-10-15 05:11:00', '2025-10-15 05:11:00'),
(273, 68, 42, 1, 1, '2025-10-15 05:11:00', '2025-10-15 05:11:00'),
(274, 75, 42, 1, 1, '2025-10-15 05:12:16', '2025-10-15 05:12:16'),
(275, 76, 42, 1, 1, '2025-10-15 05:12:16', '2025-10-15 05:12:16'),
(276, 77, 42, 1, 1, '2025-10-15 05:12:18', '2025-10-15 05:12:18'),
(277, 78, 42, 1, 1, '2025-10-15 05:12:18', '2025-10-15 05:12:18'),
(278, 38, 43, 1, 1, '2025-10-15 05:15:44', '2025-10-15 05:15:44'),
(279, 26, 43, 1, 1, '2025-10-15 05:15:44', '2025-10-15 05:15:44'),
(280, 27, 43, 1, 1, '2025-10-15 05:15:45', '2025-10-15 05:15:45'),
(281, 48, 43, 1, 1, '2025-10-15 05:15:45', '2025-10-15 05:15:45'),
(282, 28, 43, 1, 1, '2025-10-15 05:15:45', '2025-10-15 05:15:45'),
(283, 62, 43, 1, 1, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(284, 72, 43, 1, 1, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(285, 30, 43, 1, 1, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(286, 31, 43, 1, 1, '2025-10-15 05:15:46', '2025-10-15 05:15:46'),
(287, 23, 43, 1, 1, '2025-10-15 05:15:47', '2025-10-15 05:15:47'),
(288, 73, 43, 1, 1, '2025-10-15 05:15:47', '2025-10-15 05:15:47'),
(289, 1, 43, 1, 1, '2025-10-15 05:15:47', '2025-10-15 05:15:47'),
(290, 69, 43, 1, 1, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(291, 70, 43, 1, 1, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(292, 32, 43, 1, 1, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(293, 33, 43, 1, 1, '2025-10-15 05:15:48', '2025-10-15 05:15:48'),
(294, 71, 43, 1, 1, '2025-10-15 05:15:49', '2025-10-15 05:15:49'),
(295, 66, 43, 1, 1, '2025-10-15 05:15:49', '2025-10-15 05:15:49'),
(296, 55, 43, 1, 1, '2025-10-15 05:15:49', '2025-10-15 05:15:49'),
(297, 25, 43, 1, 1, '2025-10-15 05:15:50', '2025-10-15 05:15:50'),
(298, 34, 43, 1, 1, '2025-10-15 05:15:50', '2025-10-15 05:15:50'),
(299, 36, 44, 1, 1, '2025-10-15 05:19:25', '2025-10-15 05:19:25'),
(300, 59, 45, 1, 1, '2025-10-15 05:21:46', '2025-10-15 05:21:46'),
(301, 2, 45, 1, 1, '2025-10-15 05:21:46', '2025-10-15 05:21:46'),
(302, 39, 45, 1, 1, '2025-10-15 05:21:47', '2025-10-15 05:21:47'),
(303, 24, 45, 1, 1, '2025-10-15 05:21:47', '2025-10-15 05:21:47'),
(304, 40, 45, 1, 1, '2025-10-15 05:21:48', '2025-10-15 05:21:48'),
(305, 41, 45, 1, 1, '2025-10-15 05:21:49', '2025-10-15 05:21:49'),
(306, 42, 45, 1, 1, '2025-10-15 05:21:49', '2025-10-15 05:21:49'),
(307, 62, 45, 1, 1, '2025-10-15 05:21:49', '2025-10-15 05:21:49'),
(308, 31, 45, 1, 1, '2025-10-15 05:21:50', '2025-10-15 05:21:50'),
(309, 11, 45, 1, 1, '2025-10-15 05:21:50', '2025-10-15 05:21:50'),
(310, 12, 45, 1, 1, '2025-10-15 05:21:51', '2025-10-15 05:21:51'),
(311, 43, 45, 1, 1, '2025-10-15 05:21:51', '2025-10-15 05:21:51'),
(312, 35, 45, 1, 1, '2025-10-15 05:21:52', '2025-10-15 05:21:52'),
(313, 45, 45, 1, 1, '2025-10-15 05:21:53', '2025-10-15 05:21:53'),
(314, 79, 45, 1, 1, '2025-10-15 05:21:53', '2025-10-15 05:21:53'),
(315, 80, 45, 1, 1, '2025-10-15 05:23:08', '2025-10-15 05:23:08'),
(316, 81, 45, 1, 1, '2025-10-15 05:23:10', '2025-10-15 05:23:10'),
(317, 82, 45, 1, 1, '2025-10-15 05:23:11', '2025-10-15 05:23:11'),
(318, 83, 45, 1, 1, '2025-10-15 05:23:12', '2025-10-15 05:23:12'),
(319, 38, 46, 1, 1, '2025-10-15 05:59:47', '2025-10-15 05:59:47'),
(320, 39, 46, 1, 1, '2025-10-15 05:59:48', '2025-10-15 05:59:48'),
(321, 24, 46, 1, 1, '2025-10-15 05:59:48', '2025-10-15 05:59:48'),
(322, 40, 46, 1, 1, '2025-10-15 05:59:48', '2025-10-15 05:59:48'),
(323, 41, 46, 1, 1, '2025-10-15 05:59:49', '2025-10-15 05:59:49'),
(324, 42, 46, 1, 1, '2025-10-15 05:59:49', '2025-10-15 05:59:49'),
(325, 12, 46, 1, 1, '2025-10-15 05:59:49', '2025-10-15 05:59:49'),
(326, 43, 46, 1, 1, '2025-10-15 05:59:50', '2025-10-15 05:59:50'),
(327, 36, 46, 1, 1, '2025-10-15 05:59:50', '2025-10-15 05:59:50'),
(328, 44, 46, 1, 1, '2025-10-15 05:59:50', '2025-10-15 05:59:50'),
(329, 11, 47, 1, 1, '2025-10-15 07:30:38', '2025-10-15 07:30:38'),
(330, 43, 47, 1, 1, '2025-10-15 07:30:39', '2025-10-15 07:30:39'),
(331, 35, 47, 1, 1, '2025-10-15 07:30:39', '2025-10-15 07:30:39'),
(332, 37, 47, 1, 1, '2025-10-15 07:30:40', '2025-10-15 07:30:40'),
(333, 36, 47, 1, 1, '2025-10-15 07:30:40', '2025-10-15 07:30:40'),
(334, 45, 48, 1, 1, '2025-10-15 07:32:20', '2025-10-15 07:32:20'),
(335, 44, 49, 1, 1, '2025-10-15 07:37:53', '2025-10-15 07:37:53'),
(336, 84, 49, 1, 1, '2025-10-15 07:38:43', '2025-10-15 07:38:43'),
(337, 11, 50, 1, 1, '2025-10-15 07:40:21', '2025-10-15 07:40:21'),
(338, 43, 50, 1, 1, '2025-10-15 07:40:22', '2025-10-15 07:40:22'),
(339, 35, 50, 1, 1, '2025-10-15 07:40:22', '2025-10-15 07:40:22'),
(340, 37, 50, 1, 1, '2025-10-15 07:40:22', '2025-10-15 07:40:22'),
(341, 38, 51, 1, 1, '2025-10-15 07:44:03', '2025-10-15 07:44:03'),
(342, 47, 51, 1, 1, '2025-10-15 07:44:03', '2025-10-15 07:44:03'),
(343, 48, 51, 1, 1, '2025-10-15 07:44:03', '2025-10-15 07:44:03'),
(344, 71, 51, 1, 1, '2025-10-15 07:44:04', '2025-10-15 07:44:04'),
(345, 12, 52, 1, 1, '2025-10-15 07:46:39', '2025-10-15 07:46:39'),
(346, 1, 53, 1, 1, '2025-10-15 07:48:45', '2025-10-15 07:48:45'),
(347, 13, 53, 1, 1, '2025-10-15 07:48:45', '2025-10-15 07:48:45'),
(348, 25, 53, 1, 1, '2025-10-15 07:48:45', '2025-10-15 07:48:45'),
(349, 1, 54, 1, 1, '2025-10-15 07:51:26', '2025-10-15 07:51:26'),
(350, 11, 54, 1, 1, '2025-10-15 07:51:27', '2025-10-15 07:51:27'),
(351, 12, 54, 1, 1, '2025-10-15 07:51:27', '2025-10-15 07:51:27'),
(352, 13, 54, 1, 1, '2025-10-15 07:51:27', '2025-10-15 07:51:27'),
(353, 25, 54, 1, 1, '2025-10-15 07:51:28', '2025-10-15 07:51:28'),
(354, 85, 54, 1, 1, '2025-10-15 07:52:06', '2025-10-15 07:52:06'),
(355, 46, 55, 1, 1, '2025-10-15 07:54:30', '2025-10-15 07:54:30'),
(356, 10, 55, 1, 1, '2025-10-15 07:54:31', '2025-10-15 07:54:31'),
(357, 47, 55, 1, 1, '2025-10-15 07:54:31', '2025-10-15 07:54:31'),
(358, 48, 55, 1, 1, '2025-10-15 07:54:31', '2025-10-15 07:54:31'),
(359, 35, 55, 1, 1, '2025-10-15 07:54:32', '2025-10-15 07:54:32'),
(360, 86, 56, 1, 1, '2025-10-15 07:59:37', '2025-10-15 07:59:37'),
(361, 87, 56, 1, 1, '2025-10-15 07:59:37', '2025-10-15 07:59:37'),
(362, 88, 56, 1, 1, '2025-10-15 07:59:38', '2025-10-15 07:59:38'),
(363, 14, 56, 1, 1, '2025-10-15 07:59:38', '2025-10-15 07:59:38'),
(364, 89, 56, 1, 1, '2025-10-15 07:59:39', '2025-10-15 07:59:39'),
(365, 90, 56, 1, 1, '2025-10-15 07:59:40', '2025-10-15 07:59:40'),
(366, 91, 56, 1, 1, '2025-10-15 07:59:40', '2025-10-15 07:59:40'),
(367, 92, 56, 1, 1, '2025-10-15 07:59:41', '2025-10-15 07:59:41'),
(368, 93, 56, 1, 1, '2025-10-15 07:59:42', '2025-10-15 07:59:42'),
(369, 5, 56, 1, 1, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(370, 94, 56, 1, 1, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(371, 95, 56, 1, 1, '2025-10-15 07:59:43', '2025-10-15 07:59:43'),
(372, 96, 56, 1, 1, '2025-10-15 07:59:44', '2025-10-15 07:59:44'),
(373, 97, 56, 1, 1, '2025-10-15 07:59:44', '2025-10-15 07:59:44'),
(374, 98, 56, 1, 1, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(375, 99, 56, 1, 1, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(376, 100, 56, 1, 1, '2025-10-15 07:59:45', '2025-10-15 07:59:45'),
(377, 101, 56, 1, 1, '2025-10-15 07:59:46', '2025-10-15 07:59:46'),
(378, 102, 56, 1, 1, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(379, 10, 56, 1, 1, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(380, 103, 56, 1, 1, '2025-10-15 07:59:47', '2025-10-15 07:59:47'),
(381, 104, 56, 1, 1, '2025-10-15 07:59:48', '2025-10-15 07:59:48'),
(382, 39, 56, 1, 1, '2025-10-15 07:59:49', '2025-10-15 07:59:49'),
(383, 105, 56, 1, 1, '2025-10-15 07:59:50', '2025-10-15 07:59:50'),
(384, 3, 56, 1, 1, '2025-10-15 07:59:51', '2025-10-15 07:59:51'),
(385, 106, 56, 1, 1, '2025-10-15 07:59:54', '2025-10-15 07:59:54'),
(386, 107, 56, 1, 1, '2025-10-15 07:59:54', '2025-10-15 07:59:54'),
(387, 80, 56, 1, 1, '2025-10-15 07:59:55', '2025-10-15 07:59:55'),
(388, 108, 56, 1, 1, '2025-10-15 07:59:56', '2025-10-15 07:59:56'),
(389, 109, 56, 1, 1, '2025-10-15 07:59:57', '2025-10-15 07:59:57'),
(390, 110, 56, 1, 1, '2025-10-15 07:59:57', '2025-10-15 07:59:57'),
(391, 111, 56, 1, 1, '2025-10-15 07:59:59', '2025-10-15 07:59:59'),
(392, 41, 56, 1, 1, '2025-10-15 07:59:59', '2025-10-15 07:59:59'),
(393, 112, 56, 1, 1, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(394, 113, 56, 1, 1, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(395, 114, 56, 1, 1, '2025-10-15 08:00:01', '2025-10-15 08:00:01'),
(396, 49, 56, 1, 1, '2025-10-15 08:00:02', '2025-10-15 08:00:02'),
(397, 115, 56, 1, 1, '2025-10-15 08:00:02', '2025-10-15 08:00:02'),
(398, 116, 56, 1, 1, '2025-10-15 08:00:03', '2025-10-15 08:00:03'),
(399, 117, 56, 1, 1, '2025-10-15 08:00:05', '2025-10-15 08:00:05'),
(400, 16, 56, 1, 1, '2025-10-15 08:00:05', '2025-10-15 08:00:05'),
(401, 17, 56, 1, 1, '2025-10-15 08:00:06', '2025-10-15 08:00:06'),
(402, 42, 56, 1, 1, '2025-10-15 08:00:06', '2025-10-15 08:00:06'),
(403, 18, 56, 1, 1, '2025-10-15 08:00:06', '2025-10-15 08:00:06'),
(404, 118, 56, 1, 1, '2025-10-15 08:00:07', '2025-10-15 08:00:07'),
(405, 4, 56, 1, 1, '2025-10-15 08:00:08', '2025-10-15 08:00:08'),
(406, 119, 56, 1, 1, '2025-10-15 08:00:08', '2025-10-15 08:00:08'),
(407, 52, 56, 1, 1, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(408, 120, 56, 1, 1, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(409, 121, 56, 1, 1, '2025-10-15 08:00:09', '2025-10-15 08:00:09'),
(410, 122, 56, 1, 1, '2025-10-15 08:00:10', '2025-10-15 08:00:10'),
(411, 123, 56, 1, 1, '2025-10-15 08:00:10', '2025-10-15 08:00:10'),
(412, 124, 56, 1, 1, '2025-10-15 08:00:11', '2025-10-15 08:00:11'),
(413, 6, 56, 1, 1, '2025-10-15 08:00:11', '2025-10-15 08:00:11'),
(414, 125, 56, 1, 1, '2025-10-15 08:00:12', '2025-10-15 08:00:12'),
(415, 73, 56, 1, 1, '2025-10-15 08:00:12', '2025-10-15 08:00:12'),
(416, 126, 56, 1, 1, '2025-10-15 08:00:13', '2025-10-15 08:00:13'),
(417, 127, 56, 1, 1, '2025-10-15 08:00:14', '2025-10-15 08:00:14'),
(418, 11, 56, 1, 1, '2025-10-15 08:00:15', '2025-10-15 08:00:15'),
(419, 12, 56, 1, 1, '2025-10-15 08:00:15', '2025-10-15 08:00:15'),
(420, 81, 56, 1, 1, '2025-10-15 08:00:15', '2025-10-15 08:00:15'),
(421, 128, 56, 1, 1, '2025-10-15 08:00:16', '2025-10-15 08:00:16'),
(422, 129, 56, 1, 1, '2025-10-15 08:00:16', '2025-10-15 08:00:16'),
(423, 43, 56, 1, 1, '2025-10-15 08:00:17', '2025-10-15 08:00:17'),
(424, 82, 56, 1, 1, '2025-10-15 08:00:17', '2025-10-15 08:00:17'),
(425, 130, 56, 1, 1, '2025-10-15 08:00:18', '2025-10-15 08:00:18'),
(426, 75, 56, 1, 1, '2025-10-15 08:00:20', '2025-10-15 08:00:20'),
(427, 35, 56, 1, 1, '2025-10-15 08:00:21', '2025-10-15 08:00:21'),
(428, 131, 56, 1, 1, '2025-10-15 08:00:21', '2025-10-15 08:00:21'),
(429, 132, 56, 1, 1, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(430, 133, 56, 1, 1, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(431, 134, 56, 1, 1, '2025-10-15 08:00:22', '2025-10-15 08:00:22'),
(432, 135, 56, 1, 1, '2025-10-15 08:00:23', '2025-10-15 08:00:23'),
(433, 13, 56, 1, 1, '2025-10-15 08:00:23', '2025-10-15 08:00:23'),
(434, 7, 56, 1, 1, '2025-10-15 08:00:24', '2025-10-15 08:00:24'),
(435, 76, 56, 1, 1, '2025-10-15 08:00:25', '2025-10-15 08:00:25'),
(436, 136, 56, 1, 1, '2025-10-15 08:00:25', '2025-10-15 08:00:25'),
(437, 137, 56, 1, 1, '2025-10-15 08:00:26', '2025-10-15 08:00:26'),
(438, 138, 56, 1, 1, '2025-10-15 08:00:26', '2025-10-15 08:00:26'),
(439, 139, 56, 1, 1, '2025-10-15 08:00:27', '2025-10-15 08:00:27'),
(440, 36, 56, 1, 1, '2025-10-15 08:00:27', '2025-10-15 08:00:27'),
(441, 21, 56, 1, 1, '2025-10-15 08:00:28', '2025-10-15 08:00:28'),
(442, 140, 56, 1, 1, '2025-10-15 08:00:28', '2025-10-15 08:00:28'),
(443, 85, 56, 1, 1, '2025-10-15 08:00:28', '2025-10-15 08:00:28'),
(444, 141, 56, 1, 1, '2025-10-15 08:00:29', '2025-10-15 08:00:29'),
(445, 142, 56, 1, 1, '2025-10-15 08:00:29', '2025-10-15 08:00:29'),
(446, 143, 56, 1, 1, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(447, 144, 56, 1, 1, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(448, 145, 56, 1, 1, '2025-10-15 08:00:32', '2025-10-15 08:00:32'),
(449, 146, 56, 1, 1, '2025-10-15 08:00:34', '2025-10-15 08:00:34'),
(450, 147, 56, 1, 1, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(451, 148, 56, 1, 1, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(452, 149, 56, 1, 1, '2025-10-15 08:00:35', '2025-10-15 08:00:35'),
(453, 150, 56, 1, 1, '2025-10-15 08:00:36', '2025-10-15 08:00:36'),
(454, 151, 56, 1, 1, '2025-10-15 08:00:36', '2025-10-15 08:00:36'),
(455, 152, 56, 1, 1, '2025-10-15 08:00:37', '2025-10-15 08:00:37'),
(456, 153, 56, 1, 1, '2025-10-15 08:00:38', '2025-10-15 08:00:38'),
(457, 154, 56, 1, 1, '2025-10-15 08:00:39', '2025-10-15 08:00:39'),
(458, 155, 56, 1, 1, '2025-10-15 08:00:40', '2025-10-15 08:00:40'),
(459, 156, 56, 1, 1, '2025-10-15 08:00:41', '2025-10-15 08:00:41'),
(460, 157, 56, 1, 1, '2025-10-15 08:00:42', '2025-10-15 08:00:42'),
(461, 158, 56, 1, 1, '2025-10-15 08:00:42', '2025-10-15 08:00:42'),
(462, 159, 56, 1, 1, '2025-10-15 08:00:43', '2025-10-15 08:00:43'),
(463, 160, 56, 1, 1, '2025-10-15 08:00:43', '2025-10-15 08:00:43'),
(464, 161, 56, 1, 1, '2025-10-15 08:00:44', '2025-10-15 08:00:44'),
(465, 162, 56, 1, 1, '2025-10-15 08:00:46', '2025-10-15 08:00:46'),
(466, 83, 56, 1, 1, '2025-10-15 08:00:46', '2025-10-15 08:00:46'),
(467, 78, 56, 1, 1, '2025-10-15 08:00:47', '2025-10-15 08:00:47'),
(468, 163, 56, 1, 1, '2025-10-15 08:00:47', '2025-10-15 08:00:47'),
(469, 164, 56, 1, 1, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(470, 165, 56, 1, 1, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(471, 166, 56, 1, 1, '2025-10-15 08:00:48', '2025-10-15 08:00:48'),
(472, 74, 56, 1, 1, '2025-10-15 08:00:49', '2025-10-15 08:00:49'),
(473, 167, 56, 1, 1, '2025-10-15 08:00:49', '2025-10-15 08:00:49'),
(474, 168, 56, 1, 1, '2025-10-15 08:00:50', '2025-10-15 08:00:50'),
(475, 169, 56, 1, 1, '2025-10-15 08:00:50', '2025-10-15 08:00:50'),
(476, 170, 56, 1, 1, '2025-10-15 08:00:51', '2025-10-15 08:00:51'),
(477, 171, 56, 1, 1, '2025-10-15 08:00:51', '2025-10-15 08:00:51'),
(478, 172, 56, 1, 1, '2025-10-15 08:00:52', '2025-10-15 08:00:52'),
(479, 173, 56, 1, 1, '2025-10-15 08:00:54', '2025-10-15 08:00:54'),
(480, 174, 56, 1, 1, '2025-10-15 08:00:54', '2025-10-15 08:00:54'),
(481, 175, 56, 1, 1, '2025-10-15 08:00:55', '2025-10-15 08:00:55'),
(482, 176, 56, 1, 1, '2025-10-15 08:00:55', '2025-10-15 08:00:55'),
(483, 177, 56, 1, 1, '2025-10-15 08:00:57', '2025-10-15 08:00:57'),
(484, 178, 56, 1, 1, '2025-10-15 08:00:59', '2025-10-15 08:00:59'),
(485, 179, 56, 1, 1, '2025-10-15 08:00:59', '2025-10-15 08:00:59'),
(486, 180, 56, 1, 1, '2025-10-15 08:01:00', '2025-10-15 08:01:00'),
(487, 181, 56, 1, 1, '2025-10-15 08:01:00', '2025-10-15 08:01:00'),
(488, 182, 56, 1, 1, '2025-10-15 08:01:02', '2025-10-15 08:01:02'),
(489, 183, 56, 1, 1, '2025-10-15 08:01:02', '2025-10-15 08:01:02'),
(490, 8, 56, 1, 1, '2025-10-15 08:01:03', '2025-10-15 08:01:03'),
(491, 184, 56, 1, 1, '2025-10-15 08:01:03', '2025-10-15 08:01:03'),
(492, 185, 56, 1, 1, '2025-10-15 08:01:04', '2025-10-15 08:01:04'),
(493, 186, 56, 1, 1, '2025-10-15 08:01:04', '2025-10-15 08:01:04'),
(494, 79, 56, 1, 1, '2025-10-15 08:01:05', '2025-10-15 08:01:05'),
(495, 187, 56, 1, 1, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(496, 188, 56, 1, 1, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(497, 189, 56, 1, 1, '2025-10-15 08:01:06', '2025-10-15 08:01:06'),
(498, 190, 56, 1, 1, '2025-10-15 08:01:07', '2025-10-15 08:01:07'),
(499, 191, 56, 1, 1, '2025-10-15 08:01:07', '2025-10-15 08:01:07'),
(500, 22, 56, 1, 1, '2025-10-15 08:01:08', '2025-10-15 08:01:08'),
(501, 192, 56, 1, 1, '2025-10-15 08:01:09', '2025-10-15 08:01:09'),
(502, 193, 56, 1, 1, '2025-10-15 08:01:10', '2025-10-15 08:01:10'),
(503, 194, 56, 1, 1, '2025-10-15 08:01:10', '2025-10-15 08:01:10'),
(504, 195, 56, 1, 1, '2025-10-15 08:01:11', '2025-10-15 08:01:11'),
(505, 196, 56, 1, 1, '2025-10-15 08:01:11', '2025-10-15 08:01:11'),
(506, 197, 56, 1, 1, '2025-10-15 08:01:12', '2025-10-15 08:01:12'),
(507, 198, 56, 1, 1, '2025-10-15 08:01:13', '2025-10-15 08:01:13'),
(508, 199, 56, 1, 1, '2025-10-15 08:01:14', '2025-10-15 08:01:14'),
(509, 200, 56, 1, 1, '2025-10-15 08:01:15', '2025-10-15 08:01:15'),
(510, 201, 56, 1, 1, '2025-10-15 08:01:16', '2025-10-15 08:01:16'),
(511, 202, 56, 1, 1, '2025-10-15 08:01:17', '2025-10-15 08:01:17'),
(512, 203, 56, 1, 1, '2025-10-15 08:01:18', '2025-10-15 08:01:18'),
(513, 204, 56, 1, 1, '2025-10-15 08:01:18', '2025-10-15 08:01:18'),
(514, 205, 56, 1, 1, '2025-10-15 08:01:19', '2025-10-15 08:01:19'),
(515, 206, 56, 1, 1, '2025-10-15 08:01:19', '2025-10-15 08:01:19'),
(516, 207, 56, 1, 1, '2025-10-15 08:01:21', '2025-10-15 08:01:21'),
(517, 208, 56, 1, 1, '2025-10-15 08:01:22', '2025-10-15 08:01:22'),
(518, 209, 56, 1, 1, '2025-10-15 08:01:23', '2025-10-15 08:01:23'),
(519, 210, 56, 1, 1, '2025-10-15 08:01:24', '2025-10-15 08:01:24'),
(520, 211, 56, 1, 1, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(521, 212, 56, 1, 1, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(522, 213, 56, 1, 1, '2025-10-15 08:01:25', '2025-10-15 08:01:25'),
(523, 214, 56, 1, 1, '2025-10-15 08:01:26', '2025-10-15 08:01:26'),
(524, 215, 56, 1, 1, '2025-10-15 08:01:26', '2025-10-15 08:01:26'),
(525, 216, 56, 1, 1, '2025-10-15 08:01:27', '2025-10-15 08:01:27'),
(526, 217, 56, 1, 1, '2025-10-15 08:01:28', '2025-10-15 08:01:28'),
(527, 218, 56, 1, 1, '2025-10-15 08:02:44', '2025-10-15 08:02:44'),
(528, 219, 56, 1, 1, '2025-10-15 08:02:45', '2025-10-15 08:02:45'),
(529, 220, 56, 1, 1, '2025-10-15 08:02:46', '2025-10-15 08:02:46'),
(530, 221, 56, 1, 1, '2025-10-15 08:02:49', '2025-10-15 08:02:49'),
(531, 222, 56, 1, 1, '2025-10-15 08:02:50', '2025-10-15 08:02:50'),
(532, 223, 56, 1, 1, '2025-10-15 08:02:52', '2025-10-15 08:02:52'),
(533, 224, 56, 1, 1, '2025-10-15 08:02:55', '2025-10-15 08:02:55'),
(534, 225, 56, 1, 1, '2025-10-15 08:02:56', '2025-10-15 08:02:56'),
(535, 226, 56, 1, 1, '2025-10-15 08:02:59', '2025-10-15 08:02:59'),
(536, 227, 56, 1, 1, '2025-10-15 08:02:59', '2025-10-15 08:02:59'),
(537, 228, 56, 1, 1, '2025-10-15 08:03:00', '2025-10-15 08:03:00'),
(538, 229, 56, 1, 1, '2025-10-15 08:03:01', '2025-10-15 08:03:01'),
(539, 230, 56, 1, 1, '2025-10-15 08:03:01', '2025-10-15 08:03:01'),
(540, 231, 56, 1, 1, '2025-10-15 08:03:04', '2025-10-15 08:03:04'),
(541, 232, 56, 1, 1, '2025-10-15 08:03:05', '2025-10-15 08:03:05'),
(542, 233, 56, 1, 1, '2025-10-15 08:03:09', '2025-10-15 08:03:09'),
(543, 234, 56, 1, 1, '2025-10-15 08:03:10', '2025-10-15 08:03:10'),
(544, 235, 56, 1, 1, '2025-10-15 08:03:10', '2025-10-15 08:03:10'),
(545, 236, 56, 1, 1, '2025-10-15 08:03:12', '2025-10-15 08:03:12'),
(546, 237, 56, 1, 1, '2025-10-15 08:03:21', '2025-10-15 08:03:21'),
(547, 238, 56, 1, 1, '2025-10-15 08:03:21', '2025-10-15 08:03:21'),
(548, 239, 56, 1, 1, '2025-10-15 08:03:22', '2025-10-15 08:03:22'),
(549, 240, 56, 1, 1, '2025-10-15 08:03:25', '2025-10-15 08:03:25'),
(550, 241, 56, 1, 1, '2025-10-15 08:03:25', '2025-10-15 08:03:25'),
(551, 242, 56, 1, 1, '2025-10-15 08:03:26', '2025-10-15 08:03:26'),
(552, 243, 56, 1, 1, '2025-10-15 08:03:36', '2025-10-15 08:03:36'),
(553, 244, 56, 1, 1, '2025-10-15 08:03:37', '2025-10-15 08:03:37'),
(554, 245, 56, 1, 1, '2025-10-15 08:03:38', '2025-10-15 08:03:38'),
(555, 246, 56, 1, 1, '2025-10-15 08:03:39', '2025-10-15 08:03:39'),
(556, 247, 56, 1, 1, '2025-10-15 08:03:43', '2025-10-15 08:03:43'),
(557, 248, 56, 1, 1, '2025-10-15 08:03:43', '2025-10-15 08:03:43'),
(558, 249, 56, 1, 1, '2025-10-15 08:03:45', '2025-10-15 08:03:45'),
(559, 250, 56, 1, 1, '2025-10-15 08:03:45', '2025-10-15 08:03:45'),
(560, 251, 56, 1, 1, '2025-10-15 08:03:47', '2025-10-15 08:03:47'),
(561, 252, 56, 1, 1, '2025-10-15 08:03:47', '2025-10-15 08:03:47'),
(562, 253, 56, 1, 1, '2025-10-15 08:03:51', '2025-10-15 08:03:51'),
(563, 254, 56, 1, 1, '2025-10-15 08:03:52', '2025-10-15 08:03:52'),
(564, 255, 56, 1, 1, '2025-10-15 08:03:53', '2025-10-15 08:03:53'),
(565, 256, 56, 1, 1, '2025-10-15 08:03:57', '2025-10-15 08:03:57'),
(566, 257, 56, 1, 1, '2025-10-15 08:04:01', '2025-10-15 08:04:01'),
(567, 258, 56, 1, 1, '2025-10-15 08:04:02', '2025-10-15 08:04:02'),
(568, 259, 56, 1, 1, '2025-10-15 08:04:02', '2025-10-15 08:04:02'),
(569, 260, 56, 1, 1, '2025-10-15 08:04:03', '2025-10-15 08:04:03'),
(570, 261, 56, 1, 1, '2025-10-15 08:04:04', '2025-10-15 08:04:04'),
(571, 262, 56, 1, 1, '2025-10-15 08:04:08', '2025-10-15 08:04:08'),
(572, 263, 56, 1, 1, '2025-10-15 08:04:08', '2025-10-15 08:04:08'),
(573, 264, 56, 1, 1, '2025-10-15 08:04:09', '2025-10-15 08:04:09'),
(574, 265, 56, 1, 1, '2025-10-15 08:04:12', '2025-10-15 08:04:12'),
(575, 266, 56, 1, 1, '2025-10-15 08:04:13', '2025-10-15 08:04:13'),
(576, 267, 56, 1, 1, '2025-10-15 08:04:16', '2025-10-15 08:04:16'),
(577, 268, 56, 1, 1, '2025-10-15 08:04:17', '2025-10-15 08:04:17'),
(578, 269, 56, 1, 1, '2025-10-15 08:04:18', '2025-10-15 08:04:18'),
(579, 270, 56, 1, 1, '2025-10-15 08:04:22', '2025-10-15 08:04:22'),
(580, 271, 56, 1, 1, '2025-10-15 08:04:22', '2025-10-15 08:04:22'),
(581, 272, 56, 1, 1, '2025-10-15 08:04:25', '2025-10-15 08:04:25'),
(582, 273, 56, 1, 1, '2025-10-15 08:04:26', '2025-10-15 08:04:26'),
(583, 274, 56, 1, 1, '2025-10-15 08:04:26', '2025-10-15 08:04:26'),
(584, 275, 56, 1, 1, '2025-10-15 08:04:28', '2025-10-15 08:04:28'),
(585, 276, 56, 1, 1, '2025-10-15 08:04:32', '2025-10-15 08:04:32'),
(586, 277, 56, 1, 1, '2025-10-15 08:06:32', '2025-10-15 08:06:32'),
(587, 278, 56, 1, 1, '2025-10-15 08:06:33', '2025-10-15 08:06:33'),
(588, 279, 56, 1, 1, '2025-10-15 08:06:34', '2025-10-15 08:06:34'),
(589, 280, 56, 1, 1, '2025-10-15 08:06:35', '2025-10-15 08:06:35'),
(590, 281, 56, 1, 1, '2025-10-15 08:06:36', '2025-10-15 08:06:36'),
(591, 282, 56, 1, 1, '2025-10-15 08:06:39', '2025-10-15 08:06:39'),
(592, 283, 56, 1, 1, '2025-10-15 08:06:44', '2025-10-15 08:06:44'),
(593, 284, 56, 1, 1, '2025-10-15 08:06:45', '2025-10-15 08:06:45'),
(594, 285, 56, 1, 1, '2025-10-15 08:06:46', '2025-10-15 08:06:46'),
(595, 286, 56, 1, 1, '2025-10-15 08:06:47', '2025-10-15 08:06:47'),
(596, 287, 56, 1, 1, '2025-10-15 08:06:48', '2025-10-15 08:06:48'),
(597, 288, 56, 1, 1, '2025-10-15 08:06:48', '2025-10-15 08:06:48'),
(598, 289, 56, 1, 1, '2025-10-15 08:06:49', '2025-10-15 08:06:49'),
(599, 290, 56, 1, 1, '2025-10-15 08:06:49', '2025-10-15 08:06:49'),
(600, 291, 56, 1, 1, '2025-10-15 08:06:51', '2025-10-15 08:06:51'),
(601, 292, 56, 1, 1, '2025-10-15 08:06:52', '2025-10-15 08:06:52'),
(602, 293, 56, 1, 1, '2025-10-15 08:06:53', '2025-10-15 08:06:53'),
(603, 294, 56, 1, 1, '2025-10-15 08:06:53', '2025-10-15 08:06:53'),
(604, 295, 56, 1, 1, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(605, 296, 56, 1, 1, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(606, 297, 56, 1, 1, '2025-10-15 08:06:54', '2025-10-15 08:06:54'),
(607, 298, 56, 1, 1, '2025-10-15 08:06:55', '2025-10-15 08:06:55'),
(608, 299, 56, 1, 1, '2025-10-15 08:06:56', '2025-10-15 08:06:56'),
(609, 300, 56, 1, 1, '2025-10-15 08:07:00', '2025-10-15 08:07:00'),
(610, 301, 56, 1, 1, '2025-10-15 08:07:00', '2025-10-15 08:07:00'),
(611, 302, 56, 1, 1, '2025-10-15 08:07:01', '2025-10-15 08:07:01'),
(612, 303, 56, 1, 1, '2025-10-15 08:07:03', '2025-10-15 08:07:03'),
(613, 304, 56, 1, 1, '2025-10-15 08:07:07', '2025-10-15 08:07:07'),
(614, 305, 56, 1, 1, '2025-10-15 08:07:08', '2025-10-15 08:07:08'),
(615, 306, 56, 1, 1, '2025-10-15 08:07:09', '2025-10-15 08:07:09'),
(616, 307, 56, 1, 1, '2025-10-15 08:07:10', '2025-10-15 08:07:10'),
(617, 308, 56, 1, 1, '2025-10-15 08:07:12', '2025-10-15 08:07:12'),
(618, 309, 56, 1, 1, '2025-10-15 08:07:15', '2025-10-15 08:07:15'),
(619, 310, 56, 1, 1, '2025-10-15 08:07:15', '2025-10-15 08:07:15'),
(620, 311, 56, 1, 1, '2025-10-15 08:07:16', '2025-10-15 08:07:16'),
(621, 312, 56, 1, 1, '2025-10-15 08:07:16', '2025-10-15 08:07:16'),
(622, 313, 56, 1, 1, '2025-10-15 08:07:17', '2025-10-15 08:07:17'),
(623, 314, 56, 1, 1, '2025-10-15 08:07:17', '2025-10-15 08:07:17'),
(624, 315, 56, 1, 1, '2025-10-15 08:07:19', '2025-10-15 08:07:19'),
(625, 316, 56, 1, 1, '2025-10-15 08:07:21', '2025-10-15 08:07:21'),
(626, 317, 56, 1, 1, '2025-10-15 08:07:23', '2025-10-15 08:07:23'),
(627, 318, 56, 1, 1, '2025-10-15 08:07:27', '2025-10-15 08:07:27'),
(628, 319, 56, 1, 1, '2025-10-15 08:07:28', '2025-10-15 08:07:28'),
(629, 320, 56, 1, 1, '2025-10-15 08:07:28', '2025-10-15 08:07:28'),
(630, 321, 56, 1, 1, '2025-10-15 08:07:29', '2025-10-15 08:07:29'),
(631, 322, 56, 1, 1, '2025-10-15 08:07:30', '2025-10-15 08:07:30'),
(632, 323, 56, 1, 1, '2025-10-15 08:07:30', '2025-10-15 08:07:30'),
(633, 324, 56, 1, 1, '2025-10-15 08:07:31', '2025-10-15 08:07:31'),
(634, 325, 56, 1, 1, '2025-10-15 08:07:33', '2025-10-15 08:07:33'),
(635, 326, 56, 1, 1, '2025-10-15 08:07:35', '2025-10-15 08:07:35'),
(636, 327, 56, 1, 1, '2025-10-15 08:07:36', '2025-10-15 08:07:36'),
(637, 328, 56, 1, 1, '2025-10-15 08:07:37', '2025-10-15 08:07:37'),
(638, 329, 56, 1, 1, '2025-10-15 08:07:37', '2025-10-15 08:07:37'),
(639, 330, 56, 1, 1, '2025-10-15 08:07:38', '2025-10-15 08:07:38'),
(640, 331, 56, 1, 1, '2025-10-15 08:07:39', '2025-10-15 08:07:39'),
(641, 332, 56, 1, 1, '2025-10-15 08:07:40', '2025-10-15 08:07:40'),
(642, 333, 56, 1, 1, '2025-10-15 08:07:41', '2025-10-15 08:07:41'),
(643, 334, 56, 1, 1, '2025-10-15 08:07:42', '2025-10-15 08:07:42'),
(644, 335, 56, 1, 1, '2025-10-15 08:07:44', '2025-10-15 08:07:44'),
(645, 336, 56, 1, 1, '2025-10-15 08:07:47', '2025-10-15 08:07:47'),
(646, 337, 56, 1, 1, '2025-10-15 08:07:47', '2025-10-15 08:07:47'),
(647, 338, 56, 1, 1, '2025-10-15 08:07:48', '2025-10-15 08:07:48'),
(648, 339, 56, 1, 1, '2025-10-15 08:07:49', '2025-10-15 08:07:49'),
(649, 340, 56, 1, 1, '2025-10-15 08:07:53', '2025-10-15 08:07:53'),
(650, 341, 56, 1, 1, '2025-10-15 08:07:53', '2025-10-15 08:07:53'),
(651, 342, 56, 1, 1, '2025-10-15 08:07:54', '2025-10-15 08:07:54'),
(652, 343, 56, 1, 1, '2025-10-15 08:07:57', '2025-10-15 08:07:57'),
(653, 344, 56, 1, 1, '2025-10-15 08:07:59', '2025-10-15 08:07:59'),
(654, 345, 56, 1, 1, '2025-10-15 08:08:00', '2025-10-15 08:08:00'),
(655, 346, 56, 1, 1, '2025-10-15 08:08:01', '2025-10-15 08:08:01'),
(656, 347, 56, 1, 1, '2025-10-15 08:08:01', '2025-10-15 08:08:01'),
(657, 348, 56, 1, 1, '2025-10-15 08:08:02', '2025-10-15 08:08:02'),
(658, 349, 56, 1, 1, '2025-10-15 08:08:04', '2025-10-15 08:08:04'),
(659, 350, 56, 1, 1, '2025-10-15 08:08:05', '2025-10-15 08:08:05'),
(660, 351, 56, 1, 1, '2025-10-15 08:08:05', '2025-10-15 08:08:05'),
(661, 352, 56, 1, 1, '2025-10-15 08:08:06', '2025-10-15 08:08:06'),
(662, 353, 56, 1, 1, '2025-10-15 08:08:06', '2025-10-15 08:08:06'),
(663, 354, 56, 1, 1, '2025-10-15 08:08:08', '2025-10-15 08:08:08'),
(664, 355, 56, 1, 1, '2025-10-15 08:08:11', '2025-10-15 08:08:11'),
(665, 356, 56, 1, 1, '2025-10-15 08:08:12', '2025-10-15 08:08:12'),
(666, 357, 56, 1, 1, '2025-10-15 08:08:14', '2025-10-15 08:08:14'),
(667, 358, 56, 1, 1, '2025-10-15 08:08:14', '2025-10-15 08:08:14'),
(668, 359, 56, 1, 1, '2025-10-15 08:08:15', '2025-10-15 08:08:15'),
(669, 360, 56, 1, 1, '2025-10-15 08:08:16', '2025-10-15 08:08:16'),
(670, 361, 56, 1, 1, '2025-10-15 08:08:18', '2025-10-15 08:08:18'),
(671, 362, 56, 1, 1, '2025-10-15 08:08:19', '2025-10-15 08:08:19'),
(672, 363, 56, 1, 1, '2025-10-15 08:08:19', '2025-10-15 08:08:19'),
(673, 364, 56, 1, 1, '2025-10-15 08:09:46', '2025-10-15 08:09:46'),
(674, 365, 56, 1, 1, '2025-10-15 08:09:56', '2025-10-15 08:09:56'),
(675, 366, 56, 1, 1, '2025-10-15 08:09:58', '2025-10-15 08:09:58'),
(676, 367, 56, 1, 1, '2025-10-15 08:09:59', '2025-10-15 08:09:59'),
(677, 368, 56, 1, 1, '2025-10-15 08:10:05', '2025-10-15 08:10:05'),
(678, 369, 56, 1, 1, '2025-10-15 08:10:12', '2025-10-15 08:10:12'),
(679, 370, 56, 1, 1, '2025-10-15 08:10:17', '2025-10-15 08:10:17'),
(680, 371, 56, 1, 1, '2025-10-15 08:10:18', '2025-10-15 08:10:18'),
(681, 372, 56, 1, 1, '2025-10-15 08:10:20', '2025-10-15 08:10:20'),
(682, 373, 56, 1, 1, '2025-10-15 08:10:29', '2025-10-15 08:10:29'),
(683, 374, 56, 1, 1, '2025-10-15 08:10:35', '2025-10-15 08:10:35'),
(684, 375, 56, 1, 1, '2025-10-15 08:10:36', '2025-10-15 08:10:36'),
(685, 376, 56, 1, 1, '2025-10-15 08:10:38', '2025-10-15 08:10:38'),
(686, 377, 56, 1, 1, '2025-10-15 08:11:00', '2025-10-15 08:11:00'),
(687, 378, 56, 1, 1, '2025-10-15 08:11:22', '2025-10-15 08:11:22'),
(688, 379, 56, 1, 1, '2025-10-15 08:11:26', '2025-10-15 08:11:26'),
(689, 277, 57, 1, 1, '2025-10-15 08:15:38', '2025-10-15 08:15:38'),
(690, 49, 57, 1, 1, '2025-10-15 08:15:39', '2025-10-15 08:15:39'),
(691, 372, 57, 1, 1, '2025-10-15 08:15:40', '2025-10-15 08:15:40'),
(692, 380, 57, 1, 1, '2025-10-15 08:15:40', '2025-10-15 08:15:40'),
(693, 246, 57, 1, 1, '2025-10-15 08:15:40', '2025-10-15 08:15:40'),
(694, 263, 57, 1, 1, '2025-10-15 08:15:41', '2025-10-15 08:15:41'),
(695, 191, 57, 1, 1, '2025-10-15 08:15:41', '2025-10-15 08:15:41'),
(696, 266, 57, 1, 1, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(697, 202, 57, 1, 1, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(698, 207, 57, 1, 1, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(699, 213, 57, 1, 1, '2025-10-15 08:15:42', '2025-10-15 08:15:42'),
(700, 214, 57, 1, 1, '2025-10-15 08:15:43', '2025-10-15 08:15:43'),
(701, 381, 57, 1, 1, '2025-10-15 08:15:43', '2025-10-15 08:15:43'),
(702, 382, 57, 1, 1, '2025-10-15 08:15:44', '2025-10-15 08:15:44'),
(703, 383, 57, 1, 1, '2025-10-15 08:15:44', '2025-10-15 08:15:44'),
(704, 384, 57, 1, 1, '2025-10-15 08:15:46', '2025-10-15 08:15:46'),
(705, 385, 57, 1, 1, '2025-10-15 08:17:07', '2025-10-15 08:17:07'),
(706, 386, 57, 1, 1, '2025-10-15 08:17:09', '2025-10-15 08:17:09'),
(707, 387, 57, 1, 1, '2025-10-15 08:17:12', '2025-10-15 08:17:12'),
(708, 388, 57, 1, 1, '2025-10-15 08:17:13', '2025-10-15 08:17:13'),
(709, 389, 57, 1, 1, '2025-10-15 08:17:13', '2025-10-15 08:17:13'),
(710, 390, 57, 1, 1, '2025-10-15 08:17:14', '2025-10-15 08:17:14'),
(711, 391, 57, 1, 1, '2025-10-15 08:17:14', '2025-10-15 08:17:14'),
(712, 392, 57, 1, 1, '2025-10-15 08:17:54', '2025-10-15 08:17:54'),
(713, 371, 58, 1, 1, '2025-10-15 08:21:16', '2025-10-15 08:21:16'),
(714, 50, 58, 1, 1, '2025-10-15 08:21:16', '2025-10-15 08:21:16'),
(715, 121, 58, 1, 1, '2025-10-15 08:21:16', '2025-10-15 08:21:16'),
(716, 258, 58, 1, 1, '2025-10-15 08:21:17', '2025-10-15 08:21:17'),
(717, 259, 58, 1, 1, '2025-10-15 08:21:17', '2025-10-15 08:21:17'),
(718, 51, 59, 1, 1, '2025-10-15 08:23:48', '2025-10-15 08:23:48'),
(719, 348, 59, 1, 1, '2025-10-15 08:23:49', '2025-10-15 08:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT 'default',
  `theme_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar_url`, `theme`, `theme_color`) VALUES
(1, 'admin', 'admin@mitra.bpskotamalang.id', '2025-07-10 07:28:06', '$2y$12$wtCXtFvTMYcQkOAnLYSwvu6vBIkB9OppJ1DuRhyPr9WzUstM/pc5.', 'AVTO4cLSjPlSJsWxkBCM7fFvGzKAQktyCGMtJMnCtvK21L72k5N7dMMOwd9I', '2025-07-10 07:28:06', '2025-07-10 10:04:25', NULL, 'default', NULL),
(2, 'Umar Sjaifudin M.Si', 'umars@bps.go.id', '2025-07-10 07:28:06', '$2y$12$2P1/lWVE3kTwHZuVZubbrO6M1NXMqwK1v77YqJZc1RIZ58kdgK27K', 'RGOw8XGssLPft22W5LzNHVVLQpdWdnp1Vi6vzapLT7cZBbOcbmHijZIzJW96', '2025-07-10 07:28:07', '2025-07-10 15:59:21', NULL, 'default', NULL),
(3, 'Ir. Dwi Handayani Prasetyawati M.AP', 'dwi.handayani@bps.go.id', '2025-07-10 07:28:06', '$2y$12$9hbUT84X0NJYG5c2JOcEieWC3FthPq0ITqdhjgYW08aTAc4wHBhgq', 'Eq3YO5GBFZ2g9riXSzEk8G3r3B5GR2fXNfXk8ggaFxsIw8Z19B4hvQ8Wbmfn', '2025-07-10 07:28:07', '2025-07-10 16:13:40', NULL, 'default', NULL),
(4, 'Ir. Wahyu Furqandari M.M', 'wfurqan@bps.go.id', '2025-07-10 07:28:06', '$2y$12$ZrXI6SbqG.O3pg1hocNIfOmQNwfsqHxRo.p3ndKdXHxx9.l/hLiQK', 'CORBkiSmjQfR1XVKhbWOjyxbGQ7NT37KF5pz9z1gmvPFO1QskLrOMvZYtDmt', '2025-07-10 07:28:07', '2025-07-10 16:13:59', NULL, 'default', NULL),
(5, 'Tasmilah SST, M.E', 'tasmilah@bps.go.id', '2025-07-10 07:28:06', '$2y$12$JpedBQLv1GjBZfE7A.1dKelV7V4mAUFHQSVh9FxNy4X1ZoSaATHvq', 'hPxguuxQTPZjPL1fIyvX0Iy51kMUP5520TDitKWtinRqCftWtkCG9VnpRtpf', '2025-07-10 07:28:08', '2025-07-10 15:59:47', NULL, 'default', NULL),
(6, 'Ir. Agustina Martha M.M', 'agustina.martha@bps.go.id', '2025-07-10 07:28:06', '$2y$12$ocOIeFQLsZbt7lng7iVhSuLhcgPe521yIbs4sBoV47VB6hYdFP7si', 'pnbPSzyGiXAVTM1hoYYDdCOYFOVp75n9WMCeFRMHeGQoDsKXbNMkzdUqX3bp', '2025-07-10 07:28:08', '2025-07-10 16:14:29', NULL, 'default', NULL),
(7, 'Ahmad Junaedi S.Si, M.M', 'ahmad.junaedi@bps.go.id', '2025-07-10 07:28:06', '$2y$12$w2T/.fAGqc2fT4iZTmOemOBrFPhxqTYgO8YlL74TGW6jWLVM6Agtu', 'GYeQPQAl71KY9F72k9FNAdn1r6i65nX4wlIetIlT1cXfmNbHbEDYn3BeCAty', '2025-07-10 07:28:09', '2025-07-10 16:14:51', NULL, 'default', NULL),
(8, 'Anggi Fatwa Mauliza A.Md.Kb.N', 'anggi.mauliza@bps.go.id', '2025-07-10 07:28:06', '$2y$12$xPHxtk7Q8biCrRbJ6.t2HuSxQ5R8HF3DTyJ2YmBymOncxUts7LPRS', 'SGQbOs7CTEpTeyS4nUEpdxLiGL9iYySWg5BHalnIthd5Z1OMHVzocSY3hJzc', '2025-07-10 07:28:09', '2025-07-10 16:15:14', NULL, 'default', NULL),
(9, 'Arini Ismiati S.ST', 'arini.ismi@bps.go.id', '2025-07-10 07:28:06', '$2y$12$PqpBxyQ5Qo8U0Pg25b3pqu/fsnFHME5aclhiAV3TbO7.1lyvKRx9m', '0AUyXQppLBjk4ZdCBFrnXyUnieEzsdTQQ3ldtypLMX6LHLF8baROEwEwQzLc', '2025-07-10 07:28:09', '2025-07-10 16:15:36', NULL, 'default', NULL),
(10, 'Baqtiar Arifin S.Stat., MM', 'baqtiar.arifin@bps.go.id', '2025-07-10 07:44:18', '$2y$12$ghGcrC4GpU2wExW9vBm3R.sQ4xdV0x9Cq9lAveVQwwJbBoTDsK.Pu', 'uP6MGIU9W9lEs2xfjl9nfA5lkWqp0YoGb340nTr8MIBVc373DDEcZzSVFbim', '2025-07-10 07:28:10', '2025-07-10 16:16:11', NULL, 'default', NULL),
(11, 'Bima Sakti Krisdianto SST', 'bima.sakti@bps.go.id', '2025-07-10 07:44:20', '$2y$12$tWCNVFt1vz3IrxcK73Rp7eIJ7KkiOUyoNLpCks3v9XjHHEEfQ2zca', 'obJwUNCRXR5qc3o8gMFwuCyG7KdRP5pT2aFv3Btqkv7ZOau6GGe1ZeNLqOVS', '2025-07-10 07:28:10', '2025-07-10 16:16:54', NULL, 'default', NULL),
(12, 'Eka Arifianto A.Md. Lib', 'ekaarifianto-pppk@bps.go.id', '2025-07-10 07:28:06', '$2y$12$RfGx0q1Syu6fwHT59e/Bxu89jZLPrxe3VvxWAQKiQi3sZ3eBvZDmm', '3afpO0RVTX6cBNWTp31nQsZOJtJZ89VrTuAjf6NOdpgNUt9970btHwdCmmd1', '2025-07-10 07:28:11', '2025-07-10 16:16:34', NULL, 'default', NULL),
(13, 'Erlisa Cantika Herawati S.Si', 'erlisa.ch@bps.go.id', '2025-07-10 07:28:06', '$2y$12$DwdRI69/3QPaK6d9sIErgOBXY1A0/vHl9lhZEUMR1S4wpDprEsxfe', '1hPTo0XtLmRja9njWfjhXaLufCeJxX7Lh0sEERovW2hduzMfBnOSNFQhfi6Y', '2025-07-10 07:28:11', '2025-07-10 16:21:18', NULL, 'default', NULL),
(15, 'Heru Kartiko SST', 'heru.kartiko@bps.go.id', '2025-07-10 07:28:06', '$2y$12$n.hLwCirKhzEP7WbCdDStOToWdGVxY3fMhkAIIquiIIkGbHyEo8PK', 'k9HBhlLIAMpU4tQrEIuKd3L3bQeQ1VWSOtqHttYJpQ3oLU0nw1eXkCftA5wb', '2025-07-10 07:28:12', '2025-07-10 16:22:58', NULL, 'default', NULL),
(16, 'Rachmad Widi Wijayanto', 'rachmadwidi@bps.go.id', '2025-07-10 07:28:06', '$2y$12$NdO8D12lvhN4x0VawyPm5OvVe5i3MsWlSUTRtrmVrP5maI5Fgf5M6', 'TjBUOtCroeBlxLn7ZRN4LJONZF9n3hEzMmDVmBMvxHzxsFXCP2raX0z2YpUe', '2025-07-10 07:28:13', '2025-07-10 16:23:28', NULL, 'default', NULL),
(17, 'Ratri Adhipradani Ratih S.Si', 'ratri@bps.go.id', '2025-07-10 07:28:06', '$2y$12$GYkO7bBC.0TN5FPnGGubHurYTEubl1RUyDfOhSoDfjzA1tSN1d8xq', '0H2O6WTwtk7wCHQPzRGtUI2vE6I7osWgYsYAdLhmS6w0CFD7ovHTNmHXFdD4', '2025-07-10 07:28:13', '2025-07-10 07:28:13', NULL, 'default', NULL),
(18, 'Rendra Anandhika A.Md', 'rendra@bps.go.id', '2025-07-10 07:28:06', '$2y$12$oq6rjfmizfhDHQgMa1zpme6tLxtjpzKAH9GSXJsAp0C5U0EWHUxNO', 'SxE73GQEwMrIg7y3udiHAy6CI9V4vpNgvFCZ06EXV8vLsIDqjQ5rEsbOekU5', '2025-07-10 07:28:13', '2025-07-10 07:28:13', NULL, 'default', NULL),
(19, 'Rhyke Chrisdiana Novita S.E', 'rhyke.novita@bps.go.id', '2025-07-10 07:28:06', '$2y$12$v6zMMTc3PWyULOzQhvV4J.2H96cSQNlsSZ1Dh4LZxWohaDfdI8ON2', 'xAVX7iieCo6wtXddU4j4EpXCu3H8JJfWP6faLoNtLKVCEALmGSs5o7OQIOwo', '2025-07-10 07:28:14', '2025-07-10 16:24:28', NULL, 'default', NULL),
(20, 'Rizky Maulidya SST, M.AP', 'rizky.maulidya@bps.go.id', '2025-07-10 07:28:06', '$2y$12$R9p/px/sFiMXUzmuTG2I7el.JwPRwkKo/12DCMJ92iqDu8MCqy6Li', 'S930RtziNx9Q2GOGT5pAixIrfxu13jrqNJkni7BfA0yhfXvvqzXarBtI1nDN', '2025-07-10 07:28:15', '2025-07-10 16:24:46', NULL, 'default', NULL),
(21, 'Saras Wati Utami S.Si, M.E', 'saras.wati@bps.go.id', '2025-07-10 07:28:06', '$2y$12$V4pPhbOGXKyxBxHxcsF5ROURNIxrtTXODY8gNv0TJSgydhO0NG8xG', 'F2fxNnrl59QvP1iKqfqg4Ibc8yzZU2b4AjLCtpStY2DPm7Snyjv97IuIymlR', '2025-07-10 07:28:15', '2025-07-10 16:25:06', NULL, 'default', NULL),
(22, 'Saruni Gincahyo SE', 'saruni.gincahyo@bps.go.id', '2025-07-10 07:28:06', '$2y$12$oba6w.vhbwHJSf3grFBMa.HAVnUNm.XDSQMD9ZdDuqYMxpNNs0Pj6', 'BmQ8yG8DNdWcsV39Y9brv4lZsV1OLMliFpdgA31CfEAcGsYSALjbh3ofJTrt', '2025-07-10 07:28:15', '2025-07-10 16:25:25', NULL, 'default', NULL),
(23, 'Satria Candra Wibawa A.Md', 'satria.wibawa@bps.go.id', '2025-07-10 07:28:06', '$2y$12$XdII3V/QdjxFGHKc4ZyL.e2u4.3IpF6B7Z1zJ7d1DCjatLl1EJ4Y2', 'mg6xBSuhbV8CBPGl6Mv0gP1mUgC3Tn0yNpUyTwubMTdMKKfBvC3r43cauhth', '2025-07-10 07:28:16', '2025-07-10 16:25:45', NULL, 'default', NULL),
(24, 'Siti Barokatun Solihah SST', 'siti.barokatun@bps.go.id', '2025-07-10 07:28:06', '$2y$12$87wnWgsY9CYfglF2VQDPEedKT98pjIvBGsL/A5qWxnxf0JnDg4Ake', 'JIA2xQ0yrl37V20ooMfaKZFAdnFq3Xl2Jx7IDyOPnDZNAIT0TAWoMSwSYyfk', '2025-07-10 07:28:16', '2025-07-10 16:26:08', NULL, 'default', NULL),
(25, 'Soekesi Irawati S.Psi., M.M', 'soekesi.irawati@bps.go.id', '2025-07-10 07:28:06', '$2y$12$kUtZqHFEL7UILGqUiTSoTeNagw9YrNoPNibpxQDjsBlwKoxxKipNm', '0TSgNfUje6JHdWxiJ83v7kJaF1EKoH7R08ha6fv9ZKA3Sjyw7BI9h4xaMntn', '2025-07-10 07:28:17', '2025-07-10 16:26:25', NULL, 'default', NULL),
(26, 'Windi Wijayanti S.Si, M.E', 'windi.wijayanti@bps.go.id', '2025-07-10 07:28:06', '$2y$12$8Mh4nZpRscHlY7yFMp9gju5iLQL0N6yNuLfnIn7kZrWE7y76n0Bbu', '4ezgrJrPjBo5yZMH4AkbAcAdnKd4S56Mja3d30hmrNcvoHIefzXJwya3jn2I', '2025-07-10 07:28:17', '2025-07-10 16:26:48', NULL, 'default', NULL),
(27, 'Yenita Mirawanti SST., M.Si', 'yenita@bps.go.id', '2025-07-10 07:44:54', '$2y$12$z1PaGPyPQpGhrlkYwfKQbuXe/9jkR1AuJ16GaW05kIFtaHf4si6/m', 'KCBT8TNeSN5ZDVVNqhOi0iRrdznj3vzz583TkgXAO40HGSD1QQgqk4lPhIZw', '2025-07-10 07:28:17', '2025-07-10 07:28:17', NULL, 'default', NULL),
(28, 'Yusuf Fatoni SE', 'yusuf.fatoni@bps.go.id', '2025-07-10 07:28:06', '$2y$12$yhNWEo9oMFGHF2ekUvp5Wu7/v8vxrOtVlyigvojDxAeBRfvY/McN2', 'SdOpVl9xEqDbJu04gO7juxEMffSfHXAlsGPEEJ7JmcoUdRSswpwwJFfWem3D', '2025-07-10 07:28:18', '2025-07-10 16:27:15', NULL, 'default', NULL),
(29, 'Emman Suparji', 'e81emm4n5@gmail.com', NULL, '$2y$12$VFsKVu4KklYujzSGlBPMDejOi3Ot.BkTZ7V6lKBiDTaRBazxLIsOW', NULL, '2025-07-10 08:03:45', '2025-07-10 08:03:45', NULL, 'default', NULL),
(30, 'SONNA ASDINATA', 'Sonna.asdinata19@gmail.com', NULL, '$2y$12$SZoL/zsleRN4dmN8SxgGNuNpuiQjTqNnkcBNNi9Li5bPUEuCKd0Dq', NULL, '2025-07-10 08:03:45', '2025-07-10 08:03:45', NULL, 'default', NULL),
(31, 'Didiet Ananto Widodo', 'didietwidodo33@gmail.com', NULL, '$2y$12$IzYswlK5wtVLVPKF8DGgDu.jqMxIpahgqS1YucQ1YNsWpasE96zgO', NULL, '2025-07-10 08:03:46', '2025-07-10 08:03:46', NULL, 'default', NULL),
(32, 'SUTARTI YUNI ASTUTIK', 'astuti.sya@gmail.com', NULL, '$2y$12$gi.g.C.YuZOu/Svn9T323Ozqrtedg1NRQ3zIRrn9sIZuVvf6L9o.m', NULL, '2025-07-10 08:03:46', '2025-07-10 08:03:46', NULL, 'default', NULL),
(33, 'Shindy Ayu Widyaswara', 'shindyayu.widyaswara@gmail.com', NULL, '$2y$12$0dX/wIDLEFMwu70hqIibGexk8RddCJzbHNPKaoj6fT8TqO61fWDEK', NULL, '2025-07-10 08:16:42', '2025-07-10 08:16:42', NULL, 'default', NULL),
(34, 'Hilda Seskowati', 'hildayasmin2211@gmail.com', NULL, '$2y$12$io1W/sF88ifYF.sgype8J.6R4qJLmdnwZwoVzvSUQ/6ib/HJTYroa', NULL, '2025-07-10 08:16:44', '2025-07-10 08:16:44', NULL, 'default', NULL),
(35, 'Zulfian Arif', 'zulfian.arif@gmail.com', NULL, '$2y$12$bz1yH7n20pzFD5NzybHm0uFjuUeGXj.utLFKpXac9caNQdkwTNz8S', NULL, '2025-07-10 08:16:44', '2025-07-10 08:16:44', NULL, 'default', NULL),
(36, 'Arif Hambali', 'hambali.arif@gmail.com', NULL, '$2y$12$sdK4DGvQn04sKDPUXgIMpufQMiRfIxKiRR2NbjOK5a6YHyCcX/WeG', NULL, '2025-07-10 08:16:45', '2025-07-10 08:16:45', NULL, 'default', NULL),
(37, 'Tri Wahyu Utomo', 'my_hygeva@yahoo.com', NULL, '$2y$12$QiHxlIe00Ghqjl9lBlhGqO6iVb6.sEsHRFq/NwQ7bZGDpNTUWKtbS', NULL, '2025-07-10 08:16:45', '2025-07-10 08:16:45', NULL, 'default', NULL),
(38, 'Dessy Anggrainy', 'dessy.anggrainy87@gmail.com', NULL, '$2y$12$/gP8y6PQBboi12PHkhdKoOSaCsoVVlEuoI5/K/fp3XmPRG9cAcR52', NULL, '2025-07-10 08:22:06', '2025-07-10 08:22:06', NULL, 'default', NULL),
(39, 'KUSMILAH', 'Bundakus42300@gmail.com', NULL, '$2y$12$kfOxWAo9b1zrY6Zw9QooieLHkeE68/PSxsxDjBihy8TgbfNj2koiO', NULL, '2025-07-10 08:22:07', '2025-07-10 08:22:07', NULL, 'default', NULL),
(40, 'TITIEK TRISOESILOWATI', 'ndhoxsusie@gmail.com', NULL, '$2y$12$6fYXzIGSIZ0rX4C.X/CkEehIvj783nxR/VaN5JK2GAy.hZ515NFhW', NULL, '2025-07-10 08:22:07', '2025-07-10 08:22:07', NULL, 'default', NULL),
(41, 'IKE MARDIANA SADIYAH', 'ikerafi1@gmail.com', NULL, '$2y$12$F.Dq75Xbs5HUpza3k9ZYR.G3H8MVdI666/51i/xhqL0JIY2zbJnOy', NULL, '2025-07-10 08:25:03', '2025-07-10 08:25:03', NULL, 'default', NULL),
(42, 'Muhammad Jehan Rabbani', 'mjgila8@gmail.com', NULL, '$2y$12$S43ZU3.CqGJlycAAtnxkpezx68dWli8WhSNov9Pqn/CzzpGXcnmUG', NULL, '2025-07-10 08:29:37', '2025-07-10 08:29:37', NULL, 'default', NULL),
(43, 'Riyono', 'kopler87@gmail.com', NULL, '$2y$12$xz0/gy8f8IKk5eeqh5uRLOVjHyxyNB2J.zlyd3CKz75C0JwJrNiZG', NULL, '2025-07-10 08:29:38', '2025-07-10 08:29:38', NULL, 'default', NULL),
(44, 'Ardhea Citra Dhamayanty', 'ardheacitraa2807@gmail.com', NULL, '$2y$12$JGWWv2COZAAVEHLuXJnFXu31zAmDYyJyEqXEGtGTg.avzA3v1rfuu', NULL, '2025-07-10 08:37:01', '2025-07-10 08:37:01', NULL, 'default', NULL),
(45, 'Mila Nurjana', 'aisyah.nurjanah116@gmail.com', NULL, '$2y$12$6nr6jwhosLStrEGVEJAUEu2jdOhfycbJB/feuqtTHzEyU/mBy3lL.', NULL, '2025-07-10 08:37:02', '2025-07-10 08:37:02', NULL, 'default', NULL),
(46, 'Ila Nur Chasanah', 'ilanurchasanah5@gmail.com', NULL, '$2y$12$NgzRbhSP003rPrGgbVEekutQ1bSQ6HpAh3LhKv7V8pjIvFseUUQ66', NULL, '2025-07-10 08:37:02', '2025-07-10 08:37:02', NULL, 'default', NULL),
(47, 'Khoirunisa Sukma Hadi', 'sukma.khoirunisa21@gmail.com', NULL, '$2y$12$87Ea1WUH4ba2VujNDVwPG.Jd5Pb0X88CaSJrwAVobaQdjGnQuhSq.', NULL, '2025-07-10 08:37:02', '2025-07-10 08:37:02', NULL, 'default', NULL),
(48, 'Yessy Tri Hardiyanti', 'hardiyantiyessy@gmail.com', NULL, '$2y$12$hSK4BbgEoUG7WLhIKk6eUeVYkrJVZUirgi4cejZ1ncVxIUheDfSHe', NULL, '2025-07-10 08:37:03', '2025-07-10 08:37:03', NULL, 'default', NULL),
(49, 'Indah Wahyuningsih', 'sbw.mlg@gmail.com', NULL, '$2y$12$VRYfh5tgZ/Z/vtisM0hwoOYPdtQ/rJkTdaYkZZh.3IqInZjQgwUvO', NULL, '2025-07-10 08:37:03', '2025-07-10 08:37:03', NULL, 'default', NULL),
(50, 'Sharon Mahar Tanjung', 'sharonmahartn@gmail.com', NULL, '$2y$12$..5MeS62xbytY0QNDcxHXOnVPrJ20nz2e2q9z/ABtEVFRkmbtA/4m', NULL, '2025-07-10 08:37:04', '2025-07-10 08:37:04', NULL, 'default', NULL),
(51, 'Arry Puspitasari', 'trust.indigo@gmail.com', NULL, '$2y$12$944/6O9MdHjmtcebBH3RCOyoG37FYFmNc7qwxgEip7yk.kI8MQYo2', NULL, '2025-07-10 08:38:26', '2025-07-10 08:38:26', NULL, 'default', NULL),
(52, 'Rujiyani', 'rujiyaniyani@gmail.com', NULL, '$2y$12$rkudJc.LJnQWlNKoMPW3GuQKEnl.Wv.RDFGGbOHpx3h9.hjtwBsr.', NULL, '2025-07-10 08:44:15', '2025-07-10 08:44:15', NULL, 'default', NULL),
(53, 'Theresiana Septioningrum', 'theresiana07@gmail.com', NULL, '$2y$12$iSZwzeVvis4bkOtV1HhZF.ql4myp9BMFYrQaFKl3g2AxFQKOlkajG', NULL, '2025-07-10 08:44:17', '2025-07-10 08:44:17', NULL, 'default', NULL),
(54, 'Puji Rahayu', 'doublesix664@gmail.com', NULL, '$2y$12$C2RhHoFMwX6Af3Fk33AEAeidaEtqChgHoTbVTS23.es0UMRFC5AgW', NULL, '2025-07-10 08:46:37', '2025-07-10 08:46:37', NULL, 'default', NULL),
(55, 'Era Dhani Restari', 'Eradhani588@gmail.com', NULL, '$2y$12$QgrsODZdyKHJQReA8npb3OCh9TW722i4iLFt6bZP9yeUAFZGMhHUW', NULL, '2025-07-10 08:46:38', '2025-07-10 08:46:38', NULL, 'default', NULL),
(56, 'ROOS PANDAN WANGI(WIWIN).SH', 'roospandanwangi24@gmail.com', NULL, '$2y$12$T7x7fnkgtMB6FQHLgtSGGeCJu7KmpSbCjbovWaDgIAkG4VUeX4oZG', NULL, '2025-07-10 08:46:38', '2025-07-10 08:46:38', NULL, 'default', NULL),
(57, 'Farida Achadyah', 'faridachadyah1309@gmail.com', NULL, '$2y$12$06A.jfn9Es9FfvqNM6noJuhsLQ1V2g.DWx752X6yqfN/9vC9H8pmi', NULL, '2025-07-10 08:46:39', '2025-07-10 08:46:39', NULL, 'default', NULL),
(58, 'Aris Sugiarti', 'mbkaris80@gmail.com', NULL, '$2y$12$mX6UN/9jucl0aO2s000orOtiYjQiLAWAtDS8EQoVj38cqaxfgOmAW', NULL, '2025-07-10 08:46:39', '2025-07-10 08:46:39', NULL, 'default', NULL),
(59, 'YUNIAR PANDANSARI', 'yuniarpandansari67@gmail.com', NULL, '$2y$12$yVdWI4L8OwHlVNtKmbkB5.hxkRNDeZOSKPttp9ckW1H9mT27i.RR.', NULL, '2025-07-10 08:46:39', '2025-07-10 08:46:39', NULL, 'default', NULL),
(60, 'Rodiyah', 'rodiyah44307@gmail.com', NULL, '$2y$12$8QMdq.xYZam88lUZLIyajuAzuLiMEv52c3bickP9098qokbq.TxBG', NULL, '2025-07-10 08:46:40', '2025-07-10 08:46:40', NULL, 'default', NULL),
(61, 'Dewi Ayu Indriani', 'dewia4101@gmail.com', NULL, '$2y$12$YBqRipG2UJC0xRb7R96gaOp/vxCxAVPv/.gm7inWJjfrHTNP9CFtO', NULL, '2025-07-10 08:46:40', '2025-07-10 08:46:40', NULL, 'default', NULL),
(62, 'HERTIN SULISTYO RINI', 'hertinrini59@gmail.com', NULL, '$2y$12$nRDhhQ7QKy9f8KcF1vrlte5vALQiE5LhZQmfX5ysYJXLmnUH6SQaO', NULL, '2025-07-10 08:46:41', '2025-07-10 08:46:41', NULL, 'default', NULL),
(63, 'Eka Astuti', 'ekaastuti1980@gmail.com', NULL, '$2y$12$A2RC/bJmfpoRp8JJp6JIAuJB0NtuBEN2DS9/NDH4XUkI1xOY9Rpiy', NULL, '2025-07-10 08:50:12', '2025-07-10 08:50:12', NULL, 'default', NULL),
(64, 'HENI KUSUMAWATI', 'Henikusuma29@gmail.com', NULL, '$2y$12$Ep/Ad9oF56aFo.iabHgYLeLlQSV4A/myYSa6mDSDoYl3GE9iZlrja', NULL, '2025-07-10 08:50:12', '2025-07-10 08:50:12', NULL, 'default', NULL),
(65, 'Dicky Ramadhan', 'Dickyrammm97@gmail.com', NULL, '$2y$12$ROkN6q2cxwN5iLobwToXQuKYjnPGP32S4Cyf1c4AvZKPYT4VcqlCq', NULL, '2025-07-10 08:50:13', '2025-07-10 08:50:13', NULL, 'default', NULL),
(66, 'Juwariyah', 'e85riasuparji@gmail.com', NULL, '$2y$12$bLcZ8P.iOyubwlQvxvUaz.aayqoGvpPThtT.SL5WemhoMQsOGJnJ2', NULL, '2025-07-10 08:57:25', '2025-07-10 08:57:25', NULL, 'default', NULL),
(67, 'Muhammad Handy Rizki Prasetyo', 'tunjungsekarppl@gmail.com', NULL, '$2y$12$Vkudg5AxDAuZ3creQE9GPOXPMFSbv0AQYQ/r/8.uHJISyiau9nimm', NULL, '2025-07-10 08:57:25', '2025-07-10 08:57:25', NULL, 'default', NULL),
(68, 'TEJO WIRAWAN', 'tejowirawan1@gmail.com', NULL, '$2y$12$kHspA0A8MFpqCnieaNaGJ..4tHSponXI6Vt2n2DOFZk12DCoEI13W', NULL, '2025-07-10 08:57:26', '2025-07-10 08:57:26', NULL, 'default', NULL),
(69, 'Agus Dwi Prasetyo', 'agusdwiprasetyo07@gmail.com', NULL, '$2y$12$rE5Dj8uYDwtuvPOtFHGmxu4bWUt12NbXPX7Uz.Zw.cBS8PsHYJXhS', NULL, '2025-07-10 08:57:26', '2025-07-10 08:57:26', NULL, 'default', NULL),
(70, 'Fenny Gunawan', 'fennymarsudi@gmail.com', NULL, '$2y$12$V5fX4K3DWb6atYu1z9j/vuaqTYFAIcv1YSgsMagjOcJfSlNJ9ksBK', NULL, '2025-07-10 08:57:27', '2025-07-10 08:57:27', NULL, 'default', NULL),
(71, 'ERNAWATI', 'ernaina6@gmail.com', NULL, '$2y$12$Mc4lGQilsN33VYY.9pTRVO1Cvw0sDLZPqBOAPLAitLVBP.0agCZQm', NULL, '2025-07-10 08:57:27', '2025-07-10 08:57:27', NULL, 'default', NULL),
(72, 'Maulid Diyah Kholis Saputri', 'diyahmaulid234@gmail.com', NULL, '$2y$12$5fGVSBUHxzzCrdhVflA6wuECcE4AYJOXIthFMVFOoeGNJPSX1Lyz6', NULL, '2025-07-10 08:57:28', '2025-07-10 08:57:28', NULL, 'default', NULL),
(73, 'Nurfuady Rafi\' Alfauznursy', 'nurfuady1@gmail.com', NULL, '$2y$12$Sk5xCYtBJ0e3s59/JLu/R.16FYYxWRQfRYFKM4uosvgBY/hujRNuu', NULL, '2025-07-10 09:09:07', '2025-07-10 09:09:07', NULL, 'default', NULL),
(74, 'TALITHA ALIFAH', 'talithaalifah99@gmail.com', NULL, '$2y$12$m49IHG54YrMwT7VhmGIEXOz9.TyNBQnq2f7QyT1k5TqZ6a6todtJ.', NULL, '2025-07-10 09:30:42', '2025-07-10 09:30:42', NULL, 'default', NULL),
(75, 'ALFIATUL KHAMIMAH', 'alfi.sewing@gmail.com', NULL, '$2y$12$NevcpPKkz7GxgArvIHsJs.t4o.ZgTwGkM9S/LVGBLdkjjYpK/6ceq', NULL, '2025-07-10 09:30:43', '2025-07-10 09:30:43', NULL, 'default', NULL),
(76, 'Arinda Putri Dewi', 'dewiarindaputri3@gmail.com', NULL, '$2y$12$B/K.Ekjz5nWjV/c1UCqoqeV9FzpKLq7Pm/lvt8NtiuiOQT8ZsfYgq', NULL, '2025-07-10 09:30:43', '2025-07-10 09:30:43', NULL, 'default', NULL),
(77, 'Aulia Rachman', 'armand.m.513@gmail.com', NULL, '$2y$12$FKaosz/mOc6mkRrVrq9iEOvbo.e83T34KzVuqJi/DA2z4TQeHHoXO', NULL, '2025-07-10 09:33:34', '2025-07-10 09:33:34', NULL, 'default', NULL),
(78, 'Catur Sandy Cahyono', 'catursandy70@gmail.com', NULL, '$2y$12$lIp7XZgmmJ5aBxzFKGbxbOr7ni08rNp6FE9mkhLdt3241Wrwm8zva', NULL, '2025-07-10 09:33:34', '2025-07-10 09:33:34', NULL, 'default', NULL),
(79, 'Feri Achmad Ardiansyah', 'feriachmad683@gmail.com', NULL, '$2y$12$qOsqvOf9v4p5ELGVJkb7meFW9tzVw2YfZTVBXIIuZy27VtdKT7ZK2', NULL, '2025-07-10 09:33:35', '2025-07-10 09:33:35', NULL, 'default', NULL),
(80, 'Jasmine Amalia Nastiti S.Tr.Stat.', 'jasmine.amalia@bps.go.id', '2025-07-13 09:20:36', '$2y$12$gfCL2wXpi9vbvt4VJ6x3fuYRAIHSWbW47mgQCR688hAAlD61qRbky', 'i37sIoGjSFXTTLM336A9JG0oBAXDr0JVBVblOcNjwxjAqEXnpNI9aVxzdaiw', '2025-07-10 16:30:55', '2025-07-10 16:30:55', NULL, 'default', NULL),
(81, 'Ariesta Putri Sayekti', 'Ariestaps9@gmail.com', NULL, '$2y$12$/5lS9BAFRmb1NIfmZZr.QO5uG/ROWBajTuEf8B/aKmTqtvzvsbxZ.', NULL, '2025-10-15 03:55:14', '2025-10-15 03:55:14', NULL, 'default', NULL),
(82, 'Dian Falah Fitriyana', 'dianff19@gmail.com', NULL, '$2y$12$d.SjewWAFqr/zbHxqe3I9eUIyzypfh6W06/.ZEwjBckCVk//JaT2y', NULL, '2025-10-15 04:33:03', '2025-10-15 04:33:03', NULL, 'default', NULL),
(83, 'SRI WILUJENG', 'ajengsriwilujeng.78@gmail.com', NULL, '$2y$12$0tOeOaUrndR18miUd9bpguMo3/59N2LDnHTC83hzoaYzof7DsaAaa', NULL, '2025-10-15 04:33:03', '2025-10-15 04:33:03', NULL, 'default', NULL),
(84, 'Sekar Widiasmara', 'sekar.w.asmara@gmail.com', NULL, '$2y$12$u/UpQGZOSuvQiO8m2j53A.qHluK9J8fzv/JGgLYwb.hN3LK0Yaky.', NULL, '2025-10-15 04:33:04', '2025-10-15 04:33:04', NULL, 'default', NULL),
(85, 'Orlin Tiara Oktavia Purnama', 'tiaraorlin@gmail.com', NULL, '$2y$12$Po6nDipRVqNv/6bccz1sEO7vSP.porxvXMLz5IPR1BGlj3eQLLxrO', NULL, '2025-10-15 04:33:05', '2025-10-15 04:33:05', NULL, 'default', NULL),
(86, 'Sulastri Ningsih', 'nsulastri685@gmail.com', NULL, '$2y$12$oarwvQS0O6VAhJcZLNUsz.cFr2cn6Rjk05c9nTXTn2PoVOOSzcu5W', NULL, '2025-10-15 04:33:06', '2025-10-15 04:33:06', NULL, 'default', NULL),
(87, 'Devita Aprilia Purwitasari', 'devitaaprilia65@gmail.com', NULL, '$2y$12$FDP70pQ2jIUwZob92qJ61OOV1w5EuhpyTzcc/F3CDoXfJURiz/L0C', NULL, '2025-10-15 04:33:07', '2025-10-15 04:33:07', NULL, 'default', NULL),
(88, 'Suhariyanti', 'nurulyantwibisana@gmail.com', NULL, '$2y$12$hw5G0P2C1SONVnVIdPrZgu3C1XZY3X70865MXTnvBDzynQi61X8WK', NULL, '2025-10-15 04:33:08', '2025-10-15 04:33:08', NULL, 'default', NULL),
(89, 'Anis Zauzzaenah', 'zauza.anis86@gmail.com', NULL, '$2y$12$R7PZZROHhvqvsFLtymf8dODo1IxocYd7Rjs39No4jFWN8kAIJYc/C', NULL, '2025-10-15 04:33:08', '2025-10-15 04:33:08', NULL, 'default', NULL),
(90, 'Retno Herawati', 'retno.herawatti@gmail.com', NULL, '$2y$12$Y1tH8nBnD22E38Ryx3B1C.L0LYOyMel7x/ctWp.HiC92BYMMmbfYC', NULL, '2025-10-15 04:33:09', '2025-10-15 04:33:09', NULL, 'default', NULL),
(91, 'MIFTAKHUL HIDAYAH', 'emiphid@gmail.com', NULL, '$2y$12$YHYok4w00hzoVcNQvWkPReTbVoygIrg1bAf91BFGiP9QQoHj84FjC', NULL, '2025-10-15 04:33:09', '2025-10-15 04:33:09', NULL, 'default', NULL),
(92, 'Ninik Wahyuni', 'ninikwahyuni53@gmail.com', NULL, '$2y$12$..e5eDzqELQCFzsq0OeFCuD096FKDIGru7pwW4hjmnxMf77nCs/3q', NULL, '2025-10-15 04:33:09', '2025-10-15 04:33:09', NULL, 'default', NULL),
(93, 'Anggraeni Istanti', 'anggraenistantist@gmail.com', NULL, '$2y$12$j4w2V064GxKL17HDdFRGhO8UeTsZamS94AoYQEhdiPvkive2CAbWu', NULL, '2025-10-15 04:33:10', '2025-10-15 04:33:10', NULL, 'default', NULL),
(94, 'FITRI HIDAYATI', 'fitrihidayati2108@gmail.com', NULL, '$2y$12$3g3DUJwXhW6gTacurQASk.ObW0HZmMZE1WxxErLxB1ODFd2qnL5wy', NULL, '2025-10-15 04:33:11', '2025-10-15 04:33:11', NULL, 'default', NULL),
(95, 'Wiwik Ambarwati', 'Wiwiekcentil@gmail.com', NULL, '$2y$12$Wt4dwUWil6.0sb27q09X2.fsqE/zFR9TMaBZscftXxff6ngErMTjy', NULL, '2025-10-15 04:33:11', '2025-10-15 04:33:11', NULL, 'default', NULL),
(96, 'YULIATI', 'yulenkayuliati@gmail.com', NULL, '$2y$12$Wh2Y.0HrmXYjJyXxQVZ8uOOp57cKC0yE0VVt/aLVGEvOUC2BXoxby', NULL, '2025-10-15 04:33:11', '2025-10-15 04:33:11', NULL, 'default', NULL),
(97, 'MARISA RAHMAWATI', 'marisarahma06@gmail.com', NULL, '$2y$12$im9sTI5ULA7FHEMEvt3a5uFbrwRxRKwQXm3Fl.3EcUYIb03ZSNioa', NULL, '2025-10-15 04:33:13', '2025-10-15 04:33:13', NULL, 'default', NULL),
(98, 'Lilis Sunarmi', 'lilis30sni@gmail.com', NULL, '$2y$12$bdhRp/zyAyO5WECcul680.UXbxVvTUTo0GBi2Zo0ZFIsWTn7clTKO', NULL, '2025-10-15 04:55:05', '2025-10-15 04:55:05', NULL, 'default', NULL),
(99, 'Diana Christanty Handayani', 'dianachristantyhandayani@gmail.com', NULL, '$2y$12$wQdKJukKoKXK59Gp//z71uueyOs1/HAzc/xqXyqMB0vDmfodNJkAe', NULL, '2025-10-15 04:55:06', '2025-10-15 04:55:06', NULL, 'default', NULL),
(100, 'YENI MILAWATI', 'Milawatiyeni1@gmail.com', NULL, '$2y$12$OR31zRznpRcCD4TOD3x2g.nlMaICK8LRFUFt1Vl9n2TAwa/0l8OsO', NULL, '2025-10-15 04:55:07', '2025-10-15 04:55:07', NULL, 'default', NULL),
(101, 'NINA YULIANA PRIYATININGSIH', 'ninasepohrakharaykha@gmail.com', NULL, '$2y$12$6i6aIgNDnOZ/a5TS2dUiiu39g7i25YNp/EItBk/KqmVQCQUOzn7cO', NULL, '2025-10-15 04:55:07', '2025-10-15 04:55:07', NULL, 'default', NULL),
(102, 'Eddy Subagio', 'eddysubagio32@gmail.com', NULL, '$2y$12$ffqJEk.7Mx8re31vk8gccewUFdjUjxYc0bWmwCLHqJCxLeoMt5EN6', NULL, '2025-10-15 04:55:08', '2025-10-15 04:55:08', NULL, 'default', NULL),
(103, 'SRI HARTINI', 'titinsri301@gmail.com', NULL, '$2y$12$ySQ/jOyrNcuRvM9N5LPuHuI2OLpQG6Bn0h2uLRGGTrE/ApkaZBgnO', NULL, '2025-10-15 05:10:57', '2025-10-15 05:10:57', NULL, 'default', NULL),
(104, 'SRI HARTATIK', 'sritatik0312@gmail.com', NULL, '$2y$12$cvGrrZ937ykMFag2cIfuCu63IMtb2tXoXP/Lm8EW3GSJUst3kzpRe', NULL, '2025-10-15 05:10:57', '2025-10-15 05:10:57', NULL, 'default', NULL),
(105, 'Sri mutini', 'srimutini2016@gmail.com', NULL, '$2y$12$F0bRDhsZ/EYTjpbiwb6S8eB9ouKqlKI9.woG6VqLcfqe39cusyUjO', NULL, '2025-10-15 05:10:59', '2025-10-15 05:10:59', NULL, 'default', NULL),
(106, 'Enis Dwi Sri Wahyuni', 'enisbudi87@gmail.com', NULL, '$2y$12$ouYQ/q1HwKr/YIUQTF.Ytu9fGQLHUFX4coaPgGL6Ru.Bf0Bss8ChW', NULL, '2025-10-15 05:11:00', '2025-10-15 05:11:00', NULL, 'default', NULL),
(107, 'Windy Arum Ningtyas', 'windyberseri@gmail.com', NULL, '$2y$12$iAXsNyHNfTii4xvUch7CKu5L3XplEeEhNfh5WtJIB5TfyYQjR4koG', NULL, '2025-10-15 05:11:00', '2025-10-15 05:11:00', NULL, 'default', NULL),
(108, 'Alifionita Nur Hikmaningtyas', 'alifionita99@gmail.com', NULL, '$2y$12$j3WiDv8TniUlcdxrhELqg.m0cwaFeRl7JTCaamsYEZOyiUY2s77BG', NULL, '2025-10-15 05:21:48', '2025-10-15 05:21:48', NULL, 'default', NULL),
(109, 'LULIS RAHAYUNINGSIH', 'lulisrahayu70@gmail.com', NULL, '$2y$12$DJG3Cc9D30OxTj4KpOHCxetBnUctMfE0NNrCJgznEDe3DQkooQ/9a', NULL, '2025-10-15 05:21:51', '2025-10-15 05:21:51', NULL, 'default', NULL),
(110, 'Atik Mujiati', 'atiek8885@gmail.com', NULL, '$2y$12$6dkAqDhF7tXVepRxV/gOCeQ7glbWLf6M4AyHZ4UnBafZdFHWW79ea', NULL, '2025-10-15 05:21:52', '2025-10-15 05:21:52', NULL, 'default', NULL),
(111, 'Dewi Agustiningrum', 'agustiningrumdewi@gmail.com', NULL, '$2y$12$KJV8myS10OapD7oKftdj3Ozd4bDLaAb06wbdP/UIHUi7KdeaSSZ6i', NULL, '2025-10-15 05:21:52', '2025-10-15 05:21:52', NULL, 'default', NULL),
(112, 'Selina Fathriska Ramadani', 'selinafath71@gmail.com', NULL, '$2y$12$AmZ6X1shzQF86l8hdvDEregdbYmcRB.Y/Iw3/XF/fxvFN3mPJ0Yua', NULL, '2025-10-15 05:21:53', '2025-10-15 05:21:53', NULL, 'default', NULL),
(113, 'Rike indarwati', 'indarwati.rike96@gmail.com', NULL, '$2y$12$ADEsKrfoix4EKM.w7D4vhOFuFFGQiZLuqpUCXuz0gPYnsujcDVPNS', NULL, '2025-10-15 07:37:52', '2025-10-15 07:37:52', NULL, 'default', NULL),
(114, 'Eni Widiarti', 'eniwidya1712@gmail.com', NULL, '$2y$12$WKTIeCiXWiEQWF3eyc2OgeKiolqfHSqP2D.kge/oclTTBHqRxbzVe', NULL, '2025-10-15 07:51:28', '2025-10-15 07:51:28', NULL, 'default', NULL),
(115, 'Asri Wulandari Purnayudya', 'awpyud@gmail.com', NULL, '$2y$12$5Vdd4ypm8u25YxlQbLEFw.pxOwnnWNe/OlDXp1qqMeQYwdFkzxQ6K', NULL, '2025-10-15 07:59:37', '2025-10-15 07:59:37', NULL, 'default', NULL),
(116, 'Melinda Kristin', 'melindamelindakristin@gmail.com', NULL, '$2y$12$BKh13tWpLU7ih5EpE2dHju5uVKeFwdIc6QVOJ6mShWRJNZJTyKe7u', NULL, '2025-10-15 07:59:37', '2025-10-15 07:59:37', NULL, 'default', NULL),
(117, 'Fitriatin Yulaikah', 'yullshabreena@gmail.com', NULL, '$2y$12$BHi3j1coj6P72aU.fkca/OMawCLZcCPNldLo80D7xgsN/0eMsOgtm', NULL, '2025-10-15 07:59:37', '2025-10-15 07:59:37', NULL, 'default', NULL),
(118, 'Mila Amalia Damayanti', 'milaamaliad@gmail.com', NULL, '$2y$12$9z4C2x7cKQZYTRmUEcKEhe8W4BierNqiWuj8GWbLzgzBIiH0MCn4u', NULL, '2025-10-15 07:59:37', '2025-10-15 07:59:37', NULL, 'default', NULL),
(119, 'Desi harini', 'desiharini2021@gmail.com', NULL, '$2y$12$x59.9zZ2qMcpVTVd8PI0Vuu27266z/GxOiRNs/fjYQO.Mvzc/9Moe', NULL, '2025-10-15 07:59:38', '2025-10-15 07:59:38', NULL, 'default', NULL),
(120, 'Ani koirunisak', 'anikoirunisak5@gmail.com', NULL, '$2y$12$jo.C5tNZaC2SrjeuDUL6AONPJeskwPHTWJJKG/qASS.rgWJte1W8m', NULL, '2025-10-15 07:59:38', '2025-10-15 07:59:38', NULL, 'default', NULL),
(121, 'Christin Mairina Priandini', 'chrstn.mairina@gmail.com', NULL, '$2y$12$XwC82eiu0deX2FxwWw98V.gJTW0OT7getizuBD9FMtFQJjlfqNjC2', NULL, '2025-10-15 07:59:39', '2025-10-15 07:59:39', NULL, 'default', NULL),
(122, 'Dimas Zainul Umar Fahri', 'dimaszainulumarfahri@gmail.com', NULL, '$2y$12$bvvVSF.R0Nihmfiw0iLfCOKUGpWtqK8u7cLhiDFmY.pQlq58dOava', NULL, '2025-10-15 07:59:39', '2025-10-15 07:59:39', NULL, 'default', NULL),
(123, 'MOCHAMMAD REVALINO VARGAS', 'revalinovargas684@gmail.com', NULL, '$2y$12$eCYc/D/RJDm.gvLvqCo61OkRq1sCyeYUrZmCXFKfLYx8UVDL3AMaS', NULL, '2025-10-15 07:59:39', '2025-10-15 07:59:39', NULL, 'default', NULL),
(124, 'Indah Wulandari', 'indah.indahwulandari99@gmail.com', NULL, '$2y$12$Dx.Z.Wk17Lu2/wWmMrN1OeMPFY8rLhaG9Ky7bwukXzFopx6Rs9oeO', NULL, '2025-10-15 07:59:40', '2025-10-15 07:59:40', NULL, 'default', NULL),
(125, 'Oria Arda Bella', 'oriaardabella@gmail.com', NULL, '$2y$12$WQI.19aYr47s603UAl6H4ORkAIsyPo.59yM7fh/twCbhGAqfvtveu', NULL, '2025-10-15 07:59:40', '2025-10-15 07:59:40', NULL, 'default', NULL),
(126, 'Eka Pujiyanti', 'ekapujiyantitutut@gmail.com', NULL, '$2y$12$kjo6fKI/HEaVgL3N5d0n9u6vL1HTcSJD7gtqLEVh./rrdPwV2Quyy', NULL, '2025-10-15 07:59:40', '2025-10-15 07:59:40', NULL, 'default', NULL),
(127, 'Zulfikar Rifqi', 'zr2692@gmail.com', NULL, '$2y$12$rY3XylAaPkfuRHGiWatXD.0DxbzGOpHWXX9ZRnCTCsxPzQtjGWPIe', NULL, '2025-10-15 07:59:41', '2025-10-15 07:59:41', NULL, 'default', NULL),
(128, 'Avilia agustin', 'vilaagustin988@gmail.com', NULL, '$2y$12$7.pe6diWxXZTuZPxOnlkOO2H6xoyOulp5RIDuCkwBGPDBAuGXhpYm', NULL, '2025-10-15 07:59:41', '2025-10-15 07:59:41', NULL, 'default', NULL),
(129, 'Desi Puspita', 'desiathallah07@gmail.com', NULL, '$2y$12$bknX50P6xihuV.d0eHHg.u9FIM5dO080s4D9uGCCv/bfHm6Tn3dBq', NULL, '2025-10-15 07:59:41', '2025-10-15 07:59:41', NULL, 'default', NULL),
(130, 'Saiful arif', 'sawunkaconk@gmail.com', NULL, '$2y$12$EMQAUA6B/DubmN0Hi4g8m.zh6m.tEq4KFP2LE51ktj1LAxCwOMsuC', NULL, '2025-10-15 07:59:42', '2025-10-15 07:59:42', NULL, 'default', NULL),
(131, 'Ahmad Fariz Rahmadani', 'farizdani002@gmail.com', NULL, '$2y$12$fVancg7TDmYMw.taO1kFXeWvXRyvNooPTNa.bn74pC6biwQONIDkm', NULL, '2025-10-15 07:59:42', '2025-10-15 07:59:42', NULL, 'default', NULL),
(132, 'M. Rudi', 'bpssimitra@gmail.com', NULL, '$2y$12$lCuvNFyMOxueftreXDzlYuFSeHEmdLpbZi2Zowlbo4ZrkZsOxfYuC', NULL, '2025-10-15 07:59:42', '2025-10-15 07:59:42', NULL, 'default', NULL),
(133, 'Suliati', 'Mamacun42@gmail.com', NULL, '$2y$12$CoZ/tk1qjZmEFlVS4ij4puWlOpTADb6BDQRmCkRPua0q1lvZQxJ8S', NULL, '2025-10-15 07:59:43', '2025-10-15 07:59:43', NULL, 'default', NULL),
(134, 'Lidya Pradina Ayuningtyas', 'lidyaayuningtyas@gmail.com', NULL, '$2y$12$YNqVh5/LS7Sd42Bn4VrPUedGYmRkwOKnnacYegeOXwZ7yuTyMcPdu', NULL, '2025-10-15 07:59:43', '2025-10-15 07:59:43', NULL, 'default', NULL),
(135, 'Yulli Handayani', 'handafani@gmail.com', NULL, '$2y$12$k3nmaUxutPZXqwUa8Sps/u8SvMM0s/9GcSJsgheBJqY47Q.naklvq', NULL, '2025-10-15 07:59:43', '2025-10-15 07:59:43', NULL, 'default', NULL),
(136, 'Indrawati', 'inoxin79@gmail.com', NULL, '$2y$12$QbLnK1XuYtJD6c6Ihb4YgOf65EJCg.qc/JrTS3vHgxW5POdf5FNwy', NULL, '2025-10-15 07:59:44', '2025-10-15 07:59:44', NULL, 'default', NULL),
(137, 'Ferry Hardiansyah Hadi Seputra', 'fhardiansyahhadis@gmail.com', NULL, '$2y$12$bYvnVL5IvXxGIqovAIRDI.TBdSKLjVN6jcTode7ll0E2A6/gl8w0i', NULL, '2025-10-15 07:59:44', '2025-10-15 07:59:44', NULL, 'default', NULL),
(138, 'Arvina', 'Arvinamakmurjaya@gmail.com', NULL, '$2y$12$grREI3MwblEh93Zxkma.H.WdUO/8NmLT7CsKsFoDj1e0tG/0CtFpW', NULL, '2025-10-15 07:59:44', '2025-10-15 07:59:44', NULL, 'default', NULL),
(139, 'Rr. Nanien Setyaningsih', 'nanien_setyaningsih@yahoo.com', NULL, '$2y$12$rHl4UooP7FgAoRrlO6e2hemrV0DsSyjM2XmPTBNqlQfVG1Km43mCa', NULL, '2025-10-15 07:59:45', '2025-10-15 07:59:45', NULL, 'default', NULL),
(140, 'Titania Franciska Dewi', 'Titaniafranciska11@gmail.com', NULL, '$2y$12$kiByzIZDAi.7fkzQBUEPA.GkgTUo4apHzUvYK4qLLNegATvby8TVq', NULL, '2025-10-15 07:59:45', '2025-10-15 07:59:45', NULL, 'default', NULL),
(141, 'Purwatiningsih', 'galuh.tietie@gmail.com', NULL, '$2y$12$xkoeM.hHZs5l571RZybM5.P41lfF0embuWOfDOyTIocYxOSOhRura', NULL, '2025-10-15 07:59:45', '2025-10-15 07:59:45', NULL, 'default', NULL),
(142, 'Ovita Sellgi Liesdamaiyanti', 'ovsellgi@gmail.com', NULL, '$2y$12$RAZZXQnYZvDuFko294h74OREUHLsN2M9aeGU2PScLUVulkYQ5CZ2K', NULL, '2025-10-15 07:59:46', '2025-10-15 07:59:46', NULL, 'default', NULL),
(143, 'Sofyan, S.Ap', 'isofyan0381@gmail.com', NULL, '$2y$12$Evi5iHTwBx7cT07cUtnCK.l3w3ryEzu/umbhpCuQ/OSyJV5A219ea', NULL, '2025-10-15 07:59:46', '2025-10-15 07:59:46', NULL, 'default', NULL),
(144, 'DWI YOES TINUS PRIHANTO', 'Yoestinusdwi@gmail.com', NULL, '$2y$12$rKsb5yU34AJUDWQ0jsudfuFul2CagGfdxJB/tJWpcFOSDd/XfA.Cu', NULL, '2025-10-15 07:59:46', '2025-10-15 07:59:46', NULL, 'default', NULL),
(145, 'Adi Khisbul Wathon', 'kissbull@gmail.com', NULL, '$2y$12$YntZsfsNLNIWMliATN1zoOHzDX.PqDLRGi2o.oO11qMP.FU9YO.cy', NULL, '2025-10-15 07:59:47', '2025-10-15 07:59:47', NULL, 'default', NULL),
(146, 'Novi Inisyahika', 'samjir0n46@gmail.com', NULL, '$2y$12$Ak2.Gu2jIAKA2karBFlUTubBOBo81uuOCPd3KqPBiGg8v7pv7XN06', NULL, '2025-10-15 07:59:47', '2025-10-15 07:59:47', NULL, 'default', NULL),
(147, 'Idham Kholiq', 'idhamcorner@gmail.com', NULL, '$2y$12$JaNnVV9f.YGr7gZrgIYCuuirsM3lBR/660TMNeT9CafYEbelIYddy', NULL, '2025-10-15 07:59:47', '2025-10-15 07:59:47', NULL, 'default', NULL),
(148, 'Mulyono Arief', 'mulyonoarief9@gmail.com', NULL, '$2y$12$DfYiRqmu0zhwwK03b2nRr.o3cziDgKfVKrFf76p2YOLsqcYnZrEFy', NULL, '2025-10-15 07:59:48', '2025-10-15 07:59:48', NULL, 'default', NULL),
(149, 'Sugeng Hari Priyanto', 'ngekhharipriyanto@gmail.com', NULL, '$2y$12$kQlzT4EGaDpRe6wut81myuUw9xcEDgZ5rpbBJhCRzqA9fDOEekMFq', NULL, '2025-10-15 07:59:48', '2025-10-15 07:59:48', NULL, 'default', NULL),
(150, 'Moh Kristiawan Trimaryono', 'kristiawan.trimaryono86@gmail.com', NULL, '$2y$12$XYCLGar0jYJR4M.VJV2CZOQ30ErOTuzp5.VHuo608ZUxrHDUuYNHq', NULL, '2025-10-15 07:59:48', '2025-10-15 07:59:48', NULL, 'default', NULL),
(151, 'M. Pancalaharti', 'pancamashuri@gmail.com', NULL, '$2y$12$/6lY9xOQhLhyzUXmjfdrb.VgXXlZdeO/4D8hVBwiNZ80brK3AOkjW', NULL, '2025-10-15 07:59:49', '2025-10-15 07:59:49', NULL, 'default', NULL),
(152, 'Nani Puji Rahayu', 'Rahayu76nani@gmail.com', NULL, '$2y$12$4PrXQ0G6sjvtw/RgmdVbLOLe.YAn7ukvsbyW7/wCg/7aCYl8Y03aC', NULL, '2025-10-15 07:59:49', '2025-10-15 07:59:49', NULL, 'default', NULL),
(153, 'BENNY RIYANTO', 'bennyriyan@gmail.com', NULL, '$2y$12$OJV9O7uYhvSmgKdGEKWt.ec8RIaTVAHe/34DveP5qUs9KKs3zu1Ae', NULL, '2025-10-15 07:59:50', '2025-10-15 07:59:50', NULL, 'default', NULL),
(154, 'Siti Cholifah', 'siticholifah0607@gmail.com', NULL, '$2y$12$FUV4sgGA6THXUfWCi067gekJX/JebwNFmLumi83DPJ5cZcP8WmVpW', NULL, '2025-10-15 07:59:50', '2025-10-15 07:59:50', NULL, 'default', NULL),
(155, 'Nurul Siti Fatimah', 'adityanurulnirwan@gmail.com', NULL, '$2y$12$M5aovRFDh9ET1vayTtmQoeGsaucYpdySzzUl6QjmKWS33HOzBmbZi', NULL, '2025-10-15 07:59:50', '2025-10-15 07:59:50', NULL, 'default', NULL),
(156, 'Saiful Akbar', 'akbarnacal@gmail.com', NULL, '$2y$12$2EQZUiU8pM1gqlECI1uFAewNiTGk4TMO5j/G.jgrOc4wmbk0/9KCa', NULL, '2025-10-15 07:59:51', '2025-10-15 07:59:51', NULL, 'default', NULL),
(157, 'M. Asny Fajri Ulama\'i', 'fajrey12@gmail.com', NULL, '$2y$12$XhYmAosb2t5wgSUqu3nOC.npEsmN0NTT.bxZCIRwz9.dUBc.vubAO', NULL, '2025-10-15 07:59:51', '2025-10-15 07:59:51', NULL, 'default', NULL),
(158, 'Moch.Heri Utomo', 'ireh.ceko@gmail.com', NULL, '$2y$12$L.lASbk7l/2VMmd3jyHeduJU56H6G0JZm.Y1ZCuo6rdXKpyyIslmu', NULL, '2025-10-15 07:59:52', '2025-10-15 07:59:52', NULL, 'default', NULL),
(159, 'Catur Sisworini', 'rinicatur09@gmail.com', NULL, '$2y$12$DbzoXmBX4Qm5rJLA0v7ofOJzLtjDXXuJH68MtlmCCiJcDrTg76PE6', NULL, '2025-10-15 07:59:52', '2025-10-15 07:59:52', NULL, 'default', NULL),
(160, 'Vicky Prasetia Bakti', 'ekiviky@gmail.com', NULL, '$2y$12$isXZshgK2xMsSK7lyLCnkOcR0I.vTbUoEX6aE6Xdr9eB70hYsB7GC', NULL, '2025-10-15 07:59:52', '2025-10-15 07:59:52', NULL, 'default', NULL),
(161, 'Kadang Pancoro', 'kadangpancoro@gmail.com', NULL, '$2y$12$ARNhLIwzdbzK5RRLk1zCH.jIUE7HMAOsi023AzhUggvSaqLRsKIee', NULL, '2025-10-15 07:59:53', '2025-10-15 07:59:53', NULL, 'default', NULL),
(162, 'Akhmad Budi', 'akhmadbudidg77@gmail.com', NULL, '$2y$12$VR9ZsZRzUsEm.XWRTjpAaupIDlOV7jgal9TRHWAA2CvYSUF2KLw4O', NULL, '2025-10-15 07:59:53', '2025-10-15 07:59:53', NULL, 'default', NULL),
(163, 'Woro Ratih Andayani', 'woro.dedykayana@gmail.com', NULL, '$2y$12$Lt5SgDHCACE1gQ/WaZoR5exqswaCVgFwQAJgrlzgTWx.ozPAm6RJO', NULL, '2025-10-15 07:59:53', '2025-10-15 07:59:53', NULL, 'default', NULL),
(164, 'Rusmiana', 'rusmianatutut@gmail.com', NULL, '$2y$12$Xv9oO.JQtHEmxiJLbfdAz.aCARHptKDmlydoYXEoPc3m75qYbRmEu', NULL, '2025-10-15 07:59:54', '2025-10-15 07:59:54', NULL, 'default', NULL),
(165, 'Dian Purwanti', 'dianpurwanti49@gmail.com', NULL, '$2y$12$S1pj2Z3P8ZryYPBYXdkK..LhbZQeQExKszswLzVvjeUX4LiXHkdbC', NULL, '2025-10-15 07:59:54', '2025-10-15 07:59:54', NULL, 'default', NULL),
(166, 'LAILATUL FADJRIJAH', 'lfadjrijah@gmail.com', NULL, '$2y$12$e7h/ZrEnDi.m9a6fiPRA2.SZMCCJpzYwn/lKEbCOaDi2aHSrwwzdi', NULL, '2025-10-15 07:59:54', '2025-10-15 07:59:54', NULL, 'default', NULL),
(167, 'Nur chasanah', 'nurpsm3@gmail.com', NULL, '$2y$12$YfnGPy/Ss2rP1x0D5zrfdOyUpfeMH8kvhQk3QUkDp5I1CsJZvDPNy', NULL, '2025-10-15 07:59:55', '2025-10-15 07:59:55', NULL, 'default', NULL),
(168, 'Aqila Nur Rahmalia', 'aqilanr97@gmail.com', NULL, '$2y$12$/6/CwvC74pdTUYdR8emvI.hz3vHEb9A8hMCcJOCAJzggOBqoEVQdG', NULL, '2025-10-15 07:59:55', '2025-10-15 07:59:55', NULL, 'default', NULL),
(169, 'Muhammad Adam Dairis', 'muhadam1220@gmail.com', NULL, '$2y$12$kd1BKOWBrYBk4qYRcqYaGeKGTvvGmuQZeVPEPEivxuyJO8p6kT9A.', NULL, '2025-10-15 07:59:55', '2025-10-15 07:59:55', NULL, 'default', NULL),
(170, 'Anang Maret Tri Basuki', 'alpasigma69@gmail.com', NULL, '$2y$12$ZoNJx6OZl6dfNa/AueCc0.ab3/0xWEWvzzwj2q7lsZnTz6SA5OKOC', NULL, '2025-10-15 07:59:56', '2025-10-15 07:59:56', NULL, 'default', NULL),
(171, 'CANDRA SRI UTAMI', 'candrasriutamiu61@gmail.com', NULL, '$2y$12$/vLQQ5WFyySDuifEms8K..ZgTfe3oJ2.8FNvCleBzkl8a7pUsqUdG', NULL, '2025-10-15 07:59:56', '2025-10-15 07:59:56', NULL, 'default', NULL),
(172, 'M. Hafizh Al Hanif, SE.', 'hafisnsi@gmail.com', NULL, '$2y$12$LVlMZ/0fDj8fUZMWKBWjSeQVU3A0VQojMXu7VX9hZDSjDz3ivgOhi', NULL, '2025-10-15 07:59:56', '2025-10-15 07:59:56', NULL, 'default', NULL),
(173, 'SRI ASIH', 'asri50526@gmail.com', NULL, '$2y$12$sIZymV0qUj2oZ3aHRktG9u2WrKnNE7cCxhB0FPiS9J5HY3tR9M6dO', NULL, '2025-10-15 07:59:57', '2025-10-15 07:59:57', NULL, 'default', NULL),
(174, 'Rani Karlina', 'leenaran@yahoo.com', NULL, '$2y$12$/9aXgAgOl7piuES2vyTVsu1AqpRNylwtsXTFx0ib5AeoLWLAdQx.2', NULL, '2025-10-15 07:59:57', '2025-10-15 07:59:57', NULL, 'default', NULL),
(175, 'HERDYAN APRIANTO', 'Dianapri460@gmail.com', NULL, '$2y$12$WrYlFtfe0f4f8AZjqrRyKORxmyXr5fqDi7OV7CIWRkuWs/V.1WTGu', NULL, '2025-10-15 07:59:57', '2025-10-15 07:59:57', NULL, 'default', NULL),
(176, 'Seno Febriyanto', 'senofebryanto@gmail.com', NULL, '$2y$12$6bQhy0U6AE/ibd1I0v8e0uTiVO0gw1xCgp8NtpBasmy8phqp6NWWe', NULL, '2025-10-15 07:59:57', '2025-10-15 07:59:57', NULL, 'default', NULL),
(177, 'Moch syarifudin hidayatullah', 'asoy9112@gmail.com', NULL, '$2y$12$U5ta5Pf8nGAEXokTiZ7Ko.AjHRAX4v6vBvsTnR0olaB8RDwcNbRJO', NULL, '2025-10-15 07:59:58', '2025-10-15 07:59:58', NULL, 'default', NULL),
(178, 'Witria Linawati', 'witria.linawati.id@gmail.com', NULL, '$2y$12$hkMnPHmcYqOQ5PMrJNudV.OqwhItgSrdnWE5.qPP1E2UzuuUft49u', NULL, '2025-10-15 07:59:58', '2025-10-15 07:59:58', NULL, 'default', NULL),
(179, 'Hargi Pranoto', 'hargipranoto96@gmail.com', NULL, '$2y$12$vImKWWAj.mF/K/Bqi.JtyuWb2YU8PAlf/T8261Ec.lh2LGLn/lj.S', NULL, '2025-10-15 07:59:58', '2025-10-15 07:59:58', NULL, 'default', NULL),
(180, 'SUNARSIH', 'sunnarsih494@gmail.com', NULL, '$2y$12$oCRvgzErdT3abUBLfsjuXeTC8OJN6h53LXRiMJ8VfQcfPbtw4Awoa', NULL, '2025-10-15 07:59:59', '2025-10-15 07:59:59', NULL, 'default', NULL),
(181, 'Ani mutmainah', 'almozaani@gmail.com', NULL, '$2y$12$FPrE7VjXNxI6JfmpfKPbqeYiLNq//rS7Jid67dmf4uI5I11Ak4GES', NULL, '2025-10-15 07:59:59', '2025-10-15 07:59:59', NULL, 'default', NULL),
(182, 'Ina Fayati', 'inafayati@gmail.com', NULL, '$2y$12$gCAR2Y0k/g0jq93sDhswheHBpIQe/2nxNKjG4RgzVfcNoJ5JMwxiW', NULL, '2025-10-15 07:59:59', '2025-10-15 07:59:59', NULL, 'default', NULL),
(183, 'CHANDRA WIDY HARTATO', 'wchandra1190@gmail.com', NULL, '$2y$12$2BCBGxho0OXX6tUD7jTGQOk/.LYaJmrWSdbjWhSilDjM3snAoODnu', NULL, '2025-10-15 08:00:00', '2025-10-15 08:00:00', NULL, 'default', NULL),
(184, 'Ignasius Tri Hariyono', 'm.trihariyono@gmail.com', NULL, '$2y$12$TtzIMIdrIdo3g9v8tlEnz.3Is.Mfdwnf20MR20HYlFIWcgMgYT7r2', NULL, '2025-10-15 08:00:00', '2025-10-15 08:00:00', NULL, 'default', NULL),
(185, 'Umbar Wulandari', 'rengganisumbarwulandari@gmail.com', NULL, '$2y$12$opVo.mU6Xe7cXPM2UvHwYuRH0jKmaIzbM7KmSI1ZOX90eu8CL4d8q', NULL, '2025-10-15 08:00:00', '2025-10-15 08:00:00', NULL, 'default', NULL),
(186, 'Mira Kurniasari', 'Kurniasarimira74@gmail.com', NULL, '$2y$12$ZA2G3D0FIk8Ng1SpWdx2zuzjRZkP/t/dwMo9yGpWgdqFAH86EmArm', NULL, '2025-10-15 08:00:00', '2025-10-15 08:00:00', NULL, 'default', NULL),
(187, 'Novi mahmudah lailatus stani', 'Staninovi5@gmail.com', NULL, '$2y$12$Uh62kpiuPJ3U8YT8TTzVfuc8kmL9qSAWGl3OzmHr8fv5LBUZi5oL6', NULL, '2025-10-15 08:00:01', '2025-10-15 08:00:01', NULL, 'default', NULL),
(188, 'Elly Herlinda', 'ellyherlinda3@gmail.com', NULL, '$2y$12$kZPTDaAhnUxSoP7YT3XO8OOnHIecuHeF26M6nw6oAadNnS7KAo.RC', NULL, '2025-10-15 08:00:01', '2025-10-15 08:00:01', NULL, 'default', NULL),
(189, 'DZIKRI MUDHOFAR', 'dzikrimudhofar04@gmail.com', NULL, '$2y$12$sueMRS4.GIyA.MCMJ3mY8e6/2uNJBuBLfnYAD/n8AhK7L2dKvdtD.', NULL, '2025-10-15 08:00:01', '2025-10-15 08:00:01', NULL, 'default', NULL),
(190, 'Ongki Antonio', 'spiderpakman182@gmail.com', NULL, '$2y$12$Ql9NOVV91sUUJe.3YnbbjuP0sMAw3xzboBSLW3WMwsXmkuTaxwFqW', NULL, '2025-10-15 08:00:02', '2025-10-15 08:00:02', NULL, 'default', NULL),
(191, 'Erlin Prasetyowati', '08170525730.a@gmail.com', NULL, '$2y$12$bAgWIH123OeRT/M54WonV.SX3kaiVUmTdV9uxjwO80p.LLLqtJUyO', NULL, '2025-10-15 08:00:02', '2025-10-15 08:00:02', NULL, 'default', NULL),
(192, 'Sri Indrayani', 'indrayanisri203@gmail.com', NULL, '$2y$12$s.VHH1FrpBywPMVTzNC4VOd7Y.ZNCwJ4VtvmYiGhbgh.HKiM8g/SO', NULL, '2025-10-15 08:00:03', '2025-10-15 08:00:03', NULL, 'default', NULL),
(193, 'NELA DWINGUDIYAHSARI', 'nelakankim@gmail.com', NULL, '$2y$12$WtfokAhlcJaYT0zkDFmmz.gb9rqK7Dhj2Q.6lcMkX/HU5itUKtHCG', NULL, '2025-10-15 08:00:04', '2025-10-15 08:00:04', NULL, 'default', NULL),
(194, 'Lensi Rachmawati', 'lensirachma40@gmail.com', NULL, '$2y$12$TA1Wzun.HtYsEIjBWvc1hOl6RHOzsAysw7x51vN4sb9theCOM8kk2', NULL, '2025-10-15 08:00:04', '2025-10-15 08:00:04', NULL, 'default', NULL),
(195, 'Yulfaridah Eka Ariani', 'yulfaridah9@gmail.com', NULL, '$2y$12$13KcqgnTV/TSl74x58pRGeXvE3sUgnVSh2IFdKiQkETeJGXfMXAe.', NULL, '2025-10-15 08:00:04', '2025-10-15 08:00:04', NULL, 'default', NULL),
(196, 'Ratrin blester linata', 'blesterratrin@gmail.com', NULL, '$2y$12$jyGSvqr95sHvydDCwps4Funi4EM.gUvB.erQb5/Zf651W.v5ZqF82', NULL, '2025-10-15 08:00:05', '2025-10-15 08:00:05', NULL, 'default', NULL),
(197, 'Inawan Pamoengkas', 'Gambyohgamby@gmail.com', NULL, '$2y$12$EXpSpg8Hk3WKtdaFsOakCebzsPcBqNKZgscZZmXQSa6BeVVsc213a', NULL, '2025-10-15 08:00:05', '2025-10-15 08:00:05', NULL, 'default', NULL),
(198, 'Kartika Dwi Ariyani', 'Kartikada04@gmail.com', NULL, '$2y$12$16z1mfENaTHFiy41gspxH.FJn5Da6wxYtP0v0GcVTKpUfv8NPBuN2', NULL, '2025-10-15 08:00:07', '2025-10-15 08:00:07', NULL, 'default', NULL),
(199, 'Intan Eka Purnama Sari', 'Abyanatar@gmail.com', NULL, '$2y$12$QaEHCiMHwx/01tTBuXzW3e5PLyzDA0mUDl9NqmZmxP1FJJahQzb/C', NULL, '2025-10-15 08:00:07', '2025-10-15 08:00:07', NULL, 'default', NULL),
(200, 'Meryta Devi Anggraini', 'merytadevi46@gmail.com', NULL, '$2y$12$4Hp57qQwlfLwSRYyJyKoI.Ez/6mcpqe9DnbJsZ7qkeJdxrVghpc/e', NULL, '2025-10-15 08:00:07', '2025-10-15 08:00:07', NULL, 'default', NULL),
(201, 'Noer Cahyono Setyawan', 'gangsarsablon@gmail.com', NULL, '$2y$12$qVA09L.DGSZECCssLOouTun3kVszoh0W0RRfX/1oEiDpTR32DpPQm', NULL, '2025-10-15 08:00:08', '2025-10-15 08:00:08', NULL, 'default', NULL),
(202, 'Aisni Nurul Rochmah', 'aisni.rochmah@gmail.com', NULL, '$2y$12$Peo3adwHRHaimPm/IeEmg.QPYzVLNLGw/7Oap.7ZcM0L.kGcknUFa', NULL, '2025-10-15 08:00:08', '2025-10-15 08:00:08', NULL, 'default', NULL),
(203, 'Irfan Santosa', 'Irfansantoso3084@gmail.com', NULL, '$2y$12$Aym8xBbg/p//o5iVmYOjm.50u7qXRmX/zFLoB4hBcZDbmC5f3tkXC', NULL, '2025-10-15 08:00:09', '2025-10-15 08:00:09', NULL, 'default', NULL),
(204, 'Rakryan Shelbidilla', 'rakryan52@gmail.com', NULL, '$2y$12$sT6Bl..Y8SEdoff5YveCregOJTIWRPm6XeaEdBzFoncdqFn/w29u6', NULL, '2025-10-15 08:00:09', '2025-10-15 08:00:09', NULL, 'default', NULL),
(205, 'Faisal Ahmad Rodhi', 'faisalahmad1697@gmail.com', NULL, '$2y$12$Un5oC51L48yERRltgSlDGeED.VKrjNVAErKg.WLXxr7P10t8btixa', NULL, '2025-10-15 08:00:10', '2025-10-15 08:00:10', NULL, 'default', NULL),
(206, 'MUSLIHIN', 'caliztamazta@gmail.com', NULL, '$2y$12$bPWpVztlgZS9pPchqOv8VOPLkeMRHT0MLsA9TC.s/H84CSTRnIZD.', NULL, '2025-10-15 08:00:10', '2025-10-15 08:00:10', NULL, 'default', NULL),
(207, 'VANNI PUJI HERMAWATI', 'vannipuji30@gmail.com', NULL, '$2y$12$Nd20nv6XTs7kaTmEZseWl.4dGqgyLoN32gbsYGGzfESWinCzmR9.6', NULL, '2025-10-15 08:00:10', '2025-10-15 08:00:10', NULL, 'default', NULL),
(208, 'Azizah', 'zhizha2012@gmail.com', NULL, '$2y$12$RbwQgMFcgtWKLJm3drbbO.yFNMaLPYNE7BLLoiuU3Q/CAqkD65Ale', NULL, '2025-10-15 08:00:11', '2025-10-15 08:00:11', NULL, 'default', NULL),
(209, 'Eryk Sareyang Hasan', 'wgrp2009@gmail.com', NULL, '$2y$12$c15QzqzwkYV3XilUNkYKLuiBiEf7Gx.uEt/pUSQHZ6FyLsys7vA6.', NULL, '2025-10-15 08:00:11', '2025-10-15 08:00:11', NULL, 'default', NULL),
(210, 'Wahyu Ika Setyaningsih', 'wahyuikas1980@gmail.com', NULL, '$2y$12$SMO6s0sK2Tk6VXM9PjcASOVlavFDXmn7c6O5YyqVXAQGGANra3OUe', NULL, '2025-10-15 08:00:12', '2025-10-15 08:00:12', NULL, 'default', NULL),
(211, 'Wahdaniar Sri Utami', 'Wahdaniar.utami@gmail.com', NULL, '$2y$12$2MhvoqRvLwVcs5SDDyV.HetnAhp/RK03vCidou74EEu3LvgBRmvw.', NULL, '2025-10-15 08:00:12', '2025-10-15 08:00:12', NULL, 'default', NULL),
(212, 'Titik Indrawati', 'titikindrawati0507@gmail.com', NULL, '$2y$12$pna8/sRJ4Yz.8GsnwVv.l.auHaD0xaKVgppg6/kYvYaAGzUGCP.YG', NULL, '2025-10-15 08:00:13', '2025-10-15 08:00:13', NULL, 'default', NULL),
(213, 'Raihan Adenoer Ekaputra', 'raihanadenoerekaputra@gmail.com', NULL, '$2y$12$XiTbPJ0WYFnw2T70RHJMdeZhmIv5jhREO894P7Zu9wK0xzU97Q88G', NULL, '2025-10-15 08:00:13', '2025-10-15 08:00:13', NULL, 'default', NULL),
(214, 'Marliya Ika Irmawati', 'ikasahroni@gmail.com', NULL, '$2y$12$1CUQRODzLBCNUGINnUw.pudrUQN/tYKHb20c4yD1yRTd3CeltN5OS', NULL, '2025-10-15 08:00:13', '2025-10-15 08:00:13', NULL, 'default', NULL),
(215, 'NURMA KURNIAWATI', 'nurmakurnia0403@gmail.com', NULL, '$2y$12$Vf9hQmRk0jDh6fBoIENXMuvqHv6SBmhXyW6TiMYcE/4/0ybz/Azfu', NULL, '2025-10-15 08:00:14', '2025-10-15 08:00:14', NULL, 'default', NULL),
(216, 'Sudarmi', 'pinkynio75@gmail.com', NULL, '$2y$12$.nMILZmLLGfTYbFRu6h26.y5FkUrqBl2D31UOPuaCiZ4qo.SPfoYC', NULL, '2025-10-15 08:00:14', '2025-10-15 08:00:14', NULL, 'default', NULL),
(217, 'Nur Farida', 'rezqianorafardhan20@gmail.com', NULL, '$2y$12$b8RUUzdYA42y8rd3JTpVAO12PTKGWpuy0DyOn6X.sdd876yeZWQea', NULL, '2025-10-15 08:00:14', '2025-10-15 08:00:14', NULL, 'default', NULL),
(218, 'FATCHIYAH SE', 'fatchiyah1965@gmail.com', NULL, '$2y$12$kl.KxoT3..PO8nGQlLDhOuYRhMNkaFyc1BxsX/BAS8qkXro2wfgqS', NULL, '2025-10-15 08:00:14', '2025-10-15 08:00:14', NULL, 'default', NULL),
(219, 'Ida Kurnia wati', 'idakurniawati991@gmail.com', NULL, '$2y$12$tDX6izQBzFVsOE3SmrsIZuTRapwGtIhqx83f/DddgnRPNjgMEa1cC', NULL, '2025-10-15 08:00:16', '2025-10-15 08:00:16', NULL, 'default', NULL),
(220, 'Chiqmatus Sania', 'Sofyanaprianto01@gmail.com', NULL, '$2y$12$WssuZ2SMcyqcxzs5Ihw1nOsJv29MrhF5asNNKxHYo6l/u.bVwrzF2', NULL, '2025-10-15 08:00:16', '2025-10-15 08:00:16', NULL, 'default', NULL),
(221, 'FEMMY FIRMAN WIGATI', 'wigatifemmy@gmail.com', NULL, '$2y$12$U8U0p1wqjTzNjVfiWGj3M.vGJYzoo7tkFltCi2.553QsxSNJs51N6', NULL, '2025-10-15 08:00:16', '2025-10-15 08:00:16', NULL, 'default', NULL),
(222, 'RATIH MAYKURNIA', 'ratihmaykurnia1@gmail.com', NULL, '$2y$12$RpjgAPwG3TaXc4dXypuAXeqdukLKrWuvY023yW71hP.AMy1KcSaSe', NULL, '2025-10-15 08:00:17', '2025-10-15 08:00:17', NULL, 'default', NULL),
(223, 'Risha alfa safitri', 'Rishaalfasafitri@gmail.com', NULL, '$2y$12$SZnrAFkD/uRsqfcmIo9qy.2OSLOognZP78myyP629UfhZcK7jxtVu', NULL, '2025-10-15 08:00:18', '2025-10-15 08:00:18', NULL, 'default', NULL),
(224, 'Wiwik Indriani', 'wiwikindriani13@gmail.com', NULL, '$2y$12$f.DCLR8kut0.T.l3/LvBHuq1vjY.Tn/.xAkR/ulVpwhyRI8QY.qQG', NULL, '2025-10-15 08:00:18', '2025-10-15 08:00:18', NULL, 'default', NULL),
(225, 'RIZCHA VERDA AMARILLO', 'rizchaverda94@gmail.com', NULL, '$2y$12$yvV2wt7XCKM7GuqtAtjpAe5qsyav2s.IkBAFKtDYHUM25L0P2d83C', NULL, '2025-10-15 08:00:18', '2025-10-15 08:00:18', NULL, 'default', NULL),
(226, 'EVIE RESTU WILUJENG', 'everestuui@gmail.com', NULL, '$2y$12$1JIPlRUMJ9YEskPCKv5RnuSt7vsZtMwZj.BO8.f8TrOKs8iYimdHK', NULL, '2025-10-15 08:00:19', '2025-10-15 08:00:19', NULL, 'default', NULL),
(227, 'Titik nurhajati', 'Plongkowati9@gmail.com', NULL, '$2y$12$ANI.yJz1edF.anx50/YL9e6E/O7iw7qsLAUQBmv7Vpj/gKAasj6qO', NULL, '2025-10-15 08:00:19', '2025-10-15 08:00:19', NULL, 'default', NULL),
(228, 'Rahmah nur cahyani', 'rahmahnurcahyani@gmail.com', NULL, '$2y$12$sQ7D9PL14f/4wdfinguwNuOkptxYMbnDGSWu12lcaBjvU0uBJO5QG', NULL, '2025-10-15 08:00:19', '2025-10-15 08:00:19', NULL, 'default', NULL),
(229, 'ERIA FEBRI SUSANTI', 'eriasusantiyuhu@gmail.com', NULL, '$2y$12$RVWOVqKkMFQGSifw5d12rOucY2zlg5LKc6wJRkvN/xCfDIqwmgw2S', NULL, '2025-10-15 08:00:20', '2025-10-15 08:00:20', NULL, 'default', NULL),
(230, 'Mitha Munawaroh', 'panich2005@gmail.com', NULL, '$2y$12$2Te5H4XqiNaunx3RfQXieeD2XREv06TLDy53ROqD44vRjCOk7Mfr.', NULL, '2025-10-15 08:00:20', '2025-10-15 08:00:20', NULL, 'default', NULL),
(231, 'Cindy Christiningsih Neno', 'cindyneno897@gmail.com', NULL, '$2y$12$0cVbNStJj4LIj8eDtpA.y.4KxCWcwhq4JiSAbpCb2YpwC.ei.QkUG', NULL, '2025-10-15 08:00:20', '2025-10-15 08:00:20', NULL, 'default', NULL),
(232, 'Reny Diana', 'renydiana05@gmail.com', NULL, '$2y$12$48WBAjZoP3p32RoUx7J63O0AqHWPP2nXwb8mMKm4YQd7X3qoJ2wTG', NULL, '2025-10-15 08:00:21', '2025-10-15 08:00:21', NULL, 'default', NULL),
(233, 'Atik purwati', 'atikp3@gmail.com', NULL, '$2y$12$bOqGmYKbzYBBxouVQoo/Ru.0CYuOQ6uc2LfjJ2vI5dyXAX8mDzyBS', NULL, '2025-10-15 08:00:21', '2025-10-15 08:00:21', NULL, 'default', NULL),
(234, 'Tri Wahyuni', 'khareem3333@gmail.com', NULL, '$2y$12$iUXQJbxu7lrKhnWNcSSfkeP8GxDjjq9opqf5Kilk6OcL0/jWWbNOC', NULL, '2025-10-15 08:00:22', '2025-10-15 08:00:22', NULL, 'default', NULL),
(235, 'Bella Novanda', 'akyuncadhangan@gmail.com', NULL, '$2y$12$Xh2zcEhDfe/.Ucg3InmD4upQIIyK7a3As4eJsGFVu6cZG9GMU11F.', NULL, '2025-10-15 08:00:22', '2025-10-15 08:00:22', NULL, 'default', NULL),
(236, 'Moh Agus Romadhoni', 'romadhoni.mlg0780@gmail.com', NULL, '$2y$12$eUB.Y.b1i62ddTDhqx1cF.kYseCD/2Ciuejd5QGyBSfAOTXsLaXUi', NULL, '2025-10-15 08:00:22', '2025-10-15 08:00:22', NULL, 'default', NULL),
(237, 'Yusnia Rizky Amalia', 'Yusniara88@gmail.com', NULL, '$2y$12$jbByKwvrFS5nKnGOEYLBaONs5X/8kovko5jbqWxqFNQVuytlOGzM.', NULL, '2025-10-15 08:00:23', '2025-10-15 08:00:23', NULL, 'default', NULL),
(238, 'SOEHERIS', 'herissoe@gmail.com', NULL, '$2y$12$ENf0.V/UWndAC3bGMlt6Wu30ncgBssPLD.rVXqr1s/YI.ZzO0uteq', NULL, '2025-10-15 08:00:23', '2025-10-15 08:00:23', NULL, 'default', NULL),
(239, 'Angela Ratih Kusuma Andari, SE', 'rkaangela12@gmail.com', NULL, '$2y$12$zFzpxS8hRDyLaalAZUjpPOHcydVP8Jyi6q9cIqSP6qN7v6K/aKGrm', NULL, '2025-10-15 08:00:24', '2025-10-15 08:00:24', NULL, 'default', NULL),
(240, 'Warti ratna ikawati', 'Ikawatiratna78@gmail.com', NULL, '$2y$12$SiweXZzn0uYc6bLac1xT8.n0vU7qWHKGwbHDbGKGNJIfo/aNvBQPu', NULL, '2025-10-15 08:00:25', '2025-10-15 08:00:25', NULL, 'default', NULL),
(241, 'Yuny Damayanti', 'lagilagiveronica@gmail.com', NULL, '$2y$12$471CHnM6VuEZJdWhAUN7Ye.SzeyAqMltU2cK4w4LJfs4a7E4KHehe', NULL, '2025-10-15 08:00:25', '2025-10-15 08:00:25', NULL, 'default', NULL),
(242, 'Hanik mashuda', 'Hanikmashuda@gmail.com', NULL, '$2y$12$vNzQSMVHertCKFKyi.BXYeBdq2w3RIRZtx2dVnVrBEPTDy4mYJ9Uu', NULL, '2025-10-15 08:00:25', '2025-10-15 08:00:25', NULL, 'default', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar_url`, `theme`, `theme_color`) VALUES
(243, 'Hanang Asmuntoro', 'kawulohanang@gmail.com', NULL, '$2y$12$N2KOby.IXK5q1hWVSkUOBeQ1f7nHFZv./8T2xUNmT7h6VH7iHSY/K', NULL, '2025-10-15 08:00:26', '2025-10-15 08:00:26', NULL, 'default', NULL),
(244, 'Puryadi', 'ppuryadi08@gmail.com', NULL, '$2y$12$UVrt9PnJ79si7WkpVi6wluyGwebT5KCGy2vGe/RDoXY/Ds/pEBLxu', NULL, '2025-10-15 08:00:26', '2025-10-15 08:00:26', NULL, 'default', NULL),
(245, 'AL AMIN BAYU MUSTIKA', 'bayualseven2@gmail.com', NULL, '$2y$12$cLAavotbAhNJU56sEaNwHugvXtcTjEbuoEQIr/v/xxJ8CBZ7X2Zye', NULL, '2025-10-15 08:00:27', '2025-10-15 08:00:27', NULL, 'default', NULL),
(246, 'SRI HARI WURYANTI', 'amywury08@gmail.com', NULL, '$2y$12$52W2pI851t5sv5PAPaHysuRBNcKJAYhVLvvwi4B6H.Cl5Ji5vuRT2', NULL, '2025-10-15 08:00:27', '2025-10-15 08:00:27', NULL, 'default', NULL),
(247, 'zainul arifin', 'zainularifin2365@gmail.com', NULL, '$2y$12$XAx2I/uX0uNbPMGuWwI6eumwNDzNc.fpxbe0tEe3g5uz/cLNKa8Om', NULL, '2025-10-15 08:00:27', '2025-10-15 08:00:27', NULL, 'default', NULL),
(248, 'Risky Fajar Afrianto', 'riskyfajarr321@gmail.com', NULL, '$2y$12$rvkTa30AZuLp1hab6k070OnumV7oeKGHPHK9VJvt8AOl.kTNT3Vjq', NULL, '2025-10-15 08:00:28', '2025-10-15 08:00:28', NULL, 'default', NULL),
(249, 'Rinil Indarti', 'rinilndrt@gmail.com', NULL, '$2y$12$KC6UxlT/GypcrOPpYhrM5uv3yL9KBIxpwRz9VTYlq8RVWfcssB0Sa', NULL, '2025-10-15 08:00:29', '2025-10-15 08:00:29', NULL, 'default', NULL),
(250, 'MOH SLAMET', 'nurs4llim@gmail.com', NULL, '$2y$12$1GLmDE/RBj17/3JPUp07zuKbv1GrYT1Whfs8sL1b4oI3y/bGl.mju', NULL, '2025-10-15 08:00:29', '2025-10-15 08:00:29', NULL, 'default', NULL),
(251, 'Amin Yuli Astuti', 'astuti131@gmail.com', NULL, '$2y$12$TGhAbHZLoUQWvHX3NKgq2uJknyymBZTjDSVyVfVyCI289wB1gvcV.', NULL, '2025-10-15 08:00:29', '2025-10-15 08:00:29', NULL, 'default', NULL),
(252, 'ISTIKOMAH WIDYA', 'widya.talita27@gmail.com', NULL, '$2y$12$ozB50wv7hwUAI9mhQXW6meIFC89ostRNrv7O6cj.Sjc74UMLMl6Yq', NULL, '2025-10-15 08:00:30', '2025-10-15 08:00:30', NULL, 'default', NULL),
(253, 'Yonarisa Febryanti', 'yonarisa84@gmail.com', NULL, '$2y$12$7rFBCJaciLrljzJjiItEM.zFlKtFNonIhAk6BVk3pZESpdBFUy3Yq', NULL, '2025-10-15 08:00:30', '2025-10-15 08:00:30', NULL, 'default', NULL),
(254, 'Doni Erfanto', 'azka.albaik@gmail.com', NULL, '$2y$12$k/ti.NjTyPJ3gtUH8e1cQOkm5fKHi4wFM2I9ZwX0eYh3xgM5833AC', NULL, '2025-10-15 08:00:30', '2025-10-15 08:00:30', NULL, 'default', NULL),
(255, 'Ilham Octavia Pratama', 'ilhamokta1916@gmail.com', NULL, '$2y$12$LZ6yYaNtCGk9Jqc8l1L2IucgAeg8ZwJcvBOuim12RfVvclvOdQB5G', NULL, '2025-10-15 08:00:31', '2025-10-15 08:00:31', NULL, 'default', NULL),
(256, 'Suherna', 'suherna143@gmail.com', NULL, '$2y$12$2bFc4kMEWk0jJuGxKJRt/eJihEG1HhjegAjx1kbvU86IZKjK3mZU2', NULL, '2025-10-15 08:00:31', '2025-10-15 08:00:31', NULL, 'default', NULL),
(257, 'Faisal Amin', 'aminsal426@gmail.com', NULL, '$2y$12$RQhqIf.2UnQk88DwXkivKOXrwWUHDyZlXGYy1uYjwFcbpqkt3Nk3y', NULL, '2025-10-15 08:00:31', '2025-10-15 08:00:31', NULL, 'default', NULL),
(258, 'SUGIANTO', 'giantosugiantosugianto323@gmail.com', NULL, '$2y$12$B70BMXuGOQDwNMhtlCX/8uWk2014oGESsdjfymdvR5tSXYaQ4YJ0u', NULL, '2025-10-15 08:00:32', '2025-10-15 08:00:32', NULL, 'default', NULL),
(259, 'Anik Hidayati', 'azzahraleon13@gmail.com', NULL, '$2y$12$DuT.y2OGjfsDli7GCSVxgO2uKN9w9RdSPIA8QhMoOPXnB/9/klChq', NULL, '2025-10-15 08:00:32', '2025-10-15 08:00:32', NULL, 'default', NULL),
(260, 'Yuyun Rinawati Ningsih', 'yuyun.rinawati75@gmail.com', NULL, '$2y$12$sHyDrJdd9OF3lO/e7tdOWuh/lx5rnU3i17slQdYNZszpjGicwkwrS', NULL, '2025-10-15 08:00:32', '2025-10-15 08:00:32', NULL, 'default', NULL),
(261, 'Rini Arthanti Agustini', 'arthanti02@gmail.com', NULL, '$2y$12$Me40iPWvhwet7d/c5uzsxOoASnQ96CcrZhbFFuZh35Go3PEA9XNsm', NULL, '2025-10-15 08:00:33', '2025-10-15 08:00:33', NULL, 'default', NULL),
(262, 'Ivana kartikasari', 'vanaz90687@gmail.com', NULL, '$2y$12$/eZwRaCk9b50AeHsmqjKGum9xwQOifrT58QBtVyP6f9pMMz1MkHve', NULL, '2025-10-15 08:00:33', '2025-10-15 08:00:33', NULL, 'default', NULL),
(263, 'LIA KURNIA SARI', 'liakurnia8815@gmail.com', NULL, '$2y$12$V5oow04UjWRIP6zuX.aXn.BQjVA55H88ALo.hoJCAnVHDCAMbWLIe', NULL, '2025-10-15 08:00:33', '2025-10-15 08:00:33', NULL, 'default', NULL),
(264, 'Maulut ulfa dwiyanti', 'Ulpeupe@gmail.com', NULL, '$2y$12$FIXxfiA8VfGzaOit2WQoWOPiHzJRYZ556KS502SSl8BFl3xn8ShdK', NULL, '2025-10-15 08:00:34', '2025-10-15 08:00:34', NULL, 'default', NULL),
(265, 'Ridha Nur Rohma', 'ridhanurrohma@gmail.com', NULL, '$2y$12$H7Fxos9OVQ.fDtmZ3CwYR.XlMSRO80WYEeVuAg7S.2P/QTvjMgfgS', NULL, '2025-10-15 08:00:34', '2025-10-15 08:00:34', NULL, 'default', NULL),
(266, 'Lilun arbiyanti salatina', 'lilunsalatina@gmail.com', NULL, '$2y$12$XJlvz78v27m9Oe6N3l12GeTLGeqEKQBQWZmzQ9nhAdTvN18ko25e.', NULL, '2025-10-15 08:00:35', '2025-10-15 08:00:35', NULL, 'default', NULL),
(267, 'Riris Rukma Nisita', 'riris.rukma@gmail.com', NULL, '$2y$12$AMqxy89/10ITDbciwnI/8uTXmav7ROGxv8mqPkspvQ5V8/6E7ssDe', NULL, '2025-10-15 08:00:35', '2025-10-15 08:00:35', NULL, 'default', NULL),
(268, 'Anggi maudy priyanti', 'Anggimaudy42@gmail.com', NULL, '$2y$12$Z2MOQnkgZdDDTUe9oNkCiekxiP9G.jDtJc3vhV6r9gOyCQy8ZzkpS', NULL, '2025-10-15 08:00:35', '2025-10-15 08:00:35', NULL, 'default', NULL),
(269, 'Khusnul Kholidah', 'KhusnulKholidah@gmail.com', NULL, '$2y$12$ZEQq2PEtxysl1ZKzPYFhsecoPwSU72ohC/0wI1SpQB.E0tTj8HK4a', NULL, '2025-10-15 08:00:36', '2025-10-15 08:00:36', NULL, 'default', NULL),
(270, 'Samsul Mashuri', 'samsulmashuri84@gmail.com', NULL, '$2y$12$J0CABvSuT/1PSo.2VzeTIuPdhhRbovzrjd1duPexR3mvxWHYho86S', NULL, '2025-10-15 08:00:36', '2025-10-15 08:00:36', NULL, 'default', NULL),
(271, 'Vika Lusita Anggraeni', 'vlanggraeni.vla2@gmail.com', NULL, '$2y$12$JHaOGMhcT9rwWAb8otT4bePbFFQuYhqf5yBWRk4JM0980wW4/J816', NULL, '2025-10-15 08:00:36', '2025-10-15 08:00:36', NULL, 'default', NULL),
(272, 'SUSIOWATI', 'Susiowati909@gmail.com', NULL, '$2y$12$677zQgNAgU/3kCdZ0VGrXez8S0nGm4pPoSq645S13S9SjcxLDh8hm', NULL, '2025-10-15 08:00:36', '2025-10-15 08:00:36', NULL, 'default', NULL),
(273, 'Kartika juwita', 'carteacajoe@gmail.com', NULL, '$2y$12$5gPKqF22q1keBv9FMhsm3.SQEKIRRXEPwYR9mdVkP9GySRro//sSu', NULL, '2025-10-15 08:00:37', '2025-10-15 08:00:37', NULL, 'default', NULL),
(274, 'Waode Pristanti Nuri Rachmawati', 'waodepristanti@gmail.com', NULL, '$2y$12$4JdZMW3NkplBIQsjc89j6OZjgkXfODxojt0hvh63SnSN2ASwPbhbG', NULL, '2025-10-15 08:00:37', '2025-10-15 08:00:37', NULL, 'default', NULL),
(275, 'Muhammad Hanif Firnanda', 'amirfauzie1@gmail.com', NULL, '$2y$12$0nNJdc2RnS/ugWOF787OcO/VCU1HmwTzcs9AanpewhM0UtWwR4V8S', NULL, '2025-10-15 08:00:38', '2025-10-15 08:00:38', NULL, 'default', NULL),
(276, 'Herni natalia', 'elisabethherni1984@gmail.com', NULL, '$2y$12$azgemyO4X7Vn1/A0qzKvXuTwMwjYQq3cQZMm6loO6AlsI3j8r4Nw2', NULL, '2025-10-15 08:00:38', '2025-10-15 08:00:38', NULL, 'default', NULL),
(277, 'Ika Suryaningsih', 'nafillahikari56@gmail.com', NULL, '$2y$12$F9PiMBnT8M.SH3inoKTOEOe2mIUI.NeFvgQrS8QkgD.Ta9JlGnCpC', NULL, '2025-10-15 08:00:38', '2025-10-15 08:00:38', NULL, 'default', NULL),
(278, 'Karuniawati', 'Karuniaw71@gmail.com', NULL, '$2y$12$LMnLBO5mN5Qqelp7q7w5suMSFxV1vDscwfXTZ.JwmxnHatDNzHkbW', NULL, '2025-10-15 08:00:39', '2025-10-15 08:00:39', NULL, 'default', NULL),
(279, 'MAYA INDRIYANI', 'mayaindri03@gmail.com', NULL, '$2y$12$PjR1LzTavkQEqmD1p6WuDuezu3bLHut6qtalxU0QdKmFokdOX.gtW', NULL, '2025-10-15 08:00:39', '2025-10-15 08:00:39', NULL, 'default', NULL),
(280, 'Dessy Anggraeni', 'dessyanggraeni269@gmail.com', NULL, '$2y$12$KtTvYbI0MjA3dUTVIwS54Odb9oPprGBcK5hPOSWKDNNrDjMkl9XHa', NULL, '2025-10-15 08:00:39', '2025-10-15 08:00:39', NULL, 'default', NULL),
(281, 'EVA OKTAVININGSIH', 'evaoktaok42@gmail.com', NULL, '$2y$12$m511czwRCfEzd6xlvTXpw.EHzehVLmSn1uWkb.3/Ij8rmD/y6LBMC', NULL, '2025-10-15 08:00:40', '2025-10-15 08:00:40', NULL, 'default', NULL),
(282, 'Rina indiana', 'adysule12@gmail.com', NULL, '$2y$12$1naob7V1V98VvhKs5nNVoeBpjKgvm/VbZCU8g9olIurRKCeM8opD6', NULL, '2025-10-15 08:00:40', '2025-10-15 08:00:40', NULL, 'default', NULL),
(283, 'MERLINA ADI KURNIAWATI', 'arsyilamalang901@gmail.com', NULL, '$2y$12$30OvrILSbDUCxJWt.gxWKeYdELegT3bK8VBs9Ze9YQC5IakOtNg.a', NULL, '2025-10-15 08:00:40', '2025-10-15 08:00:40', NULL, 'default', NULL),
(284, 'ENGGA RESTU DIAN SAGITA', 'rdsengga@gmail.com', NULL, '$2y$12$UViQVW1TwhupUwKrD./ZR.i5Qcb85Ts8kkL222bX9vwEz7tmhuqzm', NULL, '2025-10-15 08:00:41', '2025-10-15 08:00:41', NULL, 'default', NULL),
(285, 'MEGA CAHYANI', 'megachaa.26@gmail.com', NULL, '$2y$12$jkYLdRD19QyyjbxJNdTIv.yQT9qZpZFAGTa9ELZK8xky6wSWOc9I6', NULL, '2025-10-15 08:00:41', '2025-10-15 08:00:41', NULL, 'default', NULL),
(286, 'Septiana iriyanti', 'septiana.qaisara@gmail.com', NULL, '$2y$12$5F.MN2tkBCHqe9JBBzUPSeGfh2b/Hq8m2N2LX0PuktfKNWr.rsmD2', NULL, '2025-10-15 08:00:41', '2025-10-15 08:00:41', NULL, 'default', NULL),
(287, 'Anni Khoirun Nisa', 'annikhoirunn@gmail.com', NULL, '$2y$12$3C2IATOp5DrD9qYDR0Ki6Ox1kf5mKqoTuhuuZHYvvtNbqufjxLWnW', NULL, '2025-10-15 08:00:42', '2025-10-15 08:00:42', NULL, 'default', NULL),
(288, 'Ita Christina', 'itachristinabesoet@gmail.com', NULL, '$2y$12$RpB4F/ZTBB5uW9GU8xq0ueaLg8Do6GcLmB39rJRo6sDTVx7YfZ/LK', NULL, '2025-10-15 08:00:42', '2025-10-15 08:00:42', NULL, 'default', NULL),
(289, 'Agis Suryawan', 'Kinanthiregina1@gmail.com', NULL, '$2y$12$d3qBuVuTVMRbFK2Z8WM5feRKs679GlgCQwhBJywcps/TwWfIQ7xtm', NULL, '2025-10-15 08:00:42', '2025-10-15 08:00:42', NULL, 'default', NULL),
(290, 'Aataina Thoi\'in', 'aatainathoiin@gmail.com', NULL, '$2y$12$8HZJGYJvhReVGUWv6yaZmu2MF9kmhGmym9.P9CDAhJ6XM02qdjwvG', NULL, '2025-10-15 08:00:42', '2025-10-15 08:00:42', NULL, 'default', NULL),
(291, 'NENI YUTRIKASARI', 'neniyutrikasari@gmail.com', NULL, '$2y$12$zL.G/7dPnusk35hX/M2nLei6FrUG/ZjpyIF1D.v19WHFm2nnHm1SS', NULL, '2025-10-15 08:00:43', '2025-10-15 08:00:43', NULL, 'default', NULL),
(292, 'Sherly anggraeni cahya putri', 'jziiiaannzkr01@gmail.com', NULL, '$2y$12$7ve7/G8az8jgcGx54yXHG.vJ5ABINa5I34ktMXDe3u1rJ57Q/ncYC', NULL, '2025-10-15 08:00:43', '2025-10-15 08:00:43', NULL, 'default', NULL),
(293, 'Danty Oktiana Prastiwi', 'oktianadanty@gmail.com', NULL, '$2y$12$jTrj8W7HTW.M6az3vOGVruRxF3uhIJYUmURl.x1CoxWygiGSbJu6m', NULL, '2025-10-15 08:00:43', '2025-10-15 08:00:43', NULL, 'default', NULL),
(294, 'Cynthia June Indah Widiyasari', 'cynthiajuneiw@gmail.com', NULL, '$2y$12$UBKMn8XJ58K/oBr6/pCwUOJzr6kC.93gMSWV2ydA9xM8GiegiqXGS', NULL, '2025-10-15 08:00:44', '2025-10-15 08:00:44', NULL, 'default', NULL),
(295, 'Rani Hafilianawati', 'bundarun.e@gmail.com', NULL, '$2y$12$.Jvc9xlNv/k/Lgb.lciEGOqtFr2550qTD0hsWFBrx3zW3sZR2cYnu', NULL, '2025-10-15 08:00:44', '2025-10-15 08:00:44', NULL, 'default', NULL),
(296, 'Ismi Alfiah', 'Alfiahismi06@gmail.com', NULL, '$2y$12$AtEKO46iNDwnTmvmqD2cVOXsMWVYCz.m6vdoYthBjjkq.ecRFWb6y', NULL, '2025-10-15 08:00:44', '2025-10-15 08:00:44', NULL, 'default', NULL),
(297, 'SULIS INDRAWATI', 'Sulisindra83@gmail.com', NULL, '$2y$12$lbEbiazM5X8UEvIvGRzAgeOCaqSASKckhYZyOLdc66E4y4DfUhVL.', NULL, '2025-10-15 08:00:45', '2025-10-15 08:00:45', NULL, 'default', NULL),
(298, 'FIFIN AGUS PRIYA UTAMA', 'mrayyan3a@gmail.com', NULL, '$2y$12$U.ZfSQMEe2/rC5HaFkhSgOFIUoGmoYtWVE2F/DYXZbIU6T9bjh5s2', NULL, '2025-10-15 08:00:45', '2025-10-15 08:00:45', NULL, 'default', NULL),
(299, 'Vita rakhmawati', 'Tarasaga74@gmail.com', NULL, '$2y$12$d.G5Tto9YMDUZmuXqdRTSul53Glug2fTjif4uiefTjasbUBRpwDZi', NULL, '2025-10-15 08:00:46', '2025-10-15 08:00:46', NULL, 'default', NULL),
(300, 'Zulfa Amelia', 'amelzulfa22@gmail.com', NULL, '$2y$12$w51tsYKgdP9KsPzhLRqQeeds4kHbdlB7QS38Zgy1RzI83vk4uM7du', NULL, '2025-10-15 08:00:46', '2025-10-15 08:00:46', NULL, 'default', NULL),
(301, 'Radias Tarwoco Putro', 'radias.tarwoco@gmail.com', NULL, '$2y$12$dNgdM/Aw4SjPoNvNSMu8U.ZCWi/e9nbxI4IxVerfCTC/V7cgrXsLy', NULL, '2025-10-15 08:00:47', '2025-10-15 08:00:47', NULL, 'default', NULL),
(302, 'SANDRA DEWI SARASWATI', 'sandraiwed83@gmail.com', NULL, '$2y$12$YS.xvXnInTIs8vcgVZwZO.3YU6FeIA68l2C2FwwAMu.gdW2Z7shrO', NULL, '2025-10-15 08:00:48', '2025-10-15 08:00:48', NULL, 'default', NULL),
(303, 'Wilda Wahyuningsih', 'wilda.wahyuni123@gmail.com', NULL, '$2y$12$ImesPKlI0qTfw0fNCp/0Ru4CLyYnkL90F48nxPHjH1cB6FTpFv5/y', NULL, '2025-10-15 08:00:48', '2025-10-15 08:00:48', NULL, 'default', NULL),
(304, 'Ika Rahmawati', 'ikarahmakusuma87@gmail.com', NULL, '$2y$12$GIaxXkeJHoWDYqv5A219qe873rRiMozFW8S7i3geYvckk61J2u5be', NULL, '2025-10-15 08:00:48', '2025-10-15 08:00:48', NULL, 'default', NULL),
(305, 'Agus Tri Andriatmoko', 'milanino88@gmail.com', NULL, '$2y$12$1OYxhkacxnrvh1y3p70oDOWnurkl9Z2SqpQeiZqxqI0nclmLPv/rm', NULL, '2025-10-15 08:00:49', '2025-10-15 08:00:49', NULL, 'default', NULL),
(306, 'Maudini Mutiara Wandarti', 'maudinimutiarawandarti@gmail.com', NULL, '$2y$12$figU0uArkW1Tr9xbUTt7mOt4lEn/S4nyjcbhj84nH5qFlv61TbWNq', NULL, '2025-10-15 08:00:49', '2025-10-15 08:00:49', NULL, 'default', NULL),
(307, 'Erdina Elfi Riana', 'erdinaelfiriana@gmail.com', NULL, '$2y$12$9zXrnV12dA5ae/QoZ19tLujSJbjyrnM/CxOwEtsPna5Wn/OmZWWA.', NULL, '2025-10-15 08:00:49', '2025-10-15 08:00:49', NULL, 'default', NULL),
(308, 'Tria Warsa Enggal', 'triawarsaenggal@gmail.com', NULL, '$2y$12$efLar.4F1I5PifSQvNtwNuTcsQ7V.rAK5piRn5vUX3NydOO1/h.By', NULL, '2025-10-15 08:00:50', '2025-10-15 08:00:50', NULL, 'default', NULL),
(309, 'VENNIA DIAN RESTANI', 'Venniadianrestani@gmwil.com', NULL, '$2y$12$Qr22ZukwWx9482/u6V3rgulatmmvvG2swfelRm3zoK6K/68l3shha', NULL, '2025-10-15 08:00:50', '2025-10-15 08:00:50', NULL, 'default', NULL),
(310, 'Diah Mesti', 'diahmesti.ri@gmail.com', NULL, '$2y$12$UPwhT0PuKjrC5yJYjktxZe470fp/nAzWwyiD/thfv0C2IrbhBW65e', NULL, '2025-10-15 08:00:51', '2025-10-15 08:00:51', NULL, 'default', NULL),
(311, 'Satya Bram Wiratma', 'bho.satya@gmail.com', NULL, '$2y$12$5MDS82ga8i9n.n7SFi3Yjefd5AzxmrthLT9q9vJ3ZSpCs3rRuf/Ti', NULL, '2025-10-15 08:00:51', '2025-10-15 08:00:51', NULL, 'default', NULL),
(312, 'Chusnul Chotimah', 'chusnul27041991@gmail.com', NULL, '$2y$12$xDyZ4gBgc0ha5VW/kiJyFewehmeuecYc8MacvZ/hNUkmCEobTlzC6', NULL, '2025-10-15 08:00:52', '2025-10-15 08:00:52', NULL, 'default', NULL),
(313, 'SUSWATI', 'suswatisuswati273@gmail.com', NULL, '$2y$12$BndwvOA4XujUe6gtKilGVeckbLlnS6Llx58IUX8/Mo9jPD2E4Lma2', NULL, '2025-10-15 08:00:53', '2025-10-15 08:00:53', NULL, 'default', NULL),
(314, 'Aulia Lestari', 'kheylaauriella@gmail.com', NULL, '$2y$12$NuDo/C7pOAVSECMBlhoUr.LnPf6S5/y/BiaRp1h7PNUdC5XIt/r2u', NULL, '2025-10-15 08:00:53', '2025-10-15 08:00:53', NULL, 'default', NULL),
(315, 'Erwis wirdiyanti', 'Erwisanik@gmail.com', NULL, '$2y$12$JP5DfQsjWR8wrGWuGaadsO8HQ8iYT1tK2zyR4c9udmF8i0IqLEk52', NULL, '2025-10-15 08:00:54', '2025-10-15 08:00:54', NULL, 'default', NULL),
(316, 'Suryani Pradina Mp', 'dinakiran13@gmail.com', NULL, '$2y$12$XJT5Pxe9xFZX25JLlvOtMOin2UVY9ez6.Bej9gkBkzU4eosj/m6t6', NULL, '2025-10-15 08:00:54', '2025-10-15 08:00:54', NULL, 'default', NULL),
(317, 'SUCIANI KUMARIAH', 'Sucianikumariah6@gmail.com', NULL, '$2y$12$xGLMkjqeN0RQnlPMic/dUehKstQpHqD1k7f2p7/tkgoB5lgMgtGN2', NULL, '2025-10-15 08:00:54', '2025-10-15 08:00:54', NULL, 'default', NULL),
(318, 'JULIZA TRIPUSPITA RACHMAWATI', 'julyzha69@gmail.com', NULL, '$2y$12$oIw/BGEuXfQXHHKCluVgbuLxB7GojPn01aO1gm18mXo7NSlhOin9.', NULL, '2025-10-15 08:00:55', '2025-10-15 08:00:55', NULL, 'default', NULL),
(319, 'Pratiwi dita ayu putri setya permana', 'pratiwidita1404@gmail.com', NULL, '$2y$12$7NP7qOa2.GPIztbqEtrmWOqBsC9MfNuGBHVNenRFCvEhxBElkJz96', NULL, '2025-10-15 08:00:55', '2025-10-15 08:00:55', NULL, 'default', NULL),
(320, 'Vonny', 'vonnyamalia14@gmail.com', NULL, '$2y$12$kfbPykCqte/1u3iHF9PPYeS1bAxmxiO2EBpndB09JQbaO.WscBLUq', NULL, '2025-10-15 08:00:56', '2025-10-15 08:00:56', NULL, 'default', NULL),
(321, 'Yasmina Majidah Imanamahirah', 'yasminamajidah@gmail.com', NULL, '$2y$12$XgEHXh/jbAeok8FadPgnVuwhGjfO9k9mYhhY2.dVHf2ISxkuTWfhG', NULL, '2025-10-15 08:00:56', '2025-10-15 08:00:56', NULL, 'default', NULL),
(322, 'Sri Wilujeng', 'sriwilujeng@gmail.com', NULL, '$2y$12$YZveCoZKy2MX3NcaIy.QXupEAwQQA9F8rPMhM3UzfRH1BuW8iZGZG', NULL, '2025-10-15 08:00:57', '2025-10-15 08:00:57', NULL, 'default', NULL),
(323, 'Eli Saputri', 'elisaputri682@gmail.com', NULL, '$2y$12$BDKVFSg1HYilxoAyZvK7f.Es8W5FHOhhfkB.kEs/d4Cw7FUpH3PsG', NULL, '2025-10-15 08:00:57', '2025-10-15 08:00:57', NULL, 'default', NULL),
(324, 'Qorina Anindhita Prameswari', 'qorinaanindhita708@gmail.com', NULL, '$2y$12$Xro3l/V8eJgXoPHM6.lgPuM5AZYbt5ZrBcuR1qJ8ex1OI2NS61xOG', NULL, '2025-10-15 08:00:58', '2025-10-15 08:00:58', NULL, 'default', NULL),
(325, 'Daniel', 'Daniel.sulik88@gmail.com', NULL, '$2y$12$nIcnuDWxOqagJ2lWaXFrtuOH2stQLzg6jnAucx1CAK7WOYnug.W8C', NULL, '2025-10-15 08:00:58', '2025-10-15 08:00:58', NULL, 'default', NULL),
(326, 'Fahrisyal Ainur Roziqin', 'fahrisyalroz59@gmail.com', NULL, '$2y$12$T2ODOzvIrsdXAVSGg56wY.nxG4I7hAS6E9UkSQK1BjWRdBeT7mu3G', NULL, '2025-10-15 08:00:58', '2025-10-15 08:00:58', NULL, 'default', NULL),
(327, 'ENI SUCI HARIATI', 'kh4risma74@gmail.com', NULL, '$2y$12$cX3gmJW2z5w.iIu21bbhhOtxE5FqLc40Kn9.rkohR7WCvP6EJe8yW', NULL, '2025-10-15 08:00:59', '2025-10-15 08:00:59', NULL, 'default', NULL),
(328, 'Andi Bagus Alfrianto', 'alfrianto00@gmail.com', NULL, '$2y$12$M8vfmBNQ9LM8ZbgNUtcyDek9nc8coojRAGci0hKPbnbe7DmG9H/MK', NULL, '2025-10-15 08:00:59', '2025-10-15 08:00:59', NULL, 'default', NULL),
(329, 'Dian Ratnasari', 'dhianata@yahoo.com', NULL, '$2y$12$y1wzAr4Wa/xFR3BT6Rj5YOf03piWMHEf3IqwWTtMIu/cIH/gn7cDO', NULL, '2025-10-15 08:00:59', '2025-10-15 08:00:59', NULL, 'default', NULL),
(330, 'Lina Siti Maryamah', 'stm.lina@gmail.com', NULL, '$2y$12$siFwP9jQlVHhLl7/FSG4mudPsKa/HeP0dhiDB8VaeI/QdbNpNieMC', NULL, '2025-10-15 08:01:00', '2025-10-15 08:01:00', NULL, 'default', NULL),
(331, 'Jati Laksono', 'djati.laksono79@gmail.com', NULL, '$2y$12$iHdYuVABhL6mKbCbf15rtO1Y3fxghWoDDxPcm28crBjrEhkhVIogy', NULL, '2025-10-15 08:01:00', '2025-10-15 08:01:00', NULL, 'default', NULL),
(332, 'Fajar Widiyanto', 'fajarwivi@gmail.com', NULL, '$2y$12$R9OE2/XAYsOQVJMJ1w9Ni.p.CU7vyR6X3tYJhtDV2kinizxBNxKUy', NULL, '2025-10-15 08:01:01', '2025-10-15 08:01:01', NULL, 'default', NULL),
(333, 'Ahmad Rijal Pahlevy', 'ahmadrijalpahlevy@gmail.com', NULL, '$2y$12$XhA3KIlgDxy2D5mMmILYo.xKxWUGZIRK5Ryp6HR7tmmED1te3q3Pa', NULL, '2025-10-15 08:01:01', '2025-10-15 08:01:01', NULL, 'default', NULL),
(334, 'NADIA NURBAITI', 'nadianurbaiti13@gmail.com', NULL, '$2y$12$1NfdpO8pY2Er0Yg483TmaOODWRCvNGnxrGpmEWwy4rjEmmDQYi686', NULL, '2025-10-15 08:01:02', '2025-10-15 08:01:02', NULL, 'default', NULL),
(335, 'Ayu Puspita Sari', 'ayupus259@gmail.com', NULL, '$2y$12$296mrqJMUYBI0mu/ZfIATuYL4PPUyJf.yF2YmtepbNbi82ZCpaM4q', NULL, '2025-10-15 08:01:02', '2025-10-15 08:01:02', NULL, 'default', NULL),
(336, 'Rr Ajar Wikhu Redhati', 'roroajarwikhu@gmail.com', NULL, '$2y$12$0taFwcbImUyflSUVcKMV0uUhd8fsz2NOrOg2FGx6axAAFIuJR6Zn2', NULL, '2025-10-15 08:01:02', '2025-10-15 08:01:02', NULL, 'default', NULL),
(337, 'NABIILAH RAUDHANISA', 'nabiilahr322@gmail.com', NULL, '$2y$12$ed5uRj7bcyNT0CthMZ9nN.nkE8UZMm0QCtFg9C68SzmSbe7LWe16y', NULL, '2025-10-15 08:01:03', '2025-10-15 08:01:03', NULL, 'default', NULL),
(338, 'Dista Dwi Cahyani', 'distadc@gmail.com', NULL, '$2y$12$sLpN555bUaPfsKfCGJWwMODJtzrh72bLODhYnUIas9siaGws0ewkG', NULL, '2025-10-15 08:01:03', '2025-10-15 08:01:03', NULL, 'default', NULL),
(339, 'Farhan Mirza Zakky', 'farhan.zakky354@gmail.com', NULL, '$2y$12$OvGxpVP9gAN9VU/9dQtWAuq5GgOhIw6KwOu2/lobsvwjtkH4xYUJ.', NULL, '2025-10-15 08:01:04', '2025-10-15 08:01:04', NULL, 'default', NULL),
(340, 'Eka Indah Nur Fatimah Mashud', 'ekin0696@gmail.com', NULL, '$2y$12$jOSkp0/y.dptDvYweB4VveC5fycMsanZQSf1wtcwWOx5HY9DQlRZC', NULL, '2025-10-15 08:01:04', '2025-10-15 08:01:04', NULL, 'default', NULL),
(341, 'DYANA IKA SARI', 'dyanaikasari@gmail.com', NULL, '$2y$12$6bSHDbMCqyZpCs1IqeDB4e9utdUDRR18SH3Clb0G2VykBp.8fI0u.', NULL, '2025-10-15 08:01:04', '2025-10-15 08:01:04', NULL, 'default', NULL),
(342, 'Achmad Firmansah', 'raveculture9@gmail.com', NULL, '$2y$12$dO1FscxbkgQnLVPXx.tpAO7XCQjOHUW1TD.8OJpL1KuB9eAew8eDe', NULL, '2025-10-15 08:01:05', '2025-10-15 08:01:05', NULL, 'default', NULL),
(343, 'Bella Agustina Pratiwi', 'agustinapratiwibella@gmail.com', NULL, '$2y$12$KPY5AE7ytioAXCkD1oqY.OEkW/KBtqFs4.fXR.IrLpaPJijYjFdG.', NULL, '2025-10-15 08:01:05', '2025-10-15 08:01:05', NULL, 'default', NULL),
(344, 'Achmad Fatchur Rizqi', 'rizqielfath16095@gmail.com', NULL, '$2y$12$K.fL5FVREZrZad.pYGKXFezbydCYCQaogLhCXnbJZVx1gk.kiWaam', NULL, '2025-10-15 08:01:06', '2025-10-15 08:01:06', NULL, 'default', NULL),
(345, 'ZAKIYATUL FAKHIROH', 'zakiyatull90@gmail.com', NULL, '$2y$12$V1iJ3QD.6viY6aDDEnFbd.57uaUm8cpKH.Z2rNePjB.YrpUbvFClW', NULL, '2025-10-15 08:01:06', '2025-10-15 08:01:06', NULL, 'default', NULL),
(346, 'Rosi Risa Haris', 'rosiryan1982@gmail.com', NULL, '$2y$12$wWRcbgJeqTRzZjQJcP8mAOxVCPflchNNo5bzHwxcGVt1GI/ozO8Ky', NULL, '2025-10-15 08:01:06', '2025-10-15 08:01:06', NULL, 'default', NULL),
(347, 'Mas Lutfi Afandi', 'masloethfieafandi@gmail.com', NULL, '$2y$12$HfdUbGIWHyvYbC.ALO5gMunpZGsksOfXxWIjn4phIL3.S9c828MmG', NULL, '2025-10-15 08:01:07', '2025-10-15 08:01:07', NULL, 'default', NULL),
(348, 'Muhammad Riza Fachruddin', 'Ezataher82@gmail.com', NULL, '$2y$12$jN780AlpwQtIklS.Jm5cT.8hmXs5HprCtnzO32DVlWaIYau7VdgJe', NULL, '2025-10-15 08:01:07', '2025-10-15 08:01:07', NULL, 'default', NULL),
(349, 'Istiqomatul Amanah Amalia Nur Azizah', 'azizah.amalia0203@gmail.com', NULL, '$2y$12$rUVV3HloiqoWZE4SEN3XCe11bDNmz6eFxQrI.syyH0h6dnZaG6peq', NULL, '2025-10-15 08:01:07', '2025-10-15 08:01:07', NULL, 'default', NULL),
(350, 'Bahjatul Imaniyyah', 'bahjatul.kerja@gmail.com', NULL, '$2y$12$nQYCmDv3/JIjH6rBrxCmmObymN9tMGCc7ITgHPZu9DsnKeNeoDxkW', NULL, '2025-10-15 08:01:08', '2025-10-15 08:01:08', NULL, 'default', NULL),
(351, 'Mukhammad Athok Illah', 'athokillah409@gmail.com', NULL, '$2y$12$29U7f7RXSsfVlZQG7D/c6uswDirTdj2zVMycPKwHeJ3N0CeGQ1lvO', NULL, '2025-10-15 08:01:08', '2025-10-15 08:01:08', NULL, 'default', NULL),
(352, 'Sofwan Meiridho', 'meiridho@gmail.com', NULL, '$2y$12$K8Yd8GhVzIAy7kPJNS1zYOZSEplEStaQwlBUMIoaAYrI35QHABQKy', NULL, '2025-10-15 08:01:08', '2025-10-15 08:01:08', NULL, 'default', NULL),
(353, 'PUTRI WAHYU SARIARTI', 'putrisariarti24@gmail.com', NULL, '$2y$12$gIIMHupeLSV1QxgSjJ1JTOd4RJzS9jT/eDycbs23tRoePVeliZPWe', NULL, '2025-10-15 08:01:09', '2025-10-15 08:01:09', NULL, 'default', NULL),
(354, 'Lestari', 'kenlestari15@gmail.com', NULL, '$2y$12$7Ug7AWKb1naMtyMu5vZUSe2aSDSqD59Ugg2qCEI9Y/WDZN.fb9bke', NULL, '2025-10-15 08:01:09', '2025-10-15 08:01:09', NULL, 'default', NULL),
(355, 'Vina Irawati', 'irawativina0@gmail.com', NULL, '$2y$12$W/dB0mHQSBFcO7lEEi6EpuugbiC0rjyql7oM1jNO4E2nF2JQ9GFaS', NULL, '2025-10-15 08:01:09', '2025-10-15 08:01:09', NULL, 'default', NULL),
(356, 'Ferary ayu novitasari', 'Feraryayunovi@gmail.com', NULL, '$2y$12$/03xos.l4fj5egKedqbd9.034WF1nLVBEFFioR1in.8PcrXybnNB6', NULL, '2025-10-15 08:01:10', '2025-10-15 08:01:10', NULL, 'default', NULL),
(357, 'Eka Prasetya Nugraha', 'nugrahaekaprasetya@gmail.com', NULL, '$2y$12$kwtSEofa/07PfI/NQQwiaelZ4aN.OfuMAg8APsQQqSO.GMVInIaeK', NULL, '2025-10-15 08:01:10', '2025-10-15 08:01:10', NULL, 'default', NULL),
(358, 'Widyaningsih', 'widyaningsih.040@gmail.com', NULL, '$2y$12$ZHy406qUYh3sinjaVkwxPOybjwDcdXSo8.09qUk0720rNXumO3xp2', NULL, '2025-10-15 08:01:10', '2025-10-15 08:01:10', NULL, 'default', NULL),
(359, 'Mustika Siwi Amumpuni', 'tikacw52@gmail.com', NULL, '$2y$12$xSzYrdZqh65ZGIZQ8pUSte/JGEV1OA4CaFGGLJZCqy8zEsDZl6aLu', NULL, '2025-10-15 08:01:11', '2025-10-15 08:01:11', NULL, 'default', NULL),
(360, 'Helmalia Intan Azzahra', 'Azzahraintan976@gmail.com', NULL, '$2y$12$V7UbriOdF9hFO0cp3gaKyOdqTAIHcKIqob4iyZ6/cyqS2d9Cl5gye', NULL, '2025-10-15 08:01:11', '2025-10-15 08:01:11', NULL, 'default', NULL),
(361, 'Tarisya Izzahirah Permana', 'tarisyatarisya@gmail.com', NULL, '$2y$12$.8CqOfXJn3kKBgnaqlXidOl9rFUAn8wHQppdC1fi8BTcwVRLRWRdu', NULL, '2025-10-15 08:01:11', '2025-10-15 08:01:11', NULL, 'default', NULL),
(362, 'Laili Dzakiyyah Efendi', 'lailidzakiyyah@gmail.com', NULL, '$2y$12$kLl5brtn8UvLLuo0IK4mCODtEmgQFXgrqPDmRi129dGqQtU83P8Nm', NULL, '2025-10-15 08:01:12', '2025-10-15 08:01:12', NULL, 'default', NULL),
(363, 'Dewi Hafi Doturochma', 'Kendz34@gmail.com', NULL, '$2y$12$UrSj5WYzsmU8zQ765/TeeuiaVR8zg2VJ6aAMWjlTJuKPCcw1zMChy', NULL, '2025-10-15 08:01:12', '2025-10-15 08:01:12', NULL, 'default', NULL),
(364, 'AS\'AD ANDI YAHYA', 'asadyahya00@gmail.com', NULL, '$2y$12$EdEX5mEo1zKbQ3OO8vy.KO0p/iM7TYdsuSyD9GQ36RKSHVB/y.g1e', NULL, '2025-10-15 08:01:12', '2025-10-15 08:01:12', NULL, 'default', NULL),
(365, 'Aji Muktioko Utomo', 'muktiokoaji@gmail.com', NULL, '$2y$12$59uE.V2tDKc3GBiylVUUH.LFSAHNlhBsuzbLR9wAezaPpqF3l0ng2', NULL, '2025-10-15 08:01:13', '2025-10-15 08:01:13', NULL, 'default', NULL),
(366, 'Benny Yogga Pratama', 'yoga@pulsawae.com', NULL, '$2y$12$XirQKqWxohdJJXss5N1VAe2yx7.09ZDeVNDqrD3SMhCmP./IU92TW', NULL, '2025-10-15 08:01:13', '2025-10-15 08:01:13', NULL, 'default', NULL),
(367, 'Sapphiretita Oktarissa Farakh Heydina', 'sapphire.ofh@gmail.com', NULL, '$2y$12$YWdFbLreEOnMwyWoa0stB.2ct5nYBAdxW0sTdAHYzmXQWFw8TIZW2', NULL, '2025-10-15 08:01:14', '2025-10-15 08:01:14', NULL, 'default', NULL),
(368, 'Robiatul Adawiyah', 'ra.aladawiyah@gmail.com', NULL, '$2y$12$nM8UfzqFvtRmUhd9A5NMNOMJJTyExe1ZuX6yq31OhxIlvlgAkPcaS', NULL, '2025-10-15 08:01:14', '2025-10-15 08:01:14', NULL, 'default', NULL),
(369, 'Silva ahmad adini', 'Silva.adin.m@gmail.com', NULL, '$2y$12$PT2ItMF8d2v49JOhYN1dOuTTVwtfOPhav4u1vMEsojkvKEVo5xiYe', NULL, '2025-10-15 08:01:14', '2025-10-15 08:01:14', NULL, 'default', NULL),
(370, 'FIRMANSYAH HARIS HERLAMBANG', 'firmansyah.haris.h@gmail.com', NULL, '$2y$12$mcrsEo0d2cHfnIjHxy1n9eUU.uaOLYMvXPeTNZVKuMDFXVGHPLTpC', NULL, '2025-10-15 08:01:14', '2025-10-15 08:01:14', NULL, 'default', NULL),
(371, 'Dewi Martia Ningsih', 'dewimotivator@gmail.com', NULL, '$2y$12$HLpmQ7nmvdW186C2sO2.xu3WFa8/mVdRAl3iS1wEfxMAyYd15plOe', NULL, '2025-10-15 08:01:15', '2025-10-15 08:01:15', NULL, 'default', NULL),
(372, 'Maudi Eka Putri', 'maudieka4@gmail.com', NULL, '$2y$12$FQPRmoglqBByT3s1DzUCgesLEwQToyQNA/PD1SZzerysETeDwoQNy', NULL, '2025-10-15 08:01:15', '2025-10-15 08:01:15', NULL, 'default', NULL),
(373, 'NANDA ANDI PURNAMANSYAH, S.Si.', 'purnamalevi05@gmail.com', NULL, '$2y$12$FNdkMCytUQ/e.ErXde7TyuvkK6ZxQD8BlKj0Q.ViWteaRd9EQk24.', NULL, '2025-10-15 08:01:15', '2025-10-15 08:01:15', NULL, 'default', NULL),
(374, 'Amelia nur rahma', 'amelianurrahma23@gmail.com', NULL, '$2y$12$uyk23YTHgOreiwAP2KYuv.1sFiaX4.5bheD71R4Jh/nvzykTngus2', NULL, '2025-10-15 08:01:16', '2025-10-15 08:01:16', NULL, 'default', NULL),
(375, 'Setyarini', 'ririnsetyarini18@gmail.com', NULL, '$2y$12$b6Ca91q1LLtQqpSdB6hPrOZEFZzIvG2vvTfJ8Ec6Sz8hK9pFZ5Twi', NULL, '2025-10-15 08:01:16', '2025-10-15 08:01:16', NULL, 'default', NULL),
(376, 'Wiwin Widya Wati', 'wiwinwid.www@gmail.com', NULL, '$2y$12$ndFpkWGGx24P5VZ5ooVtBO3bm.3vcUUutafYinXvxCyo4YS/nHWLe', NULL, '2025-10-15 08:01:17', '2025-10-15 08:01:17', NULL, 'default', NULL),
(377, 'KEVYN GALUH JUARDINO', 'galuhjuardino@gmail.com', NULL, '$2y$12$zojZQ8aaVWiyYix5xcjPU.Zv.SWwRJHJwozrEM6cN0DopZO4cKuD6', NULL, '2025-10-15 08:01:17', '2025-10-15 08:01:17', NULL, 'default', NULL),
(378, 'Nelly Avrilia Nur Putri', 'nellyavrilia67@gmail.com', NULL, '$2y$12$nNyfGZzU34uNybgwlB2mZe.XTLuNOLzh4Yfx5wLqT0bNj3RTPsVDa', NULL, '2025-10-15 08:01:18', '2025-10-15 08:01:18', NULL, 'default', NULL),
(379, 'KHARISMA LATIFATUNNISA', 'khrisma88@gmail.com', NULL, '$2y$12$UxoG2lP7fwnPXn2l74lbCehzxA/oGgocoBQ0HkTXky.9KtO3O3vXC', NULL, '2025-10-15 08:01:18', '2025-10-15 08:01:18', NULL, 'default', NULL),
(380, 'DYAH BAYU EKA PRAMESWARI', 'prameswaridyah43@gmail.com', NULL, '$2y$12$r.sSdmiFXpwLRfthRvIqzeJqAVts6bD2zIQVMrBLls0BSiwhIXa3u', NULL, '2025-10-15 08:01:19', '2025-10-15 08:01:19', NULL, 'default', NULL),
(381, 'GARANITA MANGGAR PUTRI', 'garanitaarsyila@gmail.com', NULL, '$2y$12$qF96TcIkjRokj4J/V0Z4PuDUHfunuK2x97PRl256W4UAuTGnnWYWi', NULL, '2025-10-15 08:01:19', '2025-10-15 08:01:19', NULL, 'default', NULL),
(382, 'Nurul azmi', 'RasyaOke60@gmail.com', NULL, '$2y$12$.b0pe9po.Uutr3QdbqHlIOMYXwoggOSFAiNonBlpFrSk0qXWzZrPS', NULL, '2025-10-15 08:01:19', '2025-10-15 08:01:19', NULL, 'default', NULL),
(383, 'Chandra Rusbianto', 'chandrarusbianto@gmail.com', NULL, '$2y$12$BhP0.DnRRMym2RXMsKlO1.5y1o9aA0XqXAtJU9IIdG7GCkjnDVYdK', NULL, '2025-10-15 08:01:20', '2025-10-15 08:01:20', NULL, 'default', NULL),
(384, 'Nunik Indrawati', 'nunikindraw@gmail.com', NULL, '$2y$12$e8HTGVO7Sba.znNlVxIri.34n1xz9oot9nPxskqjq4XMlaFgfqYO.', NULL, '2025-10-15 08:01:20', '2025-10-15 08:01:20', NULL, 'default', NULL),
(385, 'ARIS HIDAYAT', 'aris.ukwk@gmail.com', NULL, '$2y$12$W3W4lbHFl8KIfrsr/ppIqu7hEcMjifKcl.OuBOGkFZJCGi4gvjlxm', NULL, '2025-10-15 08:01:20', '2025-10-15 08:01:20', NULL, 'default', NULL),
(386, 'David Rakha Sutjipto', 'rakhad96@gmail.com', NULL, '$2y$12$NxkeKhv54QxNNMlczdppWuGiBOorK6nSmbeOyT5pV4w27OS3CmiQm', NULL, '2025-10-15 08:01:21', '2025-10-15 08:01:21', NULL, 'default', NULL),
(387, 'Berliano budiono', 'berlianobudiono99@gmail.com', NULL, '$2y$12$M8Il9x51tsztjSQnXEjnkeXt/3yRW0EmpCCi0w3MtPsCiA7sMH44O', NULL, '2025-10-15 08:01:21', '2025-10-15 08:01:21', NULL, 'default', NULL),
(388, 'Nova Lailatul Zanah', 'nova20856@gmail.com', NULL, '$2y$12$JWFrfwZTXZh6TiKTqcIOPOfomB3WSuFY39CvWboGxCWULM5LQBDPS', NULL, '2025-10-15 08:01:21', '2025-10-15 08:01:21', NULL, 'default', NULL),
(389, 'Nadine Ranisyademas H.C', 'ranisnadine@gmail.com', NULL, '$2y$12$lbab0ocQ3GyU0FVSPMg7XO7GJXyPSHX1hb2vgAGOmUO3zivF0Fu4W', NULL, '2025-10-15 08:01:22', '2025-10-15 08:01:22', NULL, 'default', NULL),
(390, 'linda oktavia irawati', 'octalinda28@gmail.com', NULL, '$2y$12$Xm5BYFv27aHiQCTD1o7C2.4HVKDR/Ovgh0Eg/87qZnV6w9LmCdlu.', NULL, '2025-10-15 08:01:22', '2025-10-15 08:01:22', NULL, 'default', NULL),
(391, 'MAHBUBATUN NISWAH', 'mahbubatunniswah14@gmail.com', NULL, '$2y$12$ryPHaqAcTXI7p/MbqtBSruBJnJmz3vpSS5DhgmNRSgPPuzPTzZGYC', NULL, '2025-10-15 08:01:22', '2025-10-15 08:01:22', NULL, 'default', NULL),
(392, 'Ravika Indah Kharisma', 'ravikaindah@student.ub.ac.id', NULL, '$2y$12$.fOgBAmbfYvq8wVULCSavu3wC5qcI3pSs29Pob0vBQZiPhT0jJwwe', NULL, '2025-10-15 08:01:22', '2025-10-15 08:01:22', NULL, 'default', NULL),
(393, 'Ruliyanto Ratno Saputro', 'ruliyantoratno@gmail.com', NULL, '$2y$12$A4FTxHSo9EiBvT5kKcCgXucLkSEX0GHM6dP4/AkFMIrYqiEbD0m56', NULL, '2025-10-15 08:01:23', '2025-10-15 08:01:23', NULL, 'default', NULL),
(394, 'ADYATMA NUGRAHSANTO WICAKSONO', 'adyatmahebat@gmail.com', NULL, '$2y$12$jYAAbHuHHoRX9w1hip7VOem7zyfo5NjiixHvLufv5zet6bivGojLu', NULL, '2025-10-15 08:01:23', '2025-10-15 08:01:23', NULL, 'default', NULL),
(395, 'Brillian Musa Maulana', 'brillimaulana06022004@gmail.com', NULL, '$2y$12$uPdf3NoZ15280jtGE2Vjce45KXIdgmRsbNTIJFZ2HiqRIwnNH78c6', NULL, '2025-10-15 08:01:23', '2025-10-15 08:01:23', NULL, 'default', NULL),
(396, 'Iqbal Firmansyah', 'iqbalfirmansyah971@gmail.com', NULL, '$2y$12$oBzv8UTRuXDnNJPR8y.EVuQy50j/j9LazS5LBDeXahf1mc19uKWBC', NULL, '2025-10-15 08:01:24', '2025-10-15 08:01:24', NULL, 'default', NULL),
(397, 'Rani Indahwati', 'rani.indahwati.ri@gmail.com', NULL, '$2y$12$8o6sBklyNQbF5SdKB28gDOrrANIXGh7fvC1vNaN5Y9qncUHmhJjRW', NULL, '2025-10-15 08:01:24', '2025-10-15 08:01:24', NULL, 'default', NULL),
(398, 'Muhammad Khoirul Basyar', 'basyar0106@gmail.com', NULL, '$2y$12$cCpHdAk5m8ku/KHTqYkmLuLOp/AmgRjaVUK5/JWGCkXy14TPgPqhO', NULL, '2025-10-15 08:01:25', '2025-10-15 08:01:25', NULL, 'default', NULL),
(399, 'Naufal Khalid Ghali  muhammad', 'khaliedwoii@gmail.com', NULL, '$2y$12$xagGc8RLvqFwpk.at9r8.u9evK3OenNt4PvCKVzQipxab7hETJTvS', NULL, '2025-10-15 08:01:25', '2025-10-15 08:01:25', NULL, 'default', NULL),
(400, 'Adelisa Rizki Zaharani', 'adelisarizki@gmail.com', NULL, '$2y$12$JbEdejwIadG0LpHxHWbrRu2Y.BCrphn7tQ5PN9n4AF91vcgzhPECO', NULL, '2025-10-15 08:01:25', '2025-10-15 08:01:25', NULL, 'default', NULL),
(401, 'Novi Silvia', 'nsilvia2330@gmail.com', NULL, '$2y$12$UAIAfZnD33bFVV4bkPzVruwyjS0Mu4CPOl84sa0CqOJy6StQ3PPVq', NULL, '2025-10-15 08:01:26', '2025-10-15 08:01:26', NULL, 'default', NULL),
(402, 'Nurfikri Amru Al-fayi\'nursy', 'nurfikri090905@gmail.com', NULL, '$2y$12$39jl4ClHBtxouN1rNGFGj.IL7nPDR0uJqM/K2yiril.Dd1129rF7u', NULL, '2025-10-15 08:01:26', '2025-10-15 08:01:26', NULL, 'default', NULL),
(403, 'Bagus Mahardika Satria Nugraha', 'satriabagus948@gmail.com', NULL, '$2y$12$2udyMkzwpGXSCAnBputhMOpqIBs83En5iifcgVyUNbrBWMTM4qYWu', NULL, '2025-10-15 08:01:26', '2025-10-15 08:01:26', NULL, 'default', NULL),
(404, 'Mochamad bandi', 'bandi3453@gmail.com', NULL, '$2y$12$8j5zFaZCU38K2mUqwfTnE.hqdRJmhjeE4fuf5DDGbVjJ8Q58AmB4S', NULL, '2025-10-15 08:01:27', '2025-10-15 08:01:27', NULL, 'default', NULL),
(405, 'MERRY KUSUMAWATI', 'ameesuprayogi4@gmail.com', NULL, '$2y$12$wsQcsQqrjt4jNtEq8B1rf.2SVVM6cfbZqb5oLaCMxSapK33.ge2nm', NULL, '2025-10-15 08:01:27', '2025-10-15 08:01:27', NULL, 'default', NULL),
(406, 'Moch Aldi Putra Permata', 'aldiputrapermata16@gmail.com', NULL, '$2y$12$84.WYxu5UVdblEr98I/d4u8CNYupwDIVZ/8xTKptajlh4FWNTwkoe', NULL, '2025-10-15 08:01:27', '2025-10-15 08:01:27', NULL, 'default', NULL),
(407, 'Enuk Egowati', 'egowati08@gmail.com', NULL, '$2y$12$NArJbQUmEUFRSTT.5zw85ey38ytyLaXF4J/lhsxPXaJEnL1Qq01ta', NULL, '2025-10-15 08:01:28', '2025-10-15 08:01:28', NULL, 'default', NULL),
(408, 'MUHAMMAD CHOLILI', 'cholilibaly@gmail.com', NULL, '$2y$12$bv1w6QZZTThYW.6RQwlcPODFQOo.UQhlso/456M8eEOdPGeP0hmgS', NULL, '2025-10-15 08:01:28', '2025-10-15 08:01:28', NULL, 'default', NULL),
(409, 'MUCHAMMAD RIZAL SYAKIRUDDIN', 'muchrizall09@gmail.com', NULL, '$2y$12$3koLFcRtyE8cOWNIT.TViuBqpQAGlq48RhV.DvatnMiO8N3jc4.D.', NULL, '2025-10-15 08:15:39', '2025-10-15 08:15:39', NULL, 'default', NULL),
(410, 'Devy Prasetyono', 'devyprasetyono.geo@gmail.com', NULL, '$2y$12$IPw7gHOo7I8ACD1tWwN.oeRSRpbCIoh08VsCyYUwGBLslXoen3d7K', NULL, '2025-10-15 08:15:39', '2025-10-15 08:15:39', NULL, 'default', NULL),
(411, 'AINUN SEGAR RAHMAWATI', 'ainun.rhmwti@gmail.com', NULL, '$2y$12$KKsjNT1Ph5eFf7xxPzSTzecBROG57VePzlvUiMTanFbxDaHYTo6pe', NULL, '2025-10-15 08:15:40', '2025-10-15 08:15:40', NULL, 'default', NULL),
(412, 'Irena Salsabila', 'irenasalsabila@gmail.com', NULL, '$2y$12$cNwlV9muVuWlrof4OG8ynu0tLvIvEpxI8MjgHWPfTkEnn0F3H.HV6', NULL, '2025-10-15 08:15:41', '2025-10-15 08:15:41', NULL, 'default', NULL),
(413, 'Wilda Aulia Fathoni', 'wilda.fath.geo10@gmail.com', NULL, '$2y$12$67w8pschZlhrz.7QLvw5ueS3712.HbYEtouGD.P5UDLWEt/D0gez6', NULL, '2025-10-15 08:15:43', '2025-10-15 08:15:43', NULL, 'default', NULL),
(414, 'Christian Nathanael', 'christiannathanaelsiagian@gmail.com', NULL, '$2y$12$o3P8TKX5GgjwOxGNUGrYDul5GlIbtomkWl7CHMU/XfpuVMF4cXcxC', NULL, '2025-10-15 08:15:43', '2025-10-15 08:15:43', NULL, 'default', NULL),
(415, 'Ahmad Habibi', 'ahmadhabibi020919@gmail.com', NULL, '$2y$12$bu0qoE56vuyM2h5UyjQK2.uqsa/nouJxQFZoEyVuYhEjbCLrSDOX.', NULL, '2025-10-15 08:15:44', '2025-10-15 08:15:44', NULL, 'default', NULL),
(416, 'Dhuiki Nursepta Aldiansyah', 'nurseptadhuiki@gmail.com', NULL, '$2y$12$yWrRyYSwnGIQwcq.Pffp9en.2qny5Niy2wOh.x/IpVDCWznocWTmK', NULL, '2025-10-15 08:15:44', '2025-10-15 08:15:44', NULL, 'default', NULL),
(417, 'Muhammad Muzaky Verdian Firmansyah', 'muzakyverdian@gmail.com', NULL, '$2y$12$J1cI76BgaljDeUk43qGjQepx5nLmw4gj1rK0guC.aKxmKHo7/F8YG', NULL, '2025-10-15 08:15:44', '2025-10-15 08:15:44', NULL, 'default', NULL),
(418, 'Akemat Rio Setiawan', 'riorachell29@gmail.com', NULL, '$2y$12$iRz2oXgSrkl0f4OWIuTyb.LBOPfHEhD4nkwkeTO6aVwCDWJuG9lVe', NULL, '2025-10-15 08:15:45', '2025-10-15 08:15:45', NULL, 'default', NULL),
(419, 'Moh Taufiq Ismu Abadi', 'ismu.taufiq@gmail.com', NULL, '$2y$12$9sOyoxWuci8zpBwNCmovt.5bbxEgNcaQF/H.277qVfKUv2jLLQcWW', NULL, '2025-10-15 08:15:45', '2025-10-15 08:15:45', NULL, 'default', NULL),
(420, 'Sajidan Wildan Ahmad', 'ahmad.sajidanwildan@gmail.com', NULL, '$2y$12$s0bZcBd49tdnHrEOJR79pO6QGRY8O9kF7toJsZQ5wS8/BXSVc/VrC', NULL, '2025-10-15 08:15:46', '2025-10-15 08:15:46', NULL, 'default', NULL),
(421, 'Yonatan Hendra Wijaya', 'yonatan.hendra.2204326@students.um.ac.id', NULL, '$2y$12$zcZF0RmBenIQZQU.wFcQFOziOdEGQTSqRqzjEFA1DYg8fSkjSu/Qi', NULL, '2025-10-15 08:15:46', '2025-10-15 08:15:46', NULL, 'default', NULL),
(422, 'Christiayu Natalia', 'christiayu@bps.go.id', '2025-10-17 02:39:40', '$2y$12$Igl1i3Hjuvsz4A0/ihL3ju55Gg706VMLTg7k/4L18eVNTSfrn5bnC', 'Wbe7bRyYgotKowhT6U4hvy1Hg5hTAHGWRj0VdaLtHe3BeF3Ixl6S5N3by369', '2025-10-17 02:36:37', '2025-10-17 02:36:37', NULL, 'default', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breezy_sessions_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_user_id_foreign` (`user_id`),
  ADD KEY `employees_team_id_foreign` (`team_id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_surveys`
--
ALTER TABLE `master_surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maximal_payments`
--
ALTER TABLE `maximal_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maxpay_singleton_unique` (`singleton`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mitras`
--
ALTER TABLE `mitras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mitras_email_unique` (`email`),
  ADD KEY `mitras_user_id_foreign` (`user_id`);

--
-- Indexes for table `mitra_teladans`
--
ALTER TABLE `mitra_teladans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mitra_teladans_mitra_id_foreign` (`mitra_id`),
  ADD KEY `mitra_teladans_year_quarter_index` (`year`,`quarter`),
  ADD KEY `mitra_teladans_team_id_index` (`team_id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nilai1s`
--
ALTER TABLE `nilai1s`
  ADD KEY `nilai1s_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `nilai2s`
--
ALTER TABLE `nilai2s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai2s_mitra_teladan_id_foreign` (`mitra_teladan_id`),
  ADD KEY `nilai2s_user_id_foreign` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_group_name_unique` (`group`,`name`);

--
-- Indexes for table `socialite_users`
--
ALTER TABLE `socialite_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialite_users_provider_provider_id_unique` (`provider`,`provider_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveys_payment_id_foreign` (`payment_id`),
  ADD KEY `surveys_team_id_foreign` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_mitra_id_foreign` (`mitra_id`),
  ADD KEY `transactions_survey_id_foreign` (`survey_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_surveys`
--
ALTER TABLE `master_surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `maximal_payments`
--
ALTER TABLE `maximal_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `mitra_teladans`
--
ALTER TABLE `mitra_teladans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nilai2s`
--
ALTER TABLE `nilai2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `socialite_users`
--
ALTER TABLE `socialite_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mitras`
--
ALTER TABLE `mitras`
  ADD CONSTRAINT `mitras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `mitra_teladans`
--
ALTER TABLE `mitra_teladans`
  ADD CONSTRAINT `mitra_teladans_mitra_id_foreign` FOREIGN KEY (`mitra_id`) REFERENCES `mitras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mitra_teladans_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai1s`
--
ALTER TABLE `nilai1s`
  ADD CONSTRAINT `nilai1s_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai2s`
--
ALTER TABLE `nilai2s`
  ADD CONSTRAINT `nilai2s_mitra_teladan_id_foreign` FOREIGN KEY (`mitra_teladan_id`) REFERENCES `mitra_teladans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai2s_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `surveys_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `surveys_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_mitra_id_foreign` FOREIGN KEY (`mitra_id`) REFERENCES `mitras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
