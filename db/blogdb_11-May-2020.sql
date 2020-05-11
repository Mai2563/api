-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 07:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_000000_create_users_table', 1),
(41, '2014_10_12_100000_create_password_resets_table', 1),
(42, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(43, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(44, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(45, '2016_06_01_000004_create_oauth_clients_table', 1),
(46, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(47, '2019_08_19_000000_create_failed_jobs_table', 1),
(48, '2020_05_08_170849_create_products_table', 1),
(49, '2020_05_08_171101_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('cb76465e50c0265fb60c4f8b399d621148c65b4560acf834233f90a431189b90857476de408c25f0', 5, 2, NULL, '[]', 0, '2020-05-10 07:41:01', '2020-05-10 07:41:01', '2021-05-10 14:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'XXsPtCQ8Yc7WdEGVLDDxHIEfOAXFEGmLRXE8VSC8', NULL, 'http://localhost', 1, 0, 0, '2020-05-10 07:39:10', '2020-05-10 07:39:10'),
(2, NULL, 'Laravel Password Grant Client', '5ycH5wnLT3Ga5UnGVZqbPSGW1cUsnb1i8XWdG8cN', 'users', 'http://localhost', 0, 1, 0, '2020-05-10 07:39:10', '2020-05-10 07:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-10 07:39:10', '2020-05-10 07:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0807ef9a36d05f0079390555b1ac1d5813752a0972f6effb30a74f4d7810f847b1de882af6a77002', 'cb76465e50c0265fb60c4f8b399d621148c65b4560acf834233f90a431189b90857476de408c25f0', 0, '2021-05-10 14:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'autem', 'Quia non optio et in. Ducimus maiores aut rerum. Est nemo sit velit nobis dicta eligendi.', 304, 6, 5, 3, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(2, 'voluptas', 'Nihil est id enim aut. Ut aut iure deserunt. Sint quia consectetur sed ullam aut illo.', 559, 1, 25, 1, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(3, 'et', 'Culpa ut quibusdam aut corporis deserunt. Et fuga harum officiis nihil repudiandae est. Est culpa blanditiis odit id ut illum.', 253, 9, 22, 2, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(4, 'I Phone 4 update', 'The best new phone with Face ID update', 101, 11, 52, 5, '2020-05-10 07:38:47', '2020-05-10 08:35:40'),
(5, 'iste', 'Officiis reprehenderit nulla exercitationem sint ab. Dolor maxime eos at asperiores nihil voluptas eum. Molestias ut ex nemo sint.', 688, 9, 12, 4, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(6, 'non', 'Magnam voluptatem sed perferendis illum amet nisi rerum. Quo est nihil voluptatem saepe nam id. Soluta consectetur est commodi. Accusantium quia est qui incidunt eos. Et tempore rerum ut molestiae facere.', 565, 6, 3, 5, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(7, 'harum', 'Est libero quo sed et voluptatum quis eveniet. Quam reprehenderit magnam qui consequatur quisquam. Reprehenderit voluptas perferendis et dolores quidem porro ut. Illo nobis iure nihil cum at qui.', 938, 8, 10, 1, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(8, 'voluptate', 'Sunt provident impedit accusamus quia. Voluptates voluptatem dolorum doloremque quia ipsam provident. Eveniet blanditiis reiciendis est. Voluptate laborum tempora animi ex autem ipsa qui.', 501, 7, 21, 1, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(9, 'velit', 'Rerum nemo quia quo repudiandae enim numquam animi. Dicta commodi dolorum quo soluta provident. Modi quis in consequatur sit ut dicta. Quia ut ea soluta perspiciatis eveniet.', 647, 2, 22, 2, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(10, 'libero', 'Rerum aut facilis nemo nobis. Aut est vero id vitae et vero.', 997, 1, 23, 4, '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(11, 'officia', 'Est est incidunt minima ut. Atque ipsum quam repellendus excepturi magnam velit. Illum voluptates corporis autem beatae molestiae saepe.', 246, 7, 3, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(12, 'voluptas', 'Tempore non suscipit quibusdam. Quia possimus aut tenetur blanditiis voluptatem natus ipsam incidunt. Repudiandae iure sed enim magni.', 140, 4, 21, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(13, 'ut', 'Quis totam aut expedita sequi non voluptas. Eaque consequatur sint est assumenda voluptatibus aspernatur qui. Est et cum dolorum veniam consequatur minima magni.', 400, 6, 10, 2, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(14, 'qui', 'Laudantium omnis voluptas architecto aut sint culpa mollitia architecto. Aperiam molestias beatae ut temporibus harum vero quia. Totam id dolores magnam et labore.', 287, 0, 2, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(15, 'I Phone 4 update', 'The best new phone with Face ID update', 101, 11, 52, 5, '2020-05-10 07:38:48', '2020-05-10 09:07:21'),
(16, 'tenetur', 'Temporibus non delectus dolorem praesentium recusandae esse. Rerum et non voluptas in dolorem neque ut. Enim reprehenderit unde voluptas. Impedit culpa nostrum nemo molestias repudiandae ut est.', 299, 8, 10, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(17, 'dolorem', 'Labore alias eos vitae assumenda sunt ipsum et placeat. Ad voluptatem dicta ipsam rem perferendis provident sed perferendis. Et possimus enim quia ea cumque similique quasi.', 388, 2, 18, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(18, 'mollitia', 'Voluptas qui ut cumque. Fugit eligendi deleniti aut voluptatem laudantium sit. Ex amet et doloribus saepe recusandae aut. Dolores ea beatae cupiditate molestiae nostrum sit ut.', 302, 6, 20, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(19, 'recusandae', 'Animi et optio nisi. Consequatur qui reprehenderit voluptas esse. Praesentium sit quas placeat necessitatibus. Illo quasi reiciendis et cumque accusantium id et.', 279, 1, 27, 4, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(20, 'possimus', 'Minima assumenda nisi eligendi laboriosam. Atque et perspiciatis accusantium voluptatum eum commodi. Quis nostrum velit illo excepturi facere.', 921, 6, 20, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(21, 'hic', 'Et facere accusantium aperiam. Et aperiam nesciunt et repellendus deleniti neque at. Enim at natus ut ullam quo atque.', 428, 0, 25, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(22, 'vitae', 'Sit dolor ut rerum iure et. Officiis dolores eos perspiciatis suscipit et. Non id quia eaque sit modi dolore.', 940, 1, 8, 4, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(23, 'ut', 'Necessitatibus et doloremque officiis ab. Et labore molestiae asperiores sapiente. Voluptas est doloremque accusamus et dignissimos omnis voluptas. Velit ut ut voluptatem enim rerum sunt. Quis alias nihil earum fugit ad.', 182, 8, 14, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(24, 'deserunt', 'Aut sit enim aut sunt saepe sequi. Unde quasi eos doloremque nulla voluptas fuga. Magni at commodi qui reprehenderit incidunt soluta. Et numquam cum sapiente maxime ipsum sed. Itaque quis repudiandae nihil consequatur.', 719, 1, 23, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(25, 'perferendis', 'Ipsam eius nisi ipsum. Necessitatibus pariatur sed voluptas iste aut quibusdam provident. Consectetur voluptatem qui voluptatem eum. Necessitatibus cum aut dolor odit ut.', 999, 3, 15, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(26, 'consequatur', 'Minima aut quia ut sit. Dignissimos porro excepturi omnis tempore suscipit ut. Porro sapiente libero qui quas. Nulla et quidem sit sint.', 182, 1, 20, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(27, 'autem', 'Voluptas dolores ex quaerat aliquid voluptatibus dolorem commodi. Omnis dolorem eveniet tempore rerum et quidem molestiae. Similique dicta rerum provident cupiditate maxime non. Dolor mollitia est dolor commodi numquam placeat occaecati et. Illum magni asperiores dolorem vel rerum.', 149, 8, 10, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(28, 'natus', 'Omnis sunt ipsum aut rerum. Id veniam blanditiis voluptatem incidunt libero commodi ratione. Est aspernatur earum esse nobis sequi autem. Dolor velit magni et quaerat fuga aliquid odit.', 507, 5, 17, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(29, 'esse', 'Qui modi ea magni veritatis dolore deleniti rem et. Fugit laudantium et velit id possimus laborum. Explicabo voluptate officiis a autem culpa est.', 151, 4, 28, 2, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(30, 'tempore', 'Corrupti autem distinctio consequuntur nostrum. Similique ratione assumenda blanditiis. Sed nisi cupiditate itaque ipsa occaecati nihil molestias. Sed quis amet numquam exercitationem est fugiat laborum neque.', 268, 7, 15, 2, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(31, 'placeat', 'Earum inventore et animi omnis. Eveniet vel aut labore ipsa et perferendis. Et dignissimos aperiam deleniti id eum ratione error.', 604, 1, 26, 4, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(32, 'totam', 'Esse minima et molestias reprehenderit aut ea. Deleniti fugit adipisci qui ex. Et et repellat nihil repellendus iure perspiciatis. Qui debitis ex distinctio voluptatem sit necessitatibus consectetur.', 299, 6, 7, 2, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(33, 'quis', 'Delectus non qui repellat cum eius. Aut placeat distinctio est placeat quia odit placeat ut. Error et voluptas illum ea perspiciatis voluptatibus.', 147, 1, 16, 2, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(34, 'ut', 'Ad vitae magnam eum dignissimos soluta iste. Omnis dicta beatae at ad et voluptatem.', 919, 9, 12, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(35, 'blanditiis', 'Ab animi velit eos quod consequatur et. Deserunt minus quis cumque nemo praesentium. Commodi assumenda velit quia laudantium consequatur. Et quis consequatur rerum officia.', 852, 4, 3, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(36, 'quo', 'At doloremque incidunt qui quibusdam qui excepturi et. Ipsa quaerat aut optio rerum aut. Cumque voluptas ut dolores quis.', 293, 3, 13, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(37, 'omnis', 'Quam aut accusantium reprehenderit eum rem dolorem. Est ea molestiae accusantium maxime quia rerum. Reprehenderit est recusandae totam enim nihil praesentium temporibus. Quia quis omnis est dolores.', 409, 8, 20, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(38, 'officia', 'Explicabo illum quia sint repudiandae. Error nisi sint debitis quasi et nihil. Iste cum dolor inventore nobis deleniti voluptatem vel.', 190, 9, 16, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(39, 'illum', 'Nostrum facere consequuntur alias quae in. Doloribus asperiores aut temporibus magnam. Suscipit ab nisi a. Ullam rerum maiores et aut possimus nisi dolores.', 727, 6, 19, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(40, 'nam', 'Libero est at nemo totam nisi nostrum reprehenderit. Libero explicabo sunt voluptatem est numquam. Laudantium rem voluptate aut ut distinctio. Nisi repellendus eos ut aperiam consequatur et eum.', 200, 0, 5, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(41, 'asperiores', 'Animi quas laborum tempora possimus voluptas deserunt. Nam dolorem sunt libero vitae. Aut quidem ex laboriosam vitae a consectetur delectus corrupti.', 148, 4, 22, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(42, 'praesentium', 'Natus quia quo laborum voluptatem mollitia. Consectetur totam error est dolorem possimus et eum. Cupiditate explicabo impedit dolorem et.', 741, 1, 20, 2, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(43, 'ullam', 'Voluptas recusandae quisquam amet enim quasi nam porro. Error rerum libero fuga commodi quibusdam voluptatem ipsa et. Id praesentium qui architecto est quaerat dignissimos. Enim aspernatur assumenda inventore maiores sit aspernatur.', 954, 8, 13, 5, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(44, 'assumenda', 'Blanditiis culpa minus reprehenderit alias est nostrum debitis. Placeat soluta nobis aut modi illum. Enim nostrum minus a ut necessitatibus. Doloribus quam qui unde sapiente.', 555, 8, 18, 4, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(45, 'velit', 'Consequuntur temporibus consequuntur delectus. Illo quia doloremque ratione accusantium.', 339, 1, 26, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(46, 'quas', 'Facilis nemo est enim eum inventore. Nisi omnis mollitia non sint dolorem aut. Et recusandae perferendis maxime rem. Dolore pariatur maiores expedita voluptatum iure.', 851, 0, 29, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(47, 'porro', 'Facere recusandae expedita tenetur magni. Debitis ratione voluptate eveniet repudiandae maiores architecto.', 511, 2, 10, 1, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(48, 'omnis', 'Delectus dolorem repellat voluptas. Officiis odio voluptas repellat dignissimos quam maxime. Voluptates doloribus est pariatur aliquid nisi. Cum quod voluptatem reprehenderit iste distinctio.', 819, 3, 27, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(49, 'omnis', 'Fugiat quos pariatur quibusdam voluptatibus sapiente non iure. Rerum quidem consequatur eos et voluptatem saepe ut impedit. Vitae alias quisquam officia possimus debitis molestiae. Possimus explicabo dolor vero iure praesentium sapiente temporibus.', 462, 4, 26, 2, '2020-05-10 07:38:48', '2020-05-10 07:38:48'),
(50, 'quo', 'Itaque est architecto quam ea. Dolorem amet autem pariatur et inventore inventore est odio. Ipsa quia in qui et unde. Temporibus aliquid voluptatem aut eos recusandae alias saepe. Quam voluptatum nostrum est.', 837, 9, 3, 3, '2020-05-10 07:38:48', '2020-05-10 07:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 26, 'Prof. Jillian Reichel', 'Accusantium enim quam libero dolorum nisi. Qui voluptatem nemo et. Aspernatur vel eum aut deleniti.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(2, 50, 'Vanessa Daugherty', 'Asperiores eligendi nesciunt praesentium et. Rem hic error nobis recusandae. Qui vel at repellat itaque repellat.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(3, 12, 'Mr. Bartholome Kassulke', 'Ut ratione fuga corporis ipsum. Eum repellat magnam tempore velit ab. Et eius nemo sit ut perspiciatis pariatur quia quasi.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(4, 4, 'Brook Greenholt Jr.', 'Unde dolorem quia sit blanditiis consequatur. Quas quis illum in rerum ipsum. Sit sint ratione porro consequatur rerum omnis fugit saepe.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(5, 40, 'Mrs. June Hartmann', 'Qui commodi soluta quo ex voluptatem. Fugit provident numquam illum non voluptatem tempora. Ipsam quos suscipit molestiae est corporis labore necessitatibus. Corporis ea rem quibusdam. Aut est suscipit vel atque ut sed.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(6, 23, 'Gudrun Larson', 'Fugiat accusantium odio voluptatem et doloremque veritatis. Harum vel vel atque saepe. Quo illum tempore qui ut sit voluptatibus vitae.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(7, 9, 'Clemens Luettgen', 'Ad porro omnis enim in minus voluptatem soluta. Temporibus cum quam asperiores inventore quidem accusantium doloremque. Saepe adipisci voluptas facere sed quo est et. Voluptatem odit sit est. Natus deleniti iure nesciunt.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(8, 49, 'Brennan Jakubowski IV', 'Non deserunt aspernatur nulla natus omnis esse id ad. Distinctio est quam qui vitae officiis sapiente. Eum sit minima voluptates non deserunt minima.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(9, 28, 'Alva O\'Kon', 'Ut fuga eum quidem cupiditate voluptatem tempore. Hic enim aspernatur et ut pariatur. Recusandae sit saepe assumenda facilis perspiciatis voluptates. Culpa quis culpa et doloremque non.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(10, 20, 'Therese Ferry DVM', 'Excepturi molestias est aut cumque ex. Saepe iusto eos molestias quos minima. Repellendus labore architecto debitis ut.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(11, 41, 'Jordon Nikolaus Jr.', 'Et et impedit qui amet. Numquam praesentium dolorem aut quia optio nostrum. Corrupti quis quia aut et asperiores et.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(12, 27, 'Prof. Cullen Emard', 'Ipsam molestiae quis dolor modi et. Quo labore laboriosam alias enim eaque corporis corrupti accusantium. At laudantium nesciunt est sed.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(13, 30, 'Mylene Reynolds V', 'Sint repellendus aspernatur possimus labore accusantium corporis. Vel deserunt beatae dicta et voluptate quisquam blanditiis. Ipsum minima molestiae ut vitae ipsam et commodi. Qui cum quaerat vel.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(14, 17, 'Anika Hayes', 'Quia fugiat quia quibusdam velit ab ut sunt. Facere eligendi aliquam aut voluptatum deserunt qui. Eveniet ea aut magni quia exercitationem cupiditate rerum quisquam.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(15, 45, 'Leone Purdy IV', 'Molestiae animi nihil iusto eum dolorum. Quos natus dolorem itaque. Quia fugit molestiae cupiditate dolore est cumque nemo. Numquam ut asperiores aut quia sit repellat.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(16, 31, 'Jovani Predovic', 'Nobis excepturi reiciendis debitis. Earum accusamus molestiae odio accusamus. Similique temporibus earum maxime eum ipsam voluptates eveniet.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(17, 40, 'Margaret Buckridge', 'Officiis natus et dicta quidem nemo. Voluptates iste blanditiis neque quasi. Consequatur nostrum a numquam consequuntur blanditiis autem. Exercitationem non corrupti quam nam eum.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(18, 27, 'Ms. Ollie O\'Connell I', 'Fugiat ratione minus repellat aut. In ab nam nesciunt officia. Officia repellendus facere eligendi nihil mollitia est. Id consequatur quo vel optio qui.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(19, 5, 'Dr. Woodrow Bartoletti PhD', 'Veritatis quasi quo corporis commodi a autem omnis. Harum ab dolorem minus porro doloribus eum cupiditate.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(20, 25, 'Alexanne Walter', 'Adipisci rerum et id consequatur doloribus repellendus. Minus eos nesciunt et omnis sed. Beatae praesentium occaecati nobis magni.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(21, 43, 'Lera Parisian Jr.', 'Totam et autem doloremque itaque. Tempora odio doloribus voluptatum et. Expedita atque ullam sit est deleniti. Accusantium vel omnis ea a blanditiis minima et.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(22, 11, 'Miss Norene Wilkinson', 'Et possimus voluptatem vel qui. Nihil et voluptatem voluptas error. Laborum aliquam ducimus dolorem illum.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(23, 9, 'Benjamin Kuhlman', 'Fuga temporibus dignissimos eos est non minus. Velit explicabo non voluptas provident magni et perferendis. Non nulla et impedit qui quia earum.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(24, 45, 'Adela Reinger', 'Quaerat saepe non quia repellat. Enim soluta nostrum expedita a eum ut. Error nisi occaecati laborum iure et placeat hic. Quo doloribus quasi alias accusantium optio.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(25, 29, 'Marco Lemke PhD', 'Et itaque ea ex neque et. Voluptas aut magnam dolore natus. Qui consequatur quaerat deserunt autem nemo debitis.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(26, 26, 'Graham Swift', 'Quae quis ipsam omnis voluptatum dolor. Consequatur maiores ad voluptatem voluptate ut minima optio molestiae. Sequi quia facilis voluptatem distinctio repudiandae quos totam necessitatibus. Quidem suscipit excepturi nemo excepturi id voluptate.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(27, 18, 'Reva Beer', 'Delectus consequatur facere id nulla provident quis dicta. In dolor qui dolor aut sed occaecati. Ut enim aut laborum totam officia id laudantium incidunt. Aut ipsum vero neque neque odit a.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(28, 1, 'Mai', 'Best thing on review', 4, '2020-05-10 07:38:50', '2020-05-10 21:26:11'),
(29, 7, 'Freeda Ernser', 'Voluptatum quibusdam nisi porro. Nihil voluptatem nisi eius nemo reiciendis. Voluptas officiis consequatur et laborum reprehenderit. Rerum libero voluptatem minus. Ad repudiandae sit quas porro corrupti dolorem odit.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(30, 33, 'Prof. Griffin King', 'Itaque aut corporis qui sit nulla impedit et. Est qui eaque omnis consequatur ut similique reiciendis. Voluptate aperiam modi a vel asperiores temporibus nulla. Ut eveniet voluptas sed delectus dicta modi.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(31, 25, 'Hoyt Bergstrom DDS', 'Ab eos quos aut consequatur distinctio. Pariatur tenetur tempore praesentium cumque saepe optio nihil. Corporis nihil et nobis consequatur ullam. Culpa temporibus quis odit nam sequi commodi.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(32, 37, 'Americo Volkman I', 'Et animi ratione et occaecati tempore hic reprehenderit. Maiores odio esse itaque nihil perspiciatis. Ullam cum distinctio cum et qui vel. Temporibus officia magni reiciendis debitis beatae ex voluptates.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(33, 1, 'Vickie Senger', 'Sit minima libero quo est voluptatem hic sapiente. Similique officia fuga et atque nemo dolores voluptatem. Animi iusto iste quos est voluptatem et rerum. Est inventore sed distinctio ipsa velit voluptatem qui.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(34, 4, 'Dr. Edyth Feil Jr.', 'Magnam quidem quas in ducimus ut. Veniam eos voluptatem ut neque sed modi voluptate. Autem impedit eligendi at amet.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(35, 2, 'Richard Glover Sr.', 'Eos aut ad suscipit consequatur est sunt sint. At quam inventore modi fugit. Omnis veritatis porro corrupti repudiandae et exercitationem.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(36, 8, 'Dr. Rosalinda Volkman DDS', 'Ut et distinctio dolorem voluptatum ab quia dolores. Molestiae molestias voluptas dolor ut at. Eum alias omnis tenetur cum. In eos est laudantium delectus. Perspiciatis repudiandae repellendus sunt aut omnis dolor aut praesentium.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(37, 3, 'Domenico Spencer', 'Dolor soluta nisi voluptatibus vitae atque cumque. Eligendi vitae quae porro sed similique. Id quia non assumenda minima voluptatem non dolor.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(38, 46, 'Adeline Lakin', 'Tempore vitae aspernatur molestiae aliquid maxime aut. Rerum necessitatibus consequatur aliquid ut sed. Repellendus et quisquam qui dolorem eos esse.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(39, 26, 'Miss Zelda Stracke', 'Similique eum exercitationem tenetur adipisci. Consequuntur omnis omnis totam ab voluptatem. Adipisci qui possimus ad et nam.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(40, 49, 'Mr. Wilhelm Beier Jr.', 'Minima ullam dolore molestias velit qui laudantium animi. Et dolor non officia pariatur. Aut error nemo et fugiat non vel iste. Est expedita facilis vel corrupti perferendis. Enim velit voluptates accusantium reiciendis.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(41, 32, 'Mr. Ulices Goodwin Sr.', 'Commodi eos autem inventore cumque quod ut. Iusto sit dignissimos illum tempora rem cupiditate repellendus. Dolores aliquid illo explicabo deleniti porro. Et ut minima possimus quis at eum explicabo. Eligendi rerum aut repellat sed ratione velit et.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(42, 27, 'Miss Lillian Mante', 'Est soluta esse dolorem. Eaque placeat est fugit voluptatem consequatur recusandae. Blanditiis aspernatur et nemo aut. Ea sequi deleniti voluptatem atque iste nihil.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(43, 50, 'Virgil Rodriguez', 'Ex dolorem qui aliquam explicabo quaerat esse rerum. Rerum esse vel aut. Porro tenetur dolores vero reprehenderit animi inventore corporis repellat.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(45, 13, 'Mrs. Jadyn Kertzmann V', 'Labore reprehenderit illum est. Non corrupti maiores dolorem itaque. Eum fuga ea dicta error architecto qui. Deleniti qui asperiores perferendis excepturi.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(46, 26, 'Stacey Braun', 'Id consectetur quo et ut adipisci repellat. Et modi eius a recusandae ipsum. Quo id quis iusto dolor quis temporibus optio accusamus.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(47, 16, 'Deon Lowe', 'Aliquam ea qui sed porro placeat nihil voluptas. Inventore et ea saepe eos voluptate incidunt praesentium. Iusto sed porro culpa ullam ducimus ad et. Omnis occaecati ut quisquam rem.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(48, 18, 'Verlie Herman III', 'Tenetur sit quam pariatur et omnis autem quis. Et quo minima tempora eos beatae. In earum ipsum dolorum tenetur non et non.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(49, 28, 'Arnoldo Murphy MD', 'Suscipit laborum beatae est et molestias consequuntur. Quas excepturi ut quo hic et. Ratione et suscipit voluptas fugit alias.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(50, 15, 'Cristobal Franecki', 'Quis non ut ut sint. Quos accusamus et excepturi odio ab et. Aut nihil atque voluptate voluptatem voluptatem facere. Aut illo suscipit velit incidunt vel veritatis.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(51, 7, 'Emile Greenfelder', 'Neque voluptates deleniti dolorem qui ea. Et ut commodi architecto quis necessitatibus. Corrupti minus ea velit. Mollitia inventore est voluptas aut.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(52, 46, 'Verna Bailey MD', 'Qui deserunt similique quasi repellat nulla. Ut voluptas ducimus inventore sit voluptas.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(53, 12, 'Therese Bayer DDS', 'Esse veritatis magni iusto nulla ut. Natus voluptatibus consequatur nobis. Non reprehenderit ea earum praesentium quia.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(54, 9, 'Newell Reichert', 'Qui nemo aut non. Cupiditate itaque incidunt magnam voluptatem et quis quibusdam voluptatibus. Earum aut nostrum architecto laboriosam perspiciatis.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(55, 17, 'Zula Langosh', 'Perferendis labore amet est ratione. Aut corporis velit sunt. Eos molestiae dignissimos eum praesentium voluptates numquam nihil. Laboriosam aperiam eum quos qui neque et alias.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(56, 25, 'Demetris Heathcote DVM', 'Harum eum repellat aut delectus omnis. Quis veritatis est suscipit ut optio. Dicta nesciunt qui quisquam ipsam necessitatibus. Non sit omnis totam nisi et qui.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(57, 20, 'Jacquelyn Windler', 'Aperiam ducimus voluptas perferendis distinctio. Illo dolorem facilis aperiam reprehenderit. Velit vel voluptas omnis. Excepturi rerum ab voluptatem sunt. Ut sed id excepturi consequatur odit deserunt esse.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(58, 21, 'Winifred Johnson Sr.', 'Dolor ullam magnam qui est. Possimus facere sit veritatis quae in ea.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(59, 3, 'Francisca Pollich', 'Aut libero qui laudantium harum quo tempora exercitationem velit. Eveniet numquam esse quo illo. Officia nulla qui aspernatur cumque. Est at aperiam assumenda accusantium rerum at delectus corrupti.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(60, 44, 'Prof. Euna Greenholt MD', 'Deleniti eveniet reprehenderit ducimus eos quas. Placeat labore beatae non blanditiis totam nam. Accusamus quia voluptas molestias ut.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(61, 26, 'Cory Kub', 'Inventore quia suscipit illo sequi ratione. Hic non non enim est voluptatem laudantium distinctio reiciendis. Dicta totam ipsum sit laudantium in veritatis ex. Quo qui sequi eum quia tempora.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(62, 28, 'Zack Legros PhD', 'Accusantium vitae ullam sed quia. Corrupti vel impedit error in qui impedit. Eos tenetur velit voluptas dolor. Nobis atque ab deleniti aut commodi sed et.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(63, 4, 'Alvis Dare', 'Eius ducimus temporibus exercitationem dolores rerum adipisci. Modi et itaque fugiat perferendis deleniti aut eos. Error magni dolorum fuga. Dolores et dolore incidunt officiis sit pariatur et.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(64, 27, 'Dr. Donald Ondricka', 'Libero ipsum quos dignissimos quae reprehenderit laborum. Nobis et similique placeat illum nisi dignissimos omnis.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(65, 37, 'Prof. Shawna Eichmann', 'Quibusdam ducimus amet velit corporis natus. Et aut veniam aliquam voluptatem nostrum eaque deserunt voluptates. At sit incidunt praesentium ex cumque hic.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(66, 32, 'Prof. Frank Grimes II', 'Quam itaque vitae et voluptatem deleniti repellat. Ab mollitia error aut. Eligendi esse natus est facilis rerum alias optio minus. Sint sed repudiandae sit qui et.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(67, 40, 'Prof. London Wuckert', 'Debitis aut aliquid voluptas ipsam asperiores est sit. Et assumenda in minus qui et reprehenderit cumque et. Quos et maxime quia aut aut architecto pariatur sapiente. Quia expedita minima aut necessitatibus dolore impedit itaque.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(68, 20, 'Araceli Stark', 'Magni ab ut similique velit deleniti eos esse voluptas. Consequatur corporis sequi eius in. Quidem sequi id mollitia id deserunt iusto dolores voluptas.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(69, 23, 'Dr. Else Dach III', 'Excepturi dolores pariatur culpa dolores blanditiis. Sint qui quo accusamus perspiciatis architecto illum. Amet quia nostrum odit qui.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(70, 11, 'Mr. Destin Beier IV', 'Mollitia pariatur ducimus et. Rerum sapiente voluptas mollitia. Esse in qui aperiam sit non officiis.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(71, 26, 'Lempi Daniel', 'Facere impedit est nobis nesciunt autem quasi ut eveniet. Aspernatur eos dolores est debitis aut. In ipsam impedit saepe deserunt possimus consequatur. In aut ab fugiat repudiandae maiores rerum ab.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(72, 38, 'Guido Mohr', 'Debitis ut ipsam voluptatem consequuntur totam iusto. Error at eaque nemo natus nobis quas iusto. Eaque nulla magnam maiores sit. Fuga et facere eaque vitae qui sit.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(73, 9, 'Ambrose Hayes', 'Similique ullam nemo esse quisquam tenetur odio. In possimus ea iste earum in beatae aut distinctio. Porro tenetur fugiat aut voluptatem.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(74, 24, 'Ms. Dayna Funk Jr.', 'Laboriosam nihil similique ut officiis aliquam. Ut non impedit placeat reprehenderit rerum omnis quibusdam. Velit quia omnis animi id voluptas sit. Ut at ex at magnam enim qui aut natus.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(75, 5, 'Mr. Wilhelm Flatley', 'Sed sit fugiat illo odio ad. Ea ipsa aut cupiditate sapiente.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(76, 43, 'Hallie Franecki MD', 'Aut in quia asperiores. Autem minima sed cumque laudantium. Recusandae perspiciatis quis eum officiis dolor eligendi neque et. Ullam occaecati dolorum voluptatibus consectetur quod laboriosam. Quis asperiores impedit esse rem quo laborum occaecati.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(77, 14, 'Lynn Gaylord V', 'Consequatur ut tenetur dolor esse. Quae qui praesentium consectetur sunt culpa. Veritatis eum voluptatem ratione expedita eos blanditiis.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(78, 48, 'Mr. Guillermo Stiedemann', 'Eum quo id nisi magni. Ut dolor veritatis aut vel recusandae quas consequatur. Ea earum repellendus architecto est numquam distinctio voluptatem. Et soluta voluptas occaecati nemo quibusdam tempore.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(79, 37, 'Antone Balistreri', 'Vel et quibusdam animi debitis nihil fuga. Iusto sint nesciunt voluptatibus beatae. Dolor soluta dolorem odit ut. Consequatur et voluptatem velit quos.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(80, 45, 'Jack Zemlak DDS', 'Ut distinctio necessitatibus ipsum qui atque aut architecto voluptatem. Adipisci in nam distinctio rerum corrupti asperiores. Ipsam aut ea exercitationem et. Temporibus non vitae tenetur sit ut.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(81, 5, 'Prof. Gussie McKenzie Jr.', 'Omnis quos delectus ipsa eos autem adipisci. Molestiae sed quibusdam rerum aut incidunt exercitationem. Consequatur est facilis nesciunt. Nesciunt odit eveniet dolores amet.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(82, 24, 'Lilyan Kuhlman III', 'Non nisi consequatur sed ipsa fugiat in quia sequi. Eius voluptates nihil non aliquam maxime ut eos ea. Perspiciatis officia doloremque quos. Dolorem quis quos aperiam ut aperiam tempora.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(83, 21, 'Prof. Mike Kub Sr.', 'Natus explicabo pariatur expedita delectus est delectus ipsum. Velit illo aut fuga aperiam voluptates. Quis dolorum consectetur modi consequatur aut ducimus. Laudantium sint aspernatur ut libero. Asperiores voluptatem aut id ut omnis quis.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(84, 30, 'Kavon Pacocha', 'Id iure a molestiae tempore temporibus in. Quia quae repellendus praesentium maiores nesciunt aut velit doloribus. Ea laborum similique quas labore voluptatem ex ea. Rem delectus aperiam quia animi dolorem corporis est.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(85, 1, 'Clifford Pollich', 'Voluptatum vel optio soluta et. Nesciunt non voluptatibus laudantium et sed nulla ratione. Quidem neque eos facilis expedita qui. Quibusdam reprehenderit id eaque ipsa cum ut asperiores.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(86, 13, 'Amanda Fadel', 'Est libero omnis neque nemo aliquam soluta quo. Deleniti dignissimos tempore fugit beatae. Sed eos illum qui ab molestiae.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(87, 7, 'Dr. Abbie Koss MD', 'Ea dolor ab voluptatem et eaque quasi eligendi. Molestias consequuntur numquam expedita beatae eius. Ex beatae et ut harum dicta ut.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(88, 13, 'Hettie Rau', 'Ipsa consectetur ut voluptatum consectetur quidem iste illum. Beatae aut vero eveniet eos sit et ullam. Hic quasi et est et ut perferendis in. Sunt sunt est ut et quas placeat et.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(89, 46, 'Braeden Bogan', 'Fugit in qui eum dolorem enim. Id repellat doloremque ut hic veritatis. Officiis rem minima et.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(90, 36, 'Miss Lauriane Feeney PhD', 'Quia voluptas minus occaecati quidem ut. Aliquam ratione non officiis itaque nulla eos ducimus dicta. Facilis quaerat error ut temporibus rerum.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(91, 17, 'Johnson Flatley', 'Deleniti expedita occaecati non sed quasi placeat fugiat sed. Distinctio numquam unde quisquam et dolorem atque sunt. Et tempore alias soluta labore temporibus vero ducimus.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(92, 3, 'Trenton Littel', 'Vitae praesentium et fugiat nihil. Odit est nostrum eum nihil aut reprehenderit ut. Labore fugit aperiam vero consectetur veritatis officia.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(93, 10, 'Miss Rhianna Stiedemann', 'Natus quidem qui at. Fugit est totam aut distinctio sint. Id maiores corrupti impedit quisquam. Rerum nihil fuga nisi tenetur officiis.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(94, 44, 'Prof. Desiree Medhurst', 'Voluptate est et ut dolores rerum molestiae. Est est eligendi fuga quo modi autem et cupiditate. Quae id sit sit quis omnis.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(95, 30, 'Dillan Paucek III', 'Voluptas sunt quod sit fugiat et consequuntur et. Exercitationem architecto enim et veniam saepe. Sed qui itaque ex ipsa. Facere consequatur magni et dolorem eius.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(96, 1, 'Misty Adams', 'Non dolores magnam et. Esse dolorem qui totam officia ullam deserunt odio nobis. Accusamus sed omnis nostrum ut quibusdam aut rerum.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(97, 43, 'Minerva Pfeffer', 'Et esse voluptatum ut quidem. Quia rerum placeat harum blanditiis. Omnis sunt vel dolorum molestias tempora et similique. Aut similique omnis nostrum sint optio.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(98, 11, 'Evelyn Krajcik', 'Velit quibusdam enim soluta nulla placeat adipisci. Eum dolore rerum consequatur autem sint culpa. Accusamus maxime qui minima autem fugiat. Assumenda quaerat dolores facilis excepturi.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(99, 20, 'Mr. Travon Schiller', 'Nihil id voluptatem sed mollitia. Est corporis esse vel magni. Eaque illo adipisci sed est. Blanditiis ducimus tempora voluptas facilis nam.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(100, 2, 'Angeline Steuber', 'Quisquam assumenda dolore reiciendis et consequuntur. Impedit veniam aut similique eveniet. Sunt ab quo sint ad. Est et est minus incidunt tenetur minus qui.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(101, 40, 'Mr. Wilfred Green I', 'Excepturi autem ut aut harum ipsum dolores. Aut quidem tempora deserunt numquam.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(102, 16, 'Rossie Adams', 'Consequatur eum aut deleniti omnis. Labore quo quas repellat reprehenderit. Provident tenetur architecto nisi quibusdam commodi unde nihil. Asperiores voluptatem odio reprehenderit quia sunt explicabo cupiditate. Eligendi laboriosam id aut voluptatem possimus et.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(103, 40, 'Arvilla Barrows II', 'Aut voluptatem et est tempora provident accusamus aspernatur. Et nam sit accusamus. Soluta dolores voluptas minima facere quas ut. Quis assumenda et vel.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(104, 37, 'Kameron Spencer', 'Eos placeat quibusdam alias incidunt expedita quae dicta. Alias consectetur et fuga rerum repellendus temporibus. Aut tenetur aperiam molestiae provident.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(105, 21, 'Arturo Roob', 'Autem perferendis ex tempore rem perferendis rerum rerum. Ducimus impedit ab est aut perferendis sint numquam. Et delectus ut quod ullam. Neque dolores quia perferendis eligendi quo distinctio.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(106, 42, 'Berry Zboncak', 'Dolorem repellendus aspernatur fuga et quam. Rerum ut repudiandae reiciendis quos. Corporis officia repellendus voluptas eum molestiae non. Dolore et earum accusantium veniam qui.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(107, 31, 'Ladarius Walker', 'Expedita et veritatis dolorem ea est voluptas debitis. In explicabo vel blanditiis sit. Aperiam ut autem ut molestiae quaerat assumenda nisi. Amet aut quae aspernatur qui.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(108, 22, 'Tyrell Mills', 'In adipisci incidunt dolorem. Distinctio pariatur et quis quia necessitatibus. Animi quo est accusantium numquam itaque et rerum est.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(109, 41, 'Alexa Kovacek', 'Minima et eos itaque neque aut omnis. Tempora accusamus occaecati non laboriosam sapiente aperiam.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(110, 33, 'Ms. Bernadine Hahn', 'Nesciunt ab saepe minima quasi. Aliquam est qui adipisci hic et doloremque et. Aut tempore est cumque ea.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(111, 31, 'Aiden Conn', 'Ad sed est et laudantium incidunt iure. Nemo minus officiis quas laborum. Sint placeat corrupti corrupti animi id. Omnis corrupti voluptas in aliquam accusamus tenetur quisquam.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(112, 45, 'Antonetta Thompson', 'Quos similique ut et consequatur odit voluptatibus et. Quia omnis possimus adipisci ut molestias perferendis sit. Eum repellendus id vitae dignissimos id in ut. Voluptatem et voluptatem in repellendus ut.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(113, 25, 'Berniece Hoppe', 'Cum aut saepe qui molestiae veniam adipisci magni. Placeat ut velit ea et. Ut sed quo nisi nam. Qui libero molestiae repellendus omnis.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(114, 31, 'Adolfo Kulas', 'In occaecati voluptatem ut voluptatem. Nihil ut velit molestiae quis quo odio. Ad ullam ullam labore nemo fuga accusamus sit.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(115, 44, 'Malika Emmerich Jr.', 'Voluptatem quis explicabo tenetur est quos. Numquam nulla eligendi maiores vitae sequi.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(116, 14, 'Drake Wehner', 'Vero repellendus eos voluptatibus omnis voluptas velit. Aperiam voluptatem provident quibusdam necessitatibus et.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(117, 6, 'Stewart Volkman PhD', 'Atque fugiat est ut consequatur et voluptatem. A doloribus voluptates sapiente neque. Incidunt sit quo autem est eum.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(118, 33, 'Mr. Rocky Auer PhD', 'Debitis magnam nihil pariatur sit. Reiciendis iure perspiciatis officia doloremque quia eos. Fugiat doloribus id similique harum explicabo incidunt. Odit et nam qui ullam iusto ad.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(119, 15, 'Tristian Gutmann', 'Omnis libero et autem provident inventore. Quam placeat maiores corrupti totam et. Maxime nesciunt eos odit vitae nemo nam.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(120, 3, 'Nannie Ledner', 'Molestias ipsa id labore sed magni. Odio nihil eveniet totam aut. Magni eos minus esse saepe. Aut aliquam et blanditiis nobis recusandae.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(121, 12, 'Darien Spencer', 'Modi aperiam molestias in totam voluptatum sequi doloremque. Sed repellat iusto dignissimos deserunt officiis enim est. Ad culpa corrupti doloribus voluptatibus pariatur sit architecto mollitia. Rem possimus incidunt adipisci hic et minima dolorem.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(122, 17, 'Twila Crooks', 'Totam non provident tenetur fugiat ut commodi. Voluptates inventore aut vel ratione magni dolorem quia. Ut velit fugiat quam est.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(123, 39, 'Ms. Mylene Davis', 'Neque harum quod laboriosam dolores. Qui vitae neque animi tempore numquam expedita ut. Voluptate ab aliquid ipsa consectetur. Voluptatibus laborum pariatur ut doloribus vero a reiciendis qui.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(124, 3, 'Isabel Howe', 'Quos et consequuntur deleniti qui tenetur. Totam non consequatur nam facere corporis eaque eum. Adipisci sed sint ut id ex. Quo autem at error sed occaecati sit. Ut harum aut maxime.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(125, 40, 'Kane Glover', 'Suscipit quo aut rerum quam possimus sit dolores reprehenderit. Vel temporibus quidem quidem assumenda. Molestiae natus cupiditate tenetur est voluptas omnis vel culpa.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(126, 39, 'Kelsie Boehm', 'Quia cum similique explicabo ut et. Velit inventore eum animi nisi eaque.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(127, 6, 'Barney Dietrich', 'Quam sunt nemo veritatis amet ea et. Sit officia non ipsum explicabo mollitia aut culpa. Nulla recusandae asperiores quibusdam occaecati. Et accusantium aut modi dolore commodi.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(128, 37, 'Dr. Dedric Lubowitz Sr.', 'Cum aut laudantium corrupti dolor voluptatem exercitationem qui. Id recusandae voluptates sequi consequatur ad nam consequatur ex. Animi accusamus qui et ut non assumenda.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(129, 30, 'Lamont Schinner', 'Soluta alias et molestiae. Aut nesciunt cumque molestias. Sapiente quisquam soluta sint aliquid. Ratione quam veritatis consequuntur voluptatum.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(130, 13, 'Jon Bogan', 'Sunt consequatur odio maxime qui. Vel tenetur illo accusantium esse. Voluptas est molestiae nisi reiciendis sed consequatur iste rerum. Voluptatum consequatur et laboriosam voluptatum fugiat.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(131, 48, 'Camilla Bayer', 'Laboriosam porro hic consequatur aut eum corrupti est. Repellat qui est cum inventore. Quia aliquid blanditiis illum non dolorem ut. Doloremque eum nulla nisi consequuntur quia.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(132, 37, 'Mr. Carleton Beahan', 'Quia deserunt ut assumenda occaecati voluptas. Possimus et facere consequatur quae. Et unde rerum voluptatem expedita dolorem.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(133, 42, 'Arden Luettgen', 'Facere atque dolor ratione quo modi cupiditate. Sunt aliquam dolor consectetur. Odio ex laboriosam dolor ea quod. Ut et esse aut consequatur voluptate.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(134, 49, 'Miss Blanche Watsica I', 'Dicta aut aut aut necessitatibus quia perspiciatis. Reiciendis impedit laboriosam cupiditate repellat facere. Consequatur distinctio autem iure. Ipsa natus quis molestias sit voluptas.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(135, 25, 'Brittany O\'Reilly', 'Labore ex occaecati explicabo enim cum. Vel ab assumenda consectetur ea soluta eligendi non. Nam voluptatem nihil impedit qui in accusantium dignissimos. Distinctio dolores nesciunt eos fuga.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(136, 42, 'Dasia Armstrong DDS', 'Temporibus sint enim assumenda explicabo delectus. Quaerat qui vel laudantium repellat aliquid. Temporibus in maiores sit dolorum quam.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(137, 40, 'Reece Armstrong', 'Possimus reprehenderit aut velit nam ut dolores quibusdam. Id earum consequuntur iusto ad hic rerum. Recusandae eligendi quasi porro et qui. Fuga rerum eum impedit velit nostrum. Tempore nemo magnam sint deserunt.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(138, 15, 'Demarcus Pollich', 'Ex cum sint voluptates omnis aspernatur quia. Velit dolore accusamus assumenda nesciunt. Sed consequatur dolores dolorem excepturi expedita et.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(139, 49, 'Moshe Blanda', 'Eum dolor accusamus harum ipsam dolorem. Et consequuntur accusamus dolores et. Sequi minus qui tempora magni. Aut corporis itaque et fugit consequatur iste qui.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(140, 10, 'Kieran Conroy', 'Ipsam perspiciatis in quibusdam saepe eaque necessitatibus. Ducimus ratione ratione ut. Reprehenderit soluta natus quia asperiores.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(141, 45, 'Mrs. Amanda Champlin DVM', 'Illo itaque ipsam et eos cum qui. Aspernatur delectus id sit consequatur. Molestiae tempora ducimus voluptas qui officia magni. Enim labore accusamus atque odit. Nemo atque voluptatem ex est sapiente praesentium commodi.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(142, 38, 'Chesley Cummings', 'Ut quasi omnis eum et repellendus voluptatibus maxime. Consequatur in quis ut qui. Autem dicta voluptas quos maiores rem quia dolores.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(143, 23, 'Cletus Legros MD', 'Hic sit officia est qui omnis culpa sequi. Inventore nesciunt ut soluta provident aut. Maiores ut ut eum vel veniam.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(144, 15, 'Edyth Gutmann', 'Iste odit nobis tempore. Quia rem molestiae tempora beatae maiores. Esse dolor nemo dolorum quae et. Sapiente qui at quia eos.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(145, 34, 'Prof. Sarai Mertz V', 'Aut aut et sed eos tenetur. Quia quae occaecati nulla earum quam. Qui fugiat et cum qui enim. Molestiae et molestiae odit numquam saepe dolor.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(146, 13, 'Ruby Hill', 'Maxime aut dolorem ut. Tenetur est inventore reprehenderit dolor assumenda. Quasi possimus ullam omnis odit laborum omnis repellendus id.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(147, 9, 'Ezekiel Paucek', 'Reiciendis pariatur labore quo nulla rerum voluptas in quibusdam. Sunt nesciunt culpa fuga harum non. Itaque beatae aspernatur voluptas.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(148, 33, 'Gennaro Kovacek', 'Nihil iste vel incidunt molestiae. Expedita nobis amet dolores. Deleniti maiores in accusamus maxime vel non. Commodi omnis qui vitae maxime praesentium et eaque explicabo.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(149, 3, 'Laurie Parisian', 'Ut molestiae illum voluptatibus ut accusamus. Et similique vero fuga est dolor. Eum quos libero velit enim.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(150, 39, 'Dr. Betsy Gleichner MD', 'Voluptas nostrum aut consequatur est occaecati blanditiis. Vel sed et laudantium et et voluptatibus. Aut modi eos aliquam non ex voluptates est ipsam.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(151, 29, 'Steve Schmitt', 'Veritatis dolores qui soluta alias. Aut dolor possimus dolore est. Officia cupiditate in et rerum aut. Dolorem non ut deleniti. Nam saepe aspernatur fugit pariatur soluta iusto.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(152, 27, 'Mr. Israel Dach', 'Occaecati odio rerum fuga possimus reiciendis in quia. Nostrum pariatur autem aliquam dolorem quam. Ducimus accusantium nihil quia.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(153, 48, 'Cleve Dicki', 'Asperiores qui commodi vel et delectus labore omnis. Recusandae velit sunt architecto reprehenderit totam sit ut possimus. Perspiciatis sit dolores similique sit ipsa sed commodi.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(154, 4, 'Diamond Gottlieb', 'Id ea commodi autem cumque qui ea voluptatem consequatur. Dolores molestias voluptatem in alias reprehenderit. Minus quia eos est et voluptas facilis.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(155, 3, 'Hadley Terry Jr.', 'Est eum itaque aut recusandae perspiciatis. Impedit deserunt pariatur earum soluta. Aut impedit eos nulla omnis labore repudiandae nihil. Voluptatem molestiae asperiores ipsam cum.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(156, 39, 'Missouri Hahn', 'Eligendi dolor voluptatem quia. Nihil eos non dignissimos earum. Voluptas minus at id exercitationem sed.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(157, 10, 'Prof. Tevin Hansen', 'Magnam aut consequatur odit corrupti quis quo. Tenetur officia eius dolor sit. Eum voluptatem dolores ea reiciendis est aut.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(158, 29, 'Miss Rosamond Parisian Jr.', 'Veniam et eos enim omnis eos sunt architecto. Illum ipsum inventore occaecati incidunt corrupti. Numquam dignissimos possimus et ut.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(159, 26, 'Burnice Skiles', 'Rerum odio molestiae enim qui. Sunt suscipit nesciunt eaque aut odit. Earum et enim quas suscipit. In id dignissimos dolorem sequi beatae.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(160, 1, 'Abbey McClure', 'Cum facere quasi maiores nobis eum. Excepturi praesentium deleniti quas ut veniam sed. Qui ipsa aliquid sit aut quos et.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(161, 15, 'Martina Gulgowski', 'Animi rerum quidem eos voluptas. Perspiciatis dolorem beatae labore soluta eos asperiores dolorum. Consequatur sit incidunt voluptates ratione nesciunt et.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(162, 50, 'Baby Pfeffer', 'Molestiae aspernatur sit non magnam magnam iste. Voluptas eos veniam deserunt consequatur possimus. Est voluptatibus distinctio doloremque et ratione quisquam. Omnis laborum quae qui veritatis esse.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(163, 24, 'Miss Michele Gleichner Jr.', 'Asperiores reiciendis tenetur laudantium tempora similique. Dolores quae omnis rem quis molestiae aperiam sit doloribus. Omnis dicta qui quo aspernatur quod in facilis optio. Sapiente quia eveniet eius possimus. Qui nemo et assumenda voluptatem voluptas.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(164, 44, 'Dayna Crooks', 'Quia quasi doloribus eaque assumenda doloremque voluptatem. Quo harum voluptates praesentium aut. Impedit quis omnis sint qui aperiam nemo et voluptas. Et enim veritatis aperiam.', 5, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(165, 3, 'Ms. Haven Lueilwitz Sr.', 'Quidem perferendis molestiae consectetur commodi. Nam excepturi natus odio eos. Atque qui quaerat a sit.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(166, 17, 'Mr. Keshaun Lockman', 'Sunt asperiores qui optio eos totam exercitationem. Magni non in et dolorem ex eaque qui ut. Veniam doloremque debitis illum fugiat. Pariatur molestias officiis at et.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(167, 27, 'Rose Reichel', 'Unde voluptas voluptate aliquam minima. Minus magnam quasi optio quae est et ut. Aut commodi omnis eaque quia. Voluptatum voluptate qui fugit placeat. Dolore quos et vel quas assumenda.', 3, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(168, 20, 'Dr. Martin Fadel Jr.', 'Ab atque velit officia aut pariatur commodi. Voluptatum laboriosam ut sint voluptatem consectetur ut. Dolores dolorem vitae repellendus autem nihil. Et ad corrupti vero sit. Cupiditate quae vel sed ea ut provident.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(169, 45, 'Katheryn Bins', 'Non cupiditate quo saepe omnis. Aperiam doloribus rerum nam aut exercitationem in. Dolores ipsum eos nemo provident rerum nobis et. Nesciunt ipsum eos quia sed accusantium. Rem incidunt neque amet aliquid.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(170, 3, 'Domingo Nader', 'Provident tempora consequuntur in minus est. Voluptas dolorem vitae facere ut nostrum libero. Veritatis eos id iste alias.', 1, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(171, 12, 'Jerel Bednar', 'Labore ad enim reiciendis voluptatem. Officia beatae consequatur repellendus. Possimus illo autem non.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(172, 48, 'Prof. Marion Green II', 'Eaque sed distinctio tenetur aut error. Sequi quia corrupti et. Optio magni quis aliquam excepturi eum voluptatem et. Omnis voluptatibus voluptatum eos illo.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(173, 24, 'Mrs. Phyllis Pfannerstill', 'Ut id nihil earum id eum magni vel. Enim qui quae sed fugiat dolorum est. Minima cumque voluptatem ipsum expedita omnis. Aut recusandae dolorum iusto et quidem odit.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(174, 5, 'Dr. Hillard Stark III', 'Rerum quibusdam qui nostrum voluptatum inventore perferendis vitae. Animi sint voluptate est explicabo at id. Maxime commodi impedit ex. Pariatur tenetur in blanditiis sit.', 4, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(175, 2, 'Junius Lynch', 'Odio in maxime nihil neque. Esse adipisci ducimus quas optio. Voluptatem ut nesciunt odio tenetur ex. Officia aut minima qui voluptatem distinctio enim.', 0, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(176, 2, 'Prof. Delmer Stracke', 'Tempore harum in placeat neque nobis placeat ducimus. Accusamus repellat impedit aut. Nesciunt illo molestiae aliquam nam.', 2, '2020-05-10 07:38:50', '2020-05-10 07:38:50'),
(177, 7, 'Effie Cronin', 'Alias quo necessitatibus velit ut repellendus accusantium. Magni iure quasi consequatur. Tempore et aut repellendus accusantium et voluptatem debitis. Accusantium voluptas aut fugiat sit ipsam consectetur placeat.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(178, 14, 'Lucile Wyman', 'Aut sed qui voluptas. Fugiat illum vel iusto harum. Esse aut consequuntur quod possimus aut accusantium iste pariatur. Aut suscipit harum magni vel veniam at.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(179, 44, 'Mitchel Hartmann V', 'Corporis pariatur ducimus voluptatem fugiat dolor illum laudantium quis. Ab numquam ut delectus dolor porro non quo blanditiis. Impedit sit pariatur consequatur veniam provident cupiditate veritatis et. Dolore enim velit aut aperiam omnis.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(180, 18, 'Janie Howell', 'Nihil vero aut amet quia. Et ut eum facere quo possimus. Eum saepe et ut dolores iste autem. Fugiat quia animi facilis sunt error.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(181, 16, 'Mikayla Gleason', 'Exercitationem doloremque incidunt ab est quas soluta. Nulla quisquam laboriosam ipsum sequi sed. Consectetur ut et assumenda autem.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(182, 39, 'Prof. Kaya Barrows', 'Quidem pariatur veniam dignissimos nemo. Quaerat unde aut voluptas nesciunt et autem iusto deserunt.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(183, 41, 'Dr. Catalina Pfannerstill MD', 'Nesciunt totam tempore accusamus dolorem assumenda aut corporis hic. Sunt dolorem unde et vel reprehenderit doloremque corrupti. Nam consequatur repudiandae distinctio possimus neque quos. Quisquam laborum animi non quos corrupti nihil. Temporibus nam perspiciatis omnis ut quidem.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(184, 49, 'Brisa Murazik', 'Necessitatibus incidunt praesentium maxime voluptate quaerat eaque repellat quod. Temporibus consectetur quasi iure veritatis ipsa. Dolorum beatae vel laborum qui. Rem neque occaecati voluptas deserunt non.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(185, 40, 'Prof. Darien Lesch', 'Saepe et voluptas ut qui. Ut molestiae tempora et sunt maxime impedit occaecati. Non eos incidunt sit. Veniam doloremque distinctio in expedita.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(186, 10, 'Prof. Fred Rempel IV', 'Nobis est voluptate ad occaecati temporibus accusantium. Recusandae minima rerum sed sapiente facilis recusandae enim. Voluptate nam aspernatur iure et consectetur sapiente. Ea aut autem accusantium ut qui. Ut similique fuga iure hic sint vero.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(187, 4, 'Jordon Schultz', 'Qui ut ut eaque ut ad at. Illo excepturi inventore deserunt deserunt. Similique veritatis sed distinctio et nisi sapiente debitis non.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(188, 6, 'Keanu Kub', 'Explicabo architecto est nisi molestiae sed dolore maxime. Omnis voluptatem impedit voluptatem quas occaecati ea. Quia architecto magni qui eius ullam. Nemo provident ducimus qui vel id neque.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(189, 37, 'Prof. Marianne Wolf', 'Et nobis voluptatem vero sint autem aut. Omnis itaque expedita reprehenderit natus ea illo. Dolores nihil impedit dicta consectetur temporibus voluptas. Officia eligendi sit est pariatur repellat sunt cum harum.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(190, 44, 'Kimberly Rolfson', 'Voluptatum consequatur voluptas natus sed voluptatem omnis autem. Et illo optio quod saepe quo expedita. Unde corporis non consequatur quas qui voluptas.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(191, 8, 'Mrs. Opal Kutch', 'Laboriosam nemo rem aut est sunt praesentium ex. Temporibus debitis ex consequuntur deleniti architecto dolore. Qui perferendis aut quidem assumenda rerum magnam.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(192, 13, 'Ova Ondricka', 'Debitis dolor facere ut ut necessitatibus atque quis ut. Magni nulla hic magnam adipisci excepturi. Maiores blanditiis non tempora non voluptatem accusantium labore est. Praesentium ut corrupti qui aut doloribus qui.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(193, 16, 'Nicola Homenick Sr.', 'Quia accusantium reprehenderit aliquid quod voluptatem. In nesciunt optio dolorem. Sed omnis aut quia consectetur. Quibusdam et odit corporis aut mollitia.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(194, 3, 'Dr. Lesley Willms I', 'Inventore quis dolor sunt ut consequatur nihil. Suscipit sunt odit necessitatibus sint aut recusandae. Aliquam rem est aut animi et ut est.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(195, 50, 'Bell Schneider', 'Ut ullam nostrum voluptatibus error. Quibusdam doloremque commodi deleniti praesentium temporibus. Iure sapiente ea possimus pariatur repudiandae inventore voluptas ut.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(196, 7, 'Jaquan Baumbach', 'Tenetur quasi dolor incidunt. Voluptates illum iste aut ratione. Dignissimos aut officia nihil nam. Beatae error iste necessitatibus numquam eos totam. In rem perspiciatis modi ea rerum numquam ut.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(197, 39, 'Mr. Terrance Borer MD', 'Doloremque quas et sequi dolor qui aperiam veritatis. Harum quos aliquid et assumenda tempora sed. Optio nisi dolores non odit quod et. Est et sunt ipsa quasi rem eos.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(198, 22, 'Abelardo Treutel', 'Repellat necessitatibus autem impedit quasi earum. Id doloremque eum veritatis praesentium labore incidunt. Possimus hic minus dolor unde dignissimos et. Et officia maxime odit aut ut qui sapiente. Porro exercitationem quas est sed.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(199, 14, 'Wava Jakubowski II', 'Natus tenetur sunt sunt dignissimos fugiat voluptatum. Aut modi veritatis molestiae quisquam corporis. Architecto aut ea eos saepe magni. Dicta dolore repellendus repellat.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(200, 6, 'Elvie Ledner', 'Quam omnis suscipit possimus quis beatae voluptatum eveniet. Non expedita in eum perspiciatis cum a. Quasi amet ut eos sed. Aut quia suscipit tempora sequi possimus.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(201, 8, 'Shanel Huels', 'Delectus dolorum rerum qui voluptatum facere enim. Sit dolores quia eveniet aut minima sunt possimus voluptatem. Consectetur rem ut esse doloribus sequi.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(202, 31, 'Claire Brown III', 'Corporis dignissimos omnis eligendi reprehenderit. Ab corrupti in voluptatem ut voluptatem qui. Cumque placeat ad voluptatem. Laboriosam neque adipisci non officia dignissimos magni libero atque. Dolores qui quia nesciunt et asperiores voluptatum esse.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(203, 15, 'Santino Blick DVM', 'Nam vitae facilis rerum possimus sit voluptas. Qui dolorem soluta non qui quisquam rerum repellendus. Quis nemo consectetur qui error fugit omnis.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(204, 14, 'Miss Sophie Robel I', 'Laudantium aut veniam rem soluta cum dolores iusto. Modi iste recusandae rerum. Velit quis temporibus sequi fugiat est vero distinctio optio. Dolorem molestiae eveniet necessitatibus et.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(205, 40, 'Ms. Cecelia Cronin', 'Ipsam quos blanditiis iste soluta temporibus. Tenetur aut neque totam. Aut itaque quis quia occaecati vitae. Aliquid corrupti vel officia facilis.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(206, 16, 'Libby Flatley', 'Ab voluptatem enim expedita. Similique beatae consectetur autem aut soluta. Quo molestiae quisquam eum vitae. Dolor aut et sed perferendis ad possimus laudantium.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(207, 46, 'Danyka Gaylord', 'Unde qui quasi sed saepe et ratione. Fugiat id omnis dolor odit. Alias voluptatum ipsum autem est.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(208, 37, 'Miss Emilia Torphy I', 'Eos voluptatem omnis nam qui accusantium asperiores animi. Cum deleniti voluptatem autem quia voluptates corrupti eius. Sunt quae consectetur sunt et asperiores voluptatem voluptas qui. Sed ut sint dicta sed voluptatem sint consequuntur.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(209, 48, 'Ms. Brittany Funk MD', 'Aperiam est excepturi et cum nulla. Accusamus quia eveniet facilis veritatis dolore.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(210, 13, 'Fabian Ankunding', 'Dolorem earum ex temporibus harum et. Consequatur officia et ab hic quia qui. Libero omnis vel quis doloremque possimus ex. Fuga ut quo ducimus nesciunt sapiente.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(211, 33, 'Haleigh Padberg', 'Necessitatibus dolore facilis officiis alias labore in voluptatem. Neque quos nobis aut laboriosam. At quo magnam eius neque fuga. Asperiores molestiae quam itaque illum.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(212, 38, 'Ms. Mafalda Hane IV', 'Praesentium consequatur ut eius explicabo omnis odit. Assumenda facilis delectus et aspernatur. Dignissimos occaecati amet doloremque a sunt voluptates. Dolores quia vitae facilis consequuntur eius.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(213, 36, 'Ashley Kuhic', 'Non tempora reiciendis minus quis veritatis magnam voluptate. In rerum est ab eaque quidem qui ex. Vitae amet aspernatur tempora qui vel. Porro dicta sapiente voluptatum.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(214, 10, 'Kasey Abbott', 'Eius et est ut dolorem a eos. Nihil recusandae unde repellendus odio ipsam vel. Aspernatur omnis ipsum rerum eum exercitationem repellat maiores.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(215, 41, 'Mr. Lourdes Murphy', 'Omnis qui dignissimos repudiandae magni voluptates ex qui laboriosam. Aut labore perferendis cumque consequatur qui. Ea sapiente perspiciatis id ducimus et. Aperiam nostrum inventore ut possimus sit et qui.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(216, 7, 'Robbie Ernser V', 'Perferendis cumque sint officiis laboriosam ea est aut. Consectetur velit consequatur vel quaerat debitis ea eos eveniet. Quo eos incidunt officiis laboriosam. Expedita repellat ut doloribus cumque.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(217, 6, 'Miss Lavada Lynch V', 'Voluptas est ut odio nihil omnis sed tenetur. Eligendi nisi sed vitae minus. Pariatur sunt debitis sapiente iusto.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(218, 17, 'Jazmin Cruickshank', 'Rerum error deleniti quis quisquam illo delectus consequatur. Maiores ipsum veniam numquam exercitationem velit necessitatibus consectetur unde. Expedita cum voluptas ratione provident.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(219, 5, 'Larissa Abbott', 'Vero deleniti soluta nemo libero. Voluptatem in enim magnam atque fugiat nihil qui. Et aut atque eum rerum iusto. Molestiae et qui eligendi necessitatibus repudiandae.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(220, 19, 'Norberto Ortiz', 'Magni non neque iusto praesentium impedit hic numquam. Pariatur dolore ut quaerat deserunt.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(221, 46, 'Rosina Zulauf', 'Sit rerum ut enim et maxime. Odio nisi quos rem et. Est commodi et temporibus id pariatur nostrum qui cupiditate. Aliquam voluptas in ut libero nisi atque consequatur architecto.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(222, 40, 'Miss Kylie Wintheiser', 'Dolores adipisci aut quia qui. Sapiente veniam sed minus perspiciatis corrupti id. Non repellendus sunt quo expedita nostrum.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(223, 6, 'Piper Hickle', 'Quibusdam sint minima dolorem et sit aut. Est facere fugit distinctio sed error quibusdam. Et voluptatem earum expedita necessitatibus architecto.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(224, 3, 'Prof. Keara Volkman V', 'Occaecati impedit sunt doloribus labore esse. Temporibus eveniet accusantium molestias consequatur aspernatur unde. Minus ea quis qui in. Error neque laborum veritatis tempora quos.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(225, 38, 'Hilton Romaguera', 'Facilis eaque aliquid eum aut rerum expedita rerum. Est minus rerum voluptatum numquam aliquid ea ducimus ut. Perspiciatis vel veritatis veniam officiis. Aut laboriosam dolor fuga beatae alias sed.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(226, 18, 'Paolo Price', 'Voluptatibus qui iusto quasi nisi. Atque similique et quo sed tenetur doloribus. Et laboriosam iure tempora qui et voluptas quis.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(227, 15, 'Prof. Ross Reichert', 'Repudiandae magnam iste quisquam consequatur est. Et et et quos quibusdam dolore esse. Perspiciatis accusamus earum aut minima iusto voluptas.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(228, 40, 'Anabel Kub', 'Provident qui dolores delectus dolores occaecati. Dolores voluptatem alias et rerum velit deleniti voluptatibus. Enim at accusantium et qui nobis esse. Voluptatem nesciunt consequatur illo fugit. Et doloribus mollitia cupiditate sit et.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(229, 30, 'Tyson Rodriguez', 'Fugit soluta accusamus minima at. Nisi fuga neque quibusdam sunt quaerat excepturi. Minus animi possimus animi quod velit consectetur.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(230, 12, 'Gail Bins IV', 'Vitae et iusto dicta quae. Unde quis tenetur dolor quibusdam. Sequi aut a dolorum facere eos.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(231, 30, 'Hunter Ondricka Jr.', 'Excepturi quia consequatur eveniet error ut nulla molestias. Sint et et dolore in sapiente. Doloremque possimus et praesentium odio velit. Itaque excepturi pariatur sed.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(232, 19, 'Sophia Medhurst', 'Et cum tempora repellendus quas. Nobis quod vitae deserunt delectus repellendus. Qui consectetur quia sapiente autem ut. Non laboriosam praesentium consectetur omnis doloremque unde laudantium eos.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(233, 46, 'Orpha Cremin', 'Earum id dolores magni. Consequatur sit placeat optio reiciendis voluptatem aspernatur. Aliquid deserunt eum maiores blanditiis eos voluptates.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(234, 43, 'Katelynn Will DDS', 'Porro accusantium nam non molestiae vel. Aut incidunt veritatis non quis quo aliquam rem ab. Autem et odio voluptatem dolor.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(235, 43, 'Mr. Manley Stiedemann Jr.', 'Tempora harum consequatur tenetur dolorum. Aut est autem maxime. Voluptatum corrupti quisquam quidem ut distinctio. Quibusdam et quia ea repellat debitis.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(236, 4, 'Prof. Randy Kreiger', 'Quia velit ad veritatis perferendis ut aut sed blanditiis. Voluptatem quas eveniet sunt ut in atque magni. Voluptatem soluta aut recusandae laboriosam suscipit expedita voluptatum.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(237, 40, 'Orie Lind', 'Mollitia enim similique quo voluptas perspiciatis et nisi repellendus. Ipsum fugit omnis culpa molestiae eum.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(238, 13, 'Joseph Bahringer', 'Tempore atque quia autem. Aut qui dolore cum. Consequatur quasi et soluta voluptas non enim nemo.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(239, 23, 'Mr. Leonardo Legros', 'Libero quam aliquid unde dolorem nobis modi debitis. Omnis dolore dicta eum totam repellendus exercitationem recusandae. Aliquam ut voluptatem earum neque unde accusantium eaque.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(240, 49, 'Mrs. Lempi Marks', 'Est non nam sint reprehenderit qui. Tenetur est eaque mollitia. Et quisquam corporis velit.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(241, 24, 'Dr. Marcel Langosh PhD', 'Eveniet maxime quibusdam expedita suscipit sed. Doloremque eligendi aliquam perferendis non. Est deleniti cupiditate vero quo eum. Asperiores dolorum et nihil nulla.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(242, 43, 'Mrs. Mariela Cummerata MD', 'Sit et nam quo voluptatem perspiciatis dolorem. Quia consectetur officiis at facere aperiam accusantium ipsa eius. Laudantium quisquam cum dolore dignissimos porro.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(243, 8, 'Ned Witting', 'Minima dignissimos repudiandae voluptatem enim quia distinctio. Exercitationem odit non aut. Suscipit nobis aut consequatur itaque qui omnis eaque. Rerum nostrum cum vitae fugiat molestiae.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(244, 24, 'Zoe Ondricka', 'Autem quis atque voluptatem veniam. Animi nostrum iste saepe alias. Itaque tenetur non neque quas quas labore ipsum. Neque consequatur aut recusandae nam esse commodi unde.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(245, 47, 'Ms. Antonina Ziemann II', 'Asperiores sint voluptatem quod animi soluta voluptas. Aliquam est deserunt nobis deleniti eum possimus. Molestiae minus adipisci assumenda corrupti. Unde vero voluptatem occaecati doloremque.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(246, 9, 'Prof. Ryder Howell Jr.', 'Quo sint nobis quis esse recusandae fugiat et. Nobis sit fugiat quasi ipsam hic. Sit vel aspernatur tenetur. Enim pariatur officia nulla magnam doloremque consectetur odit.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(247, 25, 'Jackie Hyatt Sr.', 'Quidem sed qui quam nulla eum iusto quis itaque. Ab repudiandae ut aliquid facilis ut iste ut. Rem voluptatem sed ut cum tempore expedita.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(248, 8, 'Gaetano Ernser', 'Incidunt consequatur molestias aut ea a ut. Ut doloribus id assumenda recusandae. Tempora eum accusantium nostrum delectus esse explicabo et. Est qui rem impedit nostrum et maxime nihil. Ut reprehenderit fuga quia est molestiae.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(249, 31, 'Hassan Fisher', 'Ab cumque placeat facere. Ex animi dolores velit quo culpa. Accusantium occaecati quo deleniti non impedit ut iste neque.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(250, 22, 'Jeromy Ernser', 'Quos in reiciendis sunt ipsam sapiente quisquam. Rerum architecto sit saepe autem aut. Blanditiis iusto saepe itaque laboriosam dolor.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(251, 46, 'Ms. Vincenza Moore', 'Eveniet numquam magni nihil qui. Nam dolore quaerat ea ipsum labore qui nobis. Repudiandae officiis ipsa laboriosam ex facere odit hic. Rerum aut optio fugit in.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(252, 42, 'Esther Mohr', 'Ea ad ex tempora non expedita sed tenetur. Optio quia molestiae quo odio excepturi dolor autem. Quia quae laborum cupiditate quo fuga sint distinctio.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(253, 50, 'Leonora Pagac', 'Laboriosam dolore ratione placeat fuga blanditiis. Doloremque consequatur ullam ducimus soluta. Quae excepturi saepe dolorum temporibus. Voluptas beatae voluptas quia nisi.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(254, 20, 'Mr. Jared Lind DDS', 'Officia sed repellat at et nesciunt ut voluptates. Perferendis dolorem magnam laudantium ut culpa qui. Minima minus ex et at ad distinctio.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(255, 48, 'Mr. Vito Becker', 'Dolore molestiae delectus eum iure quam qui sit vel. Officiis qui quis aliquam ea. Qui odit iure molestias voluptatem quasi ut non sed. Libero maiores a tenetur consectetur minus ex in.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(256, 17, 'Dr. Vince Heidenreich IV', 'Ut id adipisci eos exercitationem quo. Nulla facere qui qui totam est earum placeat. Nam pariatur in temporibus.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(257, 13, 'Alexzander Runolfsson III', 'Voluptate et aut quia rerum inventore sed. Ut deleniti qui quae in ex minus architecto. Animi voluptas nihil fuga nihil qui.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(258, 42, 'Aurelio Wuckert', 'Atque minus ea voluptatem fugit veritatis exercitationem. Error iusto ut incidunt velit provident qui voluptas nostrum. Eveniet ex similique voluptatibus aperiam dolor debitis.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(259, 36, 'Angelita Shanahan Sr.', 'Eaque soluta facilis quas nostrum. Perspiciatis in eos illo aspernatur laborum sed. Minus nobis vitae rem est voluptatibus.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(260, 29, 'Mr. Enid Grimes V', 'Molestiae qui aut officia rerum eaque ad velit. Quo aut velit iste rerum aliquid incidunt. Adipisci ipsum fugiat ut ex sed natus. Ratione itaque hic voluptate voluptatem sed incidunt.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(261, 50, 'Vena Ratke', 'Qui eaque consequatur alias. Animi sunt et excepturi est est. Molestias autem laborum saepe earum architecto. Mollitia quas quos autem molestiae.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(262, 24, 'Mr. Saul Brown PhD', 'Et omnis placeat exercitationem ut sit fuga iusto at. Qui harum explicabo voluptatem et itaque officiis est omnis. Sit sit rem officia quia exercitationem eveniet. Tenetur unde quam sed qui.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(263, 9, 'Dr. Dakota Lang', 'Consectetur dolores voluptates aut eum dolores cupiditate molestias enim. Voluptates nulla dolore iusto pariatur pariatur dicta. Voluptatem voluptatum nostrum vero vero. Necessitatibus optio et nisi ullam excepturi.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(264, 15, 'Watson Predovic Sr.', 'Odio distinctio vel sed possimus alias labore. Aut nesciunt fugiat accusamus quas.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(265, 6, 'Prof. Jaquan Hills DVM', 'Ab ut aut consectetur ea. Omnis iste esse repellendus est aspernatur ut ad. Aut eum veritatis ut in. Voluptatem officia vel iure iste eius enim velit voluptas.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(266, 15, 'Dr. Daren Carter Jr.', 'Sit vel voluptatem et. Vitae labore est voluptatem beatae quod nostrum. Dolorem nostrum iure facere molestiae ipsum. Sit sit ducimus esse.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(267, 28, 'Prof. Emmalee Shanahan', 'Minima fuga consectetur fuga minus et. Quas impedit repellat enim qui. Voluptatum neque et sit consequatur cum.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(268, 14, 'Guadalupe Johnson', 'Aspernatur perferendis tempora eaque omnis deserunt omnis omnis reiciendis. Aut facere voluptate a ut iure. Quaerat non libero porro error. Aut minima fuga ut praesentium.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(269, 23, 'Delmer Hirthe', 'Culpa ut fuga architecto ipsa. Itaque minima nesciunt est et aut nisi. Ut sunt nulla adipisci illum quae. Totam delectus ipsa ex.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(270, 6, 'Kristoffer Altenwerth', 'Voluptatum et voluptatibus molestias reprehenderit dicta perferendis. Nemo quaerat neque et porro. Fugiat quis non ducimus officiis. Aut voluptatem placeat eveniet.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(271, 50, 'Ana Altenwerth', 'Voluptate quia nam dolorem id. Est dolorem alias et dolor. Qui qui laborum totam ducimus expedita quisquam.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(272, 13, 'Prof. Maria Emard Sr.', 'Occaecati possimus qui et doloremque commodi quibusdam et et. Officiis animi doloremque facere itaque et aliquid distinctio tempore. Ex ipsum ipsa quas praesentium aspernatur. Eum voluptas eum quos porro deserunt officia.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(273, 43, 'Alexandria Morissette Jr.', 'Est fugiat ea et officiis unde non nostrum vel. At facere eveniet praesentium repellendus consectetur minima. Sed quas corporis voluptatibus et neque dolores eveniet. Est est vel excepturi et labore consectetur et.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(274, 44, 'Prof. Joelle Davis PhD', 'Assumenda ut fuga qui commodi. Ratione eius nihil odit officiis culpa consequuntur totam. Saepe consequatur iste sapiente autem molestiae quidem. Minima corporis debitis magnam.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(275, 30, 'Reva Greenfelder', 'Eum dolorem quidem molestiae earum accusantium. Quidem aut qui asperiores amet voluptatibus nesciunt et. Velit veritatis voluptatem aliquid est laborum doloremque. Magni in molestiae corrupti dolorem error qui voluptate.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(276, 34, 'Ezequiel Klocko', 'Alias atque dolore explicabo. Et eos provident eligendi maiores. Dignissimos vitae provident eos voluptatem molestiae iusto maiores repellendus. Exercitationem dolorem possimus iusto dolorem dolor magni.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(277, 10, 'Leanna Brakus', 'Eos impedit nisi fugiat expedita nemo. Voluptatibus distinctio labore unde velit amet provident eius. Mollitia dolore quo dolore delectus. At blanditiis reiciendis repudiandae consequatur consequatur dignissimos. Labore architecto laudantium aut maiores ullam voluptas.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(278, 2, 'Vickie Purdy', 'Aspernatur architecto explicabo aspernatur. Sint architecto officiis pariatur. Corrupti ullam aut ab id quo.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(279, 4, 'Krystal Morar', 'Dolorum pariatur aut optio iste. Aliquam rem quae quis facere iste. Non beatae laboriosam cupiditate sint.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(280, 30, 'Viola Mante', 'Voluptates voluptatem sunt aut exercitationem autem quia facere. Consectetur qui omnis ad voluptatem.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(281, 36, 'Mr. Carlo Grimes PhD', 'Cupiditate nihil vel possimus repellat et quidem. Nulla sunt est tenetur reprehenderit odio non.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(282, 27, 'Ephraim Klein', 'Dolor magnam maxime molestiae fugiat. Hic dignissimos dolor maiores maxime non veniam. Quasi in vitae dicta corporis temporibus et quo. Reiciendis cupiditate culpa sed dolor debitis veniam.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(283, 15, 'Jonatan Bogan', 'Doloribus ab consequatur consequatur id sed sapiente repudiandae. Et dolorem optio et error accusamus quidem et. Nihil possimus dolores eum mollitia sapiente maxime ipsa et. Qui magni repellendus esse nam deleniti.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(284, 40, 'Prof. Alisa Hilpert', 'Impedit et optio omnis numquam consequatur. Explicabo est dicta dolorem. Repellendus ut nihil nostrum labore labore.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(285, 28, 'Sydney Klocko', 'Dicta animi quod molestiae saepe provident. Ipsum ut provident minus quaerat nihil quos facilis accusantium. Sint reiciendis ea qui nihil nihil ab perferendis. Omnis expedita iusto esse atque laboriosam repellat.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(286, 37, 'Hunter Lesch', 'Ea qui sunt iusto ea rerum. Placeat voluptas exercitationem assumenda consequatur. Nostrum aliquid aut reprehenderit. Minima minus occaecati iusto dicta.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(287, 10, 'Kelli Parisian', 'Delectus ab sit ipsam suscipit. Eum vero blanditiis rerum qui sit esse.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(288, 14, 'Tamia Marvin MD', 'Dolorem repudiandae quae provident est reprehenderit. Et repellat quas et occaecati repudiandae consectetur. Deleniti ipsa maiores et. Quidem saepe sit recusandae aut qui.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(289, 22, 'Jovanny Reinger III', 'Quaerat perferendis aut deleniti et. Aut consequatur tempore et quis. Dolores sit perferendis tempore eos voluptas voluptatem dolores. Ipsam consequatur aut veritatis.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(290, 25, 'Christelle Nicolas', 'Quisquam reiciendis enim officiis. Quia quia maxime soluta dolore vel accusantium.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(291, 6, 'Shaniya Pouros MD', 'Odio deleniti aperiam omnis id. Placeat sit vero reprehenderit odit minima a. Laborum labore libero et natus. Quia quia voluptas porro.', 3, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(292, 3, 'Cleve Christiansen', 'Voluptates nulla quo et illo. In rerum quia voluptas labore eum. Sed dicta unde eveniet accusamus quo et. Id amet voluptatum rerum possimus recusandae voluptatibus ea.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(293, 48, 'Prof. Isaias Oberbrunner V', 'Qui omnis ea ut optio beatae quos. Cumque ullam nisi et enim fugit fuga.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(294, 39, 'Odie Ryan', 'Rem molestiae quos porro laudantium totam et eveniet ut. Distinctio sequi exercitationem ex inventore est magnam. Placeat modi quo alias reiciendis consectetur sed perferendis. Nobis animi ipsam non eos nostrum distinctio.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(295, 14, 'Eldora Turner', 'Fuga voluptatem esse dolores. Vel unde minima ut eum iste.', 1, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(296, 12, 'Robin Quitzon', 'Doloremque iste facere itaque. Est voluptatem doloribus sequi molestias soluta ut. Libero tempora quasi qui error ad placeat architecto inventore. Sequi et eligendi quod nulla. Quisquam saepe voluptatem enim quidem repellendus voluptatem temporibus.', 5, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(297, 23, 'Prof. Johnnie Parker DDS', 'Et id at odio nihil numquam asperiores eius. Impedit quidem voluptatum dolore maxime. Voluptate qui rerum molestias illum voluptatibus. Ex nulla dignissimos similique voluptatem.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(298, 7, 'Dr. Morgan Satterfield', 'Tempore doloribus vel quis. Natus ducimus sint corrupti. Voluptatem aspernatur ut aut amet incidunt unde delectus consequatur. Voluptatem sint ut quia asperiores itaque nulla.', 2, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(299, 13, 'Yasmeen Sporer', 'Et pariatur tempore adipisci blanditiis unde velit. In et provident vero quo voluptate nostrum. Tenetur in consequuntur consequatur qui distinctio laboriosam quia sunt. Deserunt aut sint voluptas ab sed aut. Magni est quis consectetur amet quas molestiae ab.', 4, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(300, 11, 'Dr. Elian Collier', 'Accusantium est delectus dolorem asperiores eos quas iste ipsam. Vel temporibus doloribus iusto esse voluptatum accusantium est consequatur. In perferendis id similique pariatur.', 0, '2020-05-10 07:38:51', '2020-05-10 07:38:51'),
(301, 15, 'Mai', 'Best thing on review', 4, '2020-05-10 21:04:20', '2020-05-10 21:04:20'),
(302, 1, 'Mai', 'Best thing on review', 4, '2020-05-10 21:04:29', '2020-05-10 21:04:29'),
(303, 1, 'MaiNEW', 'Best thing on review', 4, '2020-05-10 21:39:14', '2020-05-10 21:39:14'),
(305, 15, 'MaiNEW', 'Best thing on review', 4, '2020-05-10 21:47:22', '2020-05-10 21:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Imogene Hartmann', 'nya52@example.net', '2020-05-10 07:38:47', '$2y$10$0OGwlFOZhynxvIW53JE37.ESg0i8SVbAUKTvHH.0eAysbxSc7Kfkq', 'W2Pfu6Lc0z', '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(2, 'Geovany Kuhn', 'koss.devan@example.org', '2020-05-10 07:38:47', '$2y$10$0OGwlFOZhynxvIW53JE37.ESg0i8SVbAUKTvHH.0eAysbxSc7Kfkq', 'ovpJxq68VF', '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(3, 'Sadie Roberts', 'susie83@example.com', '2020-05-10 07:38:47', '$2y$10$0OGwlFOZhynxvIW53JE37.ESg0i8SVbAUKTvHH.0eAysbxSc7Kfkq', 'tG7WZzy0R9', '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(4, 'Rodrigo Swift', 'caroline.gusikowski@example.org', '2020-05-10 07:38:47', '$2y$10$0OGwlFOZhynxvIW53JE37.ESg0i8SVbAUKTvHH.0eAysbxSc7Kfkq', 'cug9ct8OlM', '2020-05-10 07:38:47', '2020-05-10 07:38:47'),
(5, 'Simone Sawayn I', 'kihn.kirsten@example.net', '2020-05-10 07:38:47', '$2y$10$0OGwlFOZhynxvIW53JE37.ESg0i8SVbAUKTvHH.0eAysbxSc7Kfkq', 'G9M8JVwklU', '2020-05-10 07:38:47', '2020-05-10 07:38:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
