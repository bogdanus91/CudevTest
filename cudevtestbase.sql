-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 07 2017 г., 16:52
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cudevtestbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lastlogins`
--

CREATE TABLE `lastlogins` (
  `id` int(11) NOT NULL,
  `logins` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lastlogins`
--

INSERT INTO `lastlogins` (`id`, `logins`, `user_id`) VALUES
(3, '2017-04-07 11:25:48', 1),
(4, '2017-04-07 11:28:08', 1),
(5, '2017-04-07 11:33:48', 2),
(6, '2017-04-07 11:35:17', 1),
(7, '2017-04-07 13:44:35', 1),
(8, '2017-04-07 13:45:59', 1),
(9, '2017-04-07 13:46:29', 2),
(10, '2017-04-07 13:47:08', 1),
(11, '2017-04-07 14:00:19', 1),
(12, '2017-04-07 14:12:16', 1),
(13, '2017-04-07 14:13:02', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bogdan Onyshenko', 'bogdanus91@gmail.com', '$2y$10$Lk9B7XoCfn3iGxH1QUPSKOniNsfjeIDayO29jgrT6ekXpT5nrNc22', 'YmRvSZ0pu4SQ9W55Yz0YQwy20lBN14vzrZLIKxfHrO8mKCP3xbmKDfC5Uye3', '2017-04-07 05:13:50', '2017-04-07 05:13:50'),
(2, 'Vitaly', 'vitaliy_lunyk@ukr.net', '$2y$10$O9REw10dHg/vHph/4dGsCu8vS941pyN82bxfHTvT7R/4qm455BHx2', '6q9zybeohqbayr0hmfjaSBYBb2fbokDI5l3sQUQc0WiPBPwt9XwUAqj8yKXx', '2017-04-07 08:33:48', '2017-04-07 08:33:48');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lastlogins`
--
ALTER TABLE `lastlogins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lastlogins`
--
ALTER TABLE `lastlogins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
