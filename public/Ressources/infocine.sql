-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 17 sep. 2021 à 13:38
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `infocine`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_release` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `date_edit` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `date_release`, `contents`, `img`, `video`, `date_create`, `date_edit`, `user_id`) VALUES
(2, 'Dune', '15 septembre 2021', '<p>L&#39;histoire de Paul Atreides, vou&eacute; &agrave; conna&icirc;tre un destin hors du commun qui le d&eacute;passe totalement. Car s&#39;il veut pr&eacute;server l&#39;avenir de sa famille et de son peuple, il devra se rendre sur la plan&egrave;te la plus dangereuse de l&#39;univers.</p>', '4633954-jpg-c-310-420-x-f-jpg-q-x-xxyxx-6141e1d4744c4.jpg', 'https://player.allocine.fr/19593287.html', '2021-09-15 12:06:44', '2021-09-15 12:06:44', 3),
(3, 'Matrix 4', '22 décembre 2021', '<p>Quatri&egrave;me volet de la saga &quot;Matrix&quot;, lanc&eacute;e en 1999.</p>', 'Matrix4-6141e24c56ce3.jpg', 'https://player.allocine.fr/19590120.html', '2021-09-15 12:08:44', '2021-09-15 12:08:44', 4),
(4, 'Mourir peut attendre', '6 octobre 2021', '<p>James Bond a quitt&eacute; les services secrets et coule des jours heureux en Jama&iuml;que. Mais son vieil ami Felix Leiter de la CIA d&eacute;barque pour solliciter son aide : il s&#39;agit de sauver un scientifique qui vient d&#39;&ecirc;tre kidnapp&eacute;. Mais la mission se r&eacute;v&egrave;le bien plus dangereuse que pr&eacute;vu !</p>', 'Mourrir-peux-attendre-6141e2a9a9935.jpg', 'https://player.allocine.fr/19589765.html', '2021-09-15 12:10:17', '2021-09-15 12:10:17', 3),
(5, 'Mensonges - Saison1', '2 septembre', '<p>Chirurgien r&eacute;put&eacute;, Thomas se d&eacute;cide &agrave; proposer un rendez-vous &agrave; Jeanne, professeur fra&icirc;chement c&eacute;libataire et s&oelig;ur d&rsquo;une de ses coll&egrave;gues. La soir&eacute;e semble se passer &agrave; merveille. Pourtant, au petit matin, Jeanne pr&eacute;tend avoir &eacute;t&eacute; viol&eacute;e. Thomas, surpris par ces accusations, clame son innocence...<br />\r\n<br />\r\n<em>Adaptation de la s&eacute;rie britannique &quot;Liar&quot;.</em></p>', 'mensonges-6141e37ca4e55.jpg', 'https://player.allocine.fr/19593392.html', '2021-09-15 12:13:48', '2021-09-15 12:13:48', 4),
(6, 'La Casa del Papel', 'Depuis2017', '<p>Huit voleurs font une prise d&#39;otages dans la Maison royale de la Monnaie d&#39;Espagne, tandis qu&#39;un g&eacute;nie du crime manipule la police pour mettre son plan &agrave; ex&eacute;cution.</p>', 'LaCasaDelPapel-6141e3e624c42.jpg', 'https://player.allocine.fr/19577944.html', '2021-09-15 12:15:34', '2021-09-15 12:15:34', 4),
(7, 'Clickbait - Saison 1', '25 Aout 2021', '<p>P&egrave;re aimant, mari d&eacute;vou&eacute; et fr&egrave;re attentionn&eacute;, Nick Brewer dispara&icirc;t myst&eacute;rieusement. Une vid&eacute;o diffus&eacute;e sur Internet le montre couvert d&#39;ecchymoses, tenant un carton sur lequel est &eacute;crit &quot;Je maltraite les femmes. &Agrave; 5 millions de vues, je mourrai&quot;. S&#39;agit-il d&#39;une menace ? D&#39;une confession ? Des deux ? En cherchant &agrave; le sauver, sa s&oelig;ur et son &eacute;pouse d&eacute;couvrent une facette de Nick dont elles ignoraient l&#39;existence.</p>', 'Clickbait-Saison-1-6141e4a45c36c.jpg', 'https://player.allocine.fr/19593509.html', '2021-09-15 12:18:44', '2021-09-15 12:18:44', 4),
(8, 'Les nuits de cabria', '19 Février 2020', '<p>Cabiria, une petite prostitu&eacute;e romaine, est une gentille fille, assez na&iuml;ve malgr&eacute; son dur m&eacute;tier. En dehors de ses clients, les hommes qu&#39;elle rencontre font montre envers elle d&#39;une grande cruaut&eacute;. Avec une foi in&eacute;branlable, Cabiria ne d&eacute;sesp&egrave;re pas de voir tourner sa chance et persiste &agrave; chercher l&#39;amour.</p>', 'LesNuitdDeCabria-6141e5435a912.jpg', 'https://player.allocine.fr/19587638.html', '2021-09-15 12:21:23', '2021-09-15 12:21:23', 3),
(9, 'Zack Snyder39s Justice League', '9 juin 2021', '<p>Bruce Wayne est d&eacute;termin&eacute; &agrave; faire en sorte que le sacrifice ultime de Superman ne soit pas vain; pour cela, avec l&#39;aide de Diana Prince, il met en place un plan pour recruter une &eacute;quipe de m&eacute;tahumains afin de prot&eacute;ger le monde d&#39;une menace apocalyptique imminente. La t&acirc;che s&#39;av&egrave;re plus difficile que Bruce ne l&#39;imaginait, car chacune des recrues doit faire face aux d&eacute;mons de son pass&eacute; et les surpasser pour se rassembler et former une ligue de h&eacute;ros sans pr&eacute;c&eacute;dent. D&eacute;sormais unis, Batman, Wonder Woman, Aquaman, Cyborg et Flash r&eacute;ussiront-ils &agrave; sauver la plan&egrave;te de Steppenwolf, DeSaad, Darkseid et de leurs terribles intentions ?</p>', 'justice-league-6141e5dc75788.jpg', 'https://player.allocine.fr/19591364.html', '2021-09-15 12:23:56', '2021-09-15 12:23:56', 4),
(10, 'LA FAMILLE ADDAMS 2 : UNE VIRÉE D\'ENFER', '13 octobre 2021', '<p>La famille la plus adorablement &eacute;pouvantable d&rsquo;entre toutes revient sur les &eacute;crans pour la suite de ses premi&egrave;res aventures avec&nbsp;<em>La Famille Addams 2</em>. Dans ce tout nouvel &eacute;pisode, la famille Addams va se retrouver emberlificot&eacute;e dans des aventures compl&egrave;tement d&eacute;jant&eacute;es, faites de situations loufoques, face &agrave; des personnages &agrave; la na&iuml;vet&eacute; d&eacute;sarmante. Quoiqu&rsquo;il arrive, toujours fid&egrave;le aux valeurs qui sont les siennes, la famille Addams ne manquera pas d&rsquo;y apporter sa touche d&rsquo;&eacute;tranget&eacute; et de bizarrerie.</p>', 'familleAddams-6141e649a938a.jpg', 'https://player.allocine.fr/19593790.html', '2021-09-15 12:25:45', '2021-09-15 12:25:45', 3),
(11, 'Rick et Morty', 'Depuis 2014', '<p>Un brillant inventeur et son petit fils un peu &agrave; l&#39;Ouest partent &agrave; l&#39;aventure...</p>', 'rickmorty-6141e6db54ad5.jpg', 'https://player.allocine.fr/19557962.html', '2021-09-15 12:28:11', '2021-09-15 12:28:11', 4),
(12, 'Le Monde animé de Grimault', '6 novembre 2019', '<p>Programme de 8 courts-m&eacute;trages de Paul Grimault en version restaur&eacute;e :<br />\r\n<br />\r\n-&nbsp;<em>Les Passagers de la grande ourse</em><br />\r\n-&nbsp;<em>L&rsquo;&Eacute;pouvantail</em><br />\r\n-&nbsp;<em>Le Marchand de notes</em><br />\r\n-&nbsp;<em>Le Voleur de paratonnerre</em><br />\r\n-&nbsp;<em>La Fl&ucirc;te magique</em><br />\r\n-&nbsp;<em>Le Petit soldat</em><br />\r\n-&nbsp;<em>Le Diamant</em><br />\r\n-&nbsp;<em>Le Chien m&eacute;lomane</em></p>', 'lemonde-6141ea33e0d26.jpg', 'https://player.allocine.fr/19586112.html', '2021-09-15 12:42:27', '2021-09-15 12:42:27', 3);

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE IF NOT EXISTS `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`category_id`),
  KEY `IDX_53A4EDAA7294869C` (`article_id`),
  KEY `IDX_53A4EDAA12469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(6, 3),
(7, 2),
(7, 3),
(8, 5),
(9, 1),
(9, 5),
(10, 1),
(10, 4),
(11, 2),
(11, 3),
(11, 4),
(12, 4),
(12, 5);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `date_edit` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name_category`, `date_create`, `date_edit`) VALUES
(1, 'Cinéma', '2021-09-13 12:46:49', '2021-09-13 12:46:49'),
(2, 'Séries', '2021-09-13 12:46:58', '2021-09-13 12:46:58'),
(3, 'Streaming', '2021-09-14 14:26:12', '2021-09-14 14:26:12'),
(4, 'Animé', '2021-09-14 14:26:49', '2021-09-14 14:26:49'),
(5, 'DVD Blue Ray', '2021-09-14 14:27:04', '2021-09-14 14:27:04');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `date_edit` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `topic`, `message`, `date_create`, `date_edit`) VALUES
(1, 'machin', 'infogentric@gmail.com', 'essai', 'fgjfgyjhyfgjhtfygjhtfygjhtdyjhn dgh dgh dth drth rth rt h', '2021-09-15 09:39:13', '2021-09-15 09:39:13');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210913100345', '2021-09-13 10:04:30', 52),
('DoctrineMigrations\\Version20210913101937', '2021-09-13 10:19:44', 51),
('DoctrineMigrations\\Version20210913102726', '2021-09-13 10:27:37', 68),
('DoctrineMigrations\\Version20210913103046', '2021-09-13 11:30:09', 71),
('DoctrineMigrations\\Version20210913113218', '2021-09-13 11:32:35', 52),
('DoctrineMigrations\\Version20210913114113', '2021-09-13 11:41:47', 160),
('DoctrineMigrations\\Version20210913123938', '2021-09-13 12:39:45', 54),
('DoctrineMigrations\\Version20210913124338', '2021-09-13 12:43:44', 337),
('DoctrineMigrations\\Version20210913141604', '2021-09-13 14:16:10', 187),
('DoctrineMigrations\\Version20210913141813', '2021-09-13 14:18:18', 114),
('DoctrineMigrations\\Version20210913142133', '2021-09-13 14:21:56', 51),
('DoctrineMigrations\\Version20210913142645', '2021-09-13 14:26:51', 187),
('DoctrineMigrations\\Version20210915092457', '2021-09-15 09:25:11', 196),
('DoctrineMigrations\\Version20210915140930', '2021-09-15 14:09:36', 34),
('DoctrineMigrations\\Version20210915141117', '2021-09-15 14:11:24', 144);

