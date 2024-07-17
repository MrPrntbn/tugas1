-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2024 pada 14.40
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventoryweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_31_061811_create_menu_table', 1),
(4, '2022_11_01_041110_create_table_role', 1),
(5, '2022_11_01_083314_create_table_user', 1),
(6, '2022_11_03_023905_create_table_submenu', 1),
(7, '2022_11_03_064417_create_tbl_akses', 1),
(8, '2022_11_08_024215_create_tbl_web', 1),
(9, '2022_11_15_131148_create_tbl_jenisbarang', 1),
(10, '2022_11_15_173700_create_tbl_satuan', 1),
(11, '2022_11_15_180434_create_tbl_merk', 1),
(12, '2022_11_16_120018_create_tbl_appreance', 1),
(13, '2022_11_25_141731_create_tbl_barang', 1),
(14, '2022_11_26_011349_create_tbl_customer', 1),
(15, '2022_11_28_151108_create_tbl_barangmasuk', 1),
(16, '2022_11_30_115904_create_tbl_barangkeluar', 1),
(17, '2024_02_01_101018_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akses`
--

CREATE TABLE `tbl_akses` (
  `akses_id` int(10) UNSIGNED NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `submenu_id` varchar(255) DEFAULT NULL,
  `othermenu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) NOT NULL,
  `akses_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_akses`
--

INSERT INTO `tbl_akses` (`akses_id`, `menu_id`, `submenu_id`, `othermenu_id`, `role_id`, `akses_type`, `created_at`, `updated_at`) VALUES
(488, '1667444041', NULL, NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(489, '1667444041', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(490, '1667444041', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(491, '1667444041', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(493, '1668509889', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(494, '1668509889', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(495, '1668509889', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(501, '1668510437', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(502, '1668510437', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(503, '1668510437', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(504, '1668510568', NULL, NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(505, '1668510568', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(506, '1668510568', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(507, '1668510568', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(508, NULL, '9', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(509, NULL, '9', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(510, NULL, '9', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(511, NULL, '9', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(516, NULL, '21', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(517, NULL, '21', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(518, NULL, '21', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(519, NULL, '21', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(520, NULL, '10', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(521, NULL, '10', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(522, NULL, '10', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(523, NULL, '10', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(528, NULL, '22', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(529, NULL, '22', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(530, NULL, '22', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(531, NULL, '22', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(536, NULL, '23', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(537, NULL, '23', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(538, NULL, '23', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(539, NULL, '23', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(545, NULL, NULL, '2', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(546, NULL, NULL, '3', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(547, NULL, NULL, '4', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(548, NULL, NULL, '5', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(549, NULL, NULL, '6', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(550, NULL, NULL, '1', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(551, NULL, NULL, '2', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(552, NULL, NULL, '3', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(553, NULL, NULL, '4', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(554, NULL, NULL, '5', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(555, NULL, NULL, '6', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(556, NULL, NULL, '1', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(557, NULL, NULL, '2', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(558, NULL, NULL, '3', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(559, NULL, NULL, '4', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(560, NULL, NULL, '5', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(561, NULL, NULL, '6', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(562, NULL, NULL, '1', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(563, NULL, NULL, '2', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(564, NULL, NULL, '3', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(565, NULL, NULL, '4', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(566, NULL, NULL, '5', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(567, NULL, NULL, '6', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(1639, '1667444041', NULL, NULL, '3', 'view', '2024-06-29 08:43:36', '2024-06-29 08:43:36'),
(1640, '1667444041', NULL, NULL, '3', 'create', '2024-06-29 08:43:40', '2024-06-29 08:43:40'),
(1641, '1667444041', NULL, NULL, '3', 'update', '2024-06-29 08:43:44', '2024-06-29 08:43:44'),
(1642, '1667444041', NULL, NULL, '3', 'delete', '2024-06-29 08:43:48', '2024-06-29 08:43:48'),
(1722, '1667444041', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1723, '1667444041', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1724, '1667444041', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1725, '1667444041', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1726, '1720210375', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1727, '1720210375', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1728, '1720210375', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1729, '1720210375', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1730, '1720210402', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1731, '1720210402', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1732, '1720210402', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1733, '1720210402', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1734, '1720210422', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1735, '1720210422', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1736, '1720210422', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1737, '1720210422', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1738, '1720175095', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1739, '1720175095', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1740, '1720175095', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1741, '1720175095', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1742, '1720210237', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1743, '1720210237', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1744, '1720210237', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1745, '1720210237', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1746, '1720210250', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1747, '1720210250', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1748, '1720210250', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1749, '1720210250', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1750, '1720210269', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1751, '1720210269', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1752, '1720210269', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1753, '1720210269', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1754, '1720210285', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1755, '1720210285', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1756, '1720210285', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1757, '1720210285', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1758, '1720210299', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1759, '1720210299', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1760, '1720210299', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1761, '1720210299', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1762, '1720210321', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1763, '1720210321', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1764, '1720210321', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1765, '1720210321', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1766, '1720210352', NULL, NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1767, '1720210352', NULL, NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1768, '1720210352', NULL, NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1769, '1720210352', NULL, NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1770, NULL, '9', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1771, NULL, '9', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1772, NULL, '9', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1773, NULL, '9', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1774, NULL, '21', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1775, NULL, '21', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1776, NULL, '21', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1777, NULL, '21', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1778, NULL, '30', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1779, NULL, '30', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1780, NULL, '30', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1781, NULL, '30', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1782, NULL, '10', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1783, NULL, '10', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1784, NULL, '10', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1785, NULL, '10', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1786, NULL, '22', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1787, NULL, '22', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1788, NULL, '22', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1789, NULL, '22', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1790, NULL, '31', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1791, NULL, '31', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1792, NULL, '31', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1793, NULL, '31', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1794, NULL, '23', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1795, NULL, '23', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1796, NULL, '23', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1797, NULL, '23', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1798, NULL, '32', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1799, NULL, '32', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1800, NULL, '32', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1801, NULL, '32', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1802, NULL, '33', NULL, '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1803, NULL, '33', NULL, '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1804, NULL, '33', NULL, '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1805, NULL, '33', NULL, '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1806, NULL, NULL, '1', '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1807, NULL, NULL, '2', '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1808, NULL, NULL, '3', '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1809, NULL, NULL, '4', '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1810, NULL, NULL, '5', '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1811, NULL, NULL, '6', '1', 'view', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1812, NULL, NULL, '1', '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1813, NULL, NULL, '2', '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1814, NULL, NULL, '3', '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1815, NULL, NULL, '4', '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1816, NULL, NULL, '5', '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1817, NULL, NULL, '6', '1', 'create', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1818, NULL, NULL, '1', '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1819, NULL, NULL, '2', '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1820, NULL, NULL, '3', '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1821, NULL, NULL, '4', '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1822, NULL, NULL, '5', '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1823, NULL, NULL, '6', '1', 'update', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1824, NULL, NULL, '1', '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1825, NULL, NULL, '2', '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1826, NULL, NULL, '3', '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1827, NULL, NULL, '4', '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1828, NULL, NULL, '5', '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1829, NULL, NULL, '6', '1', 'delete', '2024-07-05 13:14:06', '2024-07-05 13:14:06'),
(1830, '1667444041', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1831, '1667444041', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1832, '1667444041', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1833, '1667444041', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1834, '1720210375', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1835, '1720210375', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1836, '1720210375', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1837, '1720210375', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1838, '1720210402', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1839, '1720210402', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1840, '1720210402', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1841, '1720210402', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1842, '1720210422', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1843, '1720210422', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1844, '1720210422', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1845, '1720210422', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1846, '1720175095', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1847, '1720175095', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1848, '1720175095', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1849, '1720175095', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1850, '1720210237', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1851, '1720210237', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1852, '1720210237', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1853, '1720210237', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1854, '1720210250', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1855, '1720210250', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1856, '1720210250', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1857, '1720210250', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1858, '1720210269', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1859, '1720210269', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1860, '1720210269', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1861, '1720210269', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1862, '1720210285', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1863, '1720210285', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1864, '1720210285', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1865, '1720210285', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1866, '1720210299', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1867, '1720210299', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1868, '1720210299', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1869, '1720210299', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1870, '1720210321', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1871, '1720210321', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1872, '1720210321', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1873, '1720210321', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1874, '1720210352', NULL, NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1875, '1720210352', NULL, NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1876, '1720210352', NULL, NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1877, '1720210352', NULL, NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1878, NULL, '9', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1879, NULL, '9', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1880, NULL, '9', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1881, NULL, '9', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1882, NULL, '21', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1883, NULL, '21', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1884, NULL, '21', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1885, NULL, '21', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1886, NULL, '30', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1887, NULL, '30', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1888, NULL, '30', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1889, NULL, '30', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1890, NULL, '10', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1891, NULL, '10', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1892, NULL, '10', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1893, NULL, '10', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1894, NULL, '22', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1895, NULL, '22', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1896, NULL, '22', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1897, NULL, '22', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1898, NULL, '31', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1899, NULL, '31', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1900, NULL, '31', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1901, NULL, '31', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1902, NULL, '23', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1903, NULL, '23', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1904, NULL, '23', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1905, NULL, '23', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1906, NULL, '32', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1907, NULL, '32', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1908, NULL, '32', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1909, NULL, '32', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1910, NULL, '33', NULL, '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1911, NULL, '33', NULL, '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1912, NULL, '33', NULL, '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1913, NULL, '33', NULL, '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1914, NULL, NULL, '1', '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1915, NULL, NULL, '2', '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1916, NULL, NULL, '3', '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1917, NULL, NULL, '4', '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1918, NULL, NULL, '5', '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1919, NULL, NULL, '6', '2', 'view', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1920, NULL, NULL, '1', '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1921, NULL, NULL, '2', '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1922, NULL, NULL, '3', '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1923, NULL, NULL, '4', '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1924, NULL, NULL, '5', '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1925, NULL, NULL, '6', '2', 'create', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1926, NULL, NULL, '1', '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1927, NULL, NULL, '2', '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1928, NULL, NULL, '3', '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1929, NULL, NULL, '4', '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1930, NULL, NULL, '5', '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1931, NULL, NULL, '6', '2', 'update', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1932, NULL, NULL, '1', '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1933, NULL, NULL, '2', '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1934, NULL, NULL, '3', '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1935, NULL, NULL, '4', '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1936, NULL, NULL, '5', '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32'),
(1937, NULL, NULL, '6', '2', 'delete', '2024-07-05 13:14:32', '2024-07-05 13:14:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_appreance`
--

CREATE TABLE `tbl_appreance` (
  `appreance_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `appreance_layout` varchar(255) DEFAULT NULL,
  `appreance_theme` varchar(255) DEFAULT NULL,
  `appreance_menu` varchar(255) DEFAULT NULL,
  `appreance_header` varchar(255) DEFAULT NULL,
  `appreance_sidestyle` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_appreance`
--

INSERT INTO `tbl_appreance` (`appreance_id`, `user_id`, `appreance_layout`, `appreance_theme`, `appreance_menu`, `appreance_header`, `appreance_sidestyle`, `created_at`, `updated_at`) VALUES
(2, '1', 'sidebar-mini', 'light-mode', 'dark-menu', 'color-header', 'default-menu', '2022-11-22 02:45:47', '2023-06-29 14:13:42'),
(3, '2', 'sidebar-mini', 'light-mode', 'dark-menu', 'header-light', 'sidenav-toggled', '2023-06-12 00:34:56', '2023-06-29 09:51:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` int(10) UNSIGNED NOT NULL,
  `jenisbarang_id` varchar(255) DEFAULT NULL,
  `satuan_id` varchar(255) DEFAULT NULL,
  `merk_id` varchar(255) DEFAULT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `barang_nama` varchar(255) NOT NULL,
  `barang_slug` varchar(255) NOT NULL,
  `barang_harga` varchar(255) NOT NULL,
  `barang_stok` varchar(255) NOT NULL,
  `barang_gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `jenisbarang_id`, `satuan_id`, `merk_id`, `barang_kode`, `barang_nama`, `barang_slug`, `barang_harga`, `barang_stok`, `barang_gambar`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '1', 'BRG-1688072053663', 'Indomie', 'indomie', '124000', '0', 'MtzCnEqRsA3v05sePelKIaP95sFixrYHxafrTK1u.jpg', '2023-06-29 13:54:45', '2023-06-29 13:54:45'),
(2, NULL, '2', '1', 'BRG-1720372275132', 'kopi', 'kopi', '65000', '0', 'kULUh3BGVAUh6jt5heXfnyxUdmhM1TXl3FAfSHFC.jpg', '2024-07-07 10:11:59', '2024-07-07 10:11:59'),
(3, '1', '1', '1', 'BRG-1721124693093', 'rr', 'rr', '6700', '0', '6CvmKgFTVMHI9J3cHCs6Gd1tyY0qNOs7dx7MWbXD.jpg', '2024-07-16 03:12:18', '2024-07-16 03:12:18'),
(4, '1', '1', '2', 'BRG-1721124806171', 'jj', 'jj', '6700', '0', 'image.png', '2024-07-16 03:13:57', '2024-07-16 03:13:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barangkeluar`
--

CREATE TABLE `tbl_barangkeluar` (
  `bk_id` int(10) UNSIGNED NOT NULL,
  `bk_kode` varchar(255) NOT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `bk_tanggal` varchar(255) NOT NULL,
  `bk_tujuan` varchar(255) DEFAULT NULL,
  `bk_jumlah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_barangkeluar`
--

INSERT INTO `tbl_barangkeluar` (`bk_id`, `bk_kode`, `barang_kode`, `bk_tanggal`, `bk_tujuan`, `bk_jumlah`, `created_at`, `updated_at`, `customer_id`) VALUES
(1, 'BK-1721124286310', 'BRG-1688072053663', '2024-07-09', 'u', '8', '2024-07-16 03:05:00', '2024-07-16 03:05:00', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barangmasuk`
--

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int(10) UNSIGNED NOT NULL,
  `bm_kode` varchar(255) NOT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `bm_tanggal` varchar(255) NOT NULL,
  `bm_jumlah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_barangmasuk`
--

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `bm_tanggal`, `bm_jumlah`, `created_at`, `updated_at`, `supplier_id`) VALUES
(1, 'BM-1721124089796', 'BRG-1688072053663', '2024-07-09', '8', '2024-07-16 03:02:29', '2024-07-16 03:02:29', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_slug` varchar(255) NOT NULL,
  `customer_alamat` text DEFAULT NULL,
  `customer_notelp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_nama`, `customer_slug`, `customer_alamat`, `customer_notelp`, `created_at`, `updated_at`) VALUES
(1, 'Rian Agus', 'rian-agus', 'Pasar Rambutan Jakarta', '0817654432122', '2023-06-29 14:01:12', '2023-06-29 14:01:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenisbarang`
--

CREATE TABLE `tbl_jenisbarang` (
  `jenisbarang_id` int(10) UNSIGNED NOT NULL,
  `jenisbarang_nama` varchar(255) NOT NULL,
  `jenisbarang_slug` varchar(255) NOT NULL,
  `jenisbarang_keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenisbarang_ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_jenisbarang`
--

INSERT INTO `tbl_jenisbarang` (`jenisbarang_id`, `jenisbarang_nama`, `jenisbarang_slug`, `jenisbarang_keterangan`, `created_at`, `updated_at`, `jenisbarang_ket`) VALUES
(1, 'kopi', 'kopi', NULL, '2024-07-16 03:09:02', '2024-07-16 03:09:02', 'kt'),
(2, 'mie', 'mie', NULL, '2024-07-16 03:14:35', '2024-07-16 03:14:35', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `menu_judul` varchar(255) NOT NULL,
  `menu_slug` varchar(255) NOT NULL,
  `menu_icon` varchar(255) NOT NULL,
  `menu_redirect` varchar(255) NOT NULL,
  `menu_sort` varchar(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_judul`, `menu_slug`, `menu_icon`, `menu_redirect`, `menu_sort`, `menu_type`, `created_at`, `updated_at`) VALUES
(1667444041, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2024-02-01 02:56:16', '2024-07-05 13:10:20'),
(1720175095, 'Jenis Barang', 'jenis-barang', 'home', '/jenisbarang', '2', '1', '2024-07-05 03:24:55', '2024-07-05 13:10:20'),
(1720210237, 'Satuan', 'satuan', 'home', '/satuan', '3', '1', '2024-07-05 13:10:37', '2024-07-05 13:10:37'),
(1720210250, 'Merk', 'merk', 'home', '/merk', '4', '1', '2024-07-05 13:10:50', '2024-07-05 13:10:50'),
(1720210269, 'Barang', 'barang', 'home', '/barang', '5', '1', '2024-07-05 13:11:09', '2024-07-05 13:11:09'),
(1720210285, 'Customer', 'customer', 'home', '/customer', '6', '1', '2024-07-05 13:11:25', '2024-07-05 13:11:25'),
(1720210299, 'Supplier', 'supplier', 'home', '/supplier', '7', '1', '2024-07-05 13:11:39', '2024-07-05 13:11:39'),
(1720210321, 'Barang Masuk', 'barang-masuk', 'home', '/barang-masuk', '8', '1', '2024-07-05 13:12:01', '2024-07-05 13:12:01'),
(1720210352, 'Barang Keluar', 'barang-keluar', 'home', '/barang-keluar', '9', '1', '2024-07-05 13:12:32', '2024-07-05 13:12:32'),
(1720210375, 'Lap Barang Masuk', 'lap-barang-masuk', 'home', '/lap-barang-masuk', '10', '1', '2024-07-05 13:12:55', '2024-07-05 13:12:55'),
(1720210402, 'Lap Barang Keluar', 'lap-barang-keluar', 'home', '/lap-barang-keluar', '11', '1', '2024-07-05 13:13:22', '2024-07-05 13:13:22'),
(1720210422, 'Lap Stok Barang', 'lap-stok-barang', 'home', '/lap-stok-barang', '12', '1', '2024-07-05 13:13:42', '2024-07-05 13:13:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `merk_id` int(10) UNSIGNED NOT NULL,
  `merk_nama` varchar(255) NOT NULL,
  `merk_slug` varchar(255) NOT NULL,
  `merk_keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_merk`
--

INSERT INTO `tbl_merk` (`merk_id`, `merk_nama`, `merk_slug`, `merk_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Indofood', 'indofood', NULL, '2023-06-29 13:27:17', '2023-06-29 13:27:17'),
(2, 'ajinomoto', 'ajinomoto', 'ffg', '2024-07-16 03:13:05', '2024-07-16 03:13:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_slug` varchar(255) NOT NULL,
  `role_desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_title`, `role_slug`, `role_desc`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', '-', '2024-02-01 02:56:16', '2024-02-01 02:56:16'),
(2, 'Admin', 'admin', '-', '2024-02-01 02:56:16', '2024-02-01 02:56:16'),
(3, 'Operator', 'operator', '-', '2024-02-01 02:56:16', '2024-02-01 02:56:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `satuan_id` int(10) UNSIGNED NOT NULL,
  `satuan_nama` varchar(255) NOT NULL,
  `satuan_slug` varchar(255) NOT NULL,
  `satuan_keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`, `satuan_slug`, `satuan_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Buah', 'buah', NULL, '2023-06-29 13:26:46', '2023-06-29 13:26:46'),
(2, 'Lusin', 'lusin', NULL, '2023-06-29 13:26:58', '2023-06-29 13:26:58'),
(3, 'Dus', 'dus', NULL, '2023-06-29 13:28:31', '2023-06-29 13:28:31'),
(4, 'Satuan Test', 'satuan-test', 'ket', '2024-07-16 03:05:52', '2024-07-16 03:05:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_submenu`
--

CREATE TABLE `tbl_submenu` (
  `submenu_id` int(10) UNSIGNED NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `submenu_judul` varchar(255) NOT NULL,
  `submenu_slug` varchar(255) NOT NULL,
  `submenu_redirect` varchar(255) NOT NULL,
  `submenu_sort` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`submenu_id`, `menu_id`, `submenu_judul`, `submenu_slug`, `submenu_redirect`, `submenu_sort`, `created_at`, `updated_at`) VALUES
(9, '1668510437', 'Barang Masuk', 'barang-masuk', '/barang-masuk', '1', '2022-11-15 04:08:19', '2022-11-15 04:08:19'),
(10, '1668510437', 'Barang Keluar', 'barang-keluar', '/barang-keluar', '2', '2022-11-15 04:08:19', '2022-11-15 04:08:19'),
(21, '1668510568', 'Lap Barang Masuk', 'lap-barang-masuk', '/lap-barang-masuk', '1', '2022-11-30 05:56:24', '2022-11-30 05:56:24'),
(22, '1668510568', 'Lap Barang Keluar', 'lap-barang-keluar', '/lap-barang-keluar', '2', '2022-11-30 05:56:24', '2022-11-30 05:56:24'),
(23, '1668510568', 'Lap Stok Barang', 'lap-stok-barang', '/lap-stok-barang', '3', '2022-11-30 05:56:24', '2022-11-30 05:56:24'),
(30, '1668509889', 'Jenis', 'jenis', '/jenisbarang', '1', '2023-06-29 12:15:29', '2023-06-29 12:15:29'),
(31, '1668509889', 'Satuan', 'satuan', '/satuan', '2', '2023-06-29 12:15:29', '2023-06-29 12:15:29'),
(32, '1668509889', 'Merk', 'merk', '/merk', '3', '2023-06-29 12:15:29', '2023-06-29 12:15:29'),
(33, '1668509889', 'Barang', 'barang', '/barang', '4', '2023-06-29 12:15:29', '2023-06-29 12:15:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `supplier_nama` varchar(255) NOT NULL,
  `supplier_slug` varchar(255) NOT NULL,
  `supplier_alamat` text DEFAULT NULL,
  `supplier_notelp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`supplier_id`, `supplier_nama`, `supplier_slug`, `supplier_alamat`, `supplier_notelp`, `created_at`, `updated_at`) VALUES
(1, 'CV Intan Permata', 'cv-intan-permata', 'Jakarta', '0857654432111', '2023-06-29 12:13:09', '2023-06-29 12:13:09'),
(2, 'kk', 'kk', 'www', '988', '2024-07-16 03:11:15', '2024-07-16 03:11:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `user_nmlengkap` varchar(255) NOT NULL,
  `user_nama` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_foto` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `role_id`, `user_nmlengkap`, `user_nama`, `user_email`, `user_foto`, `user_password`, `created_at`, `updated_at`) VALUES
(1, '1', 'Super Administrator', 'superadmin', 'superadmin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-02-01 02:56:16', '2024-02-01 02:56:16'),
(2, '2', 'Administrator', 'admin', 'admin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-02-01 02:56:16', '2024-02-01 02:56:16'),
(3, '3', 'Operator', 'operator', 'operator@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-02-01 02:56:16', '2024-02-01 02:56:16'),
(4, 'admin', 'admin1', 'admin1', 'admin12.com', '', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web`
--

CREATE TABLE `tbl_web` (
  `web_id` int(10) UNSIGNED NOT NULL,
  `web_nama` varchar(255) NOT NULL,
  `web_logo` varchar(255) NOT NULL,
  `web_deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_web`
--

INSERT INTO `tbl_web` (`web_id`, `web_nama`, `web_logo`, `web_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Laravel 9', 'laravel.svg', NULL, '2024-02-01 02:56:16', '2024-02-01 02:56:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tbl_akses`
--
ALTER TABLE `tbl_akses`
  ADD PRIMARY KEY (`akses_id`);

--
-- Indeks untuk tabel `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  ADD PRIMARY KEY (`appreance_id`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indeks untuk tabel `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  ADD PRIMARY KEY (`bk_id`);

--
-- Indeks untuk tabel `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  ADD PRIMARY KEY (`bm_id`);

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  ADD PRIMARY KEY (`jenisbarang_id`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indeks untuk tabel `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indeks untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indeks untuk tabel `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`web_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_akses`
--
ALTER TABLE `tbl_akses`
  MODIFY `akses_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1938;

--
-- AUTO_INCREMENT untuk tabel `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  MODIFY `appreance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `barang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  MODIFY `bk_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  MODIFY `bm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  MODIFY `jenisbarang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1720210423;

--
-- AUTO_INCREMENT untuk tabel `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `merk_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `submenu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `supplier_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `web_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
