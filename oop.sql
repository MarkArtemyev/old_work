
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `messages` (
  `id_message` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `dt_add` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `messages` (`id_message`, `name`, `text`, `dt_add`, `status`, `id_cat`) VALUES
(1, 'Test', 'Hi there!!!!!!!', '2020-03-12 15:20:43', 0, 0),
(2, '3245324', '324324rtewrewr', '2020-07-29 16:59:04', 0, 0),
(3, '2432', '43', '2020-11-18 16:40:35', 0, 0),
(4, 'rty', 'tryr', '2020-11-18 17:56:51', 0, 0),
(5, 'fghfg', 'hfgh', '2020-11-18 17:57:46', 0, 0),
(6, '345345', '435345', '2021-02-17 17:27:29', 0, 1),
(7, 'hello', 'there', '2021-02-17 17:34:14', 0, 1),
(8, 'new', 'hello', '2021-02-17 17:35:10', 0, 1),
(9, '78t87', 'tyugol', '2021-02-17 17:44:33', 0, 2),
(10, '324', '324', '2021-06-23 16:50:11', 0, 0),
(11, '6546', '46456trytr', '2021-07-28 16:56:02', 0, 0);


CREATE TABLE `oop_articles_index` (
  `id_article` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `oop_articles_index` (`id_article`, `title`, `content`, `dt`) VALUES
(1, '324324', 'trwetrtre', '2021-12-08 18:52:37'),
(2, 'rtretretre', '5435435435', '2021-12-08 18:52:37'),
(3, '4354', '3543rtetretre', '2021-12-08 19:08:09'),
(4, '12', '13', '2021-12-08 19:29:55'),
(5, '12', '13', '2021-12-08 19:30:09'),
(6, '12', '13', '2021-12-08 19:33:42');

ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);


ALTER TABLE `oop_articles_index`
  ADD PRIMARY KEY (`id_article`);


ALTER TABLE `messages`
  MODIFY `id_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `oop_articles_index`
  MODIFY `id_article` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

