-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2020 at 09:50 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `test_prince`
--

-- --------------------------------------------------------

--
-- Table structure for table `prince_language`
--

CREATE TABLE `prince_language` (
  `iso` text NOT NULL,
  `varpron` tinyint(1) NOT NULL DEFAULT '0',
  `french` text NOT NULL,
  `english` text NOT NULL,
  `self` text NOT NULL,
  `text` text NOT NULL,
  `imgtext` varchar(255) NOT NULL DEFAULT '',
  `trad` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `actif` tinyint(4) NOT NULL DEFAULT '0',
  `grp` mediumint(9) NOT NULL DEFAULT '1',
  `geo` varchar(50) NOT NULL DEFAULT '',
  `geolat` float NOT NULL DEFAULT '0',
  `geolng` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_language`
--

INSERT INTO prince_language VALUES ('fra',0,'français','French','français','On ne connaît que les choses que l\'on apprivoise, dit le renard. Les hommes n\'ont plus le temps de rien connaître. Ils achètent des choses toutes faites chez les marchands. Mais comme il n\'existe point de marchands d\'amis, les hommes n\'ont plus d\'amis. Si tu veux un ami, apprivoise-moi!\r\n\r\nAdieu, dit le renard. Voici mon secret. Il est très simple: on ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.','','Antoine de Saint-Exupéry','A26 + àâçèéêôîûùëüï',1,50,'france',46.2276,2.21375);
INSERT INTO prince_language VALUES ('eng',0,'anglais','English','English','We only know the things that we tame, said the fox. People no longer have the time to know anything. They buy things already made for peddlers. But since there are no peddlers of friends, they no longer have friends. If you want a friend, tame me!\r\n\r\nGoodbye, said the fox. Here\'s my secret; it\'s very simple: we see well only with the heart. The essential is invisible to the eyes.\r\n','','Richard Waswo','A26+ ð  þ',1,67,'England, United Kingdom',52.019,-0.770427);
INSERT INTO prince_language VALUES ('deu',0,'allemand','German','Deutsch','Man kennt die Dinge, die man zähmt, sagte der Fuchs. Die Menschen haben keine Zeit mehr, etwas kennen zu lernen. Sie kaufen die Dinge fix und fertig bei den Händlern. Aber weil niemand mit Freunden handelt, haben die Menschen keine Freunde mehr. Wenn Du einen Freund willst, zähme mich!\r\n\r\nAdieu!, sagte der Fuchs. Dies ist mein Geheimnis. Es ist sehr einfach: man sieht nur mit dem Herzen gut. Das Wesentliche ist für die Augen unsichtbar.','','Carlos Alvar et Henriette Partzsch','A26 + ä, ö ü ß, eszet ou scharfes S',1,72,'germany',51.1657,10.4515);
INSERT INTO prince_language VALUES ('ita',0,'italien','Italian','italiano','Puoi conoscere solo quello che ti è familiare, che ti è domestico - disse la volpe. - Gli uomini non hanno più tempo di conoscere niente. Comprano nei negozi cose già pronte. Ma siccome non esistono negozianti di amici, gli uomini non hanno più amici. Tu, allora, se vuoi un amico, vedi di addomesticarmi.\r\n\r\nAddio, disse la volpe. Ed eccolo qui, il mio segreto - semplice semplice. Vedere è cosa del cuore. Agli occhi l\'essenziale resta sempre invisibile.','','Emilio Manzotti','A26 - jkwxy sont utilisés que dans les mots demprunt. On trouve toutefois le j (i lunga) ainsi que ly (ipsilon ou i greca) et le w (doppia vu) dans certains toponymes et noms ou prénoms. + àòóìíùúéè',1,52,'italy',41.8719,12.5674);
