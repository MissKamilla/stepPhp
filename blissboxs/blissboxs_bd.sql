-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 30 2021 г., 23:08
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
-- База данных: `blissboxs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Для нього', 'forHim', 'https://static.tildacdn.com/tild6332-3431-4633-b862-343530626130/54.jpg', '2021-02-08 07:40:22', '2021-03-29 12:53:50'),
(2, 'Для неї', 'forHer', 'https://static.tildacdn.com/tild6335-3136-4937-a366-373433613261/14.jpg', '2021-02-08 07:40:22', '2021-02-08 07:40:22'),
(3, 'Для Закоханих', 'forLovers', 'https://static.tildacdn.com/tild6235-3464-4737-b134-373163623932/45.jpg', '2021-02-08 07:40:22', '2021-02-08 07:40:22');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_11_101018_create_categories_table', 1),
(5, '2021_01_11_120345_create_products_table', 1),
(6, '2021_01_11_141828_create_reviews_table', 1),
(7, '2021_01_11_143805_create_posts_table', 1),
(8, '2021_01_18_165818_add_role_users', 1),
(9, '2021_02_08_092646_create_orders_table', 1),
(11, '2021_02_08_092753_create_order_items_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `total_sum` double(8,2) NOT NULL,
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` double(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_sum`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(5, 11, 9535.16, 'asd@gmail.com', 567.00, '2021-02-09 08:26:18', '2021-02-09 08:26:18'),
(6, NULL, 4973.58, 'my.study.kamilla@gmail.com', 1234.00, '2021-03-28 16:42:21', '2021-03-28 16:42:21'),
(20, 13, 3740.00, 'my.study.kamilla@gmail.com', 1234452452.00, '2021-03-28 20:50:56', '2021-03-28 20:50:56'),
(21, 13, 1860.00, 'max@gmail.com', 12345678.00, '2021-03-29 13:15:21', '2021-03-29 13:15:21');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `img` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `name`, `qty`, `img`, `price`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'qui maiores eum', 2, 'https://loremflickr.com/320/240?lock=3306', 4737.58, 5, '2021-02-09 08:26:19', '2021-02-09 08:26:19'),
(2, 'dolor aspernatur consequatur', 1, 'https://loremflickr.com/320/240?lock=3306', 60.00, 5, '2021-02-09 08:26:19', '2021-02-09 08:26:19'),
(3, 'velit assumenda beatae', 1, 'http://shop/images/noimg.jpg', 4973.58, 6, '2021-03-28 16:42:21', '2021-03-28 16:42:21'),
(4, 'Приємний Бокс', 2, 'https://loremflickr.com/320/240?lock=3306', 320.00, 20, '2021-03-28 20:50:56', '2021-03-28 20:50:56'),
(5, 'Смачний бокс', 4, 'https://static.tildacdn.com/tild6234-6231-4161-a164-313064663036/121C16A5-7AED-4AB7-B.jpg', 430.00, 20, '2021-03-28 20:50:56', '2021-03-28 20:50:56'),
(6, 'Чоловічий L', 3, 'https://static.tildacdn.com/tild3839-3734-4866-b130-626263366439/F8238A8F-ED57-459F-8.jpg', 460.00, 20, '2021-03-28 20:50:56', '2021-03-28 20:50:56'),
(7, 'Солодкий Бокс XS', 4, 'https://static.tildacdn.com/tild3639-6638-4563-a138-366239626461/439699D9-B099-4A8C-8.jpg', 285.00, 21, '2021-03-29 13:15:21', '2021-03-29 13:15:21'),
(8, 'Комлімент для Батька', 2, 'https://static.tildacdn.com/tild3839-6166-4331-b266-396232323136/52A8CCA8-3F61-4C07-B.jpg', 360.00, 21, '2021-03-29 13:15:21', '2021-03-29 13:15:21');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `components` varchar(516) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `img`, `description`, `components`, `price`, `recommended`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Солодкий Бокс XS', 'solodkii-boks-xs', 'https://static.tildacdn.com/tild3639-6638-4563-a138-366239626461/439699D9-B099-4A8C-8.jpg', 'Маленький набір, щоб привітати працівника, колегу чи знайомого.\r\nЧудово підійде в якості корпоративного подарунку.', 'Крафтова коробка \r\nДеревна шерсть\r\nЖелейки, 200 мл\r\nАрахіс, 200 мл\r\nRitter Sport, 100 г\r\nШоколад з передбаченням, 3 шт\r\nЛистівка на вибір', 285.00, 1, 2, '2021-02-08 07:40:22', '2021-02-08 07:40:22'),
(2, 'Смачний бокс', 'smachnii-boks', 'https://static.tildacdn.com/tild6234-6231-4161-a164-313064663036/121C16A5-7AED-4AB7-B.jpg', 'Подарунок, наповнений різними смаколиками\r\n', 'Крафтова коробка \r\nДеревна шерсть\r\nНімецький шоколад Ritter Sport, 100 г\r\nОсвіжаючий кокосовий напій Thai Coco \r\nЖелейні боби Jelly Beans, 100 г\r\nСолона карамель ручної роботи, 100 г\r\nЖелейки, 250 мл (в асортименті)\r\n3 фотокартки Polaroid\r\nТематична листівка на вибір', 430.00, 0, 2, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(3, 'Бокс для Неї', 'boks-dlya-ne', 'https://static.tildacdn.com/tild3338-3362-4063-a536-306364373734/3C853B84-3804-4CFF-8.jpg', 'Подарунковий бокс для дівчини, сестри, мами чи подруги\r\n', 'Крафтова коробка\r\nДеревна шерсть\r\nЧашка у в\'язаному чохлі ручної роботи\r\nЖелейки в асортименті, 250 мл\r\nАрахіс, 250 мл\r\nМаршмеллоу, 50 г\r\nКакао, 50 г\r\nШвейцарський шоколад Toblerone, 100 г\r\nRaffaello, 5 шт\r\nНімецький шоколад Ritter Sport, 100 г\r\nЛистівка на вибір, 1 шт', 650.00, 0, 2, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(4, 'Бокс-комлімент', 'boks-komlment', 'https://static.tildacdn.com/tild3338-3331-4462-a363-363465373566/315EFE9A-B44D-4C57-8.jpg', 'Бокс-комплімент, що містить в собі всі атрибути затишності\r\n', 'Крафтова коробка \r\nДеревна шерсть\r\nНімецький шоколад Ritter Sport, 100 г - 1 шт\r\nСолодке маршмеллоу, 50 г\r\nКакао, 50 г\r\nЗатишна чашка у в\'язаному чохлі, 350 мл\r\nRitter Sport Mini, 3 шт\r\n3 фотокартки Polaroid, що ми роздрукуємо для тебе*\r\nТематична листівка на вибір', 475.00, 0, 2, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(5, 'Приємний Бокс', 'primnii-boks', 'https://static.tildacdn.com/tild3662-6335-4632-a235-306131366534/IMG_7276.JPG', 'Смаколики для хлопця, брата чи батька', 'Крафтова коробка \r\nДеревна шерсть\r\nГоловоломка з дерева\r\nНапій Dr. Pepper, 330 мл\r\nЖелейки в асортименті, 200 мл\r\nПечиво з передбаченням, 1 шт\r\nНімецький шоколад Ritter Sport, 100 г\r\nЛистівка на вибір', 320.00, 0, 1, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(7, 'Чоловічий М', 'cholovchii-m', 'https://static.tildacdn.com/tild3064-3562-4132-b336-333066376333/292E1D42-B92B-4D1D-8.jpg', 'Привіт, я чоловічий бокс та готовий радувати твого хлопця чи чоловіка. \r\nВ мені зібрано все, що так люблять чоловіки, а тому гарантую, що подарую лише найприємніші емоції.\r\n', 'Крафтова коробка \r\nДеревна шерсть\r\nСупергеройський батончик в асортименті, 1 шт\r\nНапій\r\nШоколад з передбаченням, 3 шт\r\nНімецький шоколад Ritter Sport, 100 г\r\nСтакан для віскі, 200 мл\r\nЛистівка на вибір\r\n', 400.00, 0, 1, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(8, 'Чоловічий L', 'cholovchii-l', 'https://static.tildacdn.com/tild3839-3734-4866-b130-626263366439/F8238A8F-ED57-459F-8.jpg', 'Привіт, я чоловічий бокс та готовий радувати твого хлопця чи чоловіка. \r\nВ мені зібрано все, що так люблять чоловіки, а тому гарантую, що подарую лише найприємніші емоції.\r\n', 'Крафтова коробка \r\nДеревна шерсть\r\nСупергеройський батончик в асортименті, 2 шт\r\nНапій\r\nDr. Pepper, 330 мл\r\nШоколад з передбаченням, 3 шт\r\nНімецький шоколад Ritter Sport в асортименті, 200 г (2 шт)\r\nСтакан для віскі, 200 мл **\r\nСмачний арахіс в клярі, 200 г (смак в асортименті)\r\nNutella & Go, 1 шт\r\nЛистівка на вибір', 460.00, 1, 1, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(9, 'Комлімент для Батька', 'komlment-dlya-batka', 'https://static.tildacdn.com/tild3839-6166-4331-b266-396232323136/52A8CCA8-3F61-4C07-B.jpg', 'Невеликий подарунок, щоб привітати найріднішого чоловіка в своєму житті - батька\r\n', 'Крафтова коробка\r\nДеревна шерсть\r\nЧашка з тематичним дизайном\r\nСмачний крем-мед зі смаком імбиру та лемонграсу,\r\n журавлини, чорниці чи шоколаду\r\nСуперегеройський батончик, 1 шт\r\nШоколад з передбаченням, 3 шт\r\nЛистівка на вибір\r\n', 360.00, 1, 1, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(10, 'Бокс для Брата \"M\"', 'boks-dlya-brata-m', 'https://static.tildacdn.com/tild6231-6539-4933-b039-623130623932/FDCF8197-ABF1-4EE4-9.jpg', 'Чудовий варіант, щоб привітати брата', 'Крафтова коробка \r\nДеревна шерсть\r\nЧашка з тематичним дизайном\r\nСолодкий напій Dr. Pepper, 330 мл\r\nRitter Sport, 100 г\r\nШоколад з передбаченням, 3 шт\r\nФото Polaroid, 3 шт\r\nКакао, 50 г\r\nМаршмеллоу, 50 г\r\nСупергеройський батончик\r\nТематична листівка', 475.00, 0, 1, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(11, 'Бокс Загадка Кохання', 'boks-zagadka-kohannya', 'https://static.tildacdn.com/tild6137-3533-4436-b232-356435626261/IMG_0167.jpg', 'Невеликий бокс з солодощами', 'Крафтова коробка \r\nДеревна шерсть\r\nНімецький шоколад Ritter Sport, 100 г - 1 шт\r\nГоловоломка з дерева - 1 шт\r\nІмбирний пряник для закоханик (у асортименті)\r\nRaffaello, 5 шт\r\nТематична листівка на вибір\r\n', 650.00, 1, 3, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(12, 'Бокс для Закоханих', 'boks-komlment-dlya-zakohanih', 'https://static.tildacdn.com/tild3237-3139-4139-a338-636265333333/IMG_0938.JPG', 'Невеликий бокс, щоб порадувати свою другу половинку\r\n', 'Крафтова коробка\r\nДеревна шерсть\r\nВелике Імбирне печиво у асортименті, 1 шт\r\nЧашка з тематичним дизайном в асортименті, 1 шт\r\nТорба щастя (мішечок з 7 шоколадками з \r\nпередбаченнями всередині)\r\nЖуйка Love Is, 5 шт\r\nШоколадні сердечка Любимов, 3 шт\r\nЛистівка на вибір, 1 шт\r\n', 385.00, 1, 3, '2021-02-08 07:40:23', '2021-02-08 07:40:23'),
(13, 'Бокс Pantone Colors', 'boks-pantone-colors', 'https://static.tildacdn.com/tild6637-3137-4133-a235-373833333738/D2EE290D-A355-43F7-8.jpg', 'Бокс в барвах топових кольорів Pantone. Обери свій колір. Чудово підходить в якості корпоративного подарунку.\r\n', 'Крафтова коробка \r\nДеревна шерсть\r\nЧашка Pantone (обери бажаний колір на селекторі)\r\nНімецький шоколад Ritter Sport, 100 г\r\nПечиво з передбаченням, 3 шт\r\nЛистівка на вибір, 1 шт', 365.00, 1, 3, '2021-02-08 07:40:23', '2021-02-08 07:40:23');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `comment` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'aperiam ad consequatur quasi possimus', 10, 1, '2021-02-08 07:40:25', '2021-02-08 07:40:25'),
(2, 'aut incidunt hic et vel', 7, 5, '2021-02-08 07:40:25', '2021-02-08 07:40:25'),
(3, 'non quis harum porro sint', 1, 4, '2021-02-08 07:40:25', '2021-02-08 07:40:25'),
(4, 'inventore sunt iste aspernatur ex', 10, 12, '2021-02-08 07:40:25', '2021-02-08 07:40:25'),
(5, 'et incidunt et maiores sed', 4, 2, '2021-02-08 07:40:25', '2021-02-08 07:40:25'),
(6, 'accusamus magni aut soluta repellat', 8, 3, '2021-02-08 07:40:25', '2021-02-08 07:40:25'),
(7, 'rerum id itaque dolores voluptate', 3, 7, '2021-02-08 07:40:25', '2021-02-08 07:40:25'),
(8, 'eligendi in enim explicabo consectetur', 10, 8, '2021-02-08 07:40:26', '2021-02-08 07:40:26'),
(9, 'fuga facilis veniam qui rerum', 3, 11, '2021-02-08 07:40:26', '2021-02-08 07:40:26'),
(10, 'facere accusamus error modi nam', 7, 9, '2021-02-08 07:40:26', '2021-02-08 07:40:26');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Lera Prohaska', 'vaufderhar@example.com', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Acuiy00peA', '2021-02-08 07:40:24', '2021-02-08 07:40:24', NULL),
(2, 'Christian Boehm II', 'maryjane.dare@example.com', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MSn7LN5XPp', '2021-02-08 07:40:24', '2021-02-08 07:40:24', NULL),
(3, 'Carmelo Walter', 'margot08@example.org', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bgdAxPgpnE', '2021-02-08 07:40:24', '2021-02-08 07:40:24', NULL),
(4, 'Ms. Sophie Kerluke I', 'lorenzo.bogan@example.org', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vyr74i7Sdo', '2021-02-08 07:40:25', '2021-02-08 07:40:25', NULL),
(5, 'Saige Cole', 'spencer.damian@example.org', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hSSdQ4clsk', '2021-02-08 07:40:25', '2021-02-08 07:40:25', NULL),
(6, 'Wilhelm Kihn', 'savanah07@example.net', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GmjM2ngNDo', '2021-02-08 07:40:25', '2021-02-08 07:40:25', NULL),
(7, 'Lilian Russel', 'dgutmann@example.com', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L3XyNF7omL', '2021-02-08 07:40:25', '2021-02-08 07:40:25', NULL),
(8, 'Mr. Owen Jones V', 'parmstrong@example.net', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GZwToD7Eur', '2021-02-08 07:40:25', '2021-02-08 07:40:25', NULL),
(9, 'Lucas Rogahn', 'roreilly@example.net', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vi2ysFGskN', '2021-02-08 07:40:25', '2021-02-08 07:40:25', NULL),
(10, 'Janis Wilkinson DDS', 'halle94@example.com', '2021-02-08 07:40:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MXx58vVy3T', '2021-02-08 07:40:25', '2021-02-08 07:40:25', NULL),
(11, 'Kamilla', 'my.study.kamilla@gmail.com', NULL, '123', NULL, '2021-02-08 07:41:05', '2021-02-08 07:41:05', 'admin'),
(12, 'admin', 'admin@gmail.com', NULL, '12345678', NULL, NULL, NULL, 'admin'),
(13, 'adminn', 'adminn@gmail.com', NULL, '$2y$10$fyjVJHEoExYONWUJWcI4MOUL6hdF1dZDuTBw1ERmtfXF21HT5aSpy', 'iGXEpa9y0VVz5XngBzxCQKUBBDr0VwfBuwWHM3oCUMYi9wHKDWXKfxEsrwI9', '2021-03-28 20:38:54', '2021-03-28 20:38:54', 'admin');

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
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_phone_unique` (`phone`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

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
