-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mar 21 Février 2017 à 20:35
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Neussaipa`
--

-- --------------------------------------------------------

--
-- Structure de la table `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aired` datetime NOT NULL,
  `producers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licensors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `studios` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `synopsis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime`
--

INSERT INTO `anime` (`id`, `type_id`, `genre_id`, `name`, `picture`, `status`, `aired`, `producers`, `licensors`, `studios`, `source`, `duration`, `synopsis`, `background`, `rating`) VALUES
(1, 1, 2, 'Fullmetal Alchemist: Brotherhood', 'https://myanimelist.cdn-dena.com/images/anime/5/47421.jpg', 'Airing', '2012-04-05 00:00:00', 'Aniplex, Square Enix', 'FUNimation', 'Bones', 'Manga', 24, 'Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price for their transgression—Edward loses', 'Fullmetal Alchemist: Brotherhood is an alternate retelling of Hiromu Arakawa''s Fullmetal Alchemist manga that is closer to the source material than the previous 2003 adaptation, this time covering the entire story.', '9.26'),
(2, 2, 3, 'Kimi no Na wa.', 'https://myanimelist.cdn-dena.com/images/anime/7/79999.jpg', 'Finished Airing', '2016-08-28 04:00:00', 'Kadokawa Shoten', 'Funimation', 'CoMix', 'Original', 106, 'Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school stu', 'No background information has been added to this title', '9.34'),
(3, 1, 1, 'Code Geass: Hangyaku no Lelouch', 'https://myanimelist.cdn-dena.com/images/anime/5/50331.jpg', 'Finished Airing', '2012-10-06 19:03:00', 'Bandai', 'Funimation', 'Sunrise', 'Original', 24, 'In the year 2010, the Holy Empire of Britannia is establishing itself as a dominant military nation, starting with the conquest of Japan. Renamed to Area 11 after its swift defeat, Japan has seen significant resistance against these tyrants in an attempt ', 'Code Geass: Hangyaku no Lelouch is an original anime series by Sunrise animation studio with original character designs by the all-female Japanese manga artist group Clamp. Manga and light novels based off the show have been published by Kadokawa Shoten.', '8.82'),
(4, 1, 4, 'Elfen Lied', 'https://myanimelist.cdn-dena.com/images/anime/10/6883.jpg', 'Finished Airing', '2012-07-04 00:00:00', 'VAP', 'ADV FIlms', 'Arms', 'Manga', 24, 'Lucy is a special breed of human referred to as "Diclonius," born with a short pair of horns and invisible telekinetic hands that lands her as a victim of inhumane scientific experimentation by the government. However, once circumstances present her an op', 'Elfen Lied is based on Lynn Okamoto''s seinen manga series of the same name and premiered while the manga was still in publication. The anime follows the source material through the first 7 volumes, with several alterations to the story, and concludes with', '7.84'),
(5, 1, 3, 'Kuzu no Honkai', 'https://myanimelist.cdn-dena.com/images/anime/5/83937.jpg', 'Currently Airing', '2013-01-13 00:00:00', NULL, NULL, NULL, NULL, 22, 'To the outside world, Hanabi Yasuraoka and Mugi Awaya are the perfect couple. But in reality, they just share the same secret pain: they are both in love with other people they cannot be with. \r\n\r\nHanabi has loved her childhood friend and neighbor Narumi ', NULL, NULL),
(6, 1, 5, 'Youjo Senki', 'https://myanimelist.cdn-dena.com/images/anime/5/82890.jpg', 'Currently Airing', '2017-01-06 00:00:00', NULL, NULL, NULL, NULL, 66, 'On the front lines of the war, there is a little girl. Blond hair, blue eyes, and porcelain white skin, she commands her squad with a lisping voice. Her name is Tanya Degurechaff. While in reality, she is one of Japan''s most elite salary-men, reborn as a ', NULL, NULL),
(7, 1, 1, 'Fuuka', 'https://myanimelist.cdn-dena.com/images/anime/8/83735.jpg', 'Currently Airing', '2017-01-06 00:00:00', NULL, NULL, NULL, NULL, 2, 'Yuu Haruna just moved into town and loves to use Twitter. Out on his way to buy dinner, he bumps into a mysterious girl, Fuuka Akitsuki, who breaks his phone thinking he was trying to take a picture of her panties. How will his new life change now?', NULL, NULL),
(8, 1, 1, 'Hand Shakers', 'https://myanimelist.cdn-dena.com/images/anime/7/83395.jpg', 'Currently Airing', '2017-01-11 00:00:00', NULL, NULL, NULL, NULL, 8, 'The anime takes place in Osaka in "AD20XX," and revolves around the Hand Shakers—partners who can summon "Nimrodes," weapons born from their deep psyche by joining hands. In order to grant the pair''s wish, the Hand Shakers compete with and fight other Han', NULL, NULL),
(9, 1, 10, 'One Room', 'https://myanimelist.cdn-dena.com/images/anime/9/83777.jpg', 'Currently Airing', '2017-01-11 00:00:00', NULL, NULL, NULL, NULL, 4, 'Series of shorts that will tell stories of "three sisters raised in your (one) room."', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `anime_genre`
--

CREATE TABLE `anime_genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime_genre`
--

INSERT INTO `anime_genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Romance'),
(4, 'Horror'),
(5, 'Military'),
(6, 'Supernatural'),
(7, 'Historical'),
(8, 'Sports'),
(9, 'Mystery'),
(10, 'Sci-Fi'),
(12, 'Shounen'),
(13, 'Hentai');

-- --------------------------------------------------------

--
-- Structure de la table `anime_review`
--

CREATE TABLE `anime_review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime_review`
--

INSERT INTO `anime_review` (`id`, `user_id`, `anime_id`, `value`, `created`) VALUES
(1, 1, 1, 'Test', '2017-02-21 11:43:43'),
(2, 1, 1, 'Awesome movie', '2017-02-21 11:53:42'),
(3, 1, 1, 'ete', '2017-02-21 11:54:07');

-- --------------------------------------------------------

--
-- Structure de la table `anime_score`
--

CREATE TABLE `anime_score` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `anime_type`
--

CREATE TABLE `anime_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime_type`
--

INSERT INTO `anime_type` (`id`, `name`) VALUES
(1, 'TV'),
(2, 'Movie'),
(3, 'ONA'),
(4, 'OVA'),
(5, 'Special');

-- --------------------------------------------------------

--
-- Structure de la table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aired` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `episode`
--

INSERT INTO `episode` (`id`, `anime_id`, `name`, `duration`, `description`, `aired`) VALUES
(1, 1, 'Fullmetal Alchemist', 25, 'The Elric brothers, Edward and Alphonse, who both have already made a strong reputation of themselves despite Edward''s short military career, are called upon by Führer King Bradley and Colonel Roy Mustang to hunt down rogue state alchemist Isaac McDougal.', '2012-01-01 00:00:00'),
(2, 1, 'The First Day', 25, 'As Edward and Alphonse depart for Liore by train, their childhood is shown in flashback. They had learned rudimentary alchemy from their father''s books, and, upon their mother''s death, had attempted to revive her by performing human transmutation, a pract', '2012-01-07 00:00:00'),
(3, 3, 'The Day a New Demon was Born', 24, 'The story follows Lelouch vi Britannia, exiled prince of Britannia, who is living under the identity Lelouch Lamperouge. His former identity was declared dead seven years ago when Britannia conquered Japan, now renamed Area 11. In the present, Lelouch is', '2012-10-06 00:00:00'),
(4, 3, 'The White Knight Awakens', 24, 'Lelouch is questioned by Villetta Nu about the dead soldiers. Using Geass, he orders her to give him her Knightmare Frame, a giant mechanical robot. Lelouch then leads the terrorist group to combat Viceroy Clovis la Britannia''s army forcing them to utiliz', '2012-01-01 00:00:00'),
(5, 3, 'The False Classmate', 24, 'Having reason to suspect the death of Marianne vi Britannia, his mother, was planned by one of his relatives, Lelouch questions Clovis about her murder before killing him. He returns to Ashford Academy and realizes his classmate, Kallen Stadtfeld, is part', '2012-01-01 00:00:00'),
(6, 3, 'His Name is Zero', 24, 'Jeremiah Gottwald and the purebloods within the Britannian Army wish to scapegoat Suzaku for Clovis'' death as an excuse to rid the army of Honorary Britannians, citizens who become Britannians after their country had been conquered. Lelouch dons the pseud', '2012-01-01 00:00:00'),
(7, 3, 'The Princess and the Witch', 24, 'Lelouch is reunited with the green haired girl who introduces herself as C.C. and is now living in his residence. Meanwhile, since Zero revealed he was Clovis'' murderer, Suzaku has been acquitted of all charges and meets Princess Euphemia li Britannia. Eu', '2012-01-01 00:00:00'),
(8, 3, 'The Stolen Mask', 24, 'Suzaku transfers into Lelouch''s class and faces the prejudice of the Britannian students. Arthur, a stray cat, enters Lelouch''s room and steals his Zero mask. Milly Ashford, believing Arthur has something that embarrasses Lelouch, has the whole school pur', '2012-01-01 00:00:00'),
(9, 1, 'Attack Cornelia', 24, 'Lelouch reminisces about his last meeting with his father; shortly after his mother''s death, Lelouch questions Charles about it and is exiled to Japan along with his sister Nunnally vi Britannia. Cornelia issues a challenge to Zero at Saitama Ghetto. Lelo', '2012-01-01 00:00:00'),
(10, 7, 'Fuuka!', 24, 'No synopsis available.', '2017-01-06 00:00:00'),
(11, 7, 'Episode 2', 7, 'No synopsis available.', '2017-01-06 00:00:00'),
(12, 1, 'Triangle!', -8, 'No synopsis available.', '2017-01-13 00:00:00'),
(13, 4, 'A Chance Encounter: Begegnung', 25, 'After killing many facility employees, Lucy escapes from the facility where she has been contained. However, a sniper shoots her in the head as she is escaping and she falls into the water. When she reaches the shore, she doesn''t remember her past and can', '2012-04-05 00:00:00'),
(14, 4, 'Annihilation: Vernichtung', 25, 'Police are combing the city trying to find Lucy. Kohta finds Nyu at the beach where Bandoh, a member of SAT, and his partner are looking for Lucy. When they find Nyu, they beat Kohta up and take her. Bandoh tries to provoke her because he wants to fight o', '2012-04-30 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `episode_review`
--

CREATE TABLE `episode_review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `episode_score`
--

CREATE TABLE `episode_score` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$3mSLVGR7wnli1mTg0AVfEe.TxopdS7eBzMiLsCKhuUWs1oFdK18Zm', '2017-02-21 20:34:01', NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}'),
(2, 'lukio', 'lukio', 'haenell@yahoo.fr', 'haenell@yahoo.fr', 1, NULL, '$2y$13$uhZh0ixgKS.btQuxNFFg6ujRy9jTSmWBnDBiMbl0V1f1Ke1WjA.SS', '2017-02-20 22:18:08', NULL, NULL, 'a:0:{}'),
(3, 'van_i', 'van_i', 'van@busin.es', 'van@busin.es', 1, NULL, '$2y$13$qCEo4j/Mh2MUH/H.phgAdO0xsCcP47UDOlVM5e7pBmO44.xMEM5mu', '2017-02-21 20:33:23', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `user_has_animes`
--

CREATE TABLE `user_has_animes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `favori` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_has_episodes`
--

CREATE TABLE `user_has_episodes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `viewed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_13045942C54C8C93` (`type_id`),
  ADD KEY `IDX_130459424296D31F` (`genre_id`);

--
-- Index pour la table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `anime_review`
--
ALTER TABLE `anime_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CF49059BA76ED395` (`user_id`),
  ADD KEY `IDX_CF49059B794BBE89` (`anime_id`);

--
-- Index pour la table `anime_score`
--
ALTER TABLE `anime_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5E30576E794BBE89` (`anime_id`),
  ADD KEY `IDX_5E30576EA76ED395` (`user_id`);

--
-- Index pour la table `anime_type`
--
ALTER TABLE `anime_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DDAA1CDA794BBE89` (`anime_id`);

--
-- Index pour la table `episode_review`
--
ALTER TABLE `episode_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_157E1EDDA76ED395` (`user_id`),
  ADD KEY `IDX_157E1EDD362B62A0` (`episode_id`);

--
-- Index pour la table `episode_score`
--
ALTER TABLE `episode_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_993C105A76ED395` (`user_id`),
  ADD KEY `IDX_993C105362B62A0` (`episode_id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `user_has_animes`
--
ALTER TABLE `user_has_animes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88A3A99A76ED395` (`user_id`),
  ADD KEY `IDX_88A3A99794BBE89` (`anime_id`);

--
-- Index pour la table `user_has_episodes`
--
ALTER TABLE `user_has_episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EC7FD8EBA76ED395` (`user_id`),
  ADD KEY `IDX_EC7FD8EB362B62A0` (`episode_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `anime_genre`
--
ALTER TABLE `anime_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `anime_review`
--
ALTER TABLE `anime_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `anime_score`
--
ALTER TABLE `anime_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `anime_type`
--
ALTER TABLE `anime_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `episode_review`
--
ALTER TABLE `episode_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `episode_score`
--
ALTER TABLE `episode_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user_has_animes`
--
ALTER TABLE `user_has_animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user_has_episodes`
--
ALTER TABLE `user_has_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `anime`
--
ALTER TABLE `anime`
  ADD CONSTRAINT `FK_130459424296D31F` FOREIGN KEY (`genre_id`) REFERENCES `anime_genre` (`id`),
  ADD CONSTRAINT `FK_13045942C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `anime_type` (`id`);

--
-- Contraintes pour la table `anime_review`
--
ALTER TABLE `anime_review`
  ADD CONSTRAINT `FK_CF49059B794BBE89` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`),
  ADD CONSTRAINT `FK_CF49059BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `anime_score`
--
ALTER TABLE `anime_score`
  ADD CONSTRAINT `FK_5E30576E794BBE89` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`),
  ADD CONSTRAINT `FK_5E30576EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `FK_DDAA1CDA794BBE89` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`);

--
-- Contraintes pour la table `episode_review`
--
ALTER TABLE `episode_review`
  ADD CONSTRAINT `FK_157E1EDD362B62A0` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`),
  ADD CONSTRAINT `FK_157E1EDDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `episode_score`
--
ALTER TABLE `episode_score`
  ADD CONSTRAINT `FK_993C105362B62A0` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`),
  ADD CONSTRAINT `FK_993C105A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `user_has_animes`
--
ALTER TABLE `user_has_animes`
  ADD CONSTRAINT `FK_88A3A99794BBE89` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`),
  ADD CONSTRAINT `FK_88A3A99A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `user_has_episodes`
--
ALTER TABLE `user_has_episodes`
  ADD CONSTRAINT `FK_EC7FD8EB362B62A0` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`id`),
  ADD CONSTRAINT `FK_EC7FD8EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
