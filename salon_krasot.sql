-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 04 2024 г., 11:23
-- Версия сервера: 5.7.39
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `salon_krasot`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dolgnost`
--

CREATE TABLE `dolgnost` (
  `id_dolgnost` int(10) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dolgnost`
--

INSERT INTO `dolgnost` (`id_dolgnost`, `name`) VALUES
(1, 'Парикмахер'),
(2, 'Визажист '),
(3, 'Мастер ногтевого сервиса '),
(4, 'Администратор '),
(5, 'Менеджер '),
(6, 'Косметолог'),
(10, 'Руководитель предприятия');

-- --------------------------------------------------------

--
-- Структура таблицы `klient`
--

CREATE TABLE `klient` (
  `id_klient` int(10) NOT NULL,
  `fio` varchar(100) NOT NULL,
  `phone` double NOT NULL,
  `postoanstvo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sotrudnik`
--

CREATE TABLE `sotrudnik` (
  `id_sotrudnik` int(10) NOT NULL,
  `fio` varchar(100) NOT NULL,
  `id_dolgnost` int(10) NOT NULL,
  `graf_work` varchar(100) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `phone` double NOT NULL,
  `img` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sotrudnik`
--

INSERT INTO `sotrudnik` (`id_sotrudnik`, `fio`, `id_dolgnost`, `graf_work`, `adress`, `phone`, `img`) VALUES
(1, 'Иванова Ксения Владимировна', 1, 'С понедельника по четверг. Пятница, суббота и воскресенье выходные.', 'Ул. Гоголя 125', 79573464376, 'Парехмахер.jpg'),
(2, 'Емельяненко Екатерина Константиновка', 2, 'С понедельника по пятницу. Суббота и воскресенье выходные.', 'Пер. Тайский 8', 79286547898, 'Визажист.jpg'),
(3, 'Ефремова Мария Игоревна', 3, 'Понедельник, Среда, Патница рабочие дни. Вторник, Четверг, Суббота и Воскресенье выходные.', 'Ул. Победы 30', 79284569878, 'Мастер ногтей.jpg'),
(4, 'Емельяненко Екатерина Константиновка', 3, 'Вторник, Среда и Пятница рабочие дни. Понедельник, Среда, Пятница и Воскресенье выходние', 'Ул. Энтузиастов 30', 79283457621, 'Мастер ногтей 2.jpg'),
(5, 'Шевчук Виктория Сергеевна', 10, 'С понедельника по пятницу. Суббота и воскресенье выходные', 'Ул. Энтузиастов 8', 79286124376, 'Руководитель предприятия.jpg'),
(6, 'Бархович Нелли Сергеевна', 4, 'С понедельника по пятницу. Суббота и воскресенье выходные.', 'Ул. Владимира 16', 79265479316, 'Администратор.png'),
(7, 'Петрова Александра Валерьевна', 5, 'С понедельника по пятницу. Суббота и воскресенье выходные.', 'Пер. Таисский 7', 79287612157, 'Менеджер.jpg'),
(8, 'Берестьева Анна Андреевна', 6, 'С понедельника по четверг. Пятница, Суббота и воскресенье выходные.', 'Ул. Лужнего 7', 79286843456, 'Косметолог.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `uslugi`
--

CREATE TABLE `uslugi` (
  `id_uslugi` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `opis_uslugi` varchar(1000) NOT NULL,
  `img` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uslugi`
--

INSERT INTO `uslugi` (`id_uslugi`, `name`, `price`, `opis_uslugi`, `img`) VALUES
(1, 'Массаж', 560.00, 'Совокупность приёмов механического и рефлекторного воздействия на ткани и органы в виде растирания, давления, вибрации, проводимых непосредственно на поверхности тела человека как руками, так и специальными аппаратами через воздушную, водную или иную среду с целью достижения лечебного или иного эффекта.', 'spa.png'),
(2, 'Маникюр', 600.00, 'Уход за пальцами рук, чистка, полировка, покрытие лаком ногтей.', '2.png'),
(3, 'Педикюр', 400.00, 'Уход за ступнями и пальцами ног (чистка и полировка ногтей, удаление мозолей и т. п.).', '3.png'),
(4, 'Окрашивание волос', 1100.00, 'Процесс, в ходе которого наносится специальное красящее вещество, способное изменить природный цвет или оттенок.', '5.png'),
(5, 'Стрижка огнём', 1500.00, 'Cпособ ухода за волосами, заключающийся в воздействии открытого огня на стержень волоса.', '6.png'),
(6, 'Стрижка волос', 300.00, 'Укорачивание волос. Процесс стрижки состоит из методов, операций, срезов, определенного фасона.', '7.png'),
(7, 'Мелирование', 1200.00, 'Окрашивание волос отдельными прядями.', '9.png');

-- --------------------------------------------------------

--
-- Структура таблицы `visits`
--

CREATE TABLE `visits` (
  `id_visitor` int(10) NOT NULL,
  `id_klient` int(10) NOT NULL,
  `id_sotrudnik` int(10) NOT NULL,
  `id_uslugi` int(10) NOT NULL,
  `data` date NOT NULL,
  `time` time(6) NOT NULL,
  `usluga_okazana` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dolgnost`
--
ALTER TABLE `dolgnost`
  ADD PRIMARY KEY (`id_dolgnost`);

--
-- Индексы таблицы `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klient`);

--
-- Индексы таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  ADD PRIMARY KEY (`id_sotrudnik`),
  ADD KEY `id_dolgnost` (`id_dolgnost`);

--
-- Индексы таблицы `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id_uslugi`);

--
-- Индексы таблицы `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id_visitor`),
  ADD KEY `id_klient` (`id_klient`),
  ADD KEY `id_sotrudnik` (`id_sotrudnik`),
  ADD KEY `id_uslugi` (`id_uslugi`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dolgnost`
--
ALTER TABLE `dolgnost`
  MODIFY `id_dolgnost` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klient` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  MODIFY `id_sotrudnik` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id_uslugi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `visits`
--
ALTER TABLE `visits`
  MODIFY `id_visitor` int(10) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  ADD CONSTRAINT `sotrudnik_ibfk_1` FOREIGN KEY (`id_dolgnost`) REFERENCES `dolgnost` (`id_dolgnost`);

--
-- Ограничения внешнего ключа таблицы `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id_klient`),
  ADD CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`id_sotrudnik`) REFERENCES `sotrudnik` (`id_sotrudnik`),
  ADD CONSTRAINT `visits_ibfk_3` FOREIGN KEY (`id_uslugi`) REFERENCES `uslugi` (`id_uslugi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
