-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 27 2019 г., 17:17
-- Версия сервера: 5.6.38
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpmysql6`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`id`, `name`, `email`) VALUES
(1, 'Kevin Yank', 'thatguy@kevinyank.com'),
(2, 'Tom Butler', 'tom@r.je'),
(3, 'Andrew Chornii', 'andrei.chornii@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Knock-knock'),
(2, 'Cross the road'),
(3, 'Lawyers'),
(4, 'Walk the bar'),
(5, 'Light bulb');

-- --------------------------------------------------------

--
-- Структура таблицы `joke`
--

CREATE TABLE `joke` (
  `id` int(11) NOT NULL,
  `joketext` text,
  `jokedate` date NOT NULL,
  `authorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `joke`
--

INSERT INTO `joke` (`id`, `joketext`, `jokedate`, `authorId`) VALUES
(3, 'Why was the empty array stuck outside? It didn\'t have any keys', '2017-04-01', 2),
(23, 'army_now_!', '2019-09-27', 1),
(28, 'YES_or_NO', '2019-09-27', 1),
(29, 'sss_zzz', '2019-09-27', 1),
(30, 'funny', '2019-09-27', 1),
(31, 'not funny_to me', '2019-09-27', 1),
(32, 'eeeeee', '2019-09-27', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jokecategory`
--

CREATE TABLE `jokecategory` (
  `jokeid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jokecategory`
--

INSERT INTO `jokecategory` (`jokeid`, `categoryid`) VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 3),
(4, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `joke`
--
ALTER TABLE `joke`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jokecategory`
--
ALTER TABLE `jokecategory`
  ADD PRIMARY KEY (`jokeid`,`categoryid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `joke`
--
ALTER TABLE `joke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
