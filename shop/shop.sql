-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 15 2021 г., 14:11
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(1, 'sunt quasi natus', 'sunt-quasi-natus', NULL, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(2, 'est ratione vel', 'est-ratione-vel', NULL, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(3, 'ut animi facilis', 'ut-animi-facilis', NULL, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(4, 'molestiae dolorum odit', 'molestiae-dolorum-odit', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(5, 'voluptatem aliquam exercitationem', 'voluptatem-aliquam-exercitationem', NULL, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(6, 'possimus voluptas enim', 'possimus-voluptas-enim', NULL, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(7, 'harum laborum magni', 'harum-laborum-magni', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(8, 'enim laboriosam quasi', 'enim-laboriosam-quasi', NULL, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(9, 'et neque quia', 'et-neque-quia', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(10, 'illo sed accusantium', 'illo-sed-accusantium', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:47', '2021-01-11 15:22:47');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(48, '2014_10_12_000000_create_users_table', 1),
(49, '2014_10_12_100000_create_password_resets_table', 1),
(50, '2019_08_19_000000_create_failed_jobs_table', 1),
(51, '2021_01_11_101018_create_categories_table', 1),
(52, '2021_01_11_120345_create_products_table', 1),
(53, '2021_01_11_141828_create_reviews_table', 1),
(54, '2021_01_11_143805_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `img`, `created_at`, `updated_at`) VALUES
(1, 'hic eum omnis', 'hic-eum-omnis', 'fugiat ut ut vitae minus nisi velit saepe minus molestiae', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(2, 'molestiae fugit qui', 'molestiae-fugit-qui', 'cum ut rerum esse est odit doloremque quas dolores deserunt', NULL, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(3, 'vel aut eos', 'vel-aut-eos', 'eaque rerum qui nostrum repudiandae optio alias ea reiciendis ea', NULL, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(4, 'eius rerum qui', 'eius-rerum-qui', 'pariatur rerum sunt sit est itaque voluptatem est ut quia', NULL, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(5, 'ea aut ea', 'ea-aut-ea', 'quisquam consequatur velit sit iusto totam soluta quasi quas suscipit', NULL, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(6, 'cumque exercitationem consequatur', 'cumque-exercitationem-consequatur', 'quod sint perferendis vel deserunt ipsum mollitia iure ipsum fugiat', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(7, 'asperiores expedita possimus', 'asperiores-expedita-possimus', 'eveniet et mollitia quo voluptatibus ut non sit ad omnis', NULL, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(8, 'fuga itaque libero', 'fuga-itaque-libero', 'ut asperiores sit nihil corporis veritatis nisi tenetur laudantium omnis', NULL, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(9, 'omnis est commodi', 'omnis-est-commodi', 'ea autem voluptatem voluptatem et quo soluta odit quas nisi', NULL, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(10, 'itaque consequatur dolores', 'itaque-consequatur-dolores', 'doloribus est esse temporibus necessitatibus recusandae voluptates quas vel ut', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(11, 'occaecati voluptas perspiciatis', 'occaecati-voluptas-perspiciatis', 'aperiam in quos voluptas aut aut laboriosam dolorem aut illo', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(12, 'unde est est', 'unde-est-est', 'voluptate est dolores a asperiores possimus et minima quo ex', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(13, 'aut illo esse', 'aut-illo-esse', 'ea nam officia quo porro id officia ab et ipsam', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(14, 'ea vel est', 'ea-vel-est', 'qui dolorum dolores est qui aliquam adipisci laudantium quae consequatur', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(15, 'quisquam doloremque quo', 'quisquam-doloremque-quo', 'impedit ab occaecati in et necessitatibus accusantium nesciunt nisi fugiat', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(16, 'iusto placeat aut', 'iusto-placeat-aut', 'voluptas sunt eaque tempora maiores et odio quia rerum atque', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(17, 'beatae sit repellat', 'beatae-sit-repellat', 'qui quibusdam non deleniti non ullam rerum quia similique minima', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(18, 'omnis error labore', 'omnis-error-labore', 'ut corrupti fuga enim qui quia quisquam delectus veritatis accusamus', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(19, 'ducimus corrupti veniam', 'ducimus-corrupti-veniam', 'et expedita consequuntur error consequatur quo eius sint quae harum', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(20, 'et labore nisi', 'et-labore-nisi', 'voluptatem ipsa omnis quos eum dolor facere aliquam omnis qui', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(21, 'odio dolores laboriosam', 'odio-dolores-laboriosam', 'beatae sequi officiis eum dolorum tempora blanditiis voluptatem veritatis porro', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(22, 'atque ut iusto', 'atque-ut-iusto', 'ut hic laborum officiis officia ullam aspernatur in cumque mollitia', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(23, 'et odit magni', 'et-odit-magni', 'sint sit doloremque non maxime natus autem aperiam non quam', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(24, 'rem aliquid omnis', 'rem-aliquid-omnis', 'totam dolorem omnis placeat suscipit sit qui libero ut consequatur', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(25, 'quis provident perferendis', 'quis-provident-perferendis', 'non totam omnis veniam totam qui optio nihil sint blanditiis', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(26, 'odit provident veritatis', 'odit-provident-veritatis', 'et aliquid sit eaque aspernatur repellendus quia voluptatem ea voluptas', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(27, 'et eius et', 'et-eius-et', 'dolore explicabo fugiat hic accusantium ea vel quis optio odit', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(28, 'at quidem eius', 'at-quidem-eius', 'dicta est laboriosam voluptatem voluptate maiores repellendus sunt dolores et', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(29, 'culpa animi adipisci', 'culpa-animi-adipisci', 'aut modi laboriosam eligendi aliquid voluptas laborum aut praesentium quidem', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(30, 'non voluptas est', 'non-voluptas-est', 'expedita deleniti at rerum quo magni praesentium dolor eos nobis', NULL, '2021-01-11 15:22:53', '2021-01-11 15:22:53'),
(31, 'dignissimos unde velit', 'dignissimos-unde-velit', 'voluptatem excepturi exercitationem molestias ut occaecati beatae nobis voluptatem quo', NULL, '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(32, 'quam esse sed', 'quam-esse-sed', 'saepe rerum soluta dolores quidem rerum quidem maiores sapiente et', NULL, '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(33, 'accusamus reiciendis earum', 'accusamus-reiciendis-earum', 'voluptatem doloribus ea est et commodi sit sint rerum id', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(34, 'totam nesciunt rerum', 'totam-nesciunt-rerum', 'fugiat sint sed dolores modi minima est modi eum commodi', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(35, 'impedit accusamus odio', 'impedit-accusamus-odio', 'tempore itaque optio neque et unde laudantium et doloribus non', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(36, 'maxime est minus', 'maxime-est-minus', 'doloremque aut pariatur qui porro et qui id culpa voluptas', NULL, '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(37, 'qui eligendi blanditiis', 'qui-eligendi-blanditiis', 'error atque maiores nemo nulla omnis possimus doloribus iure hic', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(38, 'voluptas velit ut', 'voluptas-velit-ut', 'magnam inventore sed sapiente iure reprehenderit numquam incidunt minus ut', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(39, 'odit eveniet voluptas', 'odit-eveniet-voluptas', 'reiciendis sequi eligendi eos praesentium dolores repellat reprehenderit animi aut', NULL, '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(40, 'inventore nihil cum', 'inventore-nihil-cum', 'error voluptatem et totam facere et necessitatibus officia omnis eos', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(41, 'asperiores non nulla', 'asperiores-non-nulla', 'itaque aut molestiae vitae ut eius consequatur beatae harum dolorum', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(42, 'facere quis vitae', 'facere-quis-vitae', 'repellendus eum numquam voluptatibus ut enim dolorem itaque repellendus quibusdam', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(43, 'mollitia voluptatibus ipsa', 'mollitia-voluptatibus-ipsa', 'labore laborum cum placeat facilis et nam in magnam ut', NULL, '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(44, 'fugit voluptatem soluta', 'fugit-voluptatem-soluta', 'corporis consequatur hic enim veritatis facere et dolores rerum inventore', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(45, 'quisquam quasi et', 'quisquam-quasi-et', 'unde ipsam et atque vel enim consectetur ad aut quas', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(46, 'explicabo praesentium necessitatibus', 'explicabo-praesentium-necessitatibus', 'qui aut quo eum qui quos odit voluptas tenetur maxime', NULL, '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(47, 'veritatis ut quam', 'veritatis-ut-quam', 'at quia debitis maxime distinctio voluptatem vero et eius cupiditate', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(48, 'ab in iste', 'ab-in-iste', 'non dolorem excepturi veritatis voluptate recusandae aliquid necessitatibus sunt consequatur', NULL, '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(49, 'debitis quam est', 'debitis-quam-est', 'odio cumque deserunt enim perspiciatis ipsum porro autem doloribus totam', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54'),
(50, 'officia reiciendis sed', 'officia-reiciendis-sed', 'et ipsum temporibus odit adipisci quas qui voluptate ad voluptatem', 'https://loremflickr.com/320/240?lock=3306', '2021-01-11 15:22:54', '2021-01-11 15:22:54');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `img`, `price`, `recommended`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'iste ut voluptas', 'iste-ut-voluptas', 'https://loremflickr.com/320/240?lock=3306', 1220.15, 0, 3, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(2, 'perspiciatis et quibusdam', 'perspiciatis-et-quibusdam', 'https://loremflickr.com/320/240?lock=3306', 3554.16, 0, 9, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(3, 'dolor minus mollitia', 'dolor-minus-mollitia', 'https://loremflickr.com/320/240?lock=3306', 433.65, 1, 10, '2021-01-11 15:22:47', '2021-01-11 15:22:47'),
(4, 'quod accusamus consequuntur', 'quod-accusamus-consequuntur', 'https://loremflickr.com/320/240?lock=3306', 2351.59, 1, 5, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(5, 'aliquam quia dolores', 'aliquam-quia-dolores', NULL, 4415.72, 1, 5, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(6, 'magni omnis repellendus', 'magni-omnis-repellendus', NULL, 6783.36, 1, 6, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(7, 'corporis est accusantium', 'corporis-est-accusantium', NULL, 1276.98, 0, 3, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(8, 'enim architecto dolor', 'enim-architecto-dolor', NULL, 7038.34, 0, 10, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(9, 'voluptatum dolores hic', 'voluptatum-dolores-hic', 'https://loremflickr.com/320/240?lock=3306', 8527.24, 1, 8, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(10, 'nemo corporis labore', 'nemo-corporis-labore', NULL, 5126.96, 1, 2, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(11, 'suscipit dolor et', 'suscipit-dolor-et', NULL, 5823.29, 0, 1, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(12, 'cumque beatae nobis', 'cumque-beatae-nobis', 'https://loremflickr.com/320/240?lock=3306', 3227.03, 1, 3, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(13, 'eius placeat quos', 'eius-placeat-quos', NULL, 8478.47, 1, 4, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(14, 'aliquam excepturi ullam', 'aliquam-excepturi-ullam', NULL, 8517.96, 1, 5, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(15, 'est commodi nesciunt', 'est-commodi-nesciunt', 'https://loremflickr.com/320/240?lock=3306', 1126.46, 1, 10, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(16, 'reprehenderit et quasi', 'reprehenderit-et-quasi', 'https://loremflickr.com/320/240?lock=3306', 4392.55, 0, 7, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(17, 'hic quibusdam recusandae', 'hic-quibusdam-recusandae', 'https://loremflickr.com/320/240?lock=3306', 7551.71, 0, 5, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(18, 'est dolorum labore', 'est-dolorum-labore', 'https://loremflickr.com/320/240?lock=3306', 9211.54, 1, 6, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(19, 'labore dolorum itaque', 'labore-dolorum-itaque', NULL, 5623.29, 0, 5, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(20, 'soluta sint aliquam', 'soluta-sint-aliquam', 'https://loremflickr.com/320/240?lock=3306', 7255.17, 0, 9, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(21, 'hic veritatis quasi', 'hic-veritatis-quasi', 'https://loremflickr.com/320/240?lock=3306', 3488.63, 0, 2, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(22, 'ad vero quia', 'ad-vero-quia', NULL, 370.48, 1, 6, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(23, 'dolore vel omnis', 'dolore-vel-omnis', 'https://loremflickr.com/320/240?lock=3306', 7527.25, 0, 5, '2021-01-11 15:22:48', '2021-01-11 15:22:48'),
(24, 'mollitia accusantium et', 'mollitia-accusantium-et', 'https://loremflickr.com/320/240?lock=3306', 7216.59, 1, 3, '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(25, 'sit delectus eos', 'sit-delectus-eos', NULL, 5849.96, 0, 8, '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(26, 'reprehenderit qui vel', 'reprehenderit-qui-vel', 'https://loremflickr.com/320/240?lock=3306', 7804.79, 1, 1, '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(27, 'pariatur veniam nemo', 'pariatur-veniam-nemo', NULL, 3458.42, 1, 8, '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(28, 'est est nisi', 'est-est-nisi', 'https://loremflickr.com/320/240?lock=3306', 5919.08, 0, 1, '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(29, 'et est debitis', 'et-est-debitis', 'https://loremflickr.com/320/240?lock=3306', 4832.00, 0, 6, '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(30, 'dignissimos perferendis est', 'dignissimos-perferendis-est', 'https://loremflickr.com/320/240?lock=3306', 1736.38, 0, 2, '2021-01-11 15:22:49', '2021-01-11 15:22:49');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `comment` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'ut ratione quo a rem', 3, 18, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(2, 'non expedita laudantium vel repellat', 9, 20, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(3, 'praesentium exercitationem quod libero deserunt', 6, 7, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(4, 'eum sapiente totam et molestiae', 8, 11, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(5, 'animi nesciunt iusto et sint', 5, 17, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(6, 'eos itaque enim fuga animi', 3, 10, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(7, 'vel est tempora corporis repellat', 5, 8, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(8, 'nostrum corporis soluta soluta aliquid', 5, 9, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(9, 'praesentium aut quia nobis doloremque', 6, 4, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(10, 'sunt qui non quia ea', 7, 20, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(11, 'et veritatis molestiae cupiditate rerum', 4, 11, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(12, 'ut quasi ducimus itaque quo', 1, 22, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(13, 'aliquid beatae dolorem deleniti architecto', 6, 7, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(14, 'qui suscipit quo accusamus veritatis', 10, 4, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(15, 'perspiciatis eaque nihil est temporibus', 9, 21, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(16, 'possimus sed corporis asperiores cupiditate', 3, 23, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(17, 'vel reprehenderit adipisci consequatur repellat', 7, 9, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(18, 'consequatur sit velit rerum veritatis', 4, 17, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(19, 'voluptatum qui incidunt sit nostrum', 1, 24, '2021-01-11 15:22:50', '2021-01-11 15:22:50'),
(20, 'doloribus incidunt quo consequatur quod', 5, 7, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(21, 'consequatur ipsa voluptas repudiandae quos', 10, 18, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(22, 'pariatur beatae repellendus repudiandae magni', 3, 10, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(23, 'voluptas consequatur et illo laboriosam', 9, 12, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(24, 'nobis minima repellendus impedit et', 2, 25, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(25, 'sunt sed laudantium velit amet', 9, 11, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(26, 'velit odio nisi quaerat ducimus', 3, 21, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(27, 'maxime velit exercitationem aliquid fuga', 5, 24, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(28, 'error quis natus dolorem dolores', 2, 21, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(29, 'ea iste at ut laborum', 9, 16, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(30, 'eligendi labore occaecati quis quia', 10, 14, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(31, 'dolores quasi velit dicta autem', 7, 29, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(32, 'modi odit quam explicabo aut', 6, 20, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(33, 'vel culpa inventore laudantium doloribus', 4, 3, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(34, 'fuga nam qui fugiat vel', 7, 15, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(35, 'explicabo placeat pariatur et dolorem', 1, 19, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(36, 'beatae cumque debitis qui reprehenderit', 10, 11, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(37, 'omnis harum ut perspiciatis nobis', 6, 22, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(38, 'mollitia consequatur inventore molestiae veniam', 2, 13, '2021-01-11 15:22:51', '2021-01-11 15:22:51'),
(39, 'provident maiores fugiat dolor sequi', 4, 17, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(40, 'repudiandae est consectetur quis corrupti', 2, 29, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(41, 'incidunt sequi nobis aut non', 6, 7, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(42, 'quaerat consequuntur est quo ullam', 1, 18, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(43, 'voluptatem harum cum repudiandae est', 4, 27, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(44, 'ipsam est expedita culpa et', 3, 19, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(45, 'ratione eaque quis quisquam consequatur', 5, 6, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(46, 'qui accusantium dignissimos sint neque', 10, 16, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(47, 'natus architecto id eaque fugit', 5, 17, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(48, 'earum est at officiis doloremque', 8, 3, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(49, 'modi velit et voluptas doloremque', 1, 23, '2021-01-11 15:22:52', '2021-01-11 15:22:52'),
(50, 'et in dolores consequuntur nemo', 8, 5, '2021-01-11 15:22:52', '2021-01-11 15:22:52');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Belle Ondricka', 'dickinson.mittie@example.org', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PkbAITip26', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(2, 'Mrs. Aditya Hoeger MD', 'aryanna.terry@example.com', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AfFgONB2cB', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(3, 'Deontae Bins', 'feil.virginia@example.com', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KA7ki4A7eI', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(4, 'Ms. Hulda Gerhold V', 'waufderhar@example.com', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2zCA0ydGwS', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(5, 'Enola Willms', 'camden32@example.com', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DaoMkF79Zh', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(6, 'Candelario Beahan', 'orpha68@example.com', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MrHRNYqwLF', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(7, 'Aglae O\'Connell', 'crona.wilford@example.net', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xYsfJmAhfJ', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(8, 'Miss Karelle Emmerich IV', 'keagan24@example.net', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oPuqowIa53', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(9, 'Arnaldo Macejkovic', 'xbins@example.org', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AyDIY5cRyX', '2021-01-11 15:22:49', '2021-01-11 15:22:49'),
(10, 'Heber Koch', 'kunde.lucious@example.com', '2021-01-11 15:22:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jMFdDv0Vq0', '2021-01-11 15:22:49', '2021-01-11 15:22:49');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
