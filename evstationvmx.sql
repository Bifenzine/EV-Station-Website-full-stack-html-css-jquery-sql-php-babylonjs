-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 juil. 2023 à 02:45
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `evstationvmx`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnee`
--

CREATE TABLE `abonnee` (
  `id_abonnee` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mp` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `last_station_abonnee` varchar(255) NOT NULL,
  `times_of_charge_abonnee` int(11) NOT NULL,
  `car_model_abonnee` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `abonnee`
--

INSERT INTO `abonnee` (`id_abonnee`, `nom`, `email`, `mp`, `photo`, `last_station_abonnee`, `times_of_charge_abonnee`, `car_model_abonnee`) VALUES
(1, 'Houda', 'houda@gmail.com', 'taratata', 'houda.png', '', 0, ''),
(2, 'Eloufi', 'eloufi@gmail.com', 'taratata', 'eloufi.png', '', 0, ''),
(3, 'Zakaria', 'zaka@gmail.com', 'taratata', 'zaka.jpg', '', 0, ''),
(4, 'Houda', 'houda@gmail.com', 'taratata', 'houda.png', '', 0, ''),
(5, 'aaa', 'aaa', 'aaa', 'aaaa', '', 0, ''),
(6, 'aaaaaaaaaa', 'tyutyut@sdfsdfs', 'aaa', 'person-5.jpg', '', 0, ''),
(7, 'xxx', 'xxxx@xxxx', 'xxx', 'person-5.jpg', '', 0, ''),
(8, 'zzzz', 'zzzz@zzzz', 'zzz', '1683904125_person-7.jpg', '', 0, ''),
(9, 'zzzz', 'zzzz@zzzz', 'zzz', '1683904583_person-7.jpg', '', 0, ''),
(10, 'Moujib Abdo', 'Moujib@jmail.com', 'azerty', '1683904643_person-1.jpg', '', 0, ''),
(11, 'mohamed', 'bifenzinemohamed7@gmail.com', '1234567', 'mohamed.png', 'EVS Anfa', 13, 'TESLA'),
(12, 'khalil', 'khalil@gmail.com', '1234567', 'khalil.png', '', 0, ''),
(13, 'oussama', 'ou@ss.com', '1234567', 'ou.png', '', 0, ''),
(14, 'soukaina', 'sss@h.com', '123', '1688836407_1688740908_apple-touch-icon.png', '', 0, ''),
(15, 'soukaina', 'ah@gmail.com', '123', '1688839289_1688740908_apple-touch-icon.png', '', 0, ''),
(16, 'soukaina', 'ah@gmail.com', '123', '1688839488_1688740908_apple-touch-icon.png', '', 0, ''),
(17, 'soukaina', 'ah@gmail.com', '123', '1688839540_1688740908_apple-touch-icon.png', '', 0, ''),
(18, 'soukaina', 'ah@gmail.com', '123', '1688839577_1688740908_apple-touch-icon.png', '', 0, ''),
(19, 'soukaina', 'ah@gmail.com', '123', '1688839614_1688740908_apple-touch-icon.png', '', 0, ''),
(20, 'soukaina', 'ah@gmail.com', '123', '1688839654_1688740908_apple-touch-icon.png', '', 0, ''),
(21, 'soukaina', 'ah@gmail.com', '123', '1688839698_1688740908_apple-touch-icon.png', '', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `aimer`
--

CREATE TABLE `aimer` (
  `id_aimer` int(11) NOT NULL,
  `id_abonnee` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `dateaimer` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aimer`
--

INSERT INTO `aimer` (`id_aimer`, `id_abonnee`, `id_article`, `dateaimer`) VALUES
(2, 1, 8, '2023-05-16 12:30:06'),
(4, 10, 8, '2023-05-16 12:30:42'),
(5, 2, 9, '2023-05-16 12:49:55'),
(6, 3, 9, '2023-05-16 12:49:55');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_article` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `contenu` text DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `categorie` varchar(100) DEFAULT NULL,
  `id_abonnee` int(11) DEFAULT NULL,
  `auteur` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link_article` text NOT NULL,
  `titre_reduit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_article`, `titre`, `contenu`, `date`, `categorie`, `id_abonnee`, `auteur`, `description`, `image`, `link_article`, `titre_reduit`) VALUES
(6, 'Get Back to Work, New York', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\r\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Biologie', 3, '', '', '', '', ''),
(7, 'Get 7 Back to Work, New York', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\r\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Mecanique', 9, '', '', '', '', ''),
(8, 'Get Back to Work, New York', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\r\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Electronique', 1, '', '', '', '', ''),
(9, 'Get Back to Work, New York', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\r\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Electronique', 1, '', '', '', '', ''),
(10, 'Get 10 Back to Work, New York', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\r\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Electronique', 6, '', '', '', '', ''),
(14, 'EV Charging Stations Get Bigger and Brighter', 'EVstation Inc., another charging point provider, often hosts a ribbon-cutting ceremony to drum up local interest in new stations, planting flags and handing out flyers and doughnuts, said Jonathan Levy, the company’s chief commercial officer.\r\n\r\nEVstation has also been working with some of its partner property owners to install neon signs and with state governments to place signs advertising its locations on the side of the highway.', '2023-07-08', NULL, NULL, 'The Wall Street Journal', 'EVstation Inc., another charging point provider...', 'wsj.jpg', 'https://www.wsj.com/articles/ev-charging-stations-get-bigger-and-brighter-11643799603', 'EV Charging Stations Get Bigger and Brighter'),
(15, 'General Motors and EVstation Boost Build Plan for High Power Fast Chargers Across the Morocco', 'owner and operator of the nation’s largest public fast charging network for electric vehicles (EVs), and General Motors (GM) announced an expansion of their fast-charging infrastructure build-out collaboration currently underway across the Moroccan EVstation and GM previously announced a tripling of the EVgo network with plans to build 2,750 charging stalls through 2025.\r\n\r\nIn response to the growing demand for charging infrastructure and new vehicles coming to market in the later years of the program, EVstation and GM have now expanded their build plan to add another 500 high-powered DC fast charging stalls, bringing the total to 3,250 through 2025 and extending the geographic reach from 40 metropolitan markets to 52.\r\n\r\nEVstation will continue scaling fast charging deployments for the program as newer EV models hit the market in the next few years. GM’s sustained commitment to electrification includes plans to deliver 30 EV models to the market globally through 2025. The new EVstation sites all deploy cutting-edge power sharing technology, including high power fast chargers capable of delivering up to 350 kW. Sites can provide up to 150 miles of range in 8-12 minutes1 for new 350kW capable EV models coming to market.\r\n\r\n“As EV adoption picks up momentum across both consumer and commercial segments, the charging infrastructure buildout needs to continue being a few steps ahead of demand. EVstation is committed to reliable and convenient charging for all,” said EVstation CEO, Bifenzine Mohamed. “We are thrilled to expand the scope of our collaboration with GM – a testament to our successful partnership. We look forward to working together as we expedite the journey to an electrified future for the betterment of our planet.”', '2023-07-02', NULL, NULL, 'General Motors', 'owner and operator of the nation’s largest public ', 'gmotors.jpg', '', 'EVstation Boost Build Plan '),
(16, 'Convenient, Reliable, Affordable', 'More than 40 million Moroccan live within 10 miles of an EVstation charger. Discover one of the nation’s largest public networks of DC fast chargers, all powered by 100% renewable energy. We have over 850 fast charging stations in more than 60 metropolitan areas. We’re on a mission to deliver a fast charging experience that leaves fossil fuels in the rearview mirror.', '2023-07-01', NULL, NULL, 'EVstation', 'More than 40 million Moroccan live within 10 miles', 'map-morocco.jpg', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `contenu` text DEFAULT NULL,
  `id_abonnee` int(11) DEFAULT NULL,
  `id_article` int(11) DEFAULT NULL,
  `nbr_aime` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id_comment`, `contenu`, `id_abonnee`, `id_article`, `nbr_aime`, `date`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\n', 1, 9, 0, '2023-04-28 00:00:00'),
(5, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\r\n', 2, 9, 0, '2023-04-28 00:00:00'),
(6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\n', 2, 10, 0, '2023-04-28 00:00:00'),
(7, 'Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', 2, 8, 0, '2023-04-28 00:00:00'),
(8, 'am sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assu', 2, 8, 0, '2023-04-28 00:00:00'),
(9, 'Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', 1, 10, 0, '2023-04-28 00:00:00'),
(10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\r\n', 3, 10, 0, '2023-04-28 00:00:00'),
(11, 'Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', 3, 6, 0, '2023-04-28 00:00:00'),
(12, 'unt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, \r\n', 3, 7, 0, '2023-04-28 00:00:00'),
(13, 'hfghfghfgh', 3, 9, 0, '2023-04-28 00:00:00'),
(14, 'ghjghjghjghj', 3, 9, 0, '2023-04-28 00:00:00'),
(15, 'ghjghjghjghj', 3, 9, 0, '2023-04-28 00:00:00'),
(16, 'ghjghjghjghj', 3, 9, 0, '2023-04-28 00:00:00'),
(17, 'tyrtyrtyrtyrty', 3, 9, 0, '2023-04-28 00:00:00'),
(18, 'cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus!', 3, 9, 0, '2023-04-28 00:00:00'),
(20, 'ghgfhfgh fghfgh', 3, 9, 0, '2023-04-28 00:00:00'),
(21, 'aaaaaaaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(22, 'erterterte', 3, 9, 0, '2023-05-12 00:00:00'),
(24, 'ertertert', 3, 9, 0, '2023-05-12 00:00:00'),
(25, 'tzetztzet', 3, 9, 0, '2023-05-12 00:00:00'),
(26, 'yeryeryeryery', 3, 9, 0, '2023-05-12 00:00:00'),
(29, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(31, 'xxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(32, 'xxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(34, 'aaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(35, 'erzerzerzer', 3, 9, 0, '2023-05-12 00:00:00'),
(36, 'aaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(37, 'aaaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(38, 'tyrtyrtyrty', 3, 8, 0, '2023-05-12 00:00:00'),
(40, 'dfgdfgdfgdfgdfg', 3, 9, 0, '2023-05-12 00:00:00'),
(41, 'tyrtyrtyrty', 3, 9, 0, '2023-05-12 00:00:00'),
(42, 'rtyrtyrtyrt', 3, 9, 0, '2023-05-12 00:00:00'),
(43, 'rtyrtyrtyrt', 3, 9, 0, '2023-05-12 00:00:00'),
(44, 'dfgdfgdfg', 3, 9, 0, '2023-05-12 00:00:00'),
(45, 'rtyrtyrty', 3, 9, 0, '2023-05-12 00:00:00'),
(46, 'tertertert', 3, 9, 0, '2023-05-12 00:00:00'),
(47, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(48, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(49, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(50, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(51, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(52, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(53, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(54, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(55, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(56, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(60, 'sfdsdfsdfsd', 3, 9, 0, '2023-05-16 00:00:00'),
(66, 'cbcvbcvb', 3, 8, 0, '2023-05-16 18:00:34'),
(67, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:01:10'),
(68, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:01:25'),
(69, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:01:43'),
(70, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:02:04'),
(71, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:03:14'),
(72, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:05:01'),
(73, 'cocowawa', 3, 8, 0, '2023-05-16 18:05:13'),
(74, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:05:51'),
(75, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:22:59'),
(76, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:23:55'),
(77, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:26:00'),
(78, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:27:38'),
(79, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:33:23'),
(80, 'ok', 11, 14, 0, '2023-07-14 23:24:04'),
(81, '123', 11, 14, 0, '2023-07-19 21:43:57'),
(82, '123', 11, 14, 0, '2023-07-19 21:45:43'),
(83, '123', 11, 14, 0, '2023-07-19 22:31:48'),
(84, 'nice', 11, 15, 0, '2023-07-19 22:33:03'),
(85, '', 11, 15, 0, '2023-07-19 22:34:50'),
(86, '123', 11, 14, 0, '2023-07-19 22:44:24'),
(87, '123', 11, 14, 0, '2023-07-19 22:48:58'),
(88, '123', 11, 14, 0, '2023-07-19 23:03:27'),
(89, '123', 11, 14, 0, '2023-07-19 23:08:29'),
(90, '321', 11, 14, 0, '2023-07-19 23:12:50'),
(91, '233', 11, 14, 0, '2023-07-19 23:29:30');

-- --------------------------------------------------------

--
-- Structure de la table `opinion`
--

CREATE TABLE `opinion` (
  `id` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `id_abonnee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `opinion`
--

INSERT INTO `opinion` (`id`, `contenu`, `id_abonnee`) VALUES
(1, 'I really appreciate this service', 12),
(2, 'it\'s a big step towards the future', 11),
(3, 'when my car run out of energy EVstation is here!', 13);

-- --------------------------------------------------------

--
-- Structure de la table `vmx_charger`
--

CREATE TABLE `vmx_charger` (
  `id_prod` int(11) NOT NULL,
  `nom_prod` varchar(255) NOT NULL,
  `dimension_prod` varchar(255) NOT NULL,
  `prix_prod` int(255) NOT NULL,
  `id_abonnee` int(11) NOT NULL,
  `desc_prod` varchar(255) NOT NULL,
  `wattage_prod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vmx_charger`
--

INSERT INTO `vmx_charger` (`id_prod`, `nom_prod`, `dimension_prod`, `prix_prod`, `id_abonnee`, `desc_prod`, `wattage_prod`) VALUES
(0, 'EV CHARGER VMX', 'height 210cm x width 80cm', 17000, 0, 'EV Charger to charge your electric vehicule.', '110KW');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnee`
--
ALTER TABLE `abonnee`
  ADD PRIMARY KEY (`id_abonnee`);

--
-- Index pour la table `aimer`
--
ALTER TABLE `aimer`
  ADD PRIMARY KEY (`id_aimer`),
  ADD KEY `id_abonnee` (`id_abonnee`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_abonnee` (`id_abonnee`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_abonnee` (`id_abonnee`),
  ADD KEY `id_article_2` (`id_article`);

--
-- Index pour la table `opinion`
--
ALTER TABLE `opinion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_abonnee` (`id_abonnee`);

--
-- Index pour la table `vmx_charger`
--
ALTER TABLE `vmx_charger`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `id_abonnee` (`id_abonnee`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnee`
--
ALTER TABLE `abonnee`
  MODIFY `id_abonnee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `aimer`
--
ALTER TABLE `aimer`
  MODIFY `id_aimer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `opinion`
--
ALTER TABLE `opinion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `vmx_charger`
--
ALTER TABLE `vmx_charger`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aimer`
--
ALTER TABLE `aimer`
  ADD CONSTRAINT `aimer_ibfk_1` FOREIGN KEY (`id_abonnee`) REFERENCES `abonnee` (`id_abonnee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aimer_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id_article`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_abonnee`) REFERENCES `abonnee` (`id_abonnee`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_abonnee`) REFERENCES `abonnee` (`id_abonnee`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id_article`);

--
-- Contraintes pour la table `opinion`
--
ALTER TABLE `opinion`
  ADD CONSTRAINT `opinion_ibfk_1` FOREIGN KEY (`id_abonnee`) REFERENCES `abonnee` (`id_abonnee`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
