-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Jeu 23 Février 2017 à 21:18
-- Version du serveur :  5.6.33
-- Version de PHP :  7.0.12

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
(1, 1, 2, 'Fullmetal Alchemist: Brotherhood', 'https://myanimelist.cdn-dena.com/images/anime/5/47421.jpg', 'Airing', '2012-04-05 00:00:00', 'Aniplex, Square Enix', 'FUNimation', 'Bones', 'Manga', 24, 'Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price for their transgression—Edward loses', 'Fullmetal Alchemist: Brotherhood is an alternate retelling of Hiromu Arakawa\'s Fullmetal Alchemist manga that is closer to the source material than the previous 2003 adaptation, this time covering the entire story.', '9.26'),
(2, 2, 3, 'Kimi no Na wa.', 'https://myanimelist.cdn-dena.com/images/anime/7/79999.jpg', 'Finished Airing', '2016-08-28 04:00:00', 'Kadokawa Shoten', 'Funimation', 'CoMix', 'Original', 106, 'Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school stu', 'No background information has been added to this title', '9.34'),
(3, 1, 1, 'Code Geass: Hangyaku no Lelouch', 'https://myanimelist.cdn-dena.com/images/anime/5/50331.jpg', 'Finished Airing', '2012-10-06 19:03:00', 'Bandai', 'Funimation', 'Sunrise', 'Original', 24, 'In the year 2010, the Holy Empire of Britannia is establishing itself as a dominant military nation, starting with the conquest of Japan. Renamed to Area 11 after its swift defeat, Japan has seen significant resistance against these tyrants in an attempt ', 'Code Geass: Hangyaku no Lelouch is an original anime series by Sunrise animation studio with original character designs by the all-female Japanese manga artist group Clamp. Manga and light novels based off the show have been published by Kadokawa Shoten.', '8.82'),
(4, 1, 4, 'Elfen Lied', 'https://myanimelist.cdn-dena.com/images/anime/10/6883.jpg', 'Finished Airing', '2012-07-04 00:00:00', 'VAP', 'ADV FIlms', 'Arms', 'Manga', 24, 'Lucy is a special breed of human referred to as "Diclonius," born with a short pair of horns and invisible telekinetic hands that lands her as a victim of inhumane scientific experimentation by the government. However, once circumstances present her an op', 'Elfen Lied is based on Lynn Okamoto\'s seinen manga series of the same name and premiered while the manga was still in publication. The anime follows the source material through the first 7 volumes, with several alterations to the story, and concludes with', '7.84'),
(5, 1, 3, 'Kuzu no Honkai', 'https://myanimelist.cdn-dena.com/images/anime/5/83937.jpg', 'Currently Airing', '2013-01-13 00:00:00', NULL, NULL, NULL, NULL, 22, 'To the outside world, Hanabi Yasuraoka and Mugi Awaya are the perfect couple. But in reality, they just share the same secret pain: they are both in love with other people they cannot be with. \r\n\r\nHanabi has loved her childhood friend and neighbor Narumi ', NULL, NULL),
(6, 1, 5, 'Youjo Senki', 'https://myanimelist.cdn-dena.com/images/anime/5/82890.jpg', 'Currently Airing', '2017-01-06 00:00:00', NULL, NULL, NULL, NULL, 66, 'On the front lines of the war, there is a little girl. Blond hair, blue eyes, and porcelain white skin, she commands her squad with a lisping voice. Her name is Tanya Degurechaff. While in reality, she is one of Japan\'s most elite salary-men, reborn as a ', NULL, NULL),
(7, 1, 1, 'Fuuka', 'https://myanimelist.cdn-dena.com/images/anime/8/83735.jpg', 'Currently Airing', '2017-01-06 00:00:00', NULL, NULL, NULL, NULL, 2, 'Yuu Haruna just moved into town and loves to use Twitter. Out on his way to buy dinner, he bumps into a mysterious girl, Fuuka Akitsuki, who breaks his phone thinking he was trying to take a picture of her panties. How will his new life change now?', NULL, NULL),
(8, 1, 1, 'Hand Shakers', 'https://myanimelist.cdn-dena.com/images/anime/7/83395.jpg', 'Currently Airing', '2017-01-11 00:00:00', NULL, NULL, NULL, NULL, 8, 'The anime takes place in Osaka in "AD20XX," and revolves around the Hand Shakers—partners who can summon "Nimrodes," weapons born from their deep psyche by joining hands. In order to grant the pair\'s wish, the Hand Shakers compete with and fight other Han', NULL, NULL),
(9, 1, 10, 'One Room', 'https://myanimelist.cdn-dena.com/images/anime/9/83777.jpg', 'Currently Airing', '2017-01-11 00:00:00', NULL, NULL, NULL, NULL, 4, 'Series of shorts that will tell stories of "three sisters raised in your (one) room."', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `anime_review`
--

INSERT INTO `anime_review` (`id`, `user_id`, `anime_id`, `value`, `created`) VALUES
(1, 1, 1, 'FMA Brotherhood. It is excellent in every aspect and has very little, if anything, that can be called a flaw (maybe rushed character development at first due to the fast pacing, but this quickly subsides)', '2017-02-21 11:43:43'),
(4, 1, 2, 'Awesome movie with great graphics !', '2017-02-23 12:52:43'),
(5, 4, 1, 'Fullmetal Alchemist: Brotherhood gets an immense amount of praise in the anime community, is the #1 ranked show and is constantly referred to as a masterpiece and the greatest show ever created.', '2017-02-23 18:53:59'),
(6, 4, 7, 'A really bad anime, but enjoyable to watch', '2017-02-23 19:04:20'),
(7, 4, 5, 'A love story that is boring to watch. But I like the love scenes', '2017-02-23 19:04:50'),
(8, 4, 9, 'One room is one of the best anime I\'v ever seen. It is way better than SAO or ATO', '2017-02-23 19:05:23'),
(9, 4, 2, 'Wow this movie just blew my mind', '2017-02-23 19:05:49'),
(10, 5, 6, 'A piece of art and I love how God is not how we view him.\r\nGood job japan', '2017-02-23 19:27:45'),
(12, 5, 1, 'Great anime with a real coherence to the manga. I love how the homonculus yells oni-chaan all the time', '2017-02-23 19:29:23'),
(13, 5, 5, 'Really bad', '2017-02-23 19:31:58'),
(14, 6, 2, '“Kimi no Na wa.” (Your Name) opens with a radiant comet traversing over the night sky, splitting apart into various meteors that illuminate and streak the heavens. Stars and celestial imagery often feature in Makoto Shinkai’s films, and the brilliance of ', '2017-02-23 19:44:09'),
(15, 6, 4, 'Elfen Lied is something else. Just watching the first 10 minutes of the first episode and one can understand that this is not your typical anime. A series modeled, in many ways, after the tragedies of Shakespeare and Ancient Greece, Elfen Lied is not some', '2017-02-23 19:49:31'),
(16, 6, 6, 'This review has been written whilst only watching three episodes of the series, so things could possibly change. Don’t sue me.\r\nAdditionally this review may contain spoilers for the first three episodes, so read at your own risk.\r\n\r\nTLDR: I think Tanya is', '2017-02-23 19:50:23'),
(17, 6, 5, 'Kuzu no Honkai (Scum’s Wish) portrays how we all have a desire, oftentimes bad or “scum” type of desires and how we act upon those desires. This anime is not for the lover of sweet romance because the story is a bit psychological and melancholic. Here’s t', '2017-02-23 19:51:19'),
(19, 7, 1, 'First of all, I have seen the original FMA and although it was very popular and original, the pacing and conclusion did not sit too well with me. Brotherhood is meant to be a remake of the original, this time sticking to the manga all the way through, but', '2017-02-23 19:57:57'),
(20, 7, 8, '"Hand Shakers" is an anime that took me by surprise. I read the reviews, the synopsis and got excited. I\'m in the middle of eating a sundae and I just feel the urge to watch a terrible anime. \r\n\r\nI was shocked to learn how amazing the anime actually is. F', '2017-02-23 19:58:40'),
(21, 7, 3, 'Meh. It\'s meh', '2017-02-23 19:59:44'),
(22, 7, 7, 'Fuck.\r\n\r\nStory: 4, generic hareming it up into a light music band. Nothing original in concept. However, the plot moves a fucking mile a minute - bad anime misunderstanding that stretch out into 1-3 whole episodes in other shows get fucking slammed into 6', '2017-02-23 20:00:43'),
(23, 7, 9, 'I tend to hate anime that feature absolutely horrible dense male characters, its a problem that I stumble upon a lot of times and it just bugs me to no end.\r\nWell the nice people at Typhoon Graphics must have heard that scream for help and said "I got you', '2017-02-23 20:02:03'),
(24, 7, 4, 'Suuuuuuuuuper !!', '2017-02-23 20:03:06'),
(25, 8, 4, 'SO MUCH BLOOOOOD ! So bad.', '2017-02-23 20:04:53'),
(26, 8, 7, 'Enjoyment: Honestly, 10. This is where the big money is. I\'m having an amazing time riffing on this hot garbage with some friends and the experiences you have in life are all you have in life before you die and pass away and it\'s a good chuckle fest of la', '2017-02-23 20:05:28'),
(27, 8, 6, 'ENJOYMENT: 5/10.\r\nAs a psychological anime, this show pretty much sucks. As a military anime, this show sucks too. Then, what makes this show enjoyable to me? Tanya. That\'s it. I like to see how X constantly trolls her just out of pure anger and Tanya rea', '2017-02-23 20:16:30'),
(28, 8, 5, 'Story: 9\r\nKuzu no Honkai is the story of a girl who is going to discover her true feelings through sexual growth, and the path going up to this point is not as easy as it sounds, so this is why I don\'t recommend this anime to everyone.\r\nThe story starts l', '2017-02-23 20:18:01'),
(29, 8, 8, 'Story: 9\r\nKuzu no Honkai is the story of a girl who is going to discover her true feelings through sexual growth, and the path going up to this point is not as easy as it sounds, so this is why I don\'t recommend this anime to everyone.\r\nThe story starts l', '2017-02-23 20:20:20'),
(30, 9, 2, 'Feats of the cinematography include impossibly vibrant and dynamic crowds, animation that is outstanding even among his other works-nay-ESPECIALLY among his other works, match cuts that would make Kubrick jealous, impeccable blocking, usage of the golden ', '2017-02-23 20:27:34'),
(31, 9, 4, 'Many claim this certain title, Elfen Lied, to be "deep", though I fail to understand why. It touches upon the concepts of racism and discrimination in the most superficial way possible. Lucy and other diclonius were born to kill humans, just like the wolf', '2017-02-23 20:30:33'),
(32, 9, 9, 'See now this is some future stuff right here. Anime girls are talking directly to you through the screen, now, all lookin\' right at you. You\'re the MC of this show. This show is definitely going to make a lot of people uncomfortable, I can already see tha', '2017-02-23 20:32:34'),
(33, 9, 5, 'Have you ever desired something that\'s not politically correct? Kuzu no Honkai is an anime about desire. The main characters want something that they cant have Hanabi Yasuraoka loves Narumi Kanai her teacher and "brother". Mugi Awaya loves his teacher Aka', '2017-02-23 20:33:29'),
(34, 10, 1, 'Story: 10\r\nThis is not an usual romance anime. This anime is very original, and in a certain way, unique. There are unforeseeable events and the story grows perfectly.', '2017-02-23 20:36:23'),
(35, 10, 8, 'Characters: 8 \r\nThe characters aren\'t stereotyped and they will undergo some development throughout the show (some of them are really worthy "scum" as the title suggests). For example Minagawa-sensei\'s character has been fleshed out in episode 4. The othe', '2017-02-23 20:44:32'),
(36, 10, 5, 'Have you ever desired something that\'s not politically correct? Kuzu no Honkai is an anime about desire. The main characters want something that they cant have Hanabi Yasuraoka loves Narumi Kanai her teacher and "brother". Mugi Awaya loves his teacher Aka', '2017-02-23 20:46:48'),
(37, 11, 9, 'uzu no Honkai (Scum’s Wish) portrays how we all have a desire, oftentimes bad or “scum” type of desires and how we act upon those desires. This anime is not for the lover of sweet romance because the story is a bit psychological and melancholic. Here’s th', '2017-02-23 20:51:56'),
(38, 11, 6, 'There are many problems with the second season of KonoSuba. Firstly, the art has gotten worse compared to the first season. There are many scenes where it feels like the animators just got lazy and didn\'t do their best. The character faces sometimes look ', '2017-02-23 20:54:00'),
(39, 19, 1, 'Many new characters have been introduced and some seem promising, however, there is a lack of character development and most characters are one sided two-dimensional characters. The main character Kazuma is as funny as he was in season one. I think he has', '2017-02-23 21:08:16'),
(40, 19, 2, 'The opening and ending songs are good like the first season and there are no problems with the VAs. The background music isn\'t memorable at all, like in most mediocre anime.', '2017-02-23 21:08:33'),
(41, 19, 4, 'If you want to laugh a bunch with some fanservice in between, then KonoSuba season two should be on your "Plan to Watch". I look forward to laughing for 25 minutes each week. It is one of the best anime this season, even though the winter 2017 season is q', '2017-02-23 21:09:29'),
(42, 19, 5, 'If you want something with a more in-depth plot or characters, then you could consider skipping over KonoSuba unless it gets significantly better later in the season. Even though I do not think KonoSuba is the best thing in the world, it definitely isn\'t ', '2017-02-23 21:09:58'),
(43, 19, 6, 'KonoSuba season 2 does literally everything the second season of a hit show should do wrong. Every single aspect of this show\'s second season is what I personally believe to be a completely misguided attempt at continuing this show. Now I understand it\'s ', '2017-02-23 21:10:22'),
(44, 19, 7, 'So when you are creating the second season of a hit show, there are a few things you want to keep in mind. More specifically, goals you should have when developing the story and continuation for this show. Especially if this show is somewhat serialized.', '2017-02-23 21:10:44'),
(45, 19, 8, 'KonoSuba fails in just about every way here. But lets take a peek at a show that hasn\'t failed. Or I should say, various shows that haven\'t failed. First of all, Community, an NBC sitcom that ran for six seasons and is critically praised, often regarded a', '2017-02-23 21:11:07'),
(46, 19, 9, 'I bring up comedy because the biggest aspect of a sitcom is it\'s comedy. So of course you have to be funny. And if you read my original KonoSuba review where I dissected the meaning of a joke, and how it works, you\'d know that the only way a joke works is', '2017-02-23 21:11:34');

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
(1, 2, 4, 9),
(2, 1, 4, 10),
(3, 4, 4, 7),
(4, 6, 5, 9),
(5, 4, 5, 8),
(6, 2, 5, 10),
(7, 5, 5, 5),
(8, 1, 5, 10),
(9, 5, 5, 6),
(10, 2, 6, 9),
(11, 4, 6, 8),
(12, 6, 6, 7),
(13, 5, 6, 3),
(14, 7, 7, 7),
(15, 1, 7, 10),
(16, 8, 7, 6),
(17, 3, 7, 5),
(18, 7, 7, 4),
(19, 9, 7, 6),
(20, 4, 7, 10),
(21, 4, 8, 1),
(22, 7, 8, 8),
(23, 6, 8, 5),
(24, 5, 8, 10),
(25, 8, 8, 6),
(26, 2, 9, 7),
(27, 6, 9, 10),
(28, 9, 9, 7),
(29, 5, 9, 7),
(30, 1, 10, 7),
(31, 8, 10, 8),
(32, 9, 10, 6),
(33, 1, 19, 9),
(34, 2, 19, 7),
(35, 3, 19, 5),
(36, 4, 19, 6),
(37, 5, 19, 7),
(38, 6, 19, 8),
(39, 7, 19, 5),
(40, 8, 19, 7),
(41, 9, 19, 7);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `episode`
--

INSERT INTO `episode` (`id`, `anime_id`, `name`, `duration`, `description`, `aired`) VALUES
(1, 1, 'Fullmetal Alchemist', 25, 'The Elric brothers, Edward and Alphonse, who both have already made a strong reputation of themselves despite Edward\'s short military career, are called upon by Führer King Bradley and Colonel Roy Mustang to hunt down rogue state alchemist Isaac McDougal.', '2012-01-01 00:00:00'),
(2, 1, 'The First Day', 25, 'As Edward and Alphonse depart for Liore by train, their childhood is shown in flashback. They had learned rudimentary alchemy from their father\'s books, and, upon their mother\'s death, had attempted to revive her by performing human transmutation, a pract', '2012-01-07 00:00:00'),
(3, 3, 'The Day a New Demon was Born', 24, 'The story follows Lelouch vi Britannia, exiled prince of Britannia, who is living under the identity Lelouch Lamperouge. His former identity was declared dead seven years ago when Britannia conquered Japan, now renamed Area 11. In the present, Lelouch is', '2012-10-06 00:00:00'),
(4, 3, 'The White Knight Awakens', 24, 'Lelouch is questioned by Villetta Nu about the dead soldiers. Using Geass, he orders her to give him her Knightmare Frame, a giant mechanical robot. Lelouch then leads the terrorist group to combat Viceroy Clovis la Britannia\'s army forcing them to utiliz', '2012-01-01 00:00:00'),
(5, 3, 'The False Classmate', 24, 'Having reason to suspect the death of Marianne vi Britannia, his mother, was planned by one of his relatives, Lelouch questions Clovis about her murder before killing him. He returns to Ashford Academy and realizes his classmate, Kallen Stadtfeld, is part', '2017-02-25 00:00:00'),
(6, 3, 'His Name is Zero', 24, 'Jeremiah Gottwald and the purebloods within the Britannian Army wish to scapegoat Suzaku for Clovis\' death as an excuse to rid the army of Honorary Britannians, citizens who become Britannians after their country had been conquered. Lelouch dons the pseud', '2018-05-01 00:00:00'),
(7, 3, 'The Princess and the Witch', 24, 'Lelouch is reunited with the green haired girl who introduces herself as C.C. and is now living in his residence. Meanwhile, since Zero revealed he was Clovis\' murderer, Suzaku has been acquitted of all charges and meets Princess Euphemia li Britannia. Eu', '2012-01-01 00:00:00'),
(8, 3, 'The Stolen Mask', 24, 'Suzaku transfers into Lelouch\'s class and faces the prejudice of the Britannian students. Arthur, a stray cat, enters Lelouch\'s room and steals his Zero mask. Milly Ashford, believing Arthur has something that embarrasses Lelouch, has the whole school pur', '2012-01-01 00:00:00'),
(9, 1, 'Attack Cornelia', 24, 'Lelouch reminisces about his last meeting with his father; shortly after his mother\'s death, Lelouch questions Charles about it and is exiled to Japan along with his sister Nunnally vi Britannia. Cornelia issues a challenge to Zero at Saitama Ghetto. Lelo', '2012-01-01 00:00:00'),
(10, 7, 'Fuuka!', 24, 'No synopsis available.', '2017-01-06 00:00:00'),
(11, 7, 'Episode 2', 7, 'No synopsis available.', '2017-02-23 00:00:00'),
(12, 1, 'Triangle!', -8, 'No synopsis available.', '2017-01-13 00:00:00'),
(13, 4, 'A Chance Encounter: Begegnung', 25, 'After killing many facility employees, Lucy escapes from the facility where she has been contained. However, a sniper shoots her in the head as she is escaping and she falls into the water. When she reaches the shore, she doesn\'t remember her past and can', '2012-04-05 00:00:00'),
(14, 4, 'Annihilation: Vernichtung', 25, 'Police are combing the city trying to find Lucy. Kohta finds Nyu at the beach where Bandoh, a member of SAT, and his partner are looking for Lucy. When they find Nyu, they beat Kohta up and take her. Bandoh tries to provoke her because he wants to fight o', '2017-03-04 00:00:00'),
(15, 6, 'In the forest', 24, 'The main characters die', '2017-02-24 22:30:00'),
(16, 6, 'Chase in the woods', 24, 'Senju is still chasing Yuguro', '2017-03-02 22:30:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, NULL, '$2y$13$3mSLVGR7wnli1mTg0AVfEe.TxopdS7eBzMiLsCKhuUWs1oFdK18Zm', '2017-02-23 21:13:37', NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}'),
(2, 'lukio', 'lukio', 'haenell@yahoo.fr', 'haenell@yahoo.fr', 1, NULL, '$2y$13$uhZh0ixgKS.btQuxNFFg6ujRy9jTSmWBnDBiMbl0V1f1Ke1WjA.SS', '2017-02-20 22:18:08', NULL, NULL, 'a:0:{}'),
(3, 'van_i', 'van_i', 'van@busin.es', 'van@busin.es', 1, NULL, '$2y$13$qCEo4j/Mh2MUH/H.phgAdO0xsCcP47UDOlVM5e7pBmO44.xMEM5mu', '2017-02-21 20:33:23', NULL, NULL, 'a:0:{}'),
(4, 'onipo', 'onipo', 'onichichi@yahoo.fr', 'onichichi@yahoo.fr', 1, NULL, '$2y$13$UH0IcghLaACKUkQTyqsXr.DhhpqRfuVZOMQPf2GNFZ0ngpMLiqDb6', '2017-02-23 18:51:03', NULL, NULL, 'a:0:{}'),
(5, 'shinji76', 'shinji76', 'heypopopopopo@gmail.com', 'heypopopopopo@gmail.com', 1, NULL, '$2y$13$uRDh19W8GdvbQGUldOEJ5OMmhLiWnwdKqN6heahH4s1G0yER3bycK', '2017-02-23 19:27:02', NULL, NULL, 'a:0:{}'),
(6, 'Hikaruga', 'hikaruga', 'hikaruga@gmail.com', 'hikaruga@gmail.com', 1, NULL, '$2y$13$qk.uxyn5h9fPH7hP4m4hIOHqDB0jtLaDjyAMCoDIC.Vhf1ikK9.ei', '2017-02-23 19:42:52', NULL, NULL, 'a:0:{}'),
(7, 'MarcelDePan', 'marceldepan', 'Marceldepan@gmail.com', 'marceldepan@gmail.com', 1, NULL, '$2y$13$QORQE2yxv1hBb6XTujDiqODrYFSevTU0U7Gml1Oh1rAOaws5PxPBO', '2017-02-23 19:52:09', NULL, NULL, 'a:0:{}'),
(8, 'JeanDeCire', 'jeandecire', 'JeanDeCire@gmail.com', 'jeandecire@gmail.com', 1, NULL, '$2y$13$cM55tN95zWByCaO9pjiD3eVwJuR4tbHIMU3XMy7JdxSv6bvL76Lx6', '2017-02-23 20:04:27', NULL, NULL, 'a:0:{}'),
(9, 'JaquesLeMac', 'jaqueslemac', 'JaquesLeMac@gmail.com', 'jaqueslemac@gmail.com', 1, NULL, '$2y$13$6fSUSvX6HolO2MAc9i5Aeus0kJSMKhPwuMUg61HAJZty9J/BqI.1K', '2017-02-23 20:22:30', NULL, NULL, 'a:0:{}'),
(10, 'ValentinoNappi', 'valentinonappi', 'ValentinoNappi@gmail.com', 'valentinonappi@gmail.com', 1, NULL, '$2y$13$jWTekskd5PljzW/BkzU5vOQVU9P3/fwYBTN/uioDmQlZynsuYLlvW', '2017-02-23 20:34:33', NULL, NULL, 'a:0:{}'),
(11, 'MichelinePine', 'michelinepine', 'MichelinePine@gmail.com', 'michelinepine@gmail.com', 1, NULL, '$2y$13$eoBse.dIC1BECqIbnORmJekUUhpDYpVl4qWwLxWbM2K/Knn6kzcFW', '2017-02-23 20:49:55', NULL, NULL, 'a:0:{}'),
(12, 'logiblas', 'logiblas', 'logiblas@gmail.com', 'logiblas@gmail.com', 1, NULL, '$2y$13$99/Vc3iheCqEHn6nHlDtl.q2e/wBAJjXaf5e2Qdu6Q7vQH9WZcT3u', '2017-02-23 20:55:55', NULL, NULL, 'a:0:{}'),
(13, 'Nvye', 'nvye', 'Nvye@gmail.com', 'nvye@gmail.com', 1, NULL, '$2y$13$wbxkmdGWnRyzPwTfFV95meOP/eBfsgHh002.gv2AOUXYvoNxzoMrW', '2017-02-23 20:59:21', NULL, NULL, 'a:0:{}'),
(14, 'Faros', 'faros', 'Faros@gmail.com', 'faros@gmail.com', 1, NULL, '$2y$13$QJMoky.1jDyLY/31Od13o.zUMrtxaHUsCPbXVjkUaD3DX5I2H1QDy', '2017-02-23 21:00:34', NULL, NULL, 'a:0:{}'),
(15, 'SoChoup', 'sochoup', 'SoChoup@gmail.com', 'sochoup@gmail.com', 1, NULL, '$2y$13$okBEkz2ZANKYXCNFlt/NXuhzlpZnRI2eTWvSHPofmySgDIuoRkcHO', '2017-02-23 21:01:49', NULL, NULL, 'a:0:{}'),
(16, 'Lemongrab', 'lemongrab', 'Lemongrab@gmail.com', 'lemongrab@gmail.com', 1, NULL, '$2y$13$h/H.xwT5XSN1vRWtOdeiP.bw7gW1lLmwxCrsFyUz3NBzlxaM1y3Mm', '2017-02-23 21:03:16', NULL, NULL, 'a:0:{}'),
(17, 'auderu', 'auderu', 'auderu@gmail.com', 'auderu@gmail.com', 1, NULL, '$2y$13$5697./JuvS4/JUMugd4/gOVyeJ4xVdTom/qhzbKswPaFqlA.Cz1iO', '2017-02-23 21:04:27', NULL, NULL, 'a:0:{}'),
(18, 'gaindil', 'gaindil', 'gaindil@gmail.com', 'gaindil@gmail.com', 1, NULL, '$2y$13$CzAIVAZybIeZUXzEsEbi.u9X8vYfOXt7mwuIGdgETzB7obT9/xRF.', '2017-02-23 21:05:38', NULL, NULL, 'a:0:{}'),
(19, 'Yanneru<3', 'yanneru<3', 'Yann@gmail.com', 'yann@gmail.com', 1, NULL, '$2y$13$E90QzY.yNTPpvEmx9q3zRuznCJsqH/oWhTVW7m3qZ1mke.7afegsC', '2017-02-23 21:07:59', NULL, NULL, 'a:0:{}');

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
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 4, 0),
(4, 1, 3, 0),
(5, 4, 3, 1),
(6, 4, 7, 1),
(7, 4, 5, 0),
(8, 4, 9, 0),
(9, 4, 4, 0),
(10, 5, 6, 1),
(11, 5, 2, 1),
(12, 5, 4, 0),
(13, 5, 5, 0),
(14, 5, 1, 0),
(15, 5, 5, 0),
(16, 6, 2, 1),
(17, 6, 4, 0),
(18, 6, 6, 0),
(20, 7, 7, 1),
(21, 7, 1, 1),
(22, 7, 3, 0),
(23, 7, 4, 1),
(24, 8, 4, 0),
(25, 8, 7, 0),
(26, 8, 6, 0),
(27, 8, 5, 1),
(28, 8, 8, 0),
(29, 9, 2, 1),
(30, 9, 6, 1),
(31, 9, 4, 0),
(32, 9, 9, 1),
(33, 9, 5, 1),
(34, 10, 1, 1),
(35, 10, 8, 1),
(36, 10, 9, 0),
(37, 10, 5, 0),
(38, 11, 1, 1),
(39, 11, 2, 1),
(40, 11, 3, 1),
(41, 11, 4, 0),
(42, 11, 5, 0),
(43, 11, 6, 0),
(44, 11, 7, 0),
(45, 11, 8, 0),
(46, 11, 9, 0),
(47, 12, 1, 1),
(48, 12, 2, 1),
(49, 12, 3, 1),
(50, 12, 4, 1),
(51, 12, 5, 0),
(52, 12, 6, 1),
(53, 12, 7, 1),
(54, 12, 8, 1),
(55, 12, 9, 1),
(56, 13, 1, 1),
(57, 13, 2, 1),
(58, 13, 3, 1),
(59, 13, 4, 1),
(60, 13, 5, 1),
(61, 13, 6, 1),
(62, 13, 7, 0),
(63, 13, 8, 1),
(64, 13, 9, 0),
(65, 14, 1, 1),
(66, 14, 2, 0),
(67, 14, 3, 1),
(68, 14, 4, 0),
(69, 14, 5, 0),
(70, 14, 6, 0),
(71, 14, 7, 0),
(72, 14, 8, 1),
(73, 14, 9, 0),
(74, 15, 1, 1),
(75, 15, 2, 0),
(76, 15, 3, 1),
(77, 15, 4, 1),
(78, 15, 5, 0),
(79, 15, 6, 1),
(80, 15, 7, 1),
(81, 15, 8, 1),
(82, 15, 9, 1),
(83, 16, 1, 0),
(84, 16, 2, 1),
(85, 16, 3, 0),
(86, 16, 4, 1),
(87, 16, 5, 0),
(88, 16, 6, 1),
(89, 16, 7, 1),
(90, 16, 8, 0),
(91, 16, 9, 1),
(92, 17, 1, 0),
(93, 17, 2, 0),
(94, 17, 3, 1),
(95, 17, 4, 1),
(96, 17, 5, 1),
(97, 17, 6, 0),
(98, 17, 7, 1),
(99, 17, 8, 1),
(100, 17, 9, 0),
(101, 18, 1, 0),
(102, 18, 3, 1),
(103, 18, 2, 1),
(104, 18, 4, 1),
(105, 18, 5, 1),
(106, 18, 6, 1),
(107, 18, 7, 1),
(108, 18, 8, 1),
(109, 18, 9, 1),
(110, 19, 1, 1),
(111, 19, 2, 1),
(112, 19, 3, 1),
(113, 19, 4, 1),
(114, 19, 5, 1),
(115, 19, 6, 1),
(116, 19, 7, 1),
(117, 19, 8, 1),
(118, 19, 9, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `anime_genre`
--
ALTER TABLE `anime_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `anime_review`
--
ALTER TABLE `anime_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `anime_score`
--
ALTER TABLE `anime_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `anime_type`
--
ALTER TABLE `anime_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `user_has_animes`
--
ALTER TABLE `user_has_animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
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
