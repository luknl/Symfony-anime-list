-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Jeu 16 Février 2017 à 21:19
-- Version du serveur :  5.6.34
-- Version de PHP :  7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `neussaipa`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime`
--

INSERT INTO `anime` (`id`, `type_id`, `genre_id`, `name`, `picture`, `status`, `aired`, `producers`, `licensors`, `studios`, `source`, `duration`, `synopsis`, `background`, `rating`) VALUES
(1, 1, 1, 'Nom de l\'anime', '/src/picture.jpg', 'Playing', '2015-03-04 03:05:00', 'Un producer', 'Deux licensors', 'Un studio', 'Source originale', 48, 'Le synopsis de l\'anime', 'Pas de background', 'Tout'),
(2, 2, 2, 'Autre anime', '/src/picture.jpg', 'Stoped', '2018-07-09 19:09:00', 'Pas de producer', 'Quelqu\'un', 'Studio', 'Une source', 31, 'Le synopsis de l\'anime', 'Pas de background', 'Rating'),
(3, 1, 1, 'Test', 'ibjklib', 'jkbl jb', '2012-01-01 00:00:00', 'kjblj', 'bkjl', 'bklj', 'bk', 12, 'ilbni', 'kln', 'kjln'),
(4, 1, 1, 'qifblu', 'iub', 'hjkbu', '2012-01-01 00:00:00', NULL, NULL, NULL, NULL, 12, 'iuh', NULL, NULL),
(5, 1, 1, 'AnimeNAme', 'hbvh', 'kjb', '2012-01-01 00:00:00', NULL, NULL, NULL, NULL, 14, 'kjbkj buk bhviv', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `anime_genre`
--

CREATE TABLE `anime_genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime_genre`
--

INSERT INTO `anime_genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Romance');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime_review`
--

INSERT INTO `anime_review` (`id`, `user_id`, `anime_id`, `value`, `created`) VALUES
(1, 2, 2, 'ouh ohuig sdf giu fd gl', '2012-01-01 00:00:00'),
(2, 1, 1, 'blablabla', '2017-02-16 21:04:32'),
(3, 1, 1, 'une autre review', '2017-02-16 21:05:16');

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

--
-- Contenu de la table `anime_score`
--

INSERT INTO `anime_score` (`id`, `anime_id`, `user_id`, `value`) VALUES
(1, 1, 2, 7),
(2, 1, 1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `anime_type`
--

CREATE TABLE `anime_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime_type`
--

INSERT INTO `anime_type` (`id`, `name`) VALUES
(1, 'TV'),
(2, 'Manga'),
(3, 'Une autre type');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `episode`
--

INSERT INTO `episode` (`id`, `anime_id`, `name`, `duration`, `description`, `aired`) VALUES
(1, 1, 'Nom de l\'épisode', 23, 'Description de l\'épisode', '2016-04-05 19:25:00'),
(2, 2, 'Un autre épisode', 28, 'Une description', '2012-01-01 00:00:00');

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

--
-- Contenu de la table `episode_review`
--

INSERT INTO `episode_review` (`id`, `user_id`, `episode_id`, `value`, `created`) VALUES
(1, 2, 1, 'kjbxkcbvowdfvdkfjlv', '2012-01-01 00:00:00'),
(2, 2, 1, 'lhiu lgfheil gheil gues', '2012-06-01 00:00:00'),
(3, 1, 1, 'dfqsdfdsf', '2012-01-01 00:00:00'),
(4, 1, 1, 'uih u ou', '2017-02-16 20:57:22'),
(5, 1, 1, 'qfbq flqjklf qiuf', '2017-02-16 20:58:05'),
(6, 1, 1, 'qdsdvqdv', '2017-02-16 21:01:06'),
(7, 1, 1, 'une nouvelle review', '2017-02-16 21:01:19'),
(8, 1, 1, 'Une autre review', '2017-02-16 21:01:44'),
(9, 1, 2, 'blkablabl', '2017-02-16 21:03:47');

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

--
-- Contenu de la table `episode_score`
--

INSERT INTO `episode_score` (`id`, `user_id`, `episode_id`, `value`) VALUES
(1, 2, 2, 3),
(2, 1, 1, 9);

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
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `picture`) VALUES
(1, 'odefi', 'odefi', 'odefi@hotmail.fr', 'odefi@hotmail.fr', 1, NULL, '$2y$13$ozGJb35vXqS.z4IZCZu4YuZq3LB3BupF3r20YpCzVtnUY4Fg3i7TS', '2017-02-16 18:16:59', NULL, NULL, 'a:0:{}', ''),
(2, 'aude', 'aude', 'ficheux.aude@gmail.com', 'ficheux.aude@gmail.com', 1, NULL, '$2y$13$KHsAE2HEmbueEJWPpzkQDerQXlupoea.GwZQ9kXV0DHi3AlSsu9GG', '2017-02-15 21:15:30', NULL, NULL, 'a:0:{}', ''),
(3, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$8cjNlY2fj1RH8TplboWgrey85gJPyQtFM0r2p30PRqESoGl.2.Jsm', '2017-02-16 18:25:59', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', '');

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

--
-- Contenu de la table `user_has_animes`
--

INSERT INTO `user_has_animes` (`id`, `user_id`, `anime_id`, `favori`) VALUES
(1, 2, 2, 0),
(2, 1, 1, 1);

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
-- Contenu de la table `user_has_episodes`
--

INSERT INTO `user_has_episodes` (`id`, `user_id`, `episode_id`, `viewed`) VALUES
(1, 2, 2, 1),
(2, 1, 1, 1),
(3, 2, 1, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `anime_genre`
--
ALTER TABLE `anime_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `anime_review`
--
ALTER TABLE `anime_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `anime_score`
--
ALTER TABLE `anime_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `anime_type`
--
ALTER TABLE `anime_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `episode_review`
--
ALTER TABLE `episode_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `episode_score`
--
ALTER TABLE `episode_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user_has_animes`
--
ALTER TABLE `user_has_animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `user_has_episodes`
--
ALTER TABLE `user_has_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