-- --------------------------------------------------------

--
-- Structure de la table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `date_edit` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E1CAD839A76ED395` (`user_id`),
  KEY `IDX_E1CAD8397294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `remark`
--

INSERT INTO `remark` (`id`, `title`, `contents`, `date_create`, `date_edit`, `user_id`, `article_id`) VALUES
(1, 'Superbe Article ;)', '<p>cvbhxfghbdfghfgdgfh</p>', '2021-09-15 10:01:19', '2021-09-15 10:01:19', 3, 3),
(2, 'pfff', '<p>dsfgfdsqgfdsqg</p>', '2021-09-17 09:51:59', '2021-09-17 09:51:59', 5, 9),
(3, 'pfff', '<p>fdshgsfsdfhsfdgh</p>', '2021-09-17 09:52:44', '2021-09-17 09:52:44', 4, 4),
(4, 'Zalor', '<p>hgjfkjkfgj</p>', '2021-09-17 11:46:53', '2021-09-17 11:46:53', 4, 10),
(5, 'Zalor', '<p>sfdhfsdhfsg</p>', '2021-09-17 12:02:49', '2021-09-17 12:02:49', 4, 6),
(6, 'hophophop', '<p>dgfdqsgfsdgs</p>', '2021-09-17 12:13:58', '2021-09-17 12:13:58', 4, 6);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `date_edit` datetime NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `date_create`, `date_edit`, `pseudo`) VALUES
(3, 'egentric@gmail.com', '[\"ROLE_USER\", \"ROLE_ADMIN\", \"ROLE_EDITOR\"]', '$2y$13$LvGW9J/ZaZ4oZVwCCh1K4Og8ZbjItmpLzdTDgn2Ck2CZunZkqWhqW', '2021-09-14 08:24:56', '2021-09-14 08:24:56', 'Erwan'),
(4, 'infogentric@gmail.com', '[\"ROLE_USER\", \"ROLE_EDITOR\"]', '$2y$13$SHlfeRl7aFC3GjZWoE10iuGROo.B4KIa5p/hg6U64ENPt/yAJZe7y', '2021-09-15 14:22:04', '2021-09-15 14:22:04', 'Maurice'),
(5, 'infogentric2@gmail.com', '[\"ROLE_USER\"]', '$2y$13$oLQ6BDiNxnyk5kcR7oWu1utMH.MSFb6H.1WDu9KCl3ut.Nl/CO4EO', '2021-09-15 14:23:42', '2021-09-15 14:23:42', 'Viaud');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `FK_53A4EDAA12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_53A4EDAA7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `remark`
--
ALTER TABLE `remark`
  ADD CONSTRAINT `FK_E1CAD8397294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_E1CAD839A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
