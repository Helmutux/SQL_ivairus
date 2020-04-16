-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 16 2020 г., 17:47
-- Версия сервера: 8.0.18
-- Версия PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mysite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `secret_articles`
--

CREATE TABLE `secret_articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tittle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` int(10) UNSIGNED DEFAULT NULL,
  `hide` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `secret_articles`
--

INSERT INTO `secret_articles` (`id`, `user_id`, `tittle`, `text`, `date`, `hide`) VALUES
(1, 2, '1 SKYRIUS', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Recusandae, nobis voluptates? Consectetur harum fuga deleniti, sit, veniam perferendis, magni vel dolorem voluptatum architecto consequatur. Similique, maiores dolores nulla incidunt quo molestiae ab distinctio hic earum rem perspiciatis libero modi saepe quos deserunt rerum quisquam. Dolor similique quo quibusdam vel ipsum!', 1587052811, 0),
(2, 2, '2 SKYRIUS', 'Dolor sit amet consectetur adipisicing elit. Recusandae, nobis voluptates? Consectetur harum fuga deleniti, sit, veniam perferendis, magni vel dolorem voluptatum architecto consequatur. Similique, maiores dolores nulla incidunt quo molestiae ab distinctio hic earum rem perspiciatis libero modi saepe quos deserunt rerum quisquam. Dolor similique quo quibusdam vel ipsum!', 1587052555, 0),
(3, 13, '3 SKYRIUS', 'Recusandae, nobis voluptates? Consectetur harum fuga deleniti, sit, veniam perferendis, magni vel dolorem voluptatum architecto consequatur. Similique, maiores dolores nulla incidunt quo molestiae ab distinctio hic earum rem perspiciatis libero modi saepe quos deserunt rerum quisquam. Dolor similique quo quibusdam vel ipsum!', 1587052665, 0),
(4, 8, '4 SKYRIUS', 'Nobis voluptates? Consectetur harum fuga deleniti, sit, veniam perferendis, magni vel dolorem voluptatum architecto consequatur. Similique, maiores dolores nulla incidunt quo molestiae ab distinctio hic earum rem perspiciatis libero modi saepe quos deserunt rerum quisquam. Dolor similique quo quibusdam vel ipsum!', 1587053945, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `secret_users`
--

CREATE TABLE `secret_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance` double(10,2) UNSIGNED NOT NULL,
  `ip_reg` bigint(20) NOT NULL,
  `date_reg` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `secret_users`
--

INSERT INTO `secret_users` (`id`, `name`, `email`, `password`, `balance`, `ip_reg`, `date_reg`) VALUES
(1, 'Viaceslav', 'slava@mail.ru', '6074c6aa3488f3c2dddff2a7ca821aab', 10.56, 2130706433, 1587030172),
(2, 'Dmitry', 'dimon@mail.ru', '6074c6aa3488f3c2dddff2a7ca821aab', 90.01, 2130706433, 1587041560),
(3, 'Oleg', 'oleg@mail.ru', '6074c6aa3488f3c2dddff2a7ca821aab', 5.10, 2130706433, 1587041585),
(4, 'Vovan', 'vovan@mail.ru', '6074c6aa3488f3c2dddff2a7ca821aab', 8.85, 2130706433, 1587041620),
(5, 'Aleksandr', 'shura@mail.ru', '6074c6aa3488f3c2dddff2a7ca821aab', 34.04, 2130706433, 1587041649),
(6, 'Boris', 'boria@mail.ru', 'dbc4d84bfcfe2284ba11beffb853a8c4', 0.09, 2130706434, 1587041688),
(7, 'Zhora', 'zhora@mail.ru', 'dbc4d84bfcfe2284ba11beffb853a8c4', 8.00, 2130706690, 1587041767),
(8, 'Donas', 'donas@mail.ru', '81dc9bdb52d04dc20036dbd8313ed055', 8.08, 2131362050, 1587041814),
(9, 'Donis', 'donis@mail.ru', '81dc9bdb52d04dc20036dbd8313ed055', 26.40, 2131362050, 1587044576),
(12, 'Kostas', 'kosts@mail.ru', '81dc9bdb52d04dc20036dbd8313ed055', 0.00, 2131362050, 1587044631),
(13, 'DONATAS KULVINSKAS', 'a.h.elder@mail.ru', '934b535800b1cba8f96a5d72f72f1611', 0.00, 2130706433, 1587044746),
(14, 'Bobras', 'bebr@mail.ri', '6074c6aa3488f3c2dddff2a7ca821aab', 0.00, 2130706433, 1587044763),
(15, 'Wolfgang', 'wam@ad.de', 'd79c8788088c2193f0244d8f1f36d2db', 0.00, 2130706433, 1587044840),
(16, 'Jeremy', 'jer@mail.com', '6074c6aa3488f3c2dddff2a7ca821aab', 0.00, 2130706433, 1587045492),
(11, 'Longin', 'as@asd.lt', '934b535800b1cba8f96a5d72f72f1611', 45.12, 2130706433, 1587045512),
(10, 'Haroldas', 'haris@dusk.lt', '6074c6aa3488f3c2dddff2a7ca821aab', 1.90, 2130706433, 1587045902),
(17, 'Kostas', 'ksutulov@desk.er', '6666', 0.00, 2147483743, 1587051092);

-- --------------------------------------------------------

--
-- Структура таблицы `test_0`
--

CREATE TABLE `test_0` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `secret_articles`
--
ALTER TABLE `secret_articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `secret_users`
--
ALTER TABLE `secret_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `date_reg` (`date_reg`),
  ADD KEY `balance` (`balance`);

--
-- Индексы таблицы `test_0`
--
ALTER TABLE `test_0`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `secret_articles`
--
ALTER TABLE `secret_articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `secret_users`
--
ALTER TABLE `secret_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `test_0`
--
ALTER TABLE `test_0`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
