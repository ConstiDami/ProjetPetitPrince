-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2020 at 09:55 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Projet2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `agora_voice`
--

CREATE TABLE `agora_voice` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `age` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `device_udid` varchar(100) NOT NULL DEFAULT '',
  `audiofile` varchar(100) NOT NULL DEFAULT '',
  `canton` varchar(100) NOT NULL DEFAULT '',
  `speechrate` double DEFAULT NULL,
  `frequency` double DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `quizz_id` int(11) NOT NULL DEFAULT '0',
  `participation_id` int(11) NOT NULL DEFAULT '0',
  `question_id` int(11) NOT NULL DEFAULT '0',
  `variant_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `quizz_id`, `participation_id`, `question_id`, `variant_id`) VALUES
(1, 1, 1, 1, 2),
(2, 1, 1, 2, 4),
(3, 1, 1, 3, 9),
(4, 1, 1, 4, 14),
(5, 1, 1, 5, 17),
(6, 1, 1, 6, 27),
(7, 1, 1, 7, 30),
(8, 1, 1, 8, 38);

-- --------------------------------------------------------

--
-- Table structure for table `language_20100105`
--

CREATE TABLE `language_20100105` (
  `iso` text NOT NULL,
  `french` text NOT NULL,
  `english` text NOT NULL,
  `self` text NOT NULL,
  `text` mediumtext NOT NULL,
  `imgtext` varchar(255) NOT NULL DEFAULT '',
  `trad` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `actif` tinyint(4) NOT NULL DEFAULT '0',
  `grp` mediumint(9) NOT NULL DEFAULT '1',
  `geo` varchar(50) NOT NULL DEFAULT '',
  `geolat` float NOT NULL DEFAULT '0',
  `geolng` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_20100105`
--

INSERT INTO `language_20100105` (`iso`, `french`, `english`, `self`, `text`, `imgtext`, `trad`, `comment`, `actif`, `grp`, `geo`, `geolat`, `geolng`) VALUES
('fra', 'français', 'french', 'français', 'On ne connaît que les choses que l\'on apprivoise, dit le renard. Les hommes n\'ont plus le temps de rien connaître. Ils achètent des choses toutes faites chez les marchands. Mais comme il n\'existe point de marchands d\'amis, les hommes n\'ont plus d\'amis. Si tu veux un ami, apprivoise-moi!\r\n\r\nAdieu, dit le renard. Voici mon secret. Il est très simple: on ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.', '', '', 'A26 + àâçèéêôîûùëüï', 1, 50, 'france', 1, 2),
('eng', 'anglais', 'english', 'english', 'We only know the things that we tame, said the fox. People no longer have the time to know anything. They buy things already made for peddlers. But since there are no peddlers of friends, they no longer have friends. If you want a friend, tame me!\r\n\r\nGoodbye, said the fox. Here\'s my secret; it\'s very simple: we see well only with the heart. The essential is invisible to the eyes.\r\n', '', 'Richard Waswo', 'A26+ ð  þ', 1, 67, 'England, United Kingdom', 0, 0),
('deu', 'allemand', 'german', 'deutsch', 'Man kennt die Dinge, die man zähmt, sagte der Fuchs. Die Menschen haben keine Zeit mehr, etwas kennen zu lernen. Sie kaufen die Dinge fix und fertig bei den Händlern. Aber weil niemand mit Freunden handelt, haben Sie Menschen keine Freunde mehr. Wenn Du einen Freund willst, zähme mich!\r\n\r\nAdieu!, sagte der Fuchs. Dies ist mein Geheimnis. Es ist sehr einfach: man sieht nur mit dem Herzen gut. Das Wesenliche ist für die Augen unsichtbar.', '', 'Carlos Alvar et Henriette Partzsch', 'A26 + ä, ö ü ß, eszet ou scharfes S', 1, 72, 'germany', 0, 0),
('ita', 'italien', 'italian', 'italiano', 'Puoi conoscere solo quello che ti è familiare, che ti è domestico - disse la volpe. - Gli uomini non hanno più tempo di conoscere niente. Comprano nei negozi cose già pronte. Ma siccome non esistono negozianti di amici, gli uomini non hanno più amici. Tu, allora, se vuoi un amico, vedi di addomesticarmi.\r\n\r\nAddio, disse la volpe. E eccolo qui, il mio segreto - semplice semplice. Vedere è cosa del cuore. Agli occhi l\'essenziale resta sempre invisibile.', '', 'Emilio Manzotti', 'A26 - jkwxy sont utilisés que dans les mots d?emprunt. On trouve toutefois le j (i lunga) ainsi que l?y (ipsilon ou i greca) et le w (doppia vu) dans certains toponymes et noms ou prénoms. + àòóìíùúéè', 1, 52, 'italy', 0, 0),
('spa', 'espagnol', 'spanish', 'español', 'Sólo conocemos las cosas que domesticamos, dijo el zorro. Los hombres ya no tienen tiempo de conocer nada. Compran en las tiendas cosas hechas. Pero como no hay ninguna tienda donde vendan amigos, los hombres ya no tienen amigos. Si quieres un amigo, !domestícame!\r\n\r\nAdiós, dijo el zorro. Te diré un secreto. Es muy sencillo: sólo se ve bien con el corazón. Lo esencial les resulta invisible a los ojos.', '', 'Jesús Munárriz', '', 1, 65, 'spain', 0, 0),
('rum', 'roumain', 'romanian', 'român&#x103;', 'Cunoa&#x15f;tem doar ceea ce îmblînzim, spuse vulpea. Oamenii nu mai au timp s&#x103; cunoasc&#x103; nimic. Cump&#x103;r&#x103; de la negustori lucrurile de-a gata. Cum ?nsa nu exista negustori de prieteni, oamenii nu mai au prieteni. Dac&#x103; vrei un prieten, ?mbl?nze&#x15f;te-m&#x103;!\r\n...\r\nAdio, spuse vulpea. Iat&#x103; care e taina mea. E foarte simpl&#x103;: limpede vezi doar cu inima. Ochii un pot s&#x103; vad&#x103; esen&#x163;ialul.\r\n', '', '', '&#x15f; &#x163f; &#x103; î', 1, 54, 'romania', 0, 0),
('swe', 'suédois', 'Swedish', '', 'Man lär bara känna det man tämjer, sa räven. Människorna har inte längre tid att riktigt bli bekanta med något. De köper färdiga saker i affärerna. Men eftersom det inte finns vänner att köpa i affärerna, har människorna inte längre några vänner. Om du vill ha en vän, så tämj mig!\r\n\r\nAdjö, sa räven. Nu ska du få höra min hemlighet. Den är mycket enkel: det är bara med hjärtat som man kan se ordentligt. Det viktigaste är osynligt för ögonen.', '', '', 'http://www.borderline.nu/nuke/modules.php?name=News&file=print&sid=31', 1, 57, 'sweden', 0, 0),
('rus', 'russe', 'russian', '', '-&#1059;&#1079;&#1085;&#1072;&#1090;&#1100; &#1084;&#1086;&#1078;&#1085;&#1086;  &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1090;&#1086;, &#1095;&#1090;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080;&#1096;&#1100;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083; &#1051;&#1080;&#1089;. &#1059; &#1083;&#1102;&#1076;&#1077;&#1081; &#1073;&#1086;&#1083;&#1100;&#1096;&#1077; &#1085;&#1077;&#1090; &#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1080; &#1095;&#1090;&#1086;-&#1083;&#1080;&#1073;&#1086;  &#1091;&#1079;&#1085;&#1072;&#1074;&#1072;&#1090;&#1100;. &#1054;&#1085;&#1080; &#1087;&#1086;&#1082;&#1091;&#1087;&#1072;&#1102;&#1090; &#1074;&#1077;&#1097;&#1080; &#1091;&#1078;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1099;&#1084;&#1080; &#1074; &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1077;. &#1053;&#1086; &#1074;&#1077;&#1076;&#1100; &#1085;&#1077;&#1090; &#1090;&#1072;&#1082;&#1086;&#1075;&#1086;  &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1072;, &#1075;&#1076;&#1077; &#1087;&#1088;&#1086;&#1076;&#1072;&#1102;&#1090;&#1089;&#1103; &#1076;&#1088;&#1091;&#1079;&#1100;&#1103;, &#1080; &#1091; &#1083;&#1102;&#1076;&#1077;&#1081; &#1085;&#1077; &#1089;&#1090;&#1072;&#1083;&#1086; &#1076;&#1088;&#1091;&#1079;&#1077;&#1081;. &#1045;&#1089;&#1083;&#1080; &#1090;&#1099; &#1093;&#1086;&#1095;&#1077;&#1096;&#1100;,  &#1095;&#1090;&#1086;&#1073;&#1099; &#1091; &#1090;&#1077;&#1073;&#1103; &#1073;&#1099;&#1083; &#1076;&#1088;&#1091;&#1075;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1103;&nbsp;!\r\n\r\n-&#1055;&#1088;&#1086;&#1097;&#1072;&#1081;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;  &#1051;&#1080;&#1089;. - &#1042;&#1086;&#1090; &#1084;&#1086;&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090;. &#1054;&#1085; &#1086;&#1095;&#1077;&#1085;&#1100; &#1087;&#1088;&#1086;&#1089;&#1090;&nbsp;: &#1087;&#1086;-&#1085;&#1072;&#1089;&#1090;&#1086;&#1103;&#1097;&#1077;&#1084;&#1091; &#1074;&#1080;&#1076;&#1080;&#1090; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1089;&#1077;&#1088;&#1076;&#1094;&#1077;.  &#1057;&#1072;&#1084;&#1086;&#1077; &#1075;&#1083;&#1072;&#1074;&#1085;&#1086;&#1077; &#1089;&#1086;&#1082;&#1088;&#1099;&#1090;&#1086; &#1086;&#1090; &#1075;&#1083;&#1072;&#1079;.', '', 'Olga Inkova', '', 1, 71, 'russia', 0, 0),
('epo', 'espéranto', 'esperanto', 'esperanto', '\"Nur ni konas tion, kion ni malsova&#x11d;igas\", diris la vulpo. \"La homoj ne plu havas tempon por io ajn koni. Ili a&#x109;etas tute pretajn objektojn &#x109;e vendistoj. Sed, &#x109;ar amikvendistoj ne ekzistas, homoj jam ne havas amikojn. Se vi volas amikojn, malsova&#x11d;igu min!\"\r\n\"Adiau\", diris la vulpo. \"Mi diros al vi unua sekreto. &#x11c;i estas tre simpla: Nur oni bone vidas per la nia koro. La esenco estas nevidebla perla okuloj.\"', '', 'Emilio Gastón', '&#x108; &#x109; &#x11d;  &#x11c;', 1, 14, '', 0, 0),
('hun', 'hongrois', 'hungarian', 'magyar', '- Az ember csak azt ismeri meg igazán, amit megszelídít - mondta a róka.\r\n- Az emberek nem érnek rá, hogy bármit is megismerjenek.\r\nCsupa kész holmit vásárolnak a keresked&#x151;knél.\r\nDe mivel barátkeresked&#x151;k nem léteznek, az embereknek nincsenek is barátaik.\r\nHa azt akarod, hogy barátod legyen, szelídíts meg engem.\r\n\r\n- Isten veled - mondta a róka.\r\n- Tessék, itt a titkom. Nagyon egyszer&#x171;:\r\njól csak a szívével lát az ember.\r\nAmi igazán lényeges, az a szemnek láthatatlan.\r\n', '', 'Rónay György', 'http://www.sztaki.hu/~smarton/vegtelen/kish/kish.htm', 1, 64, 'hungary', 0, 0),
('gsw-app', 'appenzellois', 'appenzell swiss german', '', 'me kennt nu d sache wommer zäämt, hät de fux gseit. d lüüt händ ka zit\r\nmeh zum öppis kenne lèrne. si kaufed d sache fix fertig i de läde. aber\r\nwils ka läde für fründ git, händ d lüüt ka fründ meh. wennt du aso en\r\nfründ wötsch, denn zääm mi.\r\n\r\nadie, hät de fux gsait. i säg der no mis gheimnis. s isch ganz eifach!\r\nguet sieht mer nu mit em hèrz. di wichtige sache sind für d auge-n\r\nunsichtbar.', '', 'Yves Scherrer', '', 1, 72, 'appenzell', 0, 0),
('ita-tic', 'tessinois', '', 'ticinese', 'A sa cognos dumá i rop che sa dumestiga, la dis la volp. I gent i g\'ha pü `l temp da cugnos nagota. I cumpra i rop già fai sü di mercant. Ma gh`è mia i mercant da amis, e alura i gent i g\'ha pü amis. Se te vöri un amis, te devi dumestigam.\r\n...\r\nAdiu, la dis la volp. Sculta`l mè segrett, l\'è facil: a sa ved ben dumá cul cör. I rop püsee impurtant, l\'è mia cui öcc ch\' i sa ved. ', '', 'Laura Baranzini', 'bellinzona áüöè', 1, 52, 'ticino', 0, 0),
('slv', 'slovène', 'slovenian', 'sloven?cina', 'Le tisto spozna&#x0161;, kar udoma&#x010D;i&#x0161;, je dejala lisica. Lujdje si ne vzamejo &#x010D;asa, da bi sploh spoznali. Pri trgovcih kupujuejo kar izgotovljene predmete. Ker pa ni trgovcev, ki bi prodajali prijatelje, ljudje nimajo ve&#x010D; prijateljev. &#X010D;e bi rad imel prijatelja, me udoma&#x010D;i!\r\n...\r\nZbogom, je rekla lisica. &#X010D;uj mojo skrivnost. Zelo preprosta je: Kdor ho&#x010D;e videti, mora gledati s screm. Bistvo je o&#x010D;em nevidno. \r\n', '', 'Ivan Minatti', '', 1, 70, 'slovenia', 0, 0),
('scc', 'serbe', 'serbian', '', '-Covek poznaje samo one stvari koje pripitomi, rece lisica. Ljudi nemaju vise vremena da bilo sta upoznaju. Oni kupuju gotove stvari kod trgovaca. A kako nema trgovaca koji prodaju prijatelje, ljudi vise nemaju prijatelja. Ako hoces prijatelja, pripitomi me!\r\n-Zbogom, odgovori lisica. Evo moje tajne. Sasvim je jednostavna: covek samo srcem dobro vidi. Sustina se ocima ne da sagledati.', '', '', '', 1, 70, 'serbia', 0, 0),
('jpn', 'japonais', 'japanese', '', '', 'japonais.jpg', 'Masayuki Ninomiya', '', 1, 43, 'japan', 0, 0),
('wol', 'wolof', '', '', 'Xamouñu lou doul lou ñou miin, (wakh  golo). Nit ñi amatouñu jootu xam. Dañuy jenda lou paré ba noppi ca jaykat ba. Waayé ndéguém amatoul jaykatou xarit, nit amatoul xarit. So beugué xarit, nékhalma!\r\n...\r\nTagounaléen (wakh golo). Li moy li ma doon neubeu. Dafa yonmbeu: ak xol la ñuy gisé bou bakh. Li am solo dafay laxou beuti.\r\n', '', 'Yacine Diop Fonjallaz', 'ñ é', 1, 32, 'senegal', 0, 0),
('alb', 'albanais', 'albanese', 'shqip', 'NJohim veçse gjerat qe i aprivuazojme, thote dhelpra. Njerezit s\'kane me kohe te njohin gje tjeter. Blejne gjera te gateshme tek tregetaret. Por meqe tregetaret miq nuk egsistojne me, atehere njerezit s\'kane me miq, Nese do nje mik, ja ku me ke mua!\r\n...\r\nLamtumire, thote dhelpra. Ja sekreti im. Eshte shume i thjeshte: Shohim mire veçse me zemer. Esencialja eshte e padukshme per syte.', '', 'Lefteri Hasanaj', '', 1, 19, 'albania', 0, 0),
('heb', 'hébreu', 'hebrew', '', '', 'hebreu.jpg', '', '', 1, 61, 'israel', 0, 0),
('lat', 'latin', 'latin', 'lingua latina', 'Haec tantum nota sunt quae paulatim domantur, dixit uulpes. Homines aliquid spatii ad cognoscendum subripere non iam possunt; sic apud mercatores res ad usum paratas emunt. Cum autem mercatores qui amicos uendant inueniri non possint, hominibus non iam sunt amici. Si amicum expetis, me doma!\r\n	 \r\n(...) Vale, dixit uulpes. Hoc est arcanum meum, et simplicissimum quidem : corde tantum perspici potest, nec summae rerum ipsae cernuntur oculo ullo.\r\n', '', 'Yves Rütsche', '', 1, 20, '', 0, 0),
('roa', 'provençal', 'provençal', 'occitan', 'Lo Ditz del Raynart\r\n\r\n\"Hom conois solamen \r\no que pot domesgar\".\r\nBos ditz es, e no men:\r\nbe puesc lo t\'explicar.\r\nHuey non a hom lezer\r\nde ren be conoisser,\r\ndoncs compra, e-lh es grazitz,\r\no que-lh estai aizitz,\r\nque-lh vendon mercadant:\r\nals no quier tant ni cant.\r\nPus atrobar no-s poc\r\nlunhz mercadantz d\'amics,\r\nde o cauza s\'esmoc\r\ncÕhuey regn\'om ses amics.\r\nS\'amic vols atrobar,\r\nbe×t caldra m domesgar.\r\nAiqui vuelh descobrir\r\nmo secret al fenir:\r\nab ton cor solamen\r\npotz vezer claramen.\r\n\"Ohlz no ve o que cal\r\nmais, ni qu\'es mais cabal\".', '', 'Maurizio Perugi', '', 1, 49, '', 0, 0),
('bre', 'breton', 'breton', 'brezhoneg', 'N\'eus nemet an traou a vez doñvaet a anevezer, eme al louarn. An dud n\'o deus ket amzer ken da anaout netra.  Prenañ a reont traou peurc\'hraet `ti ar varc\'hadourien. Met dre ma n\'eus ket a varc\'hadourien vignoned, n\'o deus an dud mignon ebet ken. Ma fell dit kaout ur mignon, doñva ac\'hanon!\r\n...\r\nKenavo, eme al louarn. Setu va sekred. Aes-kenañ ez eo:  gant ar galon nemetken e vez gwelet mat. Ar pep pouezushañ ne vez ket gwelet gant an daoulagad.', '', 'Yvon Abiven', '', 1, 55, 'bretagne', 0, 0),
('por', 'portugais', 'portuguese', 'português', 'Só se conhece aquilo que se amestra, diz a raposa. Os homens já não têm tempo para conhecer nada. Compram tudo já feito nas lojas. Mas como não se podem comprar amigos nas lojas, os homens deixaram de ter amigos. Se queres um amigo, amestra-me!\r\n...\r\nAdeus, diz a raposa. Aqui tens o meu segredo. É muito simples: só se vê bem com o coração. O essencial é invisível para os olhos.\r\n', '', 'Nuno Júdice', '', 1, 66, 'portugal', 0, 0),
('roh', 'romanche sursilvan', 'romance (sursilvan)', 'rumantsch sursilvan', 'Ins enconuscha mo las caussas ch\'ins ha fatg dumiastias, precisescha l\'uolp. Ils carstgauns han buca peda pli d\'emprender d\'enconuscher enzatgei. Els cumpran las caussas fatgas. Mo essend ch\'ei dat buca pli stizuns per amitgs, han ils carstgauns buc amitgs pli. Sche ti vul in amitg, lu fai ch\'jeu daventi dumiastia!\r\n...\r\nAdia, di l\'uolp. Mira tscheu miu misteri. El ei zun sempels: Mo cun il cor vesan ins bein. Igl essenzial ei buca veseivels per ils egls.\r\n', '', 'Donat Cadruvi', '', 1, 51, '', 0, 0),
('dut', 'néerlandais', 'dutch', 'vlaams', 'Men kent alleen die dingen waarmee men echt vertrouwd is, zegt de vos. De mensen hebben niet meer de tijd nog iets echt te kennen. Zij kopen dingen kant en klaar bij een handelaar. Maar verkopers van vrienden die bestaan niet, en dus hebben de mensen geen vrienden meer. Als je een vriend wilt moet je me temmen!\r\n...\r\nVaarwel, zegt de vos. Hier is mijn geheim. Het is zeer eenvoudig : Goed zien kan men alleen met zijn hart. Het wezenlijke is onzichtbaar voor je ogen.\r\n', '', 'Yasmina Foehr-Janssens', '', 1, 68, 'netherlands', 0, 0),
('dan', 'danois', 'danish', 'dansk', 'Man kender kun de ting som man t&#xe6;mmer, siger r&#xe6;ven. Menneskene har ikke l&#xe6;ngere tid til at kende noget. De k&#xf8;ber f&#xe6;rdiglavede ting hos k&#xf8;bmanden. Men eftersom der ikke findes nogen k&#xe6;bm&#xe6;nd der s&#xe6;lger venner, har menneskene ikke l&#xe6;ngere nogen venner. Hvis du vil have en ven s&#xe5; t&#xe6;m mig! \r\n...\r\nFarvel, siger r&#xe6;ven. Her er min hemmelighed. Den er meget enkel: kun med hjertet kan man se klart. Det der virkeligt betyder noget er usynligt for &#xf8;jnene.\r\n', '', 'Laura et Leonardo F.Lisi', '', 1, 57, 'denmark', 0, 0),
('nor', 'norvégien', 'norwegian', 'norsk', 'Vi kjenner bare de ting vi har gjort oss fortrolig med, sa reven. Menneskene har ikke lenger tid til &#xe5; bli kjent med noe. De kj&#xf8;per alt ferdig i butikken. Men siden det ikke finnes butikker som selger venner, har ikke menneskene venner lenger. Vil du ha en venn, s&#xe5; gj&#xf8;r deg fortrolig med meg!\r\n...\r\nAdj&#xf8;, sa reven. Jeg skal fortelle deg en hemmelighet. Den er veldig enkel. Man ser bare godt med hjertet. Det vesentlige er usynlig for &#xf8;yet.\r\n', '', 'Kirsti Baggethun', '', 1, 57, 'norway', 0, 0),
('ukr', 'ukrainien', 'ukrainian', '?????????? ????', '- &#1052;&#1080; &#1079;&#1085;&#1072;&#1108;&#1084;&#1086; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1090;&#1080;&#1093;, &#1082;&#1086;&#1075;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1072;&#1108;&#1084;&#1086;, &#1087;&#1088;&#1086;&#1084;&#1086;&#1083;&#1074;&#1080;&#1083;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1051;&#1102;&#1076;&#1080;  &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1095;&#1072;&#1089;&#1091; &#1076;&#1083;&#1103; &#1087;i&#1079;&#1085;&#1072;&#1085;&#1085;&#1103; i&#1085;&#1096;&#1086;&#1075;&#1086;. &#1042;&#1086;&#1085;&#1080; &#1082;&#1091;&#1087;&#1091;&#1102;&#1090;&#1100; &#1075;&#1086;&#1090;&#1086;&#1074;i &#1088;&#1077;&#1095;i &#1091; &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i&#1074;. &#1040;&#1083;&#1077;, &#1086;&#1089;&#1082;i&#1083;&#1100;&#1082;&#1080;, &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i &#1076;&#1088;&#1091;&#1079;&#1103;&#1084;&#1080; &#1085;&#1077; &#1073;&#1091;&#1074;&#1072;&#1102;&#1090;&#1100;, &#1083;&#1102;&#1076;&#1080; &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1076;&#1088;&#1091;&#1079;i&#1074;. &#1071;&#1082;&#1097;&#1086; &#1090;&#1080; &#1073;&#1072;&#1078;&#1072;&#1108;&#1096; &#1084;&#1072;&#1090;&#1080; &#1076;&#1088;&#1091;&#1075;&#1072;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1077;.\r\n\r\n- &#1041;&#1091;&#1074;&#1072;&#1081;, &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;&#1072;  &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1052;i&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090; &#1090;&#1072;&#1082;&#1080;&#1081;. &#1042;i&#1085; &#1076;&#1091;&#1078;&#1077; &#1087;&#1088;&#1086;&#1089;&#1090;&#1080;&#1081;&nbsp;: &#1084;&#1080; &#1073;&#1072;&#1095;&#1080;&#1084;&#1086; &#1082;&#1088;&#1072;&#1097;&#1077; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1089;&#1077;&#1088;&#1094;&#1077;&#1084;. &#1053;&#1072;&#1081;&#1089;&#1091;&#1090;&#1090;&#1108;&#1074;i&#1096;&#1077; &#1079;&#1072;&#1083;&#1080;&#1096;&#1072;&#1108;&#1090;&#1100;&#1089;&#1103; &#1085;&#1077;  &#1074;&#1080;&#1076;&#1080;&#1084;&#1077; &#1076;&#1083;&#1103; &#1086;&#1095;&#1077;&#1081;.', '', 'Ekateryna Kondrattsova', '', 1, 71, 'ukraine', 0, 0),
('gsw-ber', 'bernois', 'bern swiss german', 'berndütsch', 'Me kennt nume d Sache wo eim vertraut si, seit der Fuchs. D Mönsche hei ke Zyt me öppis z kenne. Sie choufe alli Sache fix fertig bim Händler. U Gschäft für Fründe git es nid, drum hei d Mönsche keni Fründe meh. We du e Fründ wosch, so gwinn mys Vertraue!\r\n...\r\nAdiö, seit der Fuchs. Da isch mys Gheimnis. Es isch ganz eifach!: guet gseht me nume mit em Härz, ds Wichtigste isch für d Auge unsichtbar.\r\n', '', 'Greti Kläy', '', 1, 72, 'berne, Switzerland', 0, 0),
('gaw-bal', 'bâlois', 'basel swiss german', '', 'Me kennt nur die Sache wo me zäämt, het der Fuggs gsait. D Mensche hän kai Zyt me, irgend ebbis kenne z leere. Sy kaufe alles feertyg in de Lääde. Aber wel\'s kainy Lääde git wo Frind verkaufe, hän d Mensche kainy Frind mee. Wenn du e Frind wottsch, denn zääm my!\r\n...\r\nAadie, het der Fuggs gsait. Doo isch no my Ghaimlis. S isch ganz aifach: me gseet numme mit em Häärz guet. S Wichtyge isch fir d Auge unsichtbaar.\r\n', '', 'Tobias Brandenberger', '', 1, 72, 'basel, Switzerland', 0, 0),
('gaw-arg', 'argovien', 'aargau swiss german', '', 'Mer kännt nume die Sache wo mer zèèmt, hèd de Fuchs gsäit. D Mäntsche händ nümme der Zit zum öppis känneleere. Si chauffed alls fixfertig im Laade. Wils aber ekäni Lääde für Fründ gid, händ d Lüüt ekä Fründe me. Wennd en Fründ wotsch, so tue mi zèème.\r\n\r\nLäbwool, hèd de Fuchs gsäit. Ich säge der mis Ghäimnis. Es ist ganz äifach: guet gsee cha mer nume mit em Hèèrz. Di wichtige Sache sind für d Auge unsichtbar.', '', 'Beatrice Schmid', '', 1, 72, 'aargau, Switzerland', 0, 0),
('lat-med', 'latin médiéval', 'medieval latin', '', 'Vulpes inquit: Nullas causas nosse valemus praeter eas cum quibus familiarescimus. Homines vero quicquam cognoscendi spatium non iam sumunt; sibi autem causas iamdudum confectas apud venditores comparant. Sed quoniam nequaquam exsisitit amicorum venditor, homines nunc amicis frui nequeunt. Tu igitur, si amico quodam frui vis, familiarem tibi me fac.\r\n\r\n(...) Vale, ait vulpes. Ecce arcanum, quod est simplicissimum, tibi patefacio: tantum sunt perspicaces cordis oculi. Econtra, carnales oculi summas causas cernere non valent.', '', 'Jean-Yves et Lorraine Tilliette', '', 1, 20, '', 0, 0),
('fro', 'français (ancien)', 'old french', '', 'Choses ne sont congneües fors celles dont en s\'aüse, dist li golpis. Li home n\'ont ja loisir d\'aucune rien enquerre. Si vont les choses que cil manuevrent as marcheanz achetant. Or ne sont mie marcheant qui amis vendent, et n\'i a mais celui ne ait amis. Se vuels ami, acointe toi a moi !\r\n...\r\nDieus te gart, dist li golpis. Mes secrez est tels. Si est a entendre legiers : en ne voit si bien qu\'as ielz del cuer. Forz choses ne sont as ielz del chief veües.', '', 'Olivier Collet', '', 1, 50, '', 0, 0),
('gsw-sol', 'soleurois', 'solothurn swiss german', '', '', '', 'Simone Übelhart', '', 1, 72, 'solothurn, Switzerland', 0, 0),
('gsw-zur', 'zurichois', 'zurich swiss german', 'züritüütsch', 'Mer känt nume d\'sache wo mer zäämt, hät de fuchs gsäit. D\'mänsche händ nüme ziit zum öppis käneleere. Si chaufed alles fixfertig im lade. Will\'s aber käi läde für fründ git, händ d\'lüüt käi fründ mee. Wänn d\'en fründ wotsch, dänn zääm mi.\r\n\r\nAdiö, hät de fuchs gsäit. Ich säge dir mis ghäimnis. Es isch ganz äifach: guet gsee cha mer nume mit em herz. Di wichtige sache sind für d\'auge unsichtbar.', '', 'Juri Mengon', '', 1, 72, 'zurich, Switzerland', 0, 0),
('ara', 'arabe', 'arabic', '', '', 'arabe.jpg', '', '', 1, 62, '', 0, 0),
('arm', 'armenien', 'armenian', '', '', 'armenien.jpg', '', '', 1, 17, 'armenia', 0, 0),
('sum', 'sumérien', 'sumerian', '', '', 'sumerien.jpg', 'Antoine Cavigneaux', '', 1, 15, '', 0, 0),
('dar', 'dari', '', '', '', 'dari.jpg', 'Mirwais Tayebi', '', 1, 45, 'iran', 0, 0),
('egy', 'égyptien', 'egyptian', '', '', 'egyptien.jpg', 'Michel Vallogia', '', 1, 26, 'egypt', 0, 0),
('tam', 'tamazight', '', '', '', 'tamazight.jpg', 'Ekram Hamu Haddu', '', 1, 25, 'algeria', 0, 0),
('gra', 'grec ancien', 'old greek', '', '', 'grecancien.jpg', 'Paul Schubert', '', 1, 47, '', 0, 0),
('enm', 'anglais (moyen)', 'middle english', '', 'Man moste tamen that he kenne lists, quoth the fox. To witen mankind hath no tide. Men praty thingys from sellours beyen. But there is of freondes no marchande, so that man freondless now stode. If a freonde thou list, tame me!\r\n\r\nFarewel, quoth the fox. This is my cownsell. Seli it is: man can only see well thurgh the hert. To the eien the essencial is invisibull.', '', 'Guillemette Bolens', '', 1, 67, '', 0, 0),
('ang', 'anglais (vieil)', 'old english', '', 'Man nat butan Þe man atemað,cwæð se fox. Menn nabbað hwile nawiht to witanne. Hie bycgað gegarwodu Þing fram ciepemannum. Ac swa na freonda ciepemann nis, menn nabbað na freondas. Gif Þu anne freond wilt, mec atema!\r\n\r\nWes Þu hal, cwæð se fox. Her is min diegolnes. Seo is swiðe anfeald: man siehð wel nefne mid heorte. Seo aweosung nis fram eagum sewenlic.', '', 'Fabienne Michelet', '', 1, 67, '', 0, 0),
('pol', 'polonais', 'polish', 'polski', '- Poznaje sie&#x0328; tylko to, co sie oswoi - powiedzia&#x0142; lis. - Ludzie maja&#x0328; zbyt ma&#x0142;o czasu, aby cokolwiek poznac&#x301;. Kupuja&#x0328; w sklepach rzeczy gotowe. A poniewaz&#x307; nie ma magazynów z przyjació&#x0142;mi, wie&#x0328;c ludzie nie maja&#x0328; przyjació&#x0142;. Jes&#x301;li chcesz miec&#x301; przyjaciela, oswój mnie!\r\n\r\n- Z&#x307;egnaj - odpowiedzia&#x0142; lis. - A oto mój sekret. Jest bardzo prosty: dobrze widzi sie&#x0328; tylko sercem. Najwaz&#x307;niejsze jest niewidoczne dla oczy.', '', '??', 'http://www.odaha.com/littleprince.php?f=MalyKsiaze', 1, 69, 'polska', 0, 0),
('ita-tos', 'toscan', 'tuscan', 'toscano', 'Si conosce solo le cose che s\'addomestica disse la volpe. Gl\'omini un\'hanno piú tempo di conosce\'nulla. Comprano cose bell\'e fatte nei mercati. Ma siccome un\'esiste punti mercati d\'amici, gl\'omini un\'hanno piú amici. Se tu voi un amico, addomesticami! \r\n\r\nAddio disse la volpe. Ecco il mio segreto. È di molto facile: solo si vede bene con il cuore. L\'essenziale è invisibile agl\'occhi.\r\n\r\n\r\n', '', 'Roberta Orlandi', '', 1, 52, 'Tuscany', 0, 0),
('mlt', 'maltais', 'maltese', 'malti', 'Il-bniedem isir jaf biss bil-&#x0127;lejjaq li jimmansa hu, qal il-volpi. Il-bnedmin m?g&#x0127;ad g&#x0127;andhom &#x0127;in g&#x0127;al xejn. Jixtru kollox lest ming&#x0127;and tal-&#x0127;wienet. Izda billi ma jezistux bejjieg&#x0127;a tal-&#x0127;bieb, il-bnedmin ma baqg&#x0127;alhomx &#x0127;bieb. Jekk trid &#x0127;abib immansa lili!\r\n?\r\nSa&#x0127;&#x0127;iet, qal il-volpi. Is-sigriet tieg&#x0127;i huwa dan. Sigriet semplici &#x0127;afna: ma tistax tara sew jekk mhux bil-qalb. Dak li hu tassew ha?&#x0127;tiega ma tarahx be-g&#x0127;ajnejn. \r\n', '', 'Toni Aquilina', '', 1, 62, 'malta', 0, 0),
('lav', 'letton', 'latvian', 'latvie&#x0161;u valada', 'M&#x0113; pasz&#x012B;stam tikai to, ko pieradin&#x0101;m, sac&#x012B;ja lapsa. Civ&#x0113;kiem vairs nav laika neko iepaz&#x012B;t. Vini nop&#x0113;rk pie tirgot&#x0101;ja jau visu gatavu. Bet, t&#x0101; k&#x0101; nav tirgot&#x0101;ju, kas p&#x0101;rdotu draugus, tad cilv&#x0113;kiem vairs nav draugu. Ja tu v&#x0113;lies draugu, pieradini mani! \r\n...\r\nArdievu, sac&#x012B;ja lapsa. L&#x016B;k, mans nosl&#x0113;pums, tas ir loti vienk&#x0101;r&#x0161;s: &#x012B;sti m&#x0113;s redzam tikai ar sirdi. B&#x016B;tiskais nav ac&#x012B;m saredzams. \r\n', '', 'Ieva Lase', '', 1, 58, 'latvia', 0, 0),
('srd', 'sarde', 'sardinian', 'sardu', 'Non connoschimus atteru petzi chei sas cosas chi si addomestican, nait su mariane. Sos omines no an prus su tempus de connoscher. Dae sos bèndidores issos comporan sas cosas già fattas. Ma sicomente non s?accatana bèndidores de amicos, sos omines non an prus amicos. Si tue cheres unu amicu addomesticande unu!\r\n?\r\nAdiosu>>, nait su mariane. Ecco su secretu meu. Est meda fatzile: si biet bene petzi chin su coro. S?essentziale non si biet pompiandelu.\r\n', '', 'Dino Manca', '', 1, 53, 'sardegna', 0, 0),
('ita-pie', 'piémontais', 'piemontese italian', '', 'Noi conossoma mach le c?se ch?a ?n rendo bindisp?st, a dis la volp.  J??mini  a l?han pï nen ël temp ëd con?sse d?autr.  A cato le c?se gia faite dai marcand.  Ma dal moment che ij marcand amis a esisto nen, j??mini a l?han pì gnun amis. S?it veule n?amis, it deuve domëstieme.\r\n?\r\nAdieu, a dis la volp. Veui confidete mè segret. A l?è motobin sempi: noi riessima a vëdde bin mach con ?l cheur. L?n ch?a l?è essensial a l?è invisìbil con j?euj.\r\n', '', 'Lidia Rubio et Cristina Tango', '', 1, 52, 'Piedmont, Italy', 0, 0),
('ita-pis', 'pisan', 'pisan italian', '', 'E si  ?onosce sortanto le ?ose che ci fanno diventà  docili, dice la vorpe. La gente un ha più  ?r tempo  di ?onosce artro. Compra le  ?ose già fatte da?  bottegai. Ma siccome un ci sono bottegai amici, la gente amici un n?ha più. Se voi un?amio, mi devi addomestià.\r\n?\r\nTi saluto dice la vorpe.   Ir mi? segreto è questo. E? semprice:  si riesce a vede? bene solo cor cuore.  Quer che conta di più con l?occhi un si vede.\r\n', '', 'Roberto Sbrana', '', 1, 52, 'pisa, Italy', 0, 0),
('scn', 'sicilien', 'sicilian', 'siciliano', 'Si canusciunu sulamenti ?i cosi chi s?ammaistranu, dissi ?a vurpi. L?omini nonhannu cchjù tempu di canusciri nenti. Ccattunu li cosi fatte sulamenti di mercanti. Ma siccomu non ci sunnu pi-nnenti mercanti d?amici, l?omini non hannu cchjù amici. Si tu voi n?amicu, ammaistrimi!\r\n?\r\nAddiu, dissi ?a vurpi. Eccu u mè sigretu. E? simplici-simplici: si vidi beni sulamenti cu cori. L?essenziali è nvisibili a-ll?occhj.\r\n', '', 'Rossana Castano', '', 1, 52, 'sicilia', 0, 0),
('ita-vic', 'vicentin', 'vicentin italian', 'vicentino', 'Te pui conóssare solo queo che xe de faméja, ga dito la volpe. I òmeni no i ga pì tempo de conóssare gnente. Tuto queo che i ga i lo compra dai botegari. Ma sicome no ghe xe botegari che vende amissi, i òmeni no i ga pì amissi. Se ti te vui n?amico, fame diventar de faméja.\r\n?\r\nAdìo, ga dito la volpe. Ècolo kì el me segreto. El xe tanto fàssile: te ghe vidi ben solo col core. Queo che conta no te lo vidi mia coi oci.\r\n', '', 'Luciano Zampese', '', 1, 52, 'vicenza, Italy', 0, 0),
('ast', 'bable/asturien', 'asturian', 'asturianu', 'Solu conocemos les coses que domesticamos, dixo el raposu. Los homes ya nun tien tiempu de domesticar nada. Mercan nes tiendes coses feches. Pero como nun hai nenguna tienda ónde vendan amigos, los homes ya nun tien amigos. Si quies un amigu, ¡domestícame! \r\n?\r\nAdiós, dixo el raposu. Direte un secreto. Ye muy sencillu: solu vese bien co?l corazón. Lo esencial resultayos invisible a los güeyos.\r\n', '', 'Antonio D\'az Orejas', '', 1, 48, 'Asturias', 0, 0),
('cas', 'castuó', '', 'castuó', 'Namág tenemug cunucencia de lag cosag que dumamug, iju el zorru. Lug?ombrig no tienin tiempu ya pa dumal nâ. Mercan en lag tiendag lag cosag?echag. Peru comu no ay tienda que varga ondi vendan amigug, lug?ombrig no tienen amigug yâ. Si quiég?un amigu, ¡d?mami!\r\n?\r\nAdióg, iju la zorra. Vu?a icilti un secretinu. Eg mu facilinu: namág se ve bien con?el curazón. Er meoyu eg?invisibli pa lus?ojug.\r\n', '', 'Pablo Muñoz Regadera', '', 1, 65, 'Extremadura', 0, 0),
('pat-ben', 'patois de Benasque', '', '', 'Sólo coneixem les coses que adomem, ba di el raboso. Els omes ya no tienen tems de coneixer res. Compren a les tiendes coses fetes. Pero coma no yey niuna tienda agon benguen amigos, els omes ya no tienen amigos. Si ques un amigo, ¡adómame!\r\n?\r\nAdeu, ba di el raboso. Te diré un secreto. Ye mol sensillo: sólo se bei bé dan el corasón. Lo més importán no se bei dan els güells.\r\n', '', 'José Mar\'a Mur', '', 1, 65, 'Benasque, Spain', 0, 0),
('chs', 'cheso', 'cheso', '', 'Solamen conocemos las cosas que domesticamos, dicié lo raboso. Los hombres ya no han tiempo de domesticar cosa. Mercan en los comercios cosas feitas. Pero como no bi-há boticas en do se vendan amigos, los hombres  s?han quedáu sin amigos. Si quies un amigo... ¡habrás a domesticarme!\r\n?\r\nAdiós, dicié lo raboso. Te?n diré uno  de los míos secretos. Ye muy simple: sólo se i-veye bien con lo corazón. Lo esencial ye invisible a los güellos.\r\n', '', 'Emilio Gastón', '', 1, 65, 'aragon', 0, 0),
('cat', 'catalan ', 'catalan', 'català', 'Només es coneixen les coses que es domestiquen -va dir la guineu. Els homes ja no tenen temps de conèixer res. Compren coses fetes als botiguers. Però com que no hi ha botiguers d?amics, els homes ja no tenen amics. Si vols un amic, domestica?m!\r\n?\r\nAdéu -va dir la guineu. Vet aquí el meu secret. És molt senzill: només s?hi veu bé amb el cor. L?essencial és invisible als ulls.\r\n', '', 'Luis Puig et Jenaro Talens', '', 1, 49, 'Catalunya', 0, 0),
('glg', 'galicien', 'galician', 'gallego', 'Non se coñecen máis ca as cousas que se domestican, dixo o raposo. Os homes non teñen tempo para coñecer nada. Conseguen no mercado as cousas todas. Mais como non existe mercado de amigos, os homes non teñen amigos. Se ti queres un amigo, domestícame!\r\n?\r\nAdeus, dixo o raposo. Velaquí tes o meu segredo. Éche moi simple: só co corazón se mira ben. O esencial é invisíbel para os ollos.\r\n', '', 'Antón Dobao et Chus Pato', '', 1, 66, 'Galicia', 0, 0),
('eus', 'basque', 'basque', 'euskara', 'Hezten diren gauzak baino ez dira ezagutzen, esan zuen azeriak. Gizonek ez dute ezer ezagutzeko denborarik. Merkatarienean guztiz egindako gauzak erosten dituzte. Baina adiskide-merkataririk ez dagoenez, gizonek ez dute adiskiderik. Adiskide bat nahi baduzu, hez nazazu!\r\n.....\r\nAdio, esan zuen azeriak. Hona hemen nire sekretua. Oso erraza da: bihotzez baino ez da ondo ikusten. Funtsezkoa ikustezina da begientzako.\r\n', '', 'Rikardo Arregi D\'az de Heredia', '', 1, 15, 'Basque Country, Spain', 0, 0),
('pat-ann', 'patois du Val d\'Anniviers', '', '', 'Oung cognit què lè tzogè coung a adommécia, dèt lé rèingnar. Lé jhommo l?ann pa mé lo teng dè tzougea conirè. L?atzètonn dè tzogè totè prèchtè ou martchiann. Ma kommè la pa mè dè martchian d?amèk, lè jhommo l?ann pa mè d?amik. Ché tou vout oung amèk, dèt lè rèingnar, tou kountè l?affrarssiè !\r\n?\r\nAdiou, dèt lè rèingar. Tè dio mong sèkrèt. Lè frang cheingplo : oung vit bèing qu?avouè lo kour. Chènn què conntè frang nè pas péchiouc avouè lè jouèss.\r\n', '', 'Jean-Jacques Zufferey', '', 1, 51, 'Anniviers, Switzerland', 0, 0),
('pat-htv', 'haut-valaisan', '', '', 'Mu chennt nummu d?Sache wa einum vertruwt sind, hett där Fugs gseit. D?Mänschu hennt kei Zit meh, eppis lehru z?chennu. Schi chöifunt ganz fertigi Sache in dä Gschäftu. Aber wills kei Gschäfti git wa mu cha Fräinda chäifu, hent d?Mänschu kei Fröinda meh. Wennt dü a Fröind willt, so tüö mich zähmu.\r\n?\r\nAde, hett där Fugs gseit. Hie isch mis Gheimnis. Äs isch ganz as eifachs: Mu gseht nummu mit dum Härz richtig. Z?wichtigschta chasch mit dä Öigu nit gseh.\r\n', '', 'Christian Escher', '', 1, 72, 'brig-glis', 0, 0),
('fin', 'finnois', 'finnish', 'suomi', 'Me tunnemme vain ne, jotka kesytämme, kettu sanoi. Ihmisillä ei ole enää aikaa tuntea mitään. He ostavat tavarat valmiina kauppiailta. Mutta koska kauppiaat eivät myy ystäviä, ihmisillä ei ole enää ystäviä. Jos haluat ystävän, kesytä minut!\r\n?\r\n\r\nHyvästi, kettu sanoi. Kerron sinulle salaisuuteni, se on hyvin yksinkertainen: Vain sydämellä näkee hyvin. Tärkein on silmin näkymätöntä.\r\n', '', 'Merja Torvinen', '', 1, 63, 'finland', 0, 0),
('scr', 'croate', 'croatian', 'hrvatski jezik', 'Poznamo samo stvari koje pripitomimo, re&#x010D;e lisica. &#X010C;ovjek nema vi&#x0161;e vremena da i&#x0161;ta upozna. Kupuje samo ve&#x0107; izra&#x0111;ene stvari kod trgovca. A kako vi&#x0161;e ne postoje trgovci koji su prijatelji, &#x010D;ovjek vi&#x0161;e nema prijatelja. Ako ho&#x0107;e&#x0161; prijatelja, pripitomi me!\r\n?\r\nZbogom, re&#x010D;e lisica. Evo moje tajne. Ona je vrlo jednostavna: vidi se dobro samo srcem. Najbitnije je o&#x010D;ima nevidljivo. \r\n', '', 'Jasna Adler', '', 1, 70, 'croatia', 0, 0),
('rom', 'rromanes', 'rromanes', '', 'Nané d&#x017E;indlé vavír kolá, fénciu karík savé san prisyklynó- phendziá líso. Manu&#x0161;á, nané lénde kiédy te syklión várso nevó. Joné kinén saró kerdó biknypáske. A paldavá, so nané adáso biknypnári, ke savõ sa&#x0161;tý te kinés malén, to i manu&#x0161;énde nané butedýr malá. Jé&#x015B;li kamés, kaj te javél túte jek mal, to prisykliákir man ke pe. \r\n...\r\nDevlésa-phendziá líso. Óke mro sekréto. Jou sýle izbít prósto: dykh jilésa. So sy andré na&#x0161;tý te udykhés jakhénca. \r\n', '', 'Lev Tcherenkov et Stéphane Laederich', '', 1, 46, 'macedonia', 0, 0),
('slo', 'slovaque', 'slovak', 'sloven&#x010D;ina', 'Spoznávame len to, &#x010D;o si skrotíme, povedala lí&#x0161;ka. L?udia u&#x017E; nemajú &#x010D;as nie&#x010D;o spoznavát?. Kupujú si u obchodníkov celkom hotové veci. Niet v&#x0161;ak takých obchodníkov, &#x010D;o by predávali priatel?ov, preto l?udia priatel?ov u&#x017E; nemajú. Ak chce&#x0161; mat? priatela skrot? si ma. \r\n?\r\nZbohom, riekla lí&#x0161;ka. Tu je moje tajomstvo. Je vel?mi jednoduché: dobre vidíme iba srdcom. To hlavné je o&#x010D;iam neviditel?né. \r\n', '', 'Mária Kovácová', 'corrigé par Vivien <ninien@zmail.sk>', 1, 69, 'slovakia', 0, 0),
('cze', 'tchèque', 'czech', '&#x010D;esky', 'Známe jen ty v&#x011B;ci, které si ocho&#x010D;íme, &#x0159;ekla li&#x0161;ka. Lidé u&#x017E; nemají &#x010D;as, aby n&#x011B;co poznávali. U obchodník&#x016F; nakupují v&#x011B;ci úlpn&#x011B; hotové. Ale proto&#x017E;e s p&#x0159;átelstvím se nekupc&#x010D;í, nemají p&#x0159;átel. Chce&#x0161;-lu p&#x0159;ítele, ocho&#x010D; si m&#x011B;!\r\n?\r\nSbohem, &#x0159;ekla li&#x0161;ka. Tady je mé tajemství, docela jednoduché: správn&#x011B; vidíme jen srdcem. To bytostné o&#x010D;i nespat&#x0159;í. \r\n', '', 'Lubor Jílek', '', 1, 69, 'czech republic', 0, 0),
('lit', 'lituanien', 'lituanian', 'letuvi&#x0173 kalba', 'Susipa&#x017E;inti gali tik su tais dalykais, kuriuos prisijaukini, tarè lapè. &#X017E;mones neturi laiko ko nors pa&#x017E;inti. Jie nusiperka visk&#x0105; jau gatav&#x0105; i&#x0161; prekybinink&#x0173;. Bet kadangi nera prekybinink&#x0173; i&#x0161; kuri&#x0173; b&#x016B;t&#x0173; galima nusipirkti draug&#x0173;, tai draug&#x0173; &#x017E;mones ir neture. Jei nori tureti draug&#x0105;, prisijaukink mane! \r\n...\r\nLik sveikas, tare lape. &#X0161;tai kikia mano paslaptis. Ji labai paprasta: matyti galima tik &#x0161;irdimi. Tai, kas svarbiausia nematoma akimis. \r\n', '', 'Vitautas Kauneckas', '', 1, 58, 'lithuania', 0, 0),
('wen', 'sorabe', '', '', 'Zeznaje&#x0161; jeno&#x017E; w&#x011B;cy, ki&#x017E; sej sklud&#x017A;i&#x0161;, rjeknje li&#x0161;ka. Lud&#x017A;o nimaja hi&#x017E;o &#x010D;as, n&#x011B;&#x0161;to na w&#x011B;domje bra&#x0107;. Kupuja zhotowjene w&#x011B;cy w kupnicach. Ale dokel&#x017E; njeje kupnicow, hd&#x017A;e&#x017A; mó&#x017E;e&#x0161; sej prrre&#x0107;elstwo kupi&#x0107;, nimaja hi&#x017E;o prrre&#x0107;elow. Hdy&#x017E; chce&#x0161; prrre&#x0107;ela, sklud&#x017A; mje! \r\n...\r\nAdej, rjeknje li&#x0161;ka. Tule je moje potajnstwo. Je cyle jednore: Jasnke wid&#x017A;i&#x0161; jeno&#x017E; z wutrobu. To najwa&#x017E;ni&#x0161;e wostanje wo&#x010D;omaj. ', '', 'Róza Domascyna', '', 1, 69, 'Gorlitz, Germany', 0, 0),
('tgl', 'tagalog', 'tagalog', 'tagalog', '\"Maaari lang nating maunawaan ang mga bagay na ating inaamo?, sabi ng alamid. Ang mga tao ay wala ng panahon para matuto. Bumibili sila ng mga bagay na handang gawa sa tindahan. Ngunit, dahil wala namang tindahan ng kaibigan, ang mga tao ay wala ng kaibigan. Kung gusto mo ng kaibigan, amuin mo ako.\r\n?\r\n?Paalam?, sabi ng alamid. Pakinggan mo ang aking sekreto. Napakasimple niya: sa pamamagitan lang ng puso na maaari tayong makakita ng mahusay. Ang pinakamahalaga ay hindi nakikita ng mata.\r\n', '', 'Marjorie Goetschy', '', 1, 40, 'philippines', 0, 0),
('bra', 'portugais brésilien', 'brasilian', 'brasileiro', 'Só conhecemos as coisas que domesticamos, disse a raposa. Os homens já não têm tempo de domesticar nada. Compram nas lojas coisas feitas. Mas como não existe nenhuma loja onde se vendam amigos, os homens já não têm amigos. Se queres um amigo, domestica-me!\r\n?\r\nAdeus, disse a raposa. Dir-lhe-ei um segredo. É muito simples: só se enxerga bem com o coração. O essencial é invisível aos olhos.\r\n', '', 'Prisca Agustoni', '', 1, 66, 'brazil', 0, 0),
('lun', 'lunfardo', '', '', '?Uno solo manya el fato que acamala, bate el zorro. A los chochamu? ya no les da el cuero. Hoy la merca se compra solo en los almacenes. Pero como no existe el comerciante gomía, los tipos se quedan en banda. Si querés un gomía, yugála y dame bola\r\n?\r\n-Adiós, dijo el zorro. Y guarda con mi deschave: solo se juna bien con el bobo. Lo que es bien debute es invisible pa? los faroles.?\r\n', '', 'Fernanda Nussbaum', '', 1, 65, '', 0, 0),
('que', 'quechua', 'quechua', 'runa simi / kichwa', '?Riqsillanchis uywallasqanchista?, atuqqa nispa niykun. Runaqa manaña atinñachu uywayta. Anchaqa ruwasqakunata rantipayan. Masikuna mana rantinakuq chayri, manaña tarikunñachu. Masi masayta munanki chayqa, uywakullaway.\r\n?\r\n ?Ripusaq!?, atuq nin. Pakanataqa risqayki manan sasachus kayta. Anchachus rikukun sunqullawan. Chaninqa ñawinchiswan mana rikukunchu\r\n', '', 'Gladys Achahuanco et Julio Calvo', '', 1, 44, 'peru', 0, 0),
('pur', 'purepecha', 'purepecha', '', '?Imani ambek?uchisi mítek?a enkachi sesi p?interhek?a, isi uantaspti jiuatsi. K?uiripuecha nórekuksi antak?uarhesinti p?interheni ka p?arheni ampe, iámintu ampe piásintiksi. Kóruchka nónani ataranhatasinti pichakuecha (píchpiricha) jimposi k?uiripueha nóteru jatsiati píchpirichani. Ekari uékani jaka ma píchpirini, p?interhetakuarherini jínteni. \r\n?\r\nNipa-ia, arhispti jiuatsi. Arhintikuakakini ma ampe k?oru. Nómintu sani ts?unhapesti: mintsita jimpo kánekua sesi xarharasinti. Sánteru kéri ampakiti ampe no xarharasinti.? \r\n', '', 'Pedro Márquez Joaquín', '', 1, 44, 'Michoacan, Mexique', 0, 0),
('cpf', 'créole ', 'french creole (pidgin)', '', 'Réna a di konsa sèl bagay ou moun kab donté sé sa ou konnin.Leszom pa gen tan anko pou yo apran anyin. Yo achté bagay tou fèt nan min komèsan yo. Min kom machan zanmi pa esisté, lézom pa gin zanmi anko. Si ou vlé youn zanmi, sé pou donté mwen.\r\n?\r\n\r\nAdié Réna a di. Min sékrè pam. Li trè simp: Sé avek kèou ou kab wè pi bien. Bagay pi impotan invisib pou gé.\r\n', '', 'Carl et Yasmina Tippenhauer', '', 1, 42, 'antilles françaises', 0, 0),
('roh-gri', 'romanche des grisons', 'romance (Grisun)', 'rumatsch grisun', '?Ins conuscha mo quai ch?ins ha domestitgà?, ha ditg la vulp. Ils umans n?han betg pli temp d?emprender a conuscher insatge. Els cumpran las chaussas fatgas e finidas tar ils martgadants. Ma cunquai ch?i na dat nagins martgadants d?amis, n?han ils umans betg pli amis. Sche ti vuls in ami, alura domestitgescha mai!?\r\n?\r\n?Adia?, ha ditg la vulp. ?E quai è mes misteri. El è fitg simpel: ins vesa bain mo cun il cor. L?essenzial na ves?ins betg cun ils egls.?\r\n', '', 'Ursulina Monn', '', 1, 51, '', 0, 0),
('roh-srm', 'romanche surmiran', 'romance (surmiran)', 'rumantsch surmiran', 'Ins amprenda a canoscher angal las tgossas tg?ins dumestegia, ò cuntinuo la golp. Igls carstgangs n?on betg ple peda d?amprender a canoscher ensatge. Els compran tot las tgossas bel fatgas e fittadas tigls martgadants. Ma i dat nigns martgadants d?ameis. Parchegl on igls carstgangs er nigns ameis. Sch?te vot en amei? alloura stost am dumestager!\r\n?\r\nAdia, ò raspundia la golp. E chegl è igl mies misteri, el è fitg simpel: angal cugl cor ins pogl veir andretg. Igl essenzial n?è betg visibel pigls îgls.\r\n', '', 'Peder Cadotsch', '', 1, 51, '', 0, 0),
('roh-val', 'romanche vallader', 'romance (vallader)', 'rumantsch vallader', 'I?s cugnuoscha be quai chi s?ha domestichà, ha dit la vuolp. Ils umans nu?s piglian plü peida dad imprender a cognuoscher alch. I cumpran la roba bell?e fatta pro?ls marchadants. Ma cun quai chi nu dà ingüns marchadants dad amis, nun han ils umans plü ingüns amis. Scha tü voust ün ami,s chi prouva da?m domestichar!\r\n?\r\nAdieu, ha dit la vuolp. Quist es meis misteri. El es fich simpel: i?s vezza bain be cul cour. L?essenzial nu?s vessa culs ögls.\r\n', '', 'Jachen Curdin Arquint', '', 1, 51, '', 0, 0),
('roh-put', 'romanche puter', 'romance (puter)', 'rumantsch puter', '', '', '', '', 1, 51, '', 0, 0),
('grn', 'guaraní', 'guaraní', 'avañe\'r&#x1EBD; ', 'Jaikuaa ñamomba?évante, he?i Aguara. Ava nomopa?&#x0169;-véima hembiapo osaite?o hagua, mba?eve ha avavépe. Oñemu jejapopyre ha, ndaipórire mamove angir&#x0169; ojogua hagua, ava ndorekovéo iñir&#x0169;rã. Reipotárõ nde rayhupararã, nde chemomba?eva erã. \r\n...\r\nAháma, he?i Aguara. Che ñe?e ñemíta ndéve, ndahasýi ikuaapy: ñane ñe?ã guivénte jahechapaporã. Hekopetegua tesáèe ndojechaukái. \r\n', '', 'Ruth Mariela Mello-Wolter', '', 1, 12, 'paraguay', 0, 0),
('yor', 'yoruba', 'yoruba', 'yorùbá', 'A kìí mòn ju ohun tí a bá fi k&#xf3;&#x0329;?nim ni kòlòk&#xf2;&#x0329;l&#xf2;&#x0329; wí. Àwo&#x0329;n è níyàn ò ní àsìkò láti wadi nkankan mon. Rírà ni wo&#x0329;n &#x0144; ra ohungbogbo tí w&#xf3;&#x0329;n ti se pari l?&#xf3;&#x0329;d&#xf2;&#x0329; àwo&#x0329;n olówò. Sùgb&#xf3;&#x0329;n ní?gbàtí kòsí ìsò wò &#xf2;&#x0329; ré&#x0329;, awo&#x0329;n èèyàn ò ní oré&#x0329; m&#xf3;&#x0329;n. Tí o bá &#x0144; wá òré&#x0329;, &#x0144; jé&#x0329; máa k&#xf3;&#x0329; mí! \r\n?\r\nÓdì?gbà, ni kòlòk&#xf2;&#x0329;l&#xf2;&#x0329; wí. Èyí ni às&#x0329;írí mi. Èyí tí o ro&#x0329;rùn jù. A o le ríran àrídájú àyààfi pè&#x0329;lú  o&#x0329;kan. N kan àtàtà o see fi ojú lásán rí. \r\n', '', 'Taoufik Owodjobi', '', 1, 30, 'Oshogbo , nigeria', 0, 0),
('bam', 'bambara', 'bambara', 'bamanankan', 'M&#x254;g&#x254; t&#x25b; fosi d&#x254;n fo i ye min kolon, kungo-wulunin ko ten.\r\nKo k?a ñini ka ko d&#x254;n, hadamaden senna ka telin o ma.\r\nF&#x25b;n lab&#x25b;nnenw ka ban, a b&#x25b; o de san u feerey&#x254;r&#x254;.\r\nTerifeerey&#x254;r&#x254; dun t&#x25b; yen, teri t&#x25b; hadamaden na bilen.\r\nN?i b&#x25b; teri dø f&#x25b;, ne kolon!\r\n\r\nA ko K?an b&#x25b;n. Ne ka gundo fil&#x25b; nin ye,\r\nA ka n&#x254;g&#x254;n kojugu: F&#x25b;n b&#x25b; ye ka ñ&#x25b; ni dusukun de ye.\r\nA kolomay&#x254;r&#x254; t&#x25b; ye ni ñ&#x25b; ye. \r\n', '', 'Amadou Tamba DOUMBIA', '', 1, 31, 'mali', 0, 0),
('lad', 'judéo-espagnol', 'ladino', '', '', 'lad.jpg', 'Beatrice Schmid et Angel Berenguer', '', 1, 48, '', 0, 0),
('test 2\r\n', 'test 2', 'oui', 'test', '', '', '', '', 0, 1, '', 0, 0),
('tat', 'tatar', 'tatar', 'tatarça', 'Kulga ijaläshkän äjberne genä belep bula,-dide tölke. \r\nKeshelärneng närsä dä bulsa belergä baskacha vakytlary juk. \r\nAlar kibettän äzer äjberlärne genä satyp alalar. \r\n\r\nä bit äzer duslar satylatyrgan kibetlär juk, shunga kürä keshelärneng duslary da bette.\r\nägär dä üzengä dus buldyrasyng kilsä, mine kulga ijaläshter.\r\n\r\n-Hush, - dide tölke. Menä minem sörem shul:ul bik gadyj:\r\n tik jöräk kenä tieshenchä kürä ala, chönki ing möhime küzdän jasherelgän.\r\n', '', 'Gouldjikhan KACHAEVA', '', 1, 36, 'Tatarstan', 0, 0),
('akk', 'Akkadien', 'akkadian', 'akkadû', '', '', '', '', 0, 60, '', 0, 0),
('heb-old', 'hébreu ancien', 'old hebrew', '', '', '', '', '', 0, 61, '', 0, 0),
('cym', 'gallois', 'welsh', 'cymraeg', '', '', '', '', 0, 55, '', 0, 0),
('uzb', 'ouzbek', '', '', 'Inson nimani qo?lga o?rgatsa oshanigina biladi, dedi tulki. Hozir odamlarning o?rganishga vaqti yo?q. Ular hamma narsaning tayyorini do?kondan sotib olishadi. Lekin do?stlarni sotadigan do?kon yo?qligi uchun, endi odamlarning do?stlari ham yo?q. Agar do?sting\r\nbo?lishini hohlasang unda meni qo?lga o?rgat !\r\n\r\n- Hayr, dedi tulki. Mana mening sirim. U juda oddiy: inson yolg?iz yuragi ila to?g?ri ko?ra oladi. Zotan eng muhim narsalar ko?zdan berkitilgan.', '', 'Narghiza Kuldashova', '', 1, 36, 'uzbekistan', 0, 0),
('geo', 'géorgien', 'georgian', '', '', '', '', '', 0, 34, 'georgia', 0, 0),
('bul', 'bulgare', 'bulgarian', '', '&#1057;&#1072;&#1084;&#1086; &#1085;&#1077;&#1097;&#1072;&#1090;&#1072;, &#1082;&#1086;&#1080;&#1090;&#1086; &#1089;&#1080; &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080;&#1083;, &#1084;&#1086;&#1078;&#1077;&#1096; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1077;&#1077;&#1096; -  &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1061;&#1086;&#1088;&#1072;&#1090;&#1072; &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1074;&#1088;&#1077;&#1084;&#1077; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1103;&#1074;&#1072;&#1090; &#1085;&#1080;&#1097;&#1086;. &#1058;&#1077; &#1082;&#1091;&#1087;&#1091;&#1074;&#1072;&#1090; &#1086;&#1090;  &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080;&#1090;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1080; &#1085;&#1077;&#1097;&#1072;. &#1053;&#1086; &#1090;&#1098;&#1081; &#1082;&#1072;&#1090;&#1086; &#1085;&#1103;&#1084;&#1072; &#1085;&#1080;&#1082;&#1072;&#1082;&#1074;&#1080; &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080; &#1085;&#1072; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;, &#1093;&#1086;&#1088;&#1072;&#1090;&#1072;  &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;. &#1040;&#1082;&#1086; &#1080;&#1089;&#1082;&#1072;&#1096; &#1076;&#1072; &#1089;&#1080; &#1080;&#1084;&#1072;&#1096; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083; - &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080; &#1084;&#1077;!</p>\r\n<p>- &#1057;&#1073;&#1086;&#1075;&#1086;&#1084; - &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1045;&#1090;&#1086; &#1084;&#1086;&#1103;&#1090;&#1072; &#1090;&#1072;&#1081;&#1085;&#1072;. &#1058;&#1103; &#1077;  &#1084;&#1085;&#1086;&#1075;&#1086; &#1087;&#1088;&#1086;&#1089;&#1090;&#1072;: &#1085;&#1072;&#1081;-&#1093;&#1091;&#1073;&#1072;&#1074;&#1086;&#1090;&#1086; &#1089;&#1077; &#1074;&#1080;&#1078;&#1076;&#1072; &#1089;&#1072;&#1084;&#1086; &#1089;&#1098;&#1089; &#1089;&#1098;&#1088;&#1094;&#1077;&#1090;&#1086;. &#1053;&#1072;&#1081;-&#1089;&#1098;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1086;&#1090;&#1086; &#1077;  &#1085;&#1077;&#1074;&#1080;&#1076;&#1080;&#1084;&#1086; &#1079;&#1072; &#1086;&#1095;&#1080;&#1090;&#1077;.', '', '', '', 1, 70, 'bulgaria', 0, 0),
('per', 'persan', 'persian', '', '', '', '', '', 0, 45, '', 0, 0),
('kur', 'kurde', 'kurdish', '', '', '', '', '', 0, 45, '', 0, 0),
('mon', 'mongol', 'mongolian', '', '', '', 'Amgalan Munkhdorj', '', 1, 37, 'mongolia', 0, 0),
('ewo', 'ewondo', 'ewondo', '', '', '', '', '', 0, 33, '', 0, 0),
('lin', 'lingala', 'lingala', 'lingala', '', '', '', '', 0, 29, '', 0, 0),
('som', 'somalien', 'somali', '', '', '', '', '', 0, 28, '', 0, 0),
('bas', 'basáa', 'basa', '', '', '', '', '', 0, 33, '', 0, 0),
('ibo', 'igbo', 'igbo', 'igbo', '', '', '', '', 0, 30, '', 0, 0),
('fan', 'fang', 'fang', '', '', '', '', '', 0, 33, '', 0, 0),
('swa', 'swahili', 'swahili', 'kiswahili', '« Tunajua tu, vitu ambavyo tunaweza kunyanyasa », kasema mbwa mwitu. « Siku hizi, watu hawana wakati wa kujua chochote. Wao hununua bidhaa ambazo tayari zimeandaliwa wachukuzi. Na kwa vile hakuna wachukuzi wa urafiki, wao hawana marafiki. Kama kweli unataka rafiki, mimi hapa, nitupilie mbali upori wangu! \r\n\r\nKwaheri! » , kasema mbwa mwitu, « Siri yangu ni jambo rahisi sana. Ni roho zetu zinatuongoza kutafsiri mambo yale muhimu, ambayo hatuwezi kuona kwa macho yetu makavu. »\r\n', '', 'Lilian Magonya', '', 1, 29, 'kenya', 0, 0),
('amh', 'amharic', 'amharic', 'amharic', '', '', '', '', 0, 62, '', 0, 0),
('luo', 'luo', 'luo', 'dholuo', '', '', '', '', 0, 4, '', 0, 0),
('ceb', 'cebuano', 'cebuano', 'Sinugboanon', '', '', '', '', 0, 40, '', 0, 0),
('vie', 'vietnamien', 'vietnamese', '', '', 'vie.jpg', '', '', 1, 39, 'vietnam', 0, 0),
('kor', 'coréen', 'korean', '', '', '', '', '', 0, 15, 'south korea', 0, 0),
('chi', 'chinois', '', '', '', 'chinois.jpg', '', '', 1, 38, 'china', 0, 0);
INSERT INTO `language_20100105` (`iso`, `french`, `english`, `self`, `text`, `imgtext`, `trad`, `comment`, `actif`, `grp`, `geo`, `geolat`, `geolng`) VALUES
('bos', 'bosniaque', 'bosnian', 'bosanski', '\"Poznavati se mogu samo pripitomljene stvari\", re&#x010D;e lisica. \"Ljudi vi&#x161;e nemaju vremena da upoznaju ne&#x161;to novo. Oni kupuju ve&#x107; napravljene stvari kod prodava&#x010D;a. Ali, po&#x161;to ne postoji osoba koja prodaje prijatelje, ljudi, zapravo, nemaju prijatelja. Ako ho&#x107;e&#x161; da ima&#x161; prijatelja onda pripitomi mene ! »\r\n?Zbogome?, re&#x010D;e lisica. ?Evo je moja tajna. Jednostavna je: dobro se mo&#x017E;e vidjeti samo. Sa srcem. Ono najva&#x017E;nije je nevidlijivo za o&#x010D;i.?\r\n', '', 'Selma Avdic', '', 1, 70, 'bosnia', 0, 0),
('jam', 'créole jamaïcain', '', '', '\"Wi ongle riili kyan nuo bout di ting-dem wa wi tek fi-wi han breik iin\", Faks se. \"Man no ha no taim agein fi nuo bout notn. Tidei, dem jos a bai wa di higla-dem a sel. Bot higla no sel fren, so dem no kiip fren agein. Ef yu waan waan fren, yu mos breik mi iin!\".\r\n\r\n\"Mi gaan\" Faks se \"An sii fi-mi siicrit ya... i wel simpl : wi ongl sii gud wid fi-wi haat. Wa riili mata, yu no tek aiy sii i\"', '', 'Stéphanie Durrleman-Tame', '', 1, 73, 'jamaica', 0, 0),
('cos', 'corse', '', '', 'Cunnosce, si cunnoscenu e cose chì omu ammansa, disse a volpe. L\'omi ùn anu più tempu da cunnosce nulla. Compranu cose fatte è lestre ind\'è i marcanti. Ma ùn ci ne hè marcanti d\'amichi è elli amichi ùn ne anu più. S\'è tù voli un amicu, ammansa à mè.\r\n\r\nAddiu disse a volpe. Eccuti u me sicretu. Hè bellu semplice : vede si vede bè cù u core. I punti di primura l?ochji ùn li ponu vede.\r\n\r\n', '', 'Santu Casta', '', 1, 52, 'corsica', 0, 0),
('nsd', 'bavarois', 'bavarian', 'bayrisch', 'Du kennst ja nua dees, wo\'st amoi zaehmt host, hot da Fux gsogt.\r\nD\'Leit ham ja koa Zeit mea, dass wos kenna leana. De kaffa oiss scho\r\nfeate gmacht bei am Hendla. Awa wei hoit koana mid aam Freind handln\r\nwui, hoot koana an Freind mea. Wann\'st oiso aan Freind hom wuisst,\r\nmuasst mi hoit zaehma.\r\n\r\nPfiad di! hot da Fuchs gsogt. Und des is mei G\'hoamnis - s\'is awa recht\r\noafach: du koo\'st nua mid\'m Heazn guat seng. Oiss, wos wichtig is,\r\nis mid de Augn ned zum segn!\r\n', '', 'Gabi Waltermann', '', 1, 72, 'bavière', 0, 0),
('hin', 'hindi', '', '', '', 'hindi.jpg', 'D & K Mathur / K. Asthana', 'deepak.mathur@mageos.com', 1, 46, 'india', 0, 0),
('tok', 'toki pona', '', '', 'soweli li toki e ni: jan li sona taso e ijo pi pali pona. tenpo ala la jan li ken sona. jan li jo mani e ijo sama lon jan pana mani. jan pana mani pi jan pona li lon ala la jan pona. sina wile e jan pona la o pali pona e mi. soweli li toki e ni: mi tawa. ni li pilin mi li pona sona. jan li lukin pona taso kepeken pilin. oko li lukin ala e lon.', '', 'Mathieu Fraikin', '', 1, 14, '', 0, 0),
('fur', 'frioulan', 'friulan', 'furlan', '\"A cognossin nome chel ch\'a àn dumiesteât\", e dîs la bolp. - I oms a no àn plui timp di cognossi nuie. A comprin tai negozis cjossis za prontis. Ma mediant che a no esistin marcjadants di amîs, i oms a no àn plui amîs. Se tu vuelis un amì, alore dumiesteimi.\r\n\r\n\"Cungjò\", e dîs la bolp. \"E ve ca il gno segret. Al è une vore sempliç: a viodin ben nome cul cûr. L\'essenziâl al è invisibil ai voi.\"', '', 'Mathieu Fraikin', '', 1, 51, 'udine', 0, 0),
('wln', 'wallon', 'Walloon', 'walon', 'On ni conèt ki les sacwès k\' on atraite, dijha li rnåd. Les omes n\' ont pus pont d\' timps po rén conèche. Is achetenut des sacwès totès fwaites amon les mårtchands. Mins come gn\' a pont di mårtchands d\' amis, les omes n\' ont pus pont d\' amis. Si vos vloz on ami, atraitîz-mi !\r\n\r\nA Diè, dijha li rnåd. Voci mi sicret. Il est foirt simpe : on ni voet bén k\' avou si keur. Li principal est-invisibe po les îs.', '', 'Maisse Arsouye', '', 1, 50, 'namur', 0, 0),
('kot', 'kotava', '', '', 'Va tulegovitan plek yo anton grupet, bresitol kalir. Ayik ta kona grupera mea\r\nugaldir. Dene dolekik va ixam varon iayan plek yo luster. Vexe oye da me tir\r\ndolekik va nik acum ayik va nik mea dir. Ede va nik kuranil, va jin tulegovital\r\n!\r\n\r\nDone, bresitol kalir. Batse jinafa birga. Opelapafa : kan takra anton winhit.\r\nBenele kan iteem tir merowine.', '', 'Philippe G.', '', 1, 14, '', 0, 0),
('occ-oulx', 'occitan d\'Oulx', '', '', 'Nou couneison mac lâ choza quë nz\'avon aprivazà, à dí \'l reinâ. Louz omme i l\'on pâ mai \'l ton ëd couneissë ron. I l\'achëtton da lou marchan \'d choza jó feita. Ma, pisquë la lh\'à pâ \'d marchan d\'amisse, louz omme i l\'on pâ mai d\'amisse. S\'ou vouré in amiss, aprivazëmmë!\r\nAdieu, ou lh\'à dí \'l reinâ. Voualà moun sëcré. Ou l\'i fran sinplë: la s\'vé bion mac bou \'l ceur. L\'essansièl, ou l\'i invizibblë për louz iooû. ', '', 'Giovanna Jayme', 'from nikura babel, Prince dans le patois occitan d\'Oulx (Italie, près de Briançon), écrit en graphie \"Escolo dóou Po\".', 1, 49, 'oulx', 0, 0),
('occ-via', 'occitan viaran', '', '', 'Nou counishën puè que la chòuza que nou z-avën aprivouazè, o di l\'rirar. Lou z-òme i z-an pa mai l\'tën d\'counètre pa ren. I z-achatan òu marchan dë chòuza jo touta facha. Mè, coumo ou l\'i o pa d\'marchan d\'ami, lou z-òme i z-an pa mai d\'ami. S\'tu voua z-un ami, aprivouaza-më!\r\nAr\'vèire, ou l\'o di l\'rirar. \'Co l\'i moun sëcrë. Ou l\'i bën simple: la s\'vèi bën qu\'ëmbë l\'cor. L\'eshënshiè, ou l\'i invizible pèr lou z-uòu. ', '', 'Nikura', 'from babel, dans le patois occitan de mon village (patois viaran, langue en train de mourir), en Briançonnais, mais côté français, plus ou moins avec la même graphie mais allégée. (que occ-oul)', 1, 49, '', 0, 0),
('occ-gav', 'gavot', '', 'Òm coneisse que las chausas qu\'òm aprivèisa, dissèc lo reinart. Los òmes an mai lo temps de pas ren coneisser. Achaton de chausas totas fachas ves los marchands. Mas bòrd qu\'i a pas de marchands d\'amics, los òmes an pas mai d\'amics. Se vòles un amic, apri', '', '', 'Nikura (Babel)', 'En occitan alpin (ou gavot) de la zone de Gap, cela donnerait ceci. La graphie choisie est celle de l\'occitan standard cette fois-ci, en essayant de retranscrire un langage soutenu.', 1, 49, 'gap, france', 0, 0),
('kir', 'kirghize', 'Kirghiz', '', '<pre>&#1041;&#1080;&#1088;&#1257;&#1085;&#1199; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1089;&#1257;&#1187;, &#1086;&#1096;&#1086;&#1085;&#1091; &#1075;&#1072;&#1085;&#1072; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257; &#1084;&#1199;&#1084;&#1199;&#1082;&#1199;&#1085; - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;\r\n&#1040;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1072; &#1073;&#1080;&#1088;&#1085;&#1077;&#1088;&#1089;&#1077;&#1085;&#1080; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257;, &#1091;&#1073;&#1072;&#1082;&#1099;&#1090;&#1072;&#1088;&#1099; &#1078;&#1086;&#1082;. &#1040;&#1083;&#1072;&#1088; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1085; &#1076;&#1072;&#1103;&#1088;\r\n&#1073;&#1091;&#1102;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1099;&#1096;&#1072;&#1090;. &#1041;&#1080;&#1088;&#1086;&#1082;, &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1076;&#1091; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1091;&#1091;&#1075;&#1072; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1088;\r\n&#1078;&#1086;&#1082; &#1075;&#1086;, &#1072;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099;&#1085; &#1076;&#1072; &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1091; &#1078;&#1086;&#1082; &#1073;&#1086;&#1083;&#1091;&#1087; &#1082;&#1072;&#1083;&#1076;&#1099;. &#1069;&#1075;&#1077;&#1088;&#1076;&#1077; &#1089;&#1077;&#1085;&#1076;&#1077; &#1076;&#1086;&#1089;\r\n&#1073;&#1086;&#1083;&#1075;&#1086;&#1085;&#1076;&#1091; &#1082;&#1072;&#1072;&#1083;&#1072;&#1089;&#1072;&#1187;, &#1089;&#1077;&#1085; &#1084;&#1077;&#1085;&#1080; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1199;&#1087; &#1072;&#1083;!<br>\r\n- &#1050;&#1086;&#1096;, - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;. - &#1052;&#1099;&#1085;&#1072; &#1084;&#1077;&#1085;&#1080;&#1085; &#1089;&#1099;&#1088;&#1099;&#1084;. &#1040;&#1083; &#1072;&#1073;&#1076;&#1072;&#1085; &#1078;&#1257;&#1085;&#1257;&#1082;&#1257;&#1081;:\r\n&#1069;&#1187; &#1084;&#1072;&#1072;&#1085;&#1080;&#1083;&#1199;&#1199; &#1082;&#1257;&#1079;&#1076;&#1257;&#1085; &#1078;&#1199;&#1084;&#1199;&#1083;&#1199;&#1199;.', '', '', '', 1, 36, 'Kirghizistan', 0, 0),
('tur', 'turc', 'turkish', 'türkçe', '&#X0130;nsan ancak evcille&#x015F;tirirse anlar, dedi tilki. &#X0130;nsanlar&#x0131;n art&#x0131;k anlamaya zamanlar&#x0131; yok. Dükkânlardan her istediklerini sat&#x0131;n al&#x0131;yorlar. Ama dostluk sta&#x0131;lan bir dükkân olmad&#x0131;&#x011F;&#x0131; i&#x00E7;in dostlar&#x0131; yok art&#x0131;k. E&#x011F;er dost istiyorsan, beni evcille&#x015F;tir !\r\n\r\nHos&#x00E7;akal, dedi tilki. &#X0130;&#x015F;te sana dir s&#x0131;r, &#x00E7;ok basit bir &#x015F;ey : &#x0130;nsan yaln&#x0131;z  yüre&#x011F;iyle do&#x011F;ruyu görebilir. As&#x0131;l görülmesi gerekeni gözler göremez.', '', 'Gonca Celik', '', 1, 36, 'turkey', 0, 0),
('est', 'estonien', 'estonian', 'eesti', 'Väike prints\r\n\r\n\"Tuntakse ainult neid asju, mida taltsutatakse, \" ütles rebane.\r\nInimestel pole enam aega midagi tundma õppida. Nad ostavad kõiki asju valmis kujul kaupmeeste käest. Ja kuna ei ole kaupmehi, kes sõpru müüksid, siis polegi inimestel enam sõpru. Kui tahad endale sõpra, siis taltsuta mind !\r\n\r\n\" Jumalaga, \" ütles rebane. \" Siin on minu saladus. See on väga lithne : ainult südamega näed hästi. Kõige tähtsam on silmale nähtamatu. \"\r\n', '', 'Ott Ojamaa', '', 1, 63, 'estonia', 0, 0),
('gre', 'grec', 'greek', 'E&lambda;&lambda;&nu;&rho;&xi;&kappa;&alpha;', '&Delta;&epsilon;  &gamma;&nu;&omega;&rho;&#943;&zeta;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf; &pi;&alpha;&rho;&#940; &#972;,&tau;&iota; &epsilon;&xi;&eta;&mu;&epsilon;&rho;&#974;&nu;&epsilon;&iota;, &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &epsilon;&upsilon;&kappa;&alpha;&iota;&rho;&omicron;&#973;&nu;  &pi;&iota;&alpha; &nu;&alpha; &mu;&#940;&theta;&omicron;&upsilon;&nu; &tau;&#943;&pi;&omicron;&tau;&epsilon;. &Tau;&rsquo;&alpha;&gamma;&omicron;&rho;&#940;&zeta;&omicron;&upsilon;&nu; &#972;&lambda;&alpha; &#941;&tau;&omicron;&iota;&mu;&alpha; &alpha;&pi;&#972; &tau;&omicron;&upsilon;&sigmaf; &epsilon;&mu;&pi;&#972;&rho;&omicron;&upsilon;&sigmaf;. &Kappa;&alpha;&theta;&#974;&sigmaf; &#972;&mu;&omega;&sigmaf; &delta;&epsilon;&nu;  &upsilon;&pi;&#940;&rho;&chi;&omicron;&upsilon;&nu; &delta;&iota;&#972;&lambda;&omicron;&upsilon; &#941;&mu;&pi;&omicron;&rho;&omicron;&iota; &phi;&#943;&lambda;&omega;&nu;, &omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &#941;&chi;&omicron;&upsilon;&nu; &pi;&iota;&alpha; &phi;&#943;&lambda;&omicron;&upsilon;&sigmaf;. &Alpha;&nu; &theta;&#941;&lambda;&epsilon;&iota;&sigmaf; &#941;&nu;&alpha;  &phi;&#943;&lambda;&omicron;, &epsilon;&xi;&eta;&mu;&#941;&rho;&omega;&sigma;&#941; &mu;&epsilon; !\r\n(...)\r\n&#904;&chi;&epsilon;  &gamma;&epsilon;&iota;&alpha;! &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&rho;&#943;&sigma;&tau;&epsilon; &tau;&omicron; &mu;&upsilon;&sigma;&tau;&iota;&kappa;&#972; &mu;&omicron;&upsilon;. &Epsilon;&#943;&nu;&alpha;&iota; &pi;&omicron;&lambda;&#973; &alpha;&pi;&lambda;&#972; : &delta;&epsilon; &beta;&lambda;&#941;&pi;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf;  &kappa;&alpha;&lambda;&#940; &pi;&alpha;&rho;&#940; &mu;&omicron;&nu;&#940;&chi;&alpha; &mu;&epsilon; &tau;&eta;&nu; &kappa;&alpha;&rho;&delta;&iota;&#940;. &Eta; &omicron;&upsilon;&sigma;&#943;&alpha; &epsilon;&#943;&nu;&alpha;&iota; &alpha;&#972;&rho;&alpha;&tau;&eta; &gamma;&iota;&alpha; &tau;&alpha; &mu;&#940;&tau;&iota;&alpha;.', '', 'Michel Lassithiotakis et Anastasia Lazaridis', '', 1, 47, 'greece', 0, 0),
('vls', 'flamand occidental', 'West Flemish', 'Vlaemsch/Vlaams', 'Ze kenn oljinne die dingn woamee da ze echt vertrouwd zin, zegt den vos. De minsn eyn gin tid mji om echt te zien. Ze kwopn dingn kant en kloar bi nen handeloare. Mo verkwopers van moaten, da bestoa nie, en dus eyn de minsn gin moaten mji. Aj ne moat wilt, moej mi temn!...\r\nSalu, zegt den vos, Ier is min geheim. T\'i vrji jinvoudig: Goe zien kundje oljinne me jen herte. Et weznlukke is onzichtboar vo jun wogn.\r\n\r\n', '', 'Sam Huyzentruyt', 'vls=iso3 gem=iso', 1, 68, 'gent', 0, 0),
('urd', 'ourdou', 'Urdu', '', '', 'urdu.gif', 'Zainab Ahmed', '', 1, 46, 'pakistan', 0, 0),
('wuu-shangai', 'shangaïen', 'Shanghaines', 'zanhererau', '', 'shangai.jpg', 'Enchao Lu', 'iso3=wuu iso2=chi / zho', 1, 38, 'shangai', 0, 0),
('lao', 'laotien', 'lao', '', '', 'laotien.gif', '', 'V. Siriyasack siriyas0@etu.unige.ch', 1, 15, 'laos', 0, 0),
('kab', 'kabyle', 'kabyle', 'taqbaylit', 'Ye nnad izirthi, ne tsakey kan ayen swayes in wulef. Imdhanen ur san ara y wekth i thmusni. Tsarend kan ayen i hgan siheraren. Sgwaken n qethwan iheraren i znuzen thadukli, imdhanen ur san ara imdukwal. Ma the vgher amdakwel, alesiyé.\r\nYe nnad izirthi qim dhi le hna. Atsan serya inu, dhan i sehyen. Tha mughli nel kayen tseqed sgul. Ey ni lan dhe ssah its wafer af allen\r\n', '', '', 'khlifa ouidr houidir@hotmail.com de la région de Beni-Douala, Tizi Ouzou :', 1, 25, 'Kabylie', 0, 0),
('nan', 'min de Taiwan', 'Taiwan Min', '', '', '', '', '', 1, 38, 'taiwan', 0, 0),
('khm', 'khmer', '', '', '', 'khmer.jpg', 'Zamin Saxer', '', 1, 39, 'Cambodge', 0, 0),
('isl', 'islandais', 'icelandic', '', 'Maður þekkir ekki annað en það, sem maður temur, sagði refurinn. Mennirnir hafa ekki lengur tíma til að þekkja neitt. Þeir kaupa tilbúna hluti hjá kaupmanninum. En þar sem ekki eru til kaupmenn, sem versla með vini, eiga menn ekki lengur neina vini. Ef þú vilt eiga vin, Þá temdu mig!\r\n\r\nVertu sæll, sagði refurinn. Hér er leyndarmálið mitt. Það er mjög einfalt: maður sér ekki vel nema með hjartanu. Það mikilvægasta er ósýnilegt augunum.\r\n', '', 'Þórarinn Björnsson', 'envoyé par cjorg@infomaniak.ch', 1, 57, 'iceland', 0, 0),
('aze', 'azeri', 'Azerbaijani', 'Az?rbaycan', '', 'azeri.jpg', '', 'from patoche', 1, 36, 'azerbaijan', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(27) DEFAULT NULL,
  `latitude` decimal(13,11) DEFAULT NULL,
  `longitude` decimal(14,12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `code`, `name`, `latitude`, `longitude`) VALUES
(1, 'BELBRU', 'Brussels', '50.83605638070', '4.372253824740'),
(2, 'BELWBR', 'Brabant Wallon', '50.66904811640', '4.584157362830'),
(3, 'BELWHT', 'Hainaut', '50.46939499610', '3.960189454930'),
(4, 'BELWLG', 'Liège', '50.52073347420', '5.738373752330'),
(5, 'BELWLX', 'Luxembourg', '49.96109599590', '5.513541064330'),
(6, 'BELWNA', 'Namur', '50.25497523780', '4.852969096300'),
(7, 'CHEBE', 'Bern', '47.20305635840', '7.183819933230'),
(8, 'CHEFR', 'Fribourg', '46.69383818370', '7.019162725130'),
(9, 'CHEGE', 'Genève', '46.22026439230', '6.133017386590'),
(10, 'CHEJU', 'Jura', '47.35079366820', '7.156818016350'),
(11, 'CHENE', 'Neuchâtel', '46.99537776840', '6.780270264230'),
(12, 'CHEVD', 'Vaud', '46.56955744530', '6.656673760540'),
(13, 'CHEVS', 'Valais', '46.13433395890', '7.266013094180'),
(14, 'FRA01', 'Ain', '46.09951475140', '5.349048926010'),
(15, 'FRA02', 'Aisne', '49.55929057650', '3.558201945240'),
(16, 'FRA03', 'Allier', '46.39373887490', '3.187776270050'),
(17, 'FRA04', 'Alpes-de-Haute-Provence', '44.10597606050', '6.243784123290'),
(18, 'FRA05', 'Hautes-Alpes', '44.66341822760', '6.262604539260'),
(19, 'FRA06', 'Alpes-Maritimes', '43.93705820480', '7.115803456970'),
(20, 'FRA07', 'Ardèche', '44.75202192020', '4.425101114500'),
(21, 'FRA08', 'Ardennes', '49.61570281950', '4.640686491700'),
(22, 'FRA09', 'Ariège', '42.92090579090', '1.503734154670'),
(23, 'FRA10', 'Aube', '48.30458780640', '4.161501745460'),
(24, 'FRA11', 'Aude', '43.10330548750', '2.413688758250'),
(25, 'FRA12', 'Aveyron', '44.28025817600', '2.679956693180'),
(26, 'FRA13', 'Bouches-du-Rhône', '43.54293723670', '5.086322136030'),
(27, 'FRA14', 'Calvados', '49.09970068810', '-0.363389115927'),
(28, 'FRA15', 'Cantal', '45.05103188210', '2.668319237420'),
(29, 'FRA16', 'Charente', '45.71789611300', '0.201681456705'),
(30, 'FRA17', 'Charente-Maritime', '45.78035592210', '-0.674129825552'),
(31, 'FRA18', 'Cher', '47.06456464500', '2.490879830620'),
(32, 'FRA19', 'Corrèze', '45.35692947640', '1.877301936910'),
(33, 'FRA21', 'Côte-d\'Or', '47.42482926070', '4.772367562320'),
(34, 'FRA22', 'Côtes-d\'Armor', '48.44169618580', '-2.864312744870'),
(35, 'FRA23', 'Creuse', '46.09019838260', '2.018734627070'),
(36, 'FRA24', 'Dordogne', '45.10398207290', '0.741880772180'),
(37, 'FRA25', 'Doubs', '47.16552256900', '6.361772369850'),
(38, 'FRA26', 'Drôme', '44.68396582180', '5.168156927680'),
(39, 'FRA27', 'Eure', '49.11326180180', '0.996643324269'),
(40, 'FRA28', 'Eure-et-Loir', '48.38737026200', '1.369951861080'),
(41, 'FRA29', 'Finistère', '48.26126454340', '-4.060324599910'),
(42, 'FRA2A', 'Corse-du-Sud', '41.86321372770', '8.988352092640'),
(43, 'FRA2B', 'Haute-Corse', '42.39429218530', '9.206158594680'),
(44, 'FRA30', 'Gard', '43.99372302600', '4.179845127120'),
(45, 'FRA31', 'Haute-Garonne', '43.35818290930', '1.172103791560'),
(46, 'FRA32', 'Gers', '43.69289701730', '0.453282252172'),
(47, 'FRA33', 'Gironde', '44.82268542480', '-0.573711384416'),
(48, 'FRA34', 'Hérault', '43.57978386280', '3.367648972620'),
(49, 'FRA35', 'Ille-et-Vilaine', '48.15484470250', '-1.638094053360'),
(50, 'FRA36', 'Indre', '46.77774849920', '1.575608941600'),
(51, 'FRA37', 'Indre-et-Loire', '47.25803231770', '0.691530277576'),
(52, 'FRA38', 'Isère', '45.26303028450', '5.576142743900'),
(53, 'FRA39', 'Jura', '46.72833994570', '5.697278743410'),
(54, 'FRA40', 'Landes', '43.96543808440', '-0.782972988223'),
(55, 'FRA41', 'Loir-et-Cher', '47.61669212650', '1.429696582610'),
(56, 'FRA42', 'Loire', '45.72712975710', '4.166027716660'),
(57, 'FRA43', 'Haute-Loire', '45.12824936860', '3.806317518770'),
(58, 'FRA44', 'Loire-Atlantique', '47.36093533770', '-1.684528460940'),
(59, 'FRA45', 'Loiret', '47.91192475430', '2.344158360520'),
(60, 'FRA46', 'Lot', '44.62353167980', '1.605775538000'),
(61, 'FRA47', 'Lot-et-Garonne', '44.36811006570', '0.462710580398'),
(62, 'FRA48', 'Lozère', '44.51722070400', '3.500155556500'),
(63, 'FRA49', 'Maine-et-Loire', '47.39097885690', '-0.564072162855'),
(64, 'FRA50', 'Manche', '49.07884874430', '-1.328391621790'),
(65, 'FRA51', 'Marne', '48.94912391050', '4.238568280460'),
(66, 'FRA52', 'Haute-Marne', '48.10958911990', '5.226510675410'),
(67, 'FRA53', 'Mayenne', '48.14671165890', '-0.658159700121'),
(68, 'FRA54', 'Meurthe-et-Moselle', '48.78714958540', '6.165101264420'),
(69, 'FRA55', 'Meuse', '48.99010276520', '5.382193405710'),
(70, 'FRA56', 'Morbihan', '47.84131065090', '-2.812010530340'),
(71, 'FRA57', 'Moselle', '49.03725265810', '6.663517689980'),
(72, 'FRA58', 'Nièvre', '47.11535637910', '3.504350794240'),
(73, 'FRA59', 'Nord', '50.44611831150', '3.222417630080'),
(74, 'FRA60', 'Oise', '49.40992672460', '2.425420928980'),
(75, 'FRA61', 'Orne', '48.62343230620', '0.128792551144'),
(76, 'FRA62', 'Pas-de-Calais', '50.49362722850', '2.288181719510'),
(77, 'FRA63', 'Puy-de-Dôme', '45.72573965620', '3.141232460630'),
(78, 'FRA64', 'Pyrénées-Atlantiques', '43.25645775640', '-0.760880375856'),
(79, 'FRA65', 'Hautes-Pyrénées', '43.05300149390', '0.163466157536'),
(80, 'FRA66', 'Pyrénées-Orientales', '42.59963714530', '2.521296572580'),
(81, 'FRA67', 'Bas-Rhin', '48.67066007790', '7.551621592770'),
(82, 'FRA68', 'Haut-Rhin', '47.85924144030', '7.273529919730'),
(83, 'FRA69', 'Rhône', '45.87033979530', '4.641350583680'),
(84, 'FRA70', 'Haute-Saône', '47.64127214900', '6.085907340800'),
(85, 'FRA71', 'Saône-et-Loire', '46.64465298500', '4.541641050190'),
(86, 'FRA72', 'Sarthe', '47.99430979190', '0.222481502921'),
(87, 'FRA73', 'Savoie', '45.47730857790', '6.442954394470'),
(88, 'FRA74', 'Haute-Savoie', '46.05167430890', '6.432694393690'),
(89, 'FRA75', 'Paris', '48.85604734580', '2.343555879720'),
(90, 'FRA76', 'Seine-Maritime', '49.65474270070', '1.024588996930'),
(91, 'FRA77', 'Seine-et-Marne', '48.62631736580', '2.932800959260'),
(92, 'FRA78', 'Yvelines', '48.81479104690', '1.839614017910'),
(93, 'FRA79', 'Deux-Sèvres', '46.55517307500', '-0.317212237352'),
(94, 'FRA80', 'Somme', '49.95809539680', '2.277565632720'),
(95, 'FRA81', 'Tarn', '43.78543705840', '2.166263523280'),
(96, 'FRA82', 'Tarn-et-Garonne', '44.08520239160', '1.281745071290'),
(97, 'FRA83', 'Var', '43.44143080480', '6.244000344980'),
(98, 'FRA84', 'Vaucluse', '44.00693447880', '5.177975951810'),
(99, 'FRA85', 'Vendée', '46.67503561990', '-1.297248961440'),
(100, 'FRA86', 'Vienne', '46.56403274140', '0.459663512667'),
(101, 'FRA87', 'Haute-Vienne', '45.89149641360', '1.234972684600'),
(102, 'FRA88', 'Vosges', '48.19678203160', '6.380035246850'),
(103, 'FRA89', 'Yonne', '47.84004100330', '3.564295569070'),
(104, 'FRA90', 'Territoire-de-Belfort', '47.63126627930', '6.928581490950'),
(105, 'FRA91', 'Essonne', '48.52254418050', '2.243494683220'),
(106, 'FRA92', 'Hauts-de-Seine', '48.84452146760', '2.241635620120'),
(107, 'FRA93', 'Seine-St-Denis', '48.91863185580', '2.477001787480'),
(108, 'FRA94', 'Val-de-Marne', '48.77934328710', '2.466056680790'),
(109, 'FRA95', 'Val-d\'Oise', '49.08264508620', '2.130710098360');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mail` text NOT NULL,
  `age` int(11) NOT NULL DEFAULT '0',
  `sexe` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`id`, `name`, `mail`, `age`, `sexe`, `location_id`) VALUES
(1, 'Jean-Philippe Goldman', 'jeanphilippegoldman@gmail.com', 45, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

CREATE TABLE `participation` (
  `id` int(11) NOT NULL,
  `quizz_id` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `participation`
--

INSERT INTO `participation` (`id`, `quizz_id`, `participant_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `idipa` char(3) NOT NULL DEFAULT '',
  `unicode` varchar(20) NOT NULL DEFAULT '',
  `xsampa` varchar(10) NOT NULL DEFAULT '',
  `cv` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`idipa`, `unicode`, `xsampa`, `cv`) VALUES
('101', '70', 'p', 'c'),
('102', '62', 'b', 'c'),
('103', '74', 't', 'c'),
('104', '64', 'd', 'c'),
('105', '288', 't`', 'c'),
('106', '256', 'd`', 'c'),
('107', '63', 'c', 'c'),
('108', '25F', 'J\\', 'c'),
('109', '6b', 'k', 'c'),
('110', '67', 'g', 'c'),
('111', '71', 'q', 'c'),
('112', '262', 'G\\', 'c'),
('113', '294', '?', 'c'),
('114', '6d', 'm', 'c'),
('115', '271', 'F', 'c'),
('116', '6e', 'n', 'c'),
('117', '273', 'n`', 'c'),
('118', '272', 'J', 'c'),
('119', '14b', 'N', 'c'),
('120', '274', 'N\\', 'c'),
('121', '299', 'B\\', 'c'),
('122', '72', 'r', 'c'),
('123', '280', 'R\\', 'c'),
('184', '', '', 'c'),
('124', '27E', '4', 'c'),
('125', '27D', 'r`', 'c'),
('126', '278', 'p\\', 'c'),
('127', '3b2', 'B', 'c'),
('128', '66', 'f', 'c'),
('129', '76', 'v', 'c'),
('130', '3b8', 'T', 'c'),
('131', 'f0', 'D', 'c'),
('132', '73', 's', 'c'),
('133', '7a', 'z', 'c'),
('134', '283', 'S', 'c'),
('135', '292', 'Z', 'c'),
('136', '282', 's`', 'c'),
('137', '290', 'z`', 'c'),
('138', 'e7', 'C', 'c'),
('139', '29d', 'j\\', 'c'),
('140', '78', 'x', 'c'),
('141', '263', 'G', 'c'),
('142', '3c7', 'X', 'c'),
('143', '281', 'R', 'c'),
('144', '127', 'X\\', 'c'),
('145', '295', '?', 'c'),
('146', '68', 'h', 'c'),
('147', '266', 'h\\', 'c'),
('148', '26c', 'K', 'c'),
('149', '26e', 'K\\', 'c'),
('150', '28b', 'P', 'c'),
('151', '279', 'r\\', 'c'),
('152', '27b', 'r\\`', 'c'),
('153', '6a', 'j', 's'),
('154', '270', 'M\\', 'c'),
('155', '6c', 'l', 'c'),
('156', '26d', 'l`', 'c'),
('157', '28e', 'L', 'c'),
('158', '29f', 'L\\', 'c'),
('301', '69', 'i', 'v'),
('309', '79', 'y', 'v'),
('317', '268', '1', 'v'),
('318', '289', '}', 'v'),
('316', '26F', 'M', 'v'),
('308', '75', 'u', 'v'),
('302', '65', 'e', 'v'),
('310', 'F8', '2', 'v'),
('397', '258', '@\\', 'v'),
('170', '77', 'w', 's'),
('323', '275', '8', 'v'),
('315', '264', '7', 'v'),
('307', '6F', 'o', 'v'),
('303', '25B', 'E', 'v'),
('311', '153', '9', 'v'),
('326', '25C', '3', 'v'),
('395', '25E', '3', 'v'),
('314', '28C', 'V', 'v'),
('306', '254', 'O', 'v'),
('304', '61', 'a', 'v'),
('312', '276', '&', 'v'),
('305', '251', 'A', 'v'),
('313', '252', 'Q', 'v'),
('319', '26A', 'I', 'v'),
('320', '28F', 'Y', 'v'),
('321', '28A', 'U', 'v'),
('322', '259', '@', 'v'),
('325', 'E6', '{', 'v'),
('324', '250', '6', 'v'),
('171', '265', 'H', 's'),
('601', '2a3', 'dz', 'a'),
('602', '2a4', 'dZ', 'a'),
('604', '2a6', 'ts', 'a'),
('605', '207', 'tS', 'a'),
('606', '', 'pf', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `phonlang`
--

CREATE TABLE `phonlang` (
  `idipa` varchar(10) NOT NULL DEFAULT '',
  `isolang` varchar(10) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonlang`
--

INSERT INTO `phonlang` (`idipa`, `isolang`, `comment`) VALUES
('101', 'fra', ''),
('102', 'fra', ''),
('103', 'fra', ''),
('104', 'fra', ''),
('128', 'fra', ''),
('129', 'fra', ''),
('132', 'fra', ''),
('133', 'fra', ''),
('134', 'fra', ''),
('135', 'fra', ''),
('114', 'fra', ''),
('116', 'fra', ''),
('118', 'fra', ''),
('119', 'fra', ''),
('143', 'fra', ''),
('153', 'fra', ''),
('155', 'fra', ''),
('301', 'fra', ''),
('309', 'fra', ''),
('308', 'fra', ''),
('302', 'fra', ''),
('310', 'fra', ''),
('303', 'fra', ''),
('311', 'fra', ''),
('306', 'fra', ''),
('307', 'fra', ''),
('305', 'fra', ''),
('322', 'fra', ''),
('304', 'fra', ''),
('101', 'eng', ''),
('102', 'eng', ''),
('103', 'eng', ''),
('104', 'eng', ''),
('109', 'eng', ''),
('110', 'eng', ''),
('128', 'eng', ''),
('129', 'eng', ''),
('130', 'eng', ''),
('131', 'eng', ''),
('132', 'eng', ''),
('133', 'eng', ''),
('134', 'eng', ''),
('135', 'eng', ''),
('146', 'eng', ''),
('114', 'eng', ''),
('116', 'eng', ''),
('151', 'eng', ''),
('119', 'eng', ''),
('155', 'eng', ''),
('153', 'eng', ''),
('319', 'eng', ''),
('302', 'eng', ''),
('325', 'eng', ''),
('313', 'eng', ''),
('314', 'eng', ''),
('321', 'eng', ''),
('322', 'eng', ''),
('140', 'eng', ''),
('113', 'eng', ''),
('170', 'fra', ''),
('171', 'fra', ''),
('170', 'eng', ''),
('602', 'eng', ''),
('605', 'eng', ''),
('326', 'eng', ''),
('305', 'eng', ''),
('306', 'eng', ''),
('308', 'eng', ''),
('301', 'eng', ''),
('102', 'spa', ''),
('101', 'spa', ''),
('103', 'spa', ''),
('104', 'spa', ''),
('109', 'spa', ''),
('110', 'spa', ''),
('605', 'spa', ''),
('128', 'spa', ''),
('114', 'jam', ''),
('131', 'spa', ''),
('132', 'spa', ''),
('140', 'spa', ''),
('141', 'spa', ''),
('127', 'spa', ''),
('155', 'spa', ''),
('122', 'spa', ''),
('157', 'spa', ''),
('153', 'spa', ''),
('170', 'spa', ''),
('301', 'spa', ''),
('302', 'spa', ''),
('304', 'spa', ''),
('307', 'spa', ''),
('308', 'spa', ''),
('139', 'spa', ''),
('101', 'ita', ''),
('102', 'ita', ''),
('103', 'ita', ''),
('104', 'ita', ''),
('109', 'ita', ''),
('110', 'ita', ''),
('118', 'ita', ''),
('116', 'ita', ''),
('114', 'ita', ''),
('128', 'ita', ''),
('129', 'ita', ''),
('132', 'ita', ''),
('134', 'ita', ''),
('133', 'ita', ''),
('135', 'ita', ''),
('605', 'ita', ''),
('602', 'ita', ''),
('122', 'ita', ''),
('155', 'ita', ''),
('153', 'ita', ''),
('170', 'ita', ''),
('157', 'ita', ''),
('604', 'ita', ''),
('601', 'ita', ''),
('101', 'deu', ''),
('102', 'deu', ''),
('103', 'deu', ''),
('104', 'deu', ''),
('109', 'deu', ''),
('110', 'deu', ''),
('113', 'deu', ''),
('604', 'deu', ''),
('605', 'deu', ''),
('602', 'deu', ''),
('128', 'deu', ''),
('129', 'deu', ''),
('132', 'deu', ''),
('133', 'deu', ''),
('134', 'deu', ''),
('135', 'deu', ''),
('138', 'deu', ''),
('153', 'deu', ''),
('140', 'deu', ''),
('146', 'deu', ''),
('301', 'ita', ''),
('116', 'deu', ''),
('120', 'deu', ''),
('155', 'deu', ''),
('143', 'deu', ''),
('301', 'deu', ''),
('302', 'deu', ''),
('303', 'deu', ''),
('304', 'deu', ''),
('307', 'deu', ''),
('308', 'deu', ''),
('309', 'deu', ''),
('310', 'deu', ''),
('324', 'deu', ''),
('105', 'fra', ''),
('606', 'deu', ''),
('302', 'ita', ''),
('303', 'ita', ''),
('304', 'ita', ''),
('306', 'ita', ''),
('307', 'ita', ''),
('308', 'ita', ''),
('101', 'ron', ''),
('102', 'ron', ''),
('103', 'ron', ''),
('104', 'ron', ''),
('109', 'ron', ''),
('110', 'ron', ''),
('114', 'ron', ''),
('116', 'ron', ''),
('122', 'ron', ''),
('604', 'ron', ''),
('134', 'ron', ''),
('132', 'ron', ''),
('133', 'ron', ''),
('128', 'ron', ''),
('129', 'ron', ''),
('155', 'ron', ''),
('301', 'ron', ''),
('302', 'ron', ''),
('304', 'ron', ''),
('307', 'ron', ''),
('308', 'ron', ''),
('322', 'ron', ''),
('317', 'ron', ''),
('153', 'ron', ''),
('170', 'ron', ''),
('605', 'ron', ''),
('135', 'ron', ''),
('602', 'ron', ''),
('146', 'ron', ''),
('109', 'fra', ''),
('110', 'fra', ''),
('101', 'jam', ''),
('102', 'jam', ''),
('103', 'jam', ''),
('104', 'jam', ''),
('109', 'jam', ''),
('110', 'jam', ''),
('602', 'jam', ''),
('605', 'jam', ''),
('130', 'jam', ''),
('132', 'jam', '');

-- --------------------------------------------------------

--
-- Table structure for table `prince_grp`
--

CREATE TABLE `prince_grp` (
  `i` mediumint(9) NOT NULL,
  `grp` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prince_grp`
--

INSERT INTO `prince_grp` (`i`, `grp`) VALUES
(1, 'racine'),
(2, 'indo-européennes'),
(21, 'romanes'),
(16, 'indo-iraniennes'),
(23, 'germaniques'),
(73, 'à base anglaise'),
(45, 'iraniennes'),
(46, 'indo-aryennes'),
(17, 'arméniennes'),
(18, 'grecques'),
(47, 'ioniennes-attiques'),
(19, 'albanaises'),
(20, 'italiques'),
(48, 'ibéro-romanes'),
(65, 'espagnol et langues apparentées'),
(66, 'portugais et langues apparentées'),
(49, 'occitano-romanes'),
(50, 'gallo-romanes'),
(51, 'rhéto-romanes'),
(52, 'italo-romanes'),
(53, 'sardes'),
(54, 'orientales'),
(22, 'celtiques'),
(55, 'brittoniques'),
(56, 'branche occidentale'),
(67, 'anglo-frisonnes'),
(68, 'germano-néerlandaises (bas- et haut-allemand)'),
(72, 'allemand et langues apparentées'),
(57, 'branche Nordique, septentrionale ou scandinave'),
(24, 'balto-slaves'),
(58, 'baltes'),
(59, 'slaves'),
(69, 'branche occidentale'),
(70, 'branche méridionale'),
(71, 'branche orientale'),
(3, 'afro-asiatiques'),
(25, 'berbères'),
(26, 'égyptiennes'),
(27, 'sémitiques'),
(60, 'Nord-Est (langues éteintes)'),
(61, 'Nord-Ouest'),
(62, 'Sud'),
(28, 'couchitiques'),
(4, 'nilo-sahariennes'),
(5, 'nigério-congolaises'),
(29, 'bantoues'),
(30, 'kwa'),
(31, 'mandé'),
(32, 'de l\'Ouest-Atlantiques'),
(33, 'camerounaises'),
(6, 'caucasiennes'),
(34, 'du Sud (kartvéliennes)'),
(7, 'ouraliennes'),
(35, 'finno-ougriennes'),
(63, 'fenniques'),
(64, 'ougriennes'),
(8, 'altaïques'),
(36, 'turques'),
(37, 'mongoles'),
(9, 'sino-tibétaines'),
(38, 'chinois et langues apparentées'),
(10, 'austroasiatiques'),
(39, 'môn-khmer'),
(11, 'austronésiennes'),
(40, 'malayo-polynésiennes'),
(12, 'tupi-guarani'),
(13, 'créoles et pidgins'),
(42, 'à base française'),
(14, 'langues artificielles'),
(15, 'autres familles ou langues isolées'),
(43, 'japonais et langues apparentées'),
(44, 'langues des Amériques'),
(74, 'gaéliques'),
(75, 'tibéto-birmane'),
(76, 'chibchan'),
(77, 'tai-kadai'),
(78, 'à base portugaise'),
(79, 'latines'),
(80, 'italo-occidentales'),
(81, 'caucasiennes');

-- --------------------------------------------------------

--
-- Table structure for table `prince_grp_rel`
--

CREATE TABLE `prince_grp_rel` (
  `parent` mediumint(9) NOT NULL DEFAULT '0',
  `child` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='parent is grp, child is grp or language';

--
-- Dumping data for table `prince_grp_rel`
--

INSERT INTO `prince_grp_rel` (`parent`, `child`) VALUES
(2, 17),
(2, 16),
(20, 21),
(2, 20),
(2, 19),
(2, 18),
(1, 2),
(2, 22),
(2, 23),
(16, 45),
(16, 46),
(18, 47),
(21, 48),
(48, 65),
(48, 66),
(21, 49),
(21, 50),
(21, 51),
(21, 52),
(21, 53),
(21, 54),
(22, 55),
(23, 56),
(23, 57),
(56, 67),
(56, 68),
(68, 72),
(24, 58),
(24, 59),
(59, 69),
(59, 70),
(59, 71),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(27, 60),
(2, 24),
(27, 61),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(6, 34),
(7, 35),
(35, 63),
(35, 64),
(8, 36),
(8, 37),
(9, 38),
(10, 39),
(11, 40),
(13, 42),
(15, 43),
(15, 44),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(27, 62),
(13, 73),
(22, 74),
(9, 75),
(44, 76),
(11, 77),
(13, 78),
(20, 79),
(1, 81);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prince_language`
--

INSERT INTO `prince_language` (`iso`, `varpron`, `french`, `english`, `self`, `text`, `imgtext`, `trad`, `comment`, `actif`, `grp`, `geo`, `geolat`, `geolng`) VALUES
('fra', 0, 'français', 'French', 'français', 'On ne connaît que les choses que l\'on apprivoise, dit le renard. Les hommes n\'ont plus le temps de rien connaître. Ils achètent des choses toutes faites chez les marchands. Mais comme il n\'existe point de marchands d\'amis, les hommes n\'ont plus d\'amis. Si tu veux un ami, apprivoise-moi!\r\n\r\nAdieu, dit le renard. Voici mon secret. Il est très simple: on ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.', '', 'Antoine de Saint-Exupéry', 'A26 + àâçèéêôîûùëüï', 1, 50, 'france', 46.2276, 2.21375),
('eng', 0, 'anglais', 'English', 'English', 'We only know the things that we tame, said the fox. People no longer have the time to know anything. They buy things already made for peddlers. But since there are no peddlers of friends, they no longer have friends. If you want a friend, tame me!\r\n\r\nGoodbye, said the fox. Here\'s my secret; it\'s very simple: we see well only with the heart. The essential is invisible to the eyes.\r\n', '', 'Richard Waswo', 'A26+ ð  þ', 1, 67, 'England, United Kingdom', 52.019, -0.770427),
('deu', 0, 'allemand', 'German', 'Deutsch', 'Man kennt die Dinge, die man zähmt, sagte der Fuchs. Die Menschen haben keine Zeit mehr, etwas kennen zu lernen. Sie kaufen die Dinge fix und fertig bei den Händlern. Aber weil niemand mit Freunden handelt, haben die Menschen keine Freunde mehr. Wenn Du einen Freund willst, zähme mich!\r\n\r\nAdieu!, sagte der Fuchs. Dies ist mein Geheimnis. Es ist sehr einfach: man sieht nur mit dem Herzen gut. Das Wesentliche ist für die Augen unsichtbar.', '', 'Carlos Alvar et Henriette Partzsch', 'A26 + ä, ö ü ß, eszet ou scharfes S', 1, 72, 'germany', 51.1657, 10.4515),
('ita', 0, 'italien', 'Italian', 'italiano', 'Puoi conoscere solo quello che ti è familiare, che ti è domestico - disse la volpe. - Gli uomini non hanno più tempo di conoscere niente. Comprano nei negozi cose già pronte. Ma siccome non esistono negozianti di amici, gli uomini non hanno più amici. Tu, allora, se vuoi un amico, vedi di addomesticarmi.\r\n\r\nAddio, disse la volpe. Ed eccolo qui, il mio segreto - semplice semplice. Vedere è cosa del cuore. Agli occhi l\'essenziale resta sempre invisibile.', '', 'Emilio Manzotti', 'A26 - jkwxy sont utilisés que dans les mots d?emprunt. On trouve toutefois le j (i lunga) ainsi que l?y (ipsilon ou i greca) et le w (doppia vu) dans certains toponymes et noms ou prénoms. + àòóìíùúéè', 1, 52, 'italy', 41.8719, 12.5674),
('spa', 0, 'espagnol', 'Spanish', 'español', 'Sólo conocemos las cosas que domesticamos, dijo el zorro. Los hombres ya no tienen tiempo de conocer nada. Compran en las tiendas cosas hechas. Pero como no hay ninguna tienda donde vendan amigos, los hombres ya no tienen amigos. Si quieres un amigo, !domestícame!\r\n\r\nAdiós, dijo el zorro. Te diré un secreto. Es muy sencillo: sólo se ve bien con el corazón. Lo esencial les resulta invisible a los ojos.', '', 'Jesús Munárriz', '', 1, 65, 'spain', 40.4637, -3.74922),
('ron', 0, 'roumain', 'Romanian', 'român&#x103;', 'Cunoa&#x15f;tem doar ceea ce îmblînzim, spuse vulpea. Oamenii nu mai au timp s&#x103; cunoasc&#x103; nimic. Cump&#x103;r&#x103; de la negustori lucrurile de-a gata. Cum nsa nu exista negustori de prieteni, oamenii nu mai au prieteni. Dac&#x103; vrei un prieten, mblnze&#x15f;te-m&#x103;!\r\n...\r\nAdio, spuse vulpea. Iat&#x103; care e taina mea. E foarte simpl&#x103;: limpede vezi doar cu inima. Ochii un pot s&#x103; vad&#x103; esen&#x163;ialul.\r\n', '', '', '&#x15f; &#x163f; &#x103; î', 1, 54, 'romania', 45.9432, 24.9668),
('swe', 0, 'suédois', 'Swedish', 'svenska', 'Man lär bara känna det man tämjer, sa räven. Människorna har inte längre tid att riktigt bli bekanta med något. De köper färdiga saker i affärerna. Men eftersom det inte finns vänner att köpa i affärerna, har människorna inte längre några vänner. Om du vill ha en vän, så tämj mig!\r\n\r\nAdjö, sa räven. Nu ska du få höra min hemlighet. Den är mycket enkel: det är bara med hjärtat som man kan se ordentligt. Det viktigaste är osynligt för ögonen.', '', '', 'http://www.borderline.nu/nuke/modules.php?name=News&file=print&sid=31', 1, 57, 'sweden', 60.1282, 18.6435),
('rus', 0, 'russe', 'Russian', '&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;', '-&#1059;&#1079;&#1085;&#1072;&#1090;&#1100; &#1084;&#1086;&#1078;&#1085;&#1086;  &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1090;&#1086;, &#1095;&#1090;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080;&#1096;&#1100;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083; &#1051;&#1080;&#1089;. &#1059; &#1083;&#1102;&#1076;&#1077;&#1081; &#1073;&#1086;&#1083;&#1100;&#1096;&#1077; &#1085;&#1077;&#1090; &#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1080; &#1095;&#1090;&#1086;-&#1083;&#1080;&#1073;&#1086;  &#1091;&#1079;&#1085;&#1072;&#1074;&#1072;&#1090;&#1100;. &#1054;&#1085;&#1080; &#1087;&#1086;&#1082;&#1091;&#1087;&#1072;&#1102;&#1090; &#1074;&#1077;&#1097;&#1080; &#1091;&#1078;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1099;&#1084;&#1080; &#1074; &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1077;. &#1053;&#1086; &#1074;&#1077;&#1076;&#1100; &#1085;&#1077;&#1090; &#1090;&#1072;&#1082;&#1086;&#1075;&#1086;  &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1072;, &#1075;&#1076;&#1077; &#1087;&#1088;&#1086;&#1076;&#1072;&#1102;&#1090;&#1089;&#1103; &#1076;&#1088;&#1091;&#1079;&#1100;&#1103;, &#1080; &#1091; &#1083;&#1102;&#1076;&#1077;&#1081; &#1085;&#1077; &#1089;&#1090;&#1072;&#1083;&#1086; &#1076;&#1088;&#1091;&#1079;&#1077;&#1081;. &#1045;&#1089;&#1083;&#1080; &#1090;&#1099; &#1093;&#1086;&#1095;&#1077;&#1096;&#1100;,  &#1095;&#1090;&#1086;&#1073;&#1099; &#1091; &#1090;&#1077;&#1073;&#1103; &#1073;&#1099;&#1083; &#1076;&#1088;&#1091;&#1075;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1103;&nbsp;!\r\n\r\n-&#1055;&#1088;&#1086;&#1097;&#1072;&#1081;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;  &#1051;&#1080;&#1089;. - &#1042;&#1086;&#1090; &#1084;&#1086;&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090;. &#1054;&#1085; &#1086;&#1095;&#1077;&#1085;&#1100; &#1087;&#1088;&#1086;&#1089;&#1090;&nbsp;: &#1087;&#1086;-&#1085;&#1072;&#1089;&#1090;&#1086;&#1103;&#1097;&#1077;&#1084;&#1091; &#1074;&#1080;&#1076;&#1080;&#1090; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1089;&#1077;&#1088;&#1076;&#1094;&#1077;.  &#1057;&#1072;&#1084;&#1086;&#1077; &#1075;&#1083;&#1072;&#1074;&#1085;&#1086;&#1077; &#1089;&#1086;&#1082;&#1088;&#1099;&#1090;&#1086; &#1086;&#1090; &#1075;&#1083;&#1072;&#1079;.', '', 'Olga Inkova', '', 1, 71, 'russia', 61.524, 105.319),
('epo', 0, 'espéranto', 'Esperanto', 'esperanto', '\"Nur ni konas tion, kion ni malsova&#x11d;igas\", diris la vulpo. \"La homoj ne plu havas tempon por io ajn koni. Ili a&#x109;etas tute pretajn objektojn &#x109;e vendistoj. Sed, &#x109;ar amikvendistoj ne ekzistas, homoj jam ne havas amikojn. Se vi volas amikojn, malsova&#x11d;igu min!\"\r\n\"Adiau\", diris la vulpo. \"Mi diros al vi unua sekreto. &#x11c;i estas tre simpla: Nur oni bone vidas per la nia koro. La esenco estas nevidebla perla okuloj.\"', '', 'Emilio Gastón', '&#x108; &#x109; &#x11d;  &#x11c;', 1, 14, 'Universala Esperanto Asocio, Nieuwe Binnenweg 176,', 51.9125, 4.4644),
('hun', 0, 'hongrois', 'Hungarian', 'magyar', '- Az ember csak azt ismeri meg igazán, amit megszelídít - mondta a róka.\r\n- Az emberek nem érnek rá, hogy bármit is megismerjenek.\r\nCsupa kész holmit vásárolnak a keresked&#x151;knél.\r\nDe mivel barátkeresked&#x151;k nem léteznek, az embereknek nincsenek is barátaik.\r\nHa azt akarod, hogy barátod legyen, szelídíts meg engem.\r\n\r\n- Isten veled - mondta a róka.\r\n- Tessék, itt a titkom. Nagyon egyszer&#x171;:\r\njól csak a szívével lát az ember.\r\nAmi igazán lényeges, az a szemnek láthatatlan.\r\n', '', 'Rónay György', 'http://www.sztaki.hu/~smarton/vegtelen/kish/kish.htm', 1, 64, 'hungary', 47.1625, 19.5033),
('gsw-app', 2, 'appenzellois', 'Appenzell Swiss German', 'Appezellertütsch', 'me kennt nu d sache wommer zäämt, hät de fux gseit. d lüüt händ ka zit\r\nmeh zum öppis kenne lèrne. si kaufed d sache fix fertig i de läde. aber\r\nwils ka läde für fründ git, händ d lüüt ka fründ meh. wennt du aso en\r\nfründ wötsch, denn zääm mi.\r\n\r\nadie, hät de fux gsait. i säg der no mis gheimnis. s isch ganz eifach!\r\nguet sieht mer nu mit em hèrz. di wichtige sache sind für d auge-n\r\nunsichtbar.', '', 'Yves Scherrer', '', 1, 72, 'appenzell', 47.3283, 9.40883),
('lmo-tic', 2, 'tessinois', 'Ticinese', 'ticinese', 'A sa cognos dumá i rop che sa dumestiga, la dis la volp. I gent i g\'ha pü `l temp da cugnos nagota. I cumpra i rop già fai sü di mercant. Ma gh`è mia i mercant da amis, e alura i gent i g\'ha pü amis. Se te vöri un amis, te devi dumestigam.\r\n...\r\nAdiu, la dis la volp. Sculta`l mè segrett, l\'è facil: a sa ved ben dumá cul cör. I rop püsee impurtant, l\'è mia cui öcc ch\' i sa ved. ', '', 'Laura Baranzini', 'bellinzona áüöè', 1, 52, 'ticino', 46.3317, 8.80045),
('slv', 0, 'slovène', 'Slovenian', 'sloven?cina', 'Le tisto spozna&#x0161;, kar udoma&#x010D;i&#x0161;, je dejala lisica. Lujdje si ne vzamejo &#x010D;asa, da bi sploh spoznali. Pri trgovcih kupujuejo kar izgotovljene predmete. Ker pa ni trgovcev, ki bi prodajali prijatelje, ljudje nimajo ve&#x010D; prijateljev. &#X010D;e bi rad imel prijatelja, me udoma&#x010D;i!\r\n...\r\nZbogom, je rekla lisica. &#X010D;uj mojo skrivnost. Zelo preprosta je: Kdor ho&#x010D;e videti, mora gledati s screm. Bistvo je o&#x010D;em nevidno. \r\n', '', 'Ivan Minatti', '', 1, 70, 'slovenia', 46.1512, 14.9955),
('srp', 0, 'serbe', 'Serbian', 'srpski', '-Covek poznaje samo one stvari koje pripitomi, rece lisica. Ljudi nemaju vise vremena da bilo sta upoznaju. Oni kupuju gotove stvari kod trgovaca. A kako nema trgovaca koji prodaju prijatelje, ljudi vise nemaju prijatelja. Ako hoces prijatelja, pripitomi me!\r\n-Zbogom, odgovori lisica. Evo moje tajne. Sasvim je jednostavna: covek samo srcem dobro vidi. Sustina se ocima ne da sagledati.', '', '', '', 1, 70, 'serbia', 44.0165, 21.0059),
('jpn', 0, 'japonais', 'Japanese', 'nihongo &#26085;&#26412;&#35486;', '', 'japonais.jpg', 'Masayuki Ninomiya', '', 1, 43, 'japan', 36.2048, 138.253),
('wol', 0, 'wolof', 'Wolof', 'wolof', 'Xamouñu lou doul lou ñou miin, (wakh  golo). Nit ñi amatouñu jootu xam. Dañuy jenda lou paré ba noppi ca jaykat ba. Waayé ndéguém amatoul jaykatou xarit, nit amatoul xarit. So beugué xarit, nékhalma!\r\n...\r\nTagounaléen (wakh golo). Li moy li ma doon neubeu. Dafa yonmbeu: ak xol la ñuy gisé bou bakh. Li am solo dafay laxou beuti.\r\n', '', 'Yacine Diop Fonjallaz', 'ñ é', 1, 32, 'senegal', 14.4974, -14.4524),
('sqi', 0, 'albanais', 'Albanese', 'shqip', 'NJohim veçse gjerat qe i aprivuazojme, thote dhelpra. Njerezit s\'kane me kohe te njohin gje tjeter. Blejne gjera te gateshme tek tregetaret. Por meqe tregetaret miq nuk egsistojne me, atehere njerezit s\'kane me miq, Nese do nje mik, ja ku me ke mua!\r\n...\r\nLamtumire, thote dhelpra. Ja sekreti im. Eshte shume i thjeshte: Shohim mire veçse me zemer. Esencialja eshte e padukshme per syte.', '', 'Lefteri Hasanaj', '', 1, 19, 'albania', 41.1533, 20.1683),
('heb', 0, 'hébreu', 'Hebrew', 'ivrit &#1506;&#1460;&#1489;&#1456;&#1512;&#1460;&#1497;&#1514;', '', 'hebreu.jpg', '', '', 1, 61, 'israel', 31.0461, 34.8516),
('lat', 0, 'latin', 'Latin', 'lingua latina', 'Haec tantum nota sunt quae paulatim domantur, dixit uulpes. Homines aliquid spatii ad cognoscendum subripere non iam possunt; sic apud mercatores res ad usum paratas emunt. Cum autem mercatores qui amicos uendant inueniri non possint, hominibus non iam sunt amici. Si amicum expetis, me doma!\r\n	 \r\n(...) Vale, dixit uulpes. Hoc est arcanum meum, et simplicissimum quidem : corde tantum perspici potest, nec summae rerum ipsae cernuntur oculo ullo.\r\n', '', 'Yves Rütsche', '', 1, 79, '', 0, 0),
('oci-pro', 2, 'provençal', 'Provençal', 'prouvençau ', 'Lo Ditz del Raynart\r\n\r\n\"Hom conois solamen \r\no que pot domesgar\".\r\nBos ditz es, e no men:\r\nbe puesc lo t\'explicar.\r\nHuey non a hom lezer\r\nde ren be conoisser,\r\ndoncs compra, e-lh es grazitz,\r\no que-lh estai aizitz,\r\nque-lh vendon mercadant:\r\nals no quier tant ni cant.\r\nPus atrobar no-s poc\r\nlunhz mercadantz d\'amics,\r\nde o cauza s\'esmoc\r\ncÕhuey regn\'om ses amics.\r\nS\'amic vols atrobar,\r\nbe×t caldra m domesgar.\r\nAiqui vuelh descobrir\r\nmo secret al fenir:\r\nab ton cor solamen\r\npotz vezer claramen.\r\n\"Ohlz no ve o que cal\r\nmais, ni qu\'es mais cabal\".', '', 'Maurizio Perugi', '', 1, 49, '', 0, 0),
('bre', 0, 'breton', 'Breton', 'brezhoneg', 'N\'eus nemet an traou a vez doñvaet a anevezer, eme al louarn. An dud n\'o deus ket amzer ken da anaout netra.  Prenañ a reont traou peurc\'hraet `ti ar varc\'hadourien. Met dre ma n\'eus ket a varc\'hadourien vignoned, n\'o deus an dud mignon ebet ken. Ma fell dit kaout ur mignon, doñva ac\'hanon!\r\n...\r\nKenavo, eme al louarn. Setu va sekred. Aes-kenañ ez eo:  gant ar galon nemetken e vez gwelet mat. Ar pep pouezushañ ne vez ket gwelet gant an daoulagad.', '', 'Yvon Abiven', '', 1, 55, 'bretagne', 48.202, -2.93264),
('por', 0, 'portugais', 'Portuguese', 'português', 'Só se conhece aquilo que se amestra, diz a raposa. Os homens já não têm tempo para conhecer nada. Compram tudo já feito nas lojas. Mas como não se podem comprar amigos nas lojas, os homens deixaram de ter amigos. Se queres um amigo, amestra-me!\r\n...\r\nAdeus, diz a raposa. Aqui tens o meu segredo. É muito simples: só se vê bem com o coração. O essencial é invisível para os olhos.\r\n', '', 'Nuno Júdice', '', 1, 66, 'portugal', 39.3999, -8.22445),
('roh-srs', 2, 'romanche sursilvan', 'Romance (sursilvan)', 'rumantsch sursilvan', 'Ins enconuscha mo las caussas ch\'ins ha fatg dumiastias, precisescha l\'uolp. Ils carstgauns han buca peda pli d\'emprender d\'enconuscher enzatgei. Els cumpran las caussas fatgas. Mo essend ch\'ei dat buca pli stizuns per amitgs, han ils carstgauns buc amitgs pli. Sche ti vul in amitg, lu fai ch\'jeu daventi dumiastia!\r\n...\r\nAdia, di l\'uolp. Mira tscheu miu misteri. El ei zun sempels: Mo cun il cor vesan ins bein. Igl essenzial ei buca veseivels per ils egls.\r\n', '', 'Donat Cadruvi', '', 1, 51, 'ilanz, suisse', 46.7743, 9.20475),
('dut', 0, 'néerlandais', 'Dutch', 'vlaams', 'Men kent alleen die dingen waarmee men echt vertrouwd is, zegt de vos. De mensen hebben niet meer de tijd nog iets echt te kennen. Zij kopen dingen kant en klaar bij een handelaar. Maar verkopers van vrienden die bestaan niet, en dus hebben de mensen geen vrienden meer. Als je een vriend wilt moet je me temmen!\r\n...\r\nVaarwel, zegt de vos. Hier is mijn geheim. Het is zeer eenvoudig : Goed zien kan men alleen met zijn hart. Het wezenlijke is onzichtbaar voor je ogen.\r\n', '', 'Yasmina Foehr-Janssens', '', 1, 68, 'netherlands', 52.1326, 5.29127),
('dan', 0, 'danois', 'Danish', 'dansk', 'Man kender kun de ting som man t&#xe6;mmer, siger r&#xe6;ven. Menneskene har ikke l&#xe6;ngere tid til at kende noget. De k&#xf8;ber f&#xe6;rdiglavede ting hos k&#xf8;bmanden. Men eftersom der ikke findes nogen k&#xe6;bm&#xe6;nd der s&#xe6;lger venner, har menneskene ikke l&#xe6;ngere nogen venner. Hvis du vil have en ven s&#xe5; t&#xe6;m mig! \r\n...\r\nFarvel, siger r&#xe6;ven. Her er min hemmelighed. Den er meget enkel: kun med hjertet kan man se klart. Det der virkeligt betyder noget er usynligt for &#xf8;jnene.\r\n', '', 'Laura et Leonardo F.Lisi', '', 1, 57, 'denmark', 56.2639, 9.50179),
('nor', 0, 'norvégien', 'Norwegian', 'norsk', 'Vi kjenner bare de ting vi har gjort oss fortrolig med, sa reven. Menneskene har ikke lenger tid til &#xe5; bli kjent med noe. De kj&#xf8;per alt ferdig i butikken. Men siden det ikke finnes butikker som selger venner, har ikke menneskene venner lenger. Vil du ha en venn, s&#xe5; gj&#xf8;r deg fortrolig med meg!\r\n...\r\nAdj&#xf8;, sa reven. Jeg skal fortelle deg en hemmelighet. Den er veldig enkel. Man ser bare godt med hjertet. Det vesentlige er usynlig for &#xf8;yet.\r\n', '', 'Kirsti Baggethun', '', 1, 57, 'norway', 60.472, 8.46895),
('ukr', 0, 'ukrainien', 'ukrainian', '&#1091;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072; &#1084;&#1086;&#1074;&#1072; oukrayins\'ka mova', '- &#1052;&#1080; &#1079;&#1085;&#1072;&#1108;&#1084;&#1086; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1090;&#1080;&#1093;, &#1082;&#1086;&#1075;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1072;&#1108;&#1084;&#1086;, &#1087;&#1088;&#1086;&#1084;&#1086;&#1083;&#1074;&#1080;&#1083;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1051;&#1102;&#1076;&#1080;  &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1095;&#1072;&#1089;&#1091; &#1076;&#1083;&#1103; &#1087;i&#1079;&#1085;&#1072;&#1085;&#1085;&#1103; i&#1085;&#1096;&#1086;&#1075;&#1086;. &#1042;&#1086;&#1085;&#1080; &#1082;&#1091;&#1087;&#1091;&#1102;&#1090;&#1100; &#1075;&#1086;&#1090;&#1086;&#1074;i &#1088;&#1077;&#1095;i &#1091; &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i&#1074;. &#1040;&#1083;&#1077;, &#1086;&#1089;&#1082;i&#1083;&#1100;&#1082;&#1080;, &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i &#1076;&#1088;&#1091;&#1079;&#1103;&#1084;&#1080; &#1085;&#1077; &#1073;&#1091;&#1074;&#1072;&#1102;&#1090;&#1100;, &#1083;&#1102;&#1076;&#1080; &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1076;&#1088;&#1091;&#1079;i&#1074;. &#1071;&#1082;&#1097;&#1086; &#1090;&#1080; &#1073;&#1072;&#1078;&#1072;&#1108;&#1096; &#1084;&#1072;&#1090;&#1080; &#1076;&#1088;&#1091;&#1075;&#1072;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1077;.\r\n\r\n- &#1041;&#1091;&#1074;&#1072;&#1081;, &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;&#1072;  &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1052;i&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090; &#1090;&#1072;&#1082;&#1080;&#1081;. &#1042;i&#1085; &#1076;&#1091;&#1078;&#1077; &#1087;&#1088;&#1086;&#1089;&#1090;&#1080;&#1081;&nbsp;: &#1084;&#1080; &#1073;&#1072;&#1095;&#1080;&#1084;&#1086; &#1082;&#1088;&#1072;&#1097;&#1077; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1089;&#1077;&#1088;&#1094;&#1077;&#1084;. &#1053;&#1072;&#1081;&#1089;&#1091;&#1090;&#1090;&#1108;&#1074;i&#1096;&#1077; &#1079;&#1072;&#1083;&#1080;&#1096;&#1072;&#1108;&#1090;&#1100;&#1089;&#1103; &#1085;&#1077;  &#1074;&#1080;&#1076;&#1080;&#1084;&#1077; &#1076;&#1083;&#1103; &#1086;&#1095;&#1077;&#1081;.', '', 'Ekateryna Kondrattsova', '', 1, 71, 'ukraine', 48.3794, 31.1656),
('gsw-ber', 2, 'bernois', 'bern swiss german', 'Berndütsch', 'Me kennt nume d Sache wo eim vertraut si, seit der Fuchs. D Mönsche hei ke Zyt me öppis z kenne. Sie choufe alli Sache fix fertig bim Händler. U Gschäft für Fründe git es nid, drum hei d Mönsche keni Fründe meh. We du e Fründ wosch, so gwinn mys Vertraue!\r\n...\r\nAdiö, seit der Fuchs. Da isch mys Gheimnis. Es isch ganz eifach!: guet gseht me nume mit em Härz, ds Wichtigste isch für d Auge unsichtbar.\r\n', '', 'Greti Kläy', '', 1, 72, 'berne, Switzerland', 46.948, 7.44815),
('gsw-bal', 2, 'bâlois', 'Basel Swiss German', 'Baseldytsch', 'Me kennt nur die Sache wo me zäämt, het der Fuggs gsait. D Mensche hän kai Zyt me, irgend ebbis kenne z leere. Sy kaufe alles feertyg in de Lääde. Aber wel\'s kainy Lääde git wo Frind verkaufe, hän d Mensche kainy Frind mee. Wenn du e Frind wottsch, denn zääm my!\r\n...\r\nAadie, het der Fuggs gsait. Doo isch no my Ghaimlis. S isch ganz aifach: me gseet numme mit em Häärz guet. S Wichtyge isch fir d Auge unsichtbaar.\r\n', '', 'Tobias Brandenberger', '', 1, 72, 'basel, Switzerland', 47.5596, 7.58061),
('gsw-arg', 2, 'argovien', 'Aargau Swiss German', 'Aargauerdüütsch', 'Mer kännt nume die Sache wo mer zèèmt, hèd de Fuchs gsäit. D Mäntsche händ nümme der Zit zum öppis känneleere. Si chauffed alls fixfertig im Laade. Wils aber ekäni Lääde für Fründ gid, händ d Lüüt ekä Fründe me. Wennd en Fründ wotsch, so tue mi zèème.\r\n\r\nLäbwool, hèd de Fuchs gsäit. Ich säge der mis Ghäimnis. Es ist ganz äifach: guet gsee cha mer nume mit em Hèèrz. Di wichtige Sache sind für d Auge unsichtbar.', '', 'Beatrice Schmid', '', 1, 72, 'aargau, Switzerland', 47.3877, 8.25543),
('lat-med', 0, 'latin médiéval', 'Medieval Latin', 'Latina mediaevalis', 'Vulpes inquit: Nullas causas nosse valemus praeter eas cum quibus familiarescimus. Homines vero quicquam cognoscendi spatium non iam sumunt; sibi autem causas iamdudum confectas apud venditores comparant. Sed quoniam nequaquam exsisitit amicorum venditor, homines nunc amicis frui nequeunt. Tu igitur, si amico quodam frui vis, familiarem tibi me fac.\r\n\r\n(...) Vale, ait vulpes. Ecce arcanum, quod est simplicissimum, tibi patefacio: tantum sunt perspicaces cordis oculi. Econtra, carnales oculi summas causas cernere non valent.', '', 'Jean-Yves et Lorraine Tilliette', '', 1, 79, '', 0, 0),
('fro', 0, 'français (ancien)', 'Old French', '', 'Choses ne sont congneües fors celles dont en s\'aüse, dist li golpis. Li home n\'ont ja loisir d\'aucune rien enquerre. Si vont les choses que cil manuevrent as marcheanz achetant. Or ne sont mie marcheant qui amis vendent, et n\'i a mais celui ne ait amis. Se vuels ami, acointe toi a moi !\r\n...\r\nDieus te gart, dist li golpis. Mes secrez est tels. Si est a entendre legiers : en ne voit si bien qu\'as ielz del cuer. Forz choses ne sont as ielz del chief veües.', '', 'Olivier Collet', '', 1, 50, '', 0, 0),
('gsw-sol', 2, 'soleurois', 'Solothurn Swiss German', 'Soledurnerdütsch', 'Me könnt nume die Sache wo me zähmt, seit dr Fuchs. D Mönsche hei nüm Zit öppis lehre z könne. Si choufe s Züg fixfertig bim Händler. Aber wüus keni Händler für Fründe git, hei d Mönsche keni Fründe meh. Wen e Fründ wottsch, de due mi zähme.\r\n\r\nAdiö, seit dr Fuchs. Das isch auso mys Gheimnis. Es isch ganz eifach. Me gseht nume mit em Härz guet. S Wäsentleche isch für d Ouge unsichtbar.', '', 'Simone Übelhart', '2corrections par gina.reymond@geneva-link.ch', 1, 72, 'solothurn, Switzerland', 47.207, 7.53331),
('gsw-zur', 2, 'zurichois', 'zurich swiss german', 'Züritüütsch', 'Mer känt nume d\'sache wo mer zäämt, hät de fuchs gsäit. D\'mänsche händ nüme ziit zum öppis käneleere. Si chaufed alles fixfertig im lade. Will\'s aber käi läde für fründ git, händ d\'lüüt käi fründ mee. Wänn d\'en fründ wotsch, dänn zääm mi.\r\n\r\nAdiö, hät de fuchs gsäit. Ich säge dir mis ghäimnis. Es isch ganz äifach: guet gsee cha mer nume mit em herz. Di wichtige sache sind für d\'auge unsichtbar.', '', 'Juri Mengon', '', 1, 72, 'zurich, Switzerland', 47.369, 8.53803),
('ara', 0, 'arabe', 'Arabic', '&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577; al ?arab?ya', '', 'arabe.jpg', '', '', 1, 62, 'alger', 36.7312, 3.14209),
('hye', 0, 'arménien', 'Armenian', '&#1344;&#1377;&#1397;&#1381;&#1408;&#1381;&#1398;', '', 'armenien.jpg', '', '', 1, 17, 'armenia', 40.0691, 45.0382),
('sux', 0, 'sumérien', 'Sumerian', 'EME.?IR', '', 'sumerien.jpg', 'Antoine Cavigneaux', '', 1, 15, '', 0, 0),
('prs', 0, 'dari', 'Dari', '', '', 'dari.jpg', 'Mirwais Tayebi', '', 1, 45, 'jalalabad', 34.43, 70.46),
('egy', 0, 'égyptien ancien', 'Egyptian', '', '', 'egyptien.jpg', 'Michel Vallogia', '', 1, 26, 'egypt', 26.8206, 30.8025),
('ber', 0, 'tamazight', 'Berber', 'tamazight', '', 'tamazight.jpg', 'Ekram Hamu Haddu', '', 1, 25, 'algeria', 28.0339, 1.65963),
('grc', 0, 'grec ancien', 'Ancient Greek', '', '', 'grecancien.jpg', 'Paul Schubert', '', 1, 47, '', 0, 0),
('enm', 0, 'anglais (moyen)', 'Middle English', '', 'Man moste tamen that he kenne lists, quoth the fox. To witen mankind hath no tide. Men praty thingys from sellours beyen. But there is of freondes no marchande, so that man freondless now stode. If a freonde thou list, tame me!\r\n\r\nFarewel, quoth the fox. This is my cownsell. Seli it is: man can only see well thurgh the hert. To the eien the essencial is invisibull.', '', 'Guillemette Bolens', '', 1, 67, '', 0, 0),
('ang', 0, 'anglais (vieil)', 'Old English', '', 'Man nat butan Þe man atemað,cwæð se fox. Menn nabbað hwile nawiht to witanne. Hie bycgað gegarwodu Þing fram ciepemannum. Ac swa na freonda ciepemann nis, menn nabbað na freondas. Gif Þu anne freond wilt, mec atema!\r\n\r\nWes Þu hal, cwæð se fox. Her is min diegolnes. Seo is swiðe anfeald: man siehð wel nefne mid heorte. Seo aweosung nis fram eagum sewenlic.', '', 'Fabienne Michelet', '', 1, 67, '', 0, 0),
('pol', 0, 'polonais', 'Polish', 'polski', '- Poznaje sie&#x0328; tylko to, co sie oswoi - powiedzia&#x0142; lis. - Ludzie maja&#x0328; zbyt ma&#x0142;o czasu, aby cokolwiek poznac&#x301;. Kupuja&#x0328; w sklepach rzeczy gotowe. A poniewaz&#x307; nie ma magazynów z przyjació&#x0142;mi, wie&#x0328;c ludzie nie maja&#x0328; przyjació&#x0142;. Jes&#x301;li chcesz miec&#x301; przyjaciela, oswój mnie!\r\n\r\n- Z&#x307;egnaj - odpowiedzia&#x0142; lis. - A oto mój sekret. Jest bardzo prosty: dobrze widzi sie&#x0328; tylko sercem. Najwaz&#x307;niejsze jest niewidoczne dla oczy.', '', '??', 'http://www.odaha.com/littleprince.php?f=MalyKsiaze', 1, 69, 'polska', 51.9194, 19.1451),
('ita-tos', 2, 'toscan', 'Tuscan', 'toscano', 'Si conosce solo le cose che s\'addomestica disse la volpe. Gl\'omini un\'hanno piú tempo di conosce\'nulla. Comprano cose bell\'e fatte nei mercati. Ma siccome un\'esiste punti mercati d\'amici, gl\'omini un\'hanno piú amici. Se tu voi un amico, addomesticami! \r\n\r\nAddio disse la volpe. Ecco il mio segreto. È di molto facile: solo si vede bene con il cuore. L\'essenziale è invisibile agl\'occhi.\r\n\r\n\r\n', '', 'Roberta Orlandi', '', 1, 52, 'Tuscany', 43.5671, 10.9807),
('mlt', 0, 'maltais', 'Maltese', 'Malti', 'Il-bniedem isir jaf biss bil-&#x0127;lejjaq li jimmansa hu, qal il-volpi. Il-bnedmin mg&#x0127;ad g&#x0127;andhom &#x0127;in g&#x0127;al xejn. Jixtru kollox lest ming&#x0127;and tal-&#x0127;wienet. Izda billi ma jezistux bejjieg&#x0127;a tal-&#x0127;bieb, il-bnedmin ma baqg&#x0127;alhomx &#x0127;bieb. Jekk trid &#x0127;abib immansa lili!\r\n\r\nSa&#x0127;&#x0127;iet, qal il-volpi. Is-sigriet tieg&#x0127;i huwa dan. Sigriet semplici &#x0127;afna: ma tistax tara sew jekk mhux bil-qalb. Dak li hu tassew ha&#x0127;tiega ma tarahx be-g&#x0127;ajnejn. \r\n', '', 'Toni Aquilina', '', 1, 62, 'malta', 35.9375, 14.3754),
('lav', 0, 'letton', 'Latvian', 'latvie&#x0161;u', 'M&#x0113; pasz&#x012B;stam tikai to, ko pieradin&#x0101;m, sac&#x012B;ja lapsa. Civ&#x0113;kiem vairs nav laika neko iepaz&#x012B;t. Vini nop&#x0113;rk pie tirgot&#x0101;ja jau visu gatavu. Bet, t&#x0101; k&#x0101; nav tirgot&#x0101;ju, kas p&#x0101;rdotu draugus, tad cilv&#x0113;kiem vairs nav draugu. Ja tu v&#x0113;lies draugu, pieradini mani! \r\n...\r\nArdievu, sac&#x012B;ja lapsa. L&#x016B;k, mans nosl&#x0113;pums, tas ir loti vienk&#x0101;r&#x0161;s: &#x012B;sti m&#x0113;s redzam tikai ar sirdi. B&#x016B;tiskais nav ac&#x012B;m saredzams. \r\n', '', 'Ieva Lase', '', 1, 58, 'latvia', 56.8796, 24.6032),
('srd', 0, 'sarde', 'Sardinian', 'sardu', 'Non connoschimus atteru petzi chei sas cosas chi si addomestican, nait su mariane. Sos omines no an prus su tempus de connoscher. Dae sos bèndidores issos comporan sas cosas già fattas. Ma sicomente non saccatana bèndidores de amicos, sos omines non an prus amicos. Si tue cheres unu amicu addomesticande unu!\r\n\r\nAdiosu>>, nait su mariane. Ecco su secretu meu. Est meda fatzile: si biet bene petzi chin su coro. Sessentziale non si biet pompiandelu.\r\n', '', 'Dino Manca', '', 1, 53, 'sardegna', 40.1209, 9.01289),
('pms', 0, 'piémontais', 'Piemontese Italian', 'piemontèis', 'Noi conossoma mach le cse cha n rendo bindispst, a dis la volp.  Jmini  a lhan pï nen ël temp ëd consse dautr.  A cato le cse gia faite dai marcand.  Ma dal moment che ij marcand amis a esisto nen, jmini a lhan pì gnun amis. Sit veule namis, it deuve domëstieme.\r\n\r\nAdieu, a dis la volp. Veui confidete mè segret. A lè motobin sempi: noi riessima a vëdde bin mach con l cheur. Ln cha lè essensial a lè invisìbil con jeuj.\r\n', '', 'Lidia Rubio et Cristina Tango', '', 1, 52, 'Piedmont, Italy', 45.0522, 7.51539),
('ita-pis', 2, 'Pisan', 'Pisan Italian', '', 'E si  onosce sortanto le ose che ci fanno diventà  docili, dice la vorpe. La gente un ha più  r tempo  di onosce artro. Compra le  ose già fatte da  bottegai. Ma siccome un ci sono bottegai amici, la gente amici un nha più. Se voi unamio, mi devi addomestià.\r\n\r\nTi saluto dice la vorpe.   Ir mi segreto è questo. E semprice:  si riesce a vede bene solo cor cuore.  Quer che conta di più con locchi un si vede.\r\n', '', 'Roberto Sbrana', '', 1, 52, 'pisa, Italy', 43.7161, 10.3966),
('scn', 0, 'sicilien', 'Sicilian', 'sicilianu', 'Si canusciunu sulamenti i cosi chi sammaistranu, dissi a vurpi. Lomini nonhannu cchjù tempu di canusciri nenti. Ccattunu li cosi fatte sulamenti di mercanti. Ma siccomu non ci sunnu pi-nnenti mercanti damici, lomini non hannu cchjù amici. Si tu voi namicu, ammaistrimi!\r\n\r\nAddiu, dissi a vurpi. Eccu u mè sigretu. E simplici-simplici: si vidi beni sulamenti cu cori. Lessenziali è nvisibili a-llocchj.\r\n', '', 'Rossana Castano', '', 1, 52, 'sicilia', 37.3979, 14.6588),
('ita-vic', 2, 'vicentin', 'Vicentin Italian', 'vicentino', 'Te pui conóssare solo queo che xe de faméja, ga dito la volpe. I òmeni no i ga pì tempo de conóssare gnente. Tuto queo che i ga i lo compra dai botegari. Ma sicome no ghe xe botegari che vende amissi, i òmeni no i ga pì amissi. Se ti te vui namico, fame diventar de faméja.\r\n\r\nAdìo, ga dito la volpe. Ècolo kì el me segreto. El xe tanto fàssile: te ghe vidi ben solo col core. Queo che conta no te lo vidi mia coi oci.\r\n', '', 'Luciano Zampese', '', 1, 52, 'vicenza, Italy', 45.5459, 11.5403),
('ast', 0, 'bable/asturien', 'asturian', 'asturianu', 'Solu conocemos les coses que domesticamos, dixo el raposu. Los homes ya nun tien tiempu de domesticar nada. Mercan nes tiendes coses feches. Pero como nun hai nenguna tienda ónde vendan amigos, los homes ya nun tien amigos. Si quies un amigu, ¡domestícame! \r\n\r\nAdiós, dixo el raposu. Direte un secreto. Ye muy sencillu: solu vese bien col corazón. Lo esencial resultayos invisible a los güeyos.\r\n', '', 'Antonio D\'az Orejas', '', 1, 48, 'Asturias', 43.2504, -5.98326),
('cas-cas', 2, 'castuó', 'Castúo', 'castuó', 'Namág tenemug cunucencia de lag cosag que dumamug, iju el zorru. Lugombrig no tienin tiempu ya pa dumal nâ. Mercan en lag tiendag lag cosagechag. Peru comu no ay tienda que varga ondi vendan amigug, lugombrig no tienen amigug yâ. Si quiégun amigu, ¡dmami!\r\n\r\nAdióg, iju la zorra. Vua icilti un secretinu. Eg mu facilinu: namág se ve bien conel curazón. Er meoyu eginvisibli pa lusojug.\r\n', '', 'Pablo Muñoz Regadera', '', 1, 65, 'Extremadura', 39.4937, -6.06792),
('arg-ben', 0, 'patois de Benasque', 'Benasquese', 'Benasqués', 'Sólo coneixem les coses que adomem, ba di el raboso. Els omes ya no tienen tems de coneixer res. Compren a les tiendes coses fetes. Pero coma no yey niuna tienda agon benguen amigos, els omes ya no tienen amigos. Si ques un amigo, ¡adómame!\r\n\r\nAdeu, ba di el raboso. Te diré un secreto. Ye mol sensillo: sólo se bei bé dan el corasón. Lo més importán no se bei dan els güells.\r\n', '', 'José Mar\'a Mur', '', 1, 49, 'Benasque, Spain', 42.6051, 0.523973),
('arg-che', 2, 'cheso', 'Cheso', '', 'Solamen conocemos las cosas que domesticamos, dicié lo raboso. Los hombres ya no han tiempo de domesticar cosa. Mercan en los comercios cosas feitas. Pero como no bi-há boticas en do se vendan amigos, los hombres  shan quedáu sin amigos. Si quies un amigo... ¡habrás a domesticarme!\r\n\r\nAdiós, dicié lo raboso. Ten diré uno  de los míos secretos. Ye muy simple: sólo se i-veye bien con lo corazón. Lo esencial ye invisible a los güellos.\r\n', '', 'Emilio Gastón', '', 1, 65, 'aragon', 41.5976, -0.905662),
('cat', 0, 'catalan ', 'Catalan', 'català', 'Només es coneixen les coses que es domestiquen -va dir la guineu. Els homes ja no tenen temps de conèixer res. Compren coses fetes als botiguers. Però com que no hi ha botiguers damics, els homes ja no tenen amics. Si vols un amic, domesticam!\r\n\r\nAdéu -va dir la guineu. Vet aquí el meu secret. És molt senzill: només shi veu bé amb el cor. Lessencial és invisible als ulls.\r\n', '', 'Luis Puig et Jenaro Talens', '', 1, 49, 'Catalunya', 41.5912, 1.52086),
('glg', 0, 'galicien', 'Galician', 'gallego', 'Non se coñecen máis ca as cousas que se domestican, dixo o raposo. Os homes non teñen tempo para coñecer nada. Conseguen no mercado as cousas todas. Mais como non existe mercado de amigos, os homes non teñen amigos. Se ti queres un amigo, domestícame!\r\n\r\nAdeus, dixo o raposo. Velaquí tes o meu segredo. Éche moi simple: só co corazón se mira ben. O esencial é invisíbel para os ollos.\r\n', '', 'Antón Dobao et Chus Pato', '', 1, 66, 'Galicia', 42.5751, -8.13386),
('eus', 0, 'basque', 'Basque', 'euskara', 'Hezten diren gauzak baino ez dira ezagutzen, esan zuen azeriak. Gizonek ez dute ezer ezagutzeko denborarik. Merkatarienean guztiz egindako gauzak erosten dituzte. Baina adiskide-merkataririk ez dagoenez, gizonek ez dute adiskiderik. Adiskide bat nahi baduzu, hez nazazu!\r\n.....\r\nAdio, esan zuen azeriak. Hona hemen nire sekretua. Oso erraza da: bihotzez baino ez da ondo ikusten. Funtsezkoa ikustezina da begientzako.\r\n', '', 'Rikardo Arregi D\'az de Heredia', '', 1, 15, 'Basque Country, Spain', 42.9896, -2.61893),
('frp-ann', 0, 'patois du Val d\'Anniviers', 'Val d\'Anniviers dialect', '', 'Oung cognit què lè tzogè coung a adommécia, dèt lé rèingnar. Lé jhommo lann pa mé lo teng dè tzougea conirè. Latzètonn dè tzogè totè prèchtè ou martchiann. Ma kommè la pa mè dè martchian damèk, lè jhommo lann pa mè damik. Ché tou vout oung amèk, dèt lè rèingnar, tou kountè laffrarssiè !\r\n\r\nAdiou, dèt lè rèingar. Tè dio mong sèkrèt. Lè frang cheingplo : oung vit bèing quavouè lo kour. Chènn què conntè frang nè pas péchiouc avouè lè jouèss.\r\n', '', 'Jean-Jacques Zufferey', '', 1, 50, 'Anniviers, Switzerland', 46.1671, 7.60778),
('gsw-wal', 2, 'haut-valaisan', 'Wallis Swiss German', 'Wallisertiitsch', 'Mu chennt nummu dSache wa einum vertruwt sind, hett där Fugs gseit. DMänschu hennt kei Zit meh, eppis lehru zchennu. Schi chöifunt ganz fertigi Sache in dä Gschäftu. Aber wills kei Gschäfti git wa mu cha Fräinda chäifu, hent dMänschu kei Fröinda meh. Wennt dü a Fröind willt, so tüö mich zähmu.\r\n\r\nAde, hett där Fugs gseit. Hie isch mis Gheimnis. Äs isch ganz as eifachs: Mu gseht nummu mit dum Härz richtig. Zwichtigschta chasch mit dä Öigu nit gseh.\r\n', '', 'Christian Escher', '', 1, 72, 'brig-glis', 46.3182, 7.98458),
('fin', 0, 'finnois', 'Finnish', 'suomi', 'Me tunnemme vain ne, jotka kesytämme, kettu sanoi. Ihmisillä ei ole enää aikaa tuntea mitään. He ostavat tavarat valmiina kauppiailta. Mutta koska kauppiaat eivät myy ystäviä, ihmisillä ei ole enää ystäviä. Jos haluat ystävän, kesytä minut!\r\n\r\n\r\nHyvästi, kettu sanoi. Kerron sinulle salaisuuteni, se on hyvin yksinkertainen: Vain sydämellä näkee hyvin. Tärkein on silmin näkymätöntä.\r\n', '', 'Merja Torvinen', '', 1, 63, 'finland', 61.9241, 25.7482),
('scr', 0, 'croate', 'Croatian', 'hrvatski jezik', 'Poznamo samo stvari koje pripitomimo, re&#x010D;e lisica. &#X010C;ovjek nema vi&#x0161;e vremena da i&#x0161;ta upozna. Kupuje samo ve&#x0107; izra&#x0111;ene stvari kod trgovca. A kako vi&#x0161;e ne postoje trgovci koji su prijatelji, &#x010D;ovjek vi&#x0161;e nema prijatelja. Ako ho&#x0107;e&#x0161; prijatelja, pripitomi me!\r\n\r\nZbogom, re&#x010D;e lisica. Evo moje tajne. Ona je vrlo jednostavna: vidi se dobro samo srcem. Najbitnije je o&#x010D;ima nevidljivo. \r\n', '', 'Jasna Adler', '', 1, 70, 'croatia', 45.1, 15.2),
('rom', 0, 'Romani', 'Romani', 'romani ?hib', 'Nané d&#x017E;indlé vavír kolá, fénciu karík savé san prisyklynó- phendziá líso. Manu&#x0161;á, nané lénde kiédy te syklión várso nevó. Joné kinén saró kerdó biknypáske. A paldavá, so nané adáso biknypnári, ke savõ sa&#x0161;tý te kinés malén, to i manu&#x0161;énde nané butedýr malá. Jé&#x015B;li kamés, kaj te javél túte jek mal, to prisykliákir man ke pe. \r\n...\r\nDevlésa-phendziá líso. Óke mro sekréto. Jou sýle izbít prósto: dykh jilésa. So sy andré na&#x0161;tý te udykhés jakhénca. \r\n', '', 'Lev Tcherenkov et Stéphane Laederich', '', 1, 46, 'macedonia', 41.6086, 21.7453),
('slk', 0, 'slovaque', 'Slovak', 'sloven&#x010D;ina', 'Spoznávame len to, ?o si skrotíme, povedala líka. ?udia u nemajú ?as nie?o spoznáva?. Kupujú si u obchodníkov celkom hotové veci. Niet vak takých obchodníkov, ?o by predávali priate?ov, preto ?udia priate?ov u nemajú. Ak chce ma? priate?a skro? si ma. \r\n\r\nZbohom, riekla líka. Tu je moje tajomstvo. Je ve?mi jednoduché: dobre vidíme iba srdcom. To hlavné je o?iam nevidite?né.\r\n', '', 'Mária Kovácová', 'corrigé par Vivien <ninien@zmail.sk>', 1, 69, 'slovakia', 48.669, 19.699),
('cze', 0, 'tchèque', 'Czech', '&#x010D;esky', 'Známe jen ty v&#x011B;ci, které si ocho&#x010D;íme, &#x0159;ekla li&#x0161;ka. Lidé u&#x017E; nemají &#x010D;as, aby n&#x011B;co poznávali. U obchodník&#x016F; nakupují v&#x011B;ci úlpn&#x011B; hotové. Ale proto&#x017E;e s p&#x0159;átelstvím se nekupc&#x010D;í, nemají p&#x0159;átel. Chce&#x0161;-lu p&#x0159;ítele, ocho&#x010D; si m&#x011B;!\r\n\r\nSbohem, &#x0159;ekla li&#x0161;ka. Tady je mé tajemství, docela jednoduché: správn&#x011B; vidíme jen srdcem. To bytostné o&#x010D;i nespat&#x0159;í. \r\n', '', 'Lubor Jílek', '', 1, 69, 'czech republic', 49.8175, 15.473),
('lit', 0, 'Lituanien', 'Lituanian', 'letuvi&#x0173 kalba', 'Susipa&#x017E;inti gali tik su tais dalykais, kuriuos prisijaukini, tarè lapè. &#X017E;mones neturi laiko ko nors pa&#x017E;inti. Jie nusiperka visk&#x0105; jau gatav&#x0105; i&#x0161; prekybinink&#x0173;. Bet kadangi nera prekybinink&#x0173; i&#x0161; kuri&#x0173; b&#x016B;t&#x0173; galima nusipirkti draug&#x0173;, tai draug&#x0173; &#x017E;mones ir neture. Jei nori tureti draug&#x0105;, prisijaukink mane! \r\n...\r\nLik sveikas, tare lape. &#X0161;tai kikia mano paslaptis. Ji labai paprasta: matyti galima tik &#x0161;irdimi. Tai, kas svarbiausia nematoma akimis. \r\n', '', 'Vitautas Kauneckas', '', 1, 58, 'lithuania', 55.1694, 23.8813),
('wen', 0, 'sorabe', 'Sorbian', 'Serb&#353;&#263;ina', 'Zeznaje&#x0161; jeno&#x017E; w&#x011B;cy, ki&#x017E; sej sklud&#x017A;i&#x0161;, rjeknje li&#x0161;ka. Lud&#x017A;o nimaja hi&#x017E;o &#x010D;as, n&#x011B;&#x0161;to na w&#x011B;domje bra&#x0107;. Kupuja zhotowjene w&#x011B;cy w kupnicach. Ale dokel&#x017E; njeje kupnicow, hd&#x017A;e&#x017A; mó&#x017E;e&#x0161; sej prrre&#x0107;elstwo kupi&#x0107;, nimaja hi&#x017E;o prrre&#x0107;elow. Hdy&#x017E; chce&#x0161; prrre&#x0107;ela, sklud&#x017A; mje! \r\n...\r\nAdej, rjeknje li&#x0161;ka. Tule je moje potajnstwo. Je cyle jednore: Jasnke wid&#x017A;i&#x0161; jeno&#x017E; z wutrobu. To najwa&#x017E;ni&#x0161;e wostanje wo&#x010D;omaj. ', '', 'Róza Domascyna', '', 1, 69, 'Gorlitz, Germany', 51.1531, 14.9753),
('tgl', 0, 'tagalog', 'Tagalog', 'tagalog', '\"Maaari lang nating maunawaan ang mga bagay na ating inaamo, sabi ng alamid. Ang mga tao ay wala ng panahon para matuto. Bumibili sila ng mga bagay na handang gawa sa tindahan. Ngunit, dahil wala namang tindahan ng kaibigan, ang mga tao ay wala ng kaibigan. Kung gusto mo ng kaibigan, amuin mo ako.\r\n\r\nPaalam, sabi ng alamid. Pakinggan mo ang aking sekreto. Napakasimple niya: sa pamamagitan lang ng puso na maaari tayong makakita ng mahusay. Ang pinakamahalaga ay hindi nakikita ng mata.\r\n', '', 'Marjorie Goetschy', '', 1, 40, 'philippines', 12.8797, 121.774),
('por-bra', 0, 'portugais brésilien', 'Brasilian', 'brasileiro', 'Só conhecemos as coisas que domesticamos, disse a raposa. Os homens já não têm tempo de domesticar nada. Compram nas lojas coisas feitas. Mas como não existe nenhuma loja onde se vendam amigos, os homens já não têm amigos. Se queres um amigo, domestica-me!\r\n\r\nAdeus, disse a raposa. Dir-lhe-ei um segredo. É muito simples: só se enxerga bem com o coração. O essencial é invisível aos olhos.\r\n', '', 'Prisca Agustoni', '', 1, 66, 'brazil', -14.235, -51.9253),
('cas-lun', 2, 'lunfardo', 'Lunfardo', '', 'Uno solo manya el fato que acamala, bate el zorro. A los chochamu ya no les da el cuero. Hoy la merca se compra solo en los almacenes. Pero como no existe el comerciante gomía, los tipos se quedan en banda. Si querés un gomía, yugála y dame bola\r\n\r\n-Adiós, dijo el zorro. Y guarda con mi deschave: solo se juna bien con el bobo. Lo que es bien debute es invisible pa los faroles.\r\n', '', 'Fernanda Nussbaum', '', 1, 65, '', 0, 0),
('que', 0, 'quechua', 'Quechua', 'runa simi / kichwa', 'Riqsillanchis uywallasqanchista, atuqqa nispa niykun. Runaqa manaña atinñachu uywayta. Anchaqa ruwasqakunata rantipayan. Masikuna mana rantinakuq chayri, manaña tarikunñachu. Masi masayta munanki chayqa, uywakullaway.\r\n\r\n Ripusaq!, atuq nin. Pakanataqa risqayki manan sasachus kayta. Anchachus rikukun sunqullawan. Chaninqa ñawinchiswan mana rikukunchu\r\n', '', 'Gladys Achahuanco et Julio Calvo', '', 1, 44, 'peru', -9.18997, -75.0152),
('pua', 0, 'purepecha-tarasque', 'Purepecha-Tarascan', '', 'Imani ambekuchisi míteka enkachi sesi pinterheka, isi uantaspti jiuatsi. Kuiripuecha nórekuksi antakuarhesinti pinterheni ka parheni ampe, iámintu ampe piásintiksi. Kóruchka nónani ataranhatasinti pichakuecha (píchpiricha) jimposi kuiripueha nóteru jatsiati píchpirichani. Ekari uékani jaka ma píchpirini, pinterhetakuarherini jínteni. \r\n\r\nNipa-ia, arhispti jiuatsi. Arhintikuakakini ma ampe koru. Nómintu sani tsunhapesti: mintsita jimpo kánekua sesi xarharasinti. Sánteru kéri ampakiti ampe no xarharasinti. \r\n', '', 'Pedro Márquez Joaquín', '', 1, 44, 'Michoacan, Mexique', 19.5665, -101.707),
('cpf', 0, 'créole ', 'french creole (pidgin)', '', 'Réna a di konsa sèl bagay ou moun kab donté sé sa ou konnin.Leszom pa gen tan anko pou yo apran anyin. Yo achté bagay tou fèt nan min komèsan yo. Min kom machan zanmi pa esisté, lézom pa gin zanmi anko. Si ou vlé youn zanmi, sé pou donté mwen.\r\n\r\n\r\nAdié Réna a di. Min sékrè pam. Li trè simp: Sé avek kèou ou kab wè pi bien. Bagay pi impotan invisib pou gé.\r\n', '', 'Carl et Yasmina Tippenhauer', '', 1, 42, 'antilles françaises', 16.5, -62),
('roh', 0, 'romanche (Rumantsch Grischun)', 'Romansh (Grisun)', 'rumatsch grisun', 'Ins conuscha mo quai chins ha domestitgà, ha ditg la vulp. Ils umans nhan betg pli temp demprender a conuscher insatge. Els cumpran las chaussas fatgas e finidas tar ils martgadants. Ma cunquai chi na dat nagins martgadants damis, nhan ils umans betg pli amis. Sche ti vuls in ami, alura domestitgescha mai!\r\n\r\nAdia, ha ditg la vulp. E quai è mes misteri. El è fitg simpel: ins vesa bain mo cun il cor. Lessenzial na vesins betg cun ils egls.\r\n', '', 'Ursulina Monn', '', 1, 51, 'grisons, suisse', 46.657, 9.57733),
('roh-srm', 2, 'romanche surmiran', 'Romansh (surmiran)', 'rumantsch surmiran', 'Ins amprenda a canoscher angal las tgossas tgins dumestegia, ò cuntinuo la golp. Igls carstgangs non betg ple peda damprender a canoscher ensatge. Els compran tot las tgossas bel fatgas e fittadas tigls martgadants. Ma i dat nigns martgadants dameis. Parchegl on igls carstgangs er nigns ameis. Schte vot en amei alloura stost am dumestager!\r\n\r\nAdia, ò raspundia la golp. E chegl è igl mies misteri, el è fitg simpel: angal cugl cor ins pogl veir andretg. Igl essenzial nè betg visibel pigls îgls.\r\n', '', 'Peder Cadotsch', '', 1, 51, 'savognin, suisse', 46.5979, 9.5981),
('roh-val', 2, 'romanche vallader', 'Romansh (vallader)', 'rumantsch vallader', 'Is cugnuoscha be quai chi sha domestichà, ha dit la vuolp. Ils umans nus piglian plü peida dad imprender a cognuoscher alch. I cumpran la roba belle fatta prols marchadants. Ma cun quai chi nu dà ingüns marchadants dad amis, nun han ils umans plü ingüns amis. Scha tü voust ün ami,schi prouva dam domestichar!\r\n\r\nAdieu, ha dit la vuolp. Quist es meis misteri. El es fich simpel: is vezza bain be cul cour. Lessenzial nus vezza culs ögls.\r\n', '', 'Jachen Curdin Arquint', '', 1, 51, 'scuol, suisse', 46.7869, 10.459),
('roh-put', 2, 'romanche puter', 'Romansh (puter)', 'rumantsch puter', 'Il pitschen prinz\r\n\r\nAs cugnuoscha be que cha sho domesticho, ho dit la vuolp. Ils umauns nus piglian plü peida dad imprender a cognuoscher qualchosa. A cumpran la roba belle fatta tals marchadaunts. Ma cun que cha que nu do üngüns marchadanuts dad amihs, nun haun ils umauns plü üngüns amihs. Scha tü voust ün amih, schi prouva dam domesticher!\r\n\r\nAdieu, ho dit la vuolp. Quist es mieu misteri. El es fich simpel: ques vezza bain be cul cour. Lessenziel nus vezza culs ögls.\r\n', '', '', '', 1, 51, 'Samedan', 46.5341, 9.87053),
('gug', 0, 'guaraní', 'Guaraní', 'avañe\'r&#x1EBD; ', 'Jaikuaa ñamombaévante, hei Aguara. Ava nomopa&#x0169;-véima hembiapo osaiteo hagua, mbaeve ha avavépe. Oñemu jejapopyre ha, ndaipórire mamove angir&#x0169; ojogua hagua, ava ndorekovéo iñir&#x0169;rã. Reipotárõ nde rayhupararã, nde chemombaeva erã. \r\n...\r\nAháma, hei Aguara. Che ñee ñemíta ndéve, ndahasýi ikuaapy: ñane ñeã guivénte jahechapaporã. Hekopetegua tesáèe ndojechaukái. \r\n', '', 'Ruth Mariela Mello-Wolter', '', 1, 12, 'paraguay', -23.4425, -58.4438),
('yor', 0, 'yoruba', 'Yoruba', 'yorùbá', 'A kìí mò? ju ohun tí a bá fi kóni ni kò?lò?kò?lò? wí. Àwo?n èníyàn ò ní àsìkò láti waadi nkankan mo. Rírà ni wo?n ? ra ohun gbogbo tí wó?n ti sè pari ló?dò? àwo?n olówò. Sùgbó?n nígbàtí kòsí ìsò wò ò?ré?, awo?n èèyàn ò ní oré? mó?. Tí o bá ? wá òré?, ? jé? máa kó? mí! \r\n\r\nÓ dìgbà, ni kò?lò?kò?lò? wí. Èyí ni às?írí mi. Èyí tí o ro?rùn jù. A ò le ríran àrídájú àyààfi pè?lú o?kan. N kan àtàtà o see fi ojú lásán rí.', 'corrected by Samuel Kayode Akinbo talktokay20042002@yahoo.ca', 'Taoufik Owodjobi', '', 1, 30, 'Oshogbo , nigeria', 7.76581, 4.56122),
('bam', 0, 'bambara', 'Bambara', 'bamanankan', 'M&#x254;g&#x254; t&#x25b; fosi d&#x254;n fo i ye min kolon, kungo-wulunin ko ten.\r\nKo ka ñini ka ko d&#x254;n, hadamaden senna ka telin o ma.\r\nF&#x25b;n lab&#x25b;nnenw ka ban, a b&#x25b; o de san u feerey&#x254;r&#x254;.\r\nTerifeerey&#x254;r&#x254; dun t&#x25b; yen, teri t&#x25b; hadamaden na bilen.\r\nNi b&#x25b; teri dø f&#x25b;, ne kolon!\r\n\r\nA ko Kan b&#x25b;n. Ne ka gundo fil&#x25b; nin ye,\r\nA ka n&#x254;g&#x254;n kojugu: F&#x25b;n b&#x25b; ye ka ñ&#x25b; ni dusukun de ye.\r\nA kolomay&#x254;r&#x254; t&#x25b; ye ni ñ&#x25b; ye. \r\n', '', 'Amadou Tamba DOUMBIA', '', 1, 31, 'mali', 17.5707, -3.99617),
('lad', 0, 'judéo-espagnol', 'Judeo-Spanish', '', '', 'lad.jpg', 'Beatrice Schmid et Angel Berenguer', '', 1, 48, '', 0, 0),
('tat', 0, 'tatar', 'Tatar', 'tatarça', 'Kulga ijaläshkän äjberne genä belep bula,-dide tölke. \r\nKeshelärneng närsä dä bulsa belergä baskacha vakytlary juk. \r\nAlar kibettän äzer äjberlärne genä satyp alalar. \r\n\r\nä bit äzer duslar satylatyrgan kibetlär juk, shunga kürä keshelärneng duslary da bette.\r\nägär dä üzengä dus buldyrasyng kilsä, mine kulga ijaläshter.\r\n\r\n-Hush, - dide tölke. Menä minem sörem shul:ul bik gadyj:\r\n tik jöräk kenä tieshenchä kürä ala, chönki ing möhime küzdän jasherelgän.\r\n', '', 'Gouldjikhan KACHAEVA', '', 1, 36, 'Tatarstan', 55.6212, 52.6011),
('akk', 0, 'akkadien', 'akkadian', 'akkadû', '', '', '', '', 0, 60, '', 0, 0),
('hbo', 0, 'hébreu ancien', 'old hebrew', '', '', '', '', '', 0, 61, '', 0, 0),
('cym', 0, 'gallois', 'Welsh', 'cymraeg', '', '', '', '', 0, 55, '', 0, 0),
('uzb', 0, 'ouzbek', 'Uzbek', 'o?zbek tili', 'Inson nimani qolga orgatsa oshanigina biladi, dedi tulki. Hozir odamlarning organishga vaqti yoq. Ular hamma narsaning tayyorini dokondan sotib olishadi. Lekin dostlarni sotadigan dokon yoqligi uchun, endi odamlarning dostlari ham yoq. Agar dosting\r\nbolishini hohlasang unda meni qolga orgat !\r\n\r\n- Hayr, dedi tulki. Mana mening sirim. U juda oddiy: inson yolgiz yuragi ila togri kora oladi. Zotan eng muhim narsalar kozdan berkitilgan.', '', 'Narghiza Kuldashova', '', 1, 36, 'uzbekistan', 41.3775, 64.5853),
('kat', 0, 'géorgien', 'Georgian', 'kartuli ena', '', '', '', '', 0, 34, 'georgia', 0, 0);
INSERT INTO `prince_language` (`iso`, `varpron`, `french`, `english`, `self`, `text`, `imgtext`, `trad`, `comment`, `actif`, `grp`, `geo`, `geolat`, `geolng`) VALUES
('bul', 0, 'bulgare', 'Bulgarian', '', '&#1057;&#1072;&#1084;&#1086; &#1085;&#1077;&#1097;&#1072;&#1090;&#1072;, &#1082;&#1086;&#1080;&#1090;&#1086; &#1089;&#1080; &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080;&#1083;, &#1084;&#1086;&#1078;&#1077;&#1096; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1077;&#1077;&#1096; -  &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1061;&#1086;&#1088;&#1072;&#1090;&#1072; &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1074;&#1088;&#1077;&#1084;&#1077; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1103;&#1074;&#1072;&#1090; &#1085;&#1080;&#1097;&#1086;. &#1058;&#1077; &#1082;&#1091;&#1087;&#1091;&#1074;&#1072;&#1090; &#1086;&#1090;  &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080;&#1090;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1080; &#1085;&#1077;&#1097;&#1072;. &#1053;&#1086; &#1090;&#1098;&#1081; &#1082;&#1072;&#1090;&#1086; &#1085;&#1103;&#1084;&#1072; &#1085;&#1080;&#1082;&#1072;&#1082;&#1074;&#1080; &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080; &#1085;&#1072; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;, &#1093;&#1086;&#1088;&#1072;&#1090;&#1072;  &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;. &#1040;&#1082;&#1086; &#1080;&#1089;&#1082;&#1072;&#1096; &#1076;&#1072; &#1089;&#1080; &#1080;&#1084;&#1072;&#1096; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083; - &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080; &#1084;&#1077;!</p>\r\n<p>- &#1057;&#1073;&#1086;&#1075;&#1086;&#1084; - &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1045;&#1090;&#1086; &#1084;&#1086;&#1103;&#1090;&#1072; &#1090;&#1072;&#1081;&#1085;&#1072;. &#1058;&#1103; &#1077;  &#1084;&#1085;&#1086;&#1075;&#1086; &#1087;&#1088;&#1086;&#1089;&#1090;&#1072;: &#1085;&#1072;&#1081;-&#1093;&#1091;&#1073;&#1072;&#1074;&#1086;&#1090;&#1086; &#1089;&#1077; &#1074;&#1080;&#1078;&#1076;&#1072; &#1089;&#1072;&#1084;&#1086; &#1089;&#1098;&#1089; &#1089;&#1098;&#1088;&#1094;&#1077;&#1090;&#1086;. &#1053;&#1072;&#1081;-&#1089;&#1098;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1086;&#1090;&#1086; &#1077;  &#1085;&#1077;&#1074;&#1080;&#1076;&#1080;&#1084;&#1086; &#1079;&#1072; &#1086;&#1095;&#1080;&#1090;&#1077;.', '', '', '', 1, 70, 'bulgaria', 42.7339, 25.4858),
('kur', 0, 'kurde', 'Kurdish', '', '', '', '', '', 0, 45, '', 0, 0),
('mon', 0, 'mongol', 'Mongolian', '', '', 'mongol.jpg', 'Amgalan Munkhdorj', '', 1, 37, 'mongolia', 46.8625, 103.847),
('ewo', 0, 'ewondo', 'Ewondo', '', '', '', '', '', 0, 33, '', 0, 0),
('lin', 0, 'lingala', 'Lingala', 'lingala', '', '', '', '', 0, 29, '', 0, 0),
('som', 0, 'somali', 'Somali', '', '', '', '', '', 0, 28, '', 0, 0),
('bas', 0, 'bassa', 'Basaa', '', '', '', '', '', 0, 33, '', 0, 0),
('ibo', 0, 'igbo', 'Igbo', 'igbo', '', '', '', '', 0, 30, '', 0, 0),
('fan', 0, 'fang', 'Fang', '', '', '', '', '', 0, 33, '', 0, 0),
('swa', 0, 'swahili', 'Swahili', 'kiswahili', '« Tunajua tu, vitu ambavyo tunaweza kunyanyasa », kasema mbwa mwitu. « Siku hizi, watu hawana wakati wa kujua chochote. Wao hununua bidhaa ambazo tayari zimeandaliwa wachukuzi. Na kwa vile hakuna wachukuzi wa urafiki, wao hawana marafiki. Kama kweli unataka rafiki, mimi hapa, nitupilie mbali upori wangu! \r\n\r\nKwaheri! » , kasema mbwa mwitu, « Siri yangu ni jambo rahisi sana. Ni roho zetu zinatuongoza kutafsiri mambo yale muhimu, ambayo hatuwezi kuona kwa macho yetu makavu. »\r\n', '', 'Lilian Magonya', '', 1, 29, 'kenya', -0.023559, 37.9062),
('amh', 0, 'amharic', 'Amharic', 'amharic', '', '', '', '', 0, 62, '', 0, 0),
('luo', 0, 'luo', 'Luo', 'dholuo', '', '', '', '', 0, 4, '', 0, 0),
('ceb', 0, 'cebuano', 'Cebuano', 'Sinugboanon', '', '', '', '', 0, 40, '', 0, 0),
('vie', 0, 'vietnamien', 'Vietnamese', '', '', 'vie.jpg', '', '', 1, 39, 'vietnam', 14.0583, 108.277),
('cmn', 0, 'mandarin', 'Mandarin', '', '', 'chinois.jpg', '', '', 1, 38, 'china', 35.8617, 104.195),
('bos', 0, 'bosniaque', 'bosnian', 'Bosanski', '\"Poznavati se mogu samo pripitomljene stvari\", re&#x010D;e lisica. \"Ljudi vi&#x161;e nemaju vremena da upoznaju ne&#x161;to novo. Oni kupuju ve&#x107; napravljene stvari kod prodava&#x010D;a. Ali, po&#x161;to ne postoji osoba koja prodaje prijatelje, ljudi, zapravo, nemaju prijatelja. Ako ho&#x107;e&#x161; da ima&#x161; prijatelja onda pripitomi mene ! »\r\nZbogome, re&#x010D;e lisica. Evo je moja tajna. Jednostavna je: dobro se mo&#x017E;e vidjeti samo. Sa srcem. Ono najva&#x017E;nije je nevidlijivo za o&#x010D;i.\r\n', '', 'Selma Avdic', '', 1, 70, 'bosnia', 43.9159, 17.6791),
('jam', 0, 'créole jamaïcain', 'Jamaican Creole', '', '\"Wi ongle riili kyan nuo bout di ting-dem wa wi tek fi-wi han breik iin\", Faks se. \"Man no ha no taim agein fi nuo bout notn. Tidei, dem jos a bai wa di higla-dem a sel. Bot higla no sel fren, so dem no kiip fren agein. Ef yu waan waan fren, yu mos breik mi iin!\".\r\n\r\n\"Mi gaan\" Faks se \"An sii fi-mi siicrit ya... i wel simpl : wi ongl sii gud wid fi-wi haat. Wa riili mata, yu no tek aiy sii i\"', '', 'Stéphanie Durrleman-Tame', '', 1, 73, 'jamaica', 18.1096, -77.2975),
('cos', 0, 'corse', 'Corsican', '', 'Cunnosce, si cunnoscenu e cose chì omu ammansa, disse a volpe. L\'omi ùn anu più tempu da cunnosce nulla. Compranu cose fatte è lestre ind\'è i marcanti. Ma ùn ci ne hè marcanti d\'amichi è elli amichi ùn ne anu più. S\'è tù voli un amicu, ammansa à mè.\r\n\r\nAddiu disse a volpe. Eccuti u me sicretu. Hè bellu semplice : vede si vede bè cù u core. I punti di primura lochji ùn li ponu vede.\r\n\r\n', '', 'Santu Casta', '', 1, 52, 'corsica', 42.0396, 9.01289),
('bar', 0, 'bavarois', 'Bavarian', 'bayrisch', 'Du kennst ja nua dees, wo\'st amoi zaehmt host, hot da Fux gsogt.\r\nD\'Leit ham ja koa Zeit mea, dass wos kenna leana. De kaffa oiss scho\r\nfeate gmacht bei am Hendla. Awa wei hoit koana mid aam Freind handln\r\nwui, hoot koana an Freind mea. Wann\'st oiso aan Freind hom wuisst,\r\nmuasst mi hoit zaehma.\r\n\r\nPfiad di! hot da Fuchs gsogt. Und des is mei G\'hoamnis - s\'is awa recht\r\noafach: du koo\'st nua mid\'m Heazn guat seng. Oiss, wos wichtig is,\r\nis mid de Augn ned zum segn!\r\n', '', 'Gabi Waltermann', '', 1, 72, 'bavière', 48.7904, 11.4979),
('hin', 0, 'hindi', 'Hindi', 'hindi', '', 'hindi.jpg', 'D & K Mathur / K. Asthana', 'deepak.mathur@mageos.com', 1, 46, 'india', 20.5937, 78.9629),
('tok', 0, 'toki pona', 'Toki Pona', '', 'soweli loje li toki: \"jan li pona e ijo la jan li sona e ona taso. tenpo ni la jan li jo ala e tenpo li ken sona e ala. ona li kama jo e ijo pini kepeken mani lon tomo pi jan pana. taso jan li pana ala e jan pona tan mani la jan li jo ala e jan pona. sina wile jo e jan pona la o pona e mi!\"\r\n\r\nsoweli loje li toki e ni: \"tawa pona. ni li sona insa mi li pona mute. jan li lukin pona kepeken pilin taso. jan li ken ala lukin e ijo suli kepeken oko.\"', '', '', 'Mathieu Fraikin . was soweli li toki e ni: jan li sona taso e ijo pi pali pona. tenpo ala la jan li ken sona. jan li jo mani e ijo sama lon jan pana mani. jan pana mani pi jan pona li lon ala la jan pona. sina wile e jan pona la o pali pona e mi. soweli l', 1, 14, '', 0, 0),
('fur', 0, 'frioulan', 'Friulan', 'furlan', '', 'frioule.PNG', 'Albino Manfredo', 'from JMP', 1, 51, 'udine', 46.0649, 13.2307),
('oci-gascon', 0, 'occitan gascon', 'Gascon', 'gascu', '', 'gascon.PNG', 'Eric Chaplain', 'from JMP 2013', 1, 49, 'Auch', 43.6465, 0.5855),
('hat', 0, 'créole haïtien', 'Haitian Creole', 'kreyòl', '', 'haitien.PNG', 'Frantz Gourdet', 'from JMP 2015', 1, 42, 'Port-au-Prince', 18.54, -72.3399),
('ind', 0, 'indonésien', 'Indonesian', 'Bahasa Indonesia', '', 'indonesien.PNG', 'Kuncoro Wastuwibowo', 'from JMP 2014', 1, 40, 'Jakarta', -6.16667, 106.8),
('pap', 0, 'papiamento', 'Papiamento', 'Papiamento', '', 'papiamentu.PNG', 'Edward de Jongh', 'from JMP 1982', 1, 78, 'willemstad', 12.1167, -68.9333),
('wln-namur', 0, 'wallon namurois', 'Walloon', 'walon', 'On ni conèt ki les sacwès k\' on atraite, dijha li rnåd. Les omes n\' ont pus pont d\' timps po rén conèche. Is achetenut des sacwès totès fwaites amon les mårtchands. Mins come gn\' a pont di mårtchands d\' amis, les omes n\' ont pus pont d\' amis. Si vos vloz on ami, atraitîz-mi !\r\n\r\nA Diè, dijha li rnåd. Voci mi sicret. Il est foirt simpe : on ni voet bén k\' avou si keur. Li principal est-invisibe po les îs.', '', 'Maisse Arsouye', '', 1, 50, 'namur', 50.4641, 4.86043),
('avk', 0, 'kotava', 'Kotava', '', 'Va tulegovitan plek yo anton grupet, bresitol kalir. Ayik ta kona grupera mea\r\nugaldir. Dene dolekik va ixam varon iayan plek yo luster. Vexe oye da me tir\r\ndolekik va nik acum ayik va nik mea dir. Ede va nik kuranil, va jin tulegovital\r\n!\r\n\r\nDone, bresitol kalir. Batse jinafa birga. Opelapafa : kan takra anton winhit.\r\nBenele kan iteem tir merowine.', '', 'Philippe G.', '', 1, 14, '', 0, 0),
('oci-oux', 2, 'occitan d\'Oulx', 'Occitan (Oulx)', '', 'Nou couneison mac lâ choza quë nz\'avon aprivazà, à dí \'l reinâ. Louz omme i l\'on pâ mai \'l ton ëd couneissë ron. I l\'achëtton da lou marchan \'d choza jó feita. Ma, pisquë la lh\'à pâ \'d marchan d\'amisse, louz omme i l\'on pâ mai d\'amisse. S\'ou vouré in amiss, aprivazëmmë!\r\nAdieu, ou lh\'à dí \'l reinâ. Voualà moun sëcré. Ou l\'i fran sinplë: la s\'vé bion mac bou \'l ceur. L\'essansièl, ou l\'i invizibblë për louz iooû. ', '', 'Giovanna Jayme', 'from nikura babel, Prince dans le patois occitan d\'Oulx (Italie, près de Briançon), écrit en graphie \"Escolo dóou Po\".', 1, 49, 'oulx', 45.0333, 6.83363),
('oci-via', 2, 'occitan viaran', 'Occitan (Viaran)', '', 'Nou counishën puè que la chòuza que nou z-avën aprivouazè, o di l\'rirar. Lou z-òme i z-an pa mai l\'tën d\'counètre pa ren. I z-achatan òu marchan dë chòuza jo touta facha. Mè, coumo ou l\'i o pa d\'marchan d\'ami, lou z-òme i z-an pa mai d\'ami. S\'tu voua z-un ami, aprivouaza-më!\r\nAr\'vèire, ou l\'o di l\'rirar. \'Co l\'i moun sëcrë. Ou l\'i bën simple: la s\'vèi bën qu\'ëmbë l\'cor. L\'eshënshiè, ou l\'i invizible pèr lou z-uòu. ', '', 'Nikura', 'from babel, dans le patois occitan de mon village (patois viaran, langue en train de mourir), en Briançonnais, mais côté français, plus ou moins avec la même graphie mais allégée. (que occ-oul)', 1, 49, '', 0, 0),
('oci-gav', 2, 'occitan gavot', 'Occitan (Gavot)', '', 'Òm coneisse que las chausas qu\'òm aprivèisa, dissèc lo reinart. Los òmes an mai lo temps de pas ren coneisser. Achaton de chausas totas fachas ves los marchands. Mas bòrd qu\'i a pas de marchands d\'amics, los òmes an pas mai d\'amics. Se vòles un amic, apri', '', 'Nikura (Babel)', 'En occitan alpin (ou gavot) de la zone de Gap, cela donnerait ceci. La graphie choisie est celle de l\'occitan standard cette fois-ci, en essayant de retranscrire un langage soutenu.', 1, 49, 'gap, france', 44.5599, 6.0759),
('kir', 0, 'kirghize', 'Kyrgyz', '', '<pre>&#1041;&#1080;&#1088;&#1257;&#1085;&#1199; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1089;&#1257;&#1187;, &#1086;&#1096;&#1086;&#1085;&#1091; &#1075;&#1072;&#1085;&#1072; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257; &#1084;&#1199;&#1084;&#1199;&#1082;&#1199;&#1085; - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;\r\n&#1040;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1072; &#1073;&#1080;&#1088;&#1085;&#1077;&#1088;&#1089;&#1077;&#1085;&#1080; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257;, &#1091;&#1073;&#1072;&#1082;&#1099;&#1090;&#1072;&#1088;&#1099; &#1078;&#1086;&#1082;. &#1040;&#1083;&#1072;&#1088; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1085; &#1076;&#1072;&#1103;&#1088;\r\n&#1073;&#1091;&#1102;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1099;&#1096;&#1072;&#1090;. &#1041;&#1080;&#1088;&#1086;&#1082;, &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1076;&#1091; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1091;&#1091;&#1075;&#1072; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1088;\r\n&#1078;&#1086;&#1082; &#1075;&#1086;, &#1072;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099;&#1085; &#1076;&#1072; &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1091; &#1078;&#1086;&#1082; &#1073;&#1086;&#1083;&#1091;&#1087; &#1082;&#1072;&#1083;&#1076;&#1099;. &#1069;&#1075;&#1077;&#1088;&#1076;&#1077; &#1089;&#1077;&#1085;&#1076;&#1077; &#1076;&#1086;&#1089;\r\n&#1073;&#1086;&#1083;&#1075;&#1086;&#1085;&#1076;&#1091; &#1082;&#1072;&#1072;&#1083;&#1072;&#1089;&#1072;&#1187;, &#1089;&#1077;&#1085; &#1084;&#1077;&#1085;&#1080; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1199;&#1087; &#1072;&#1083;!<br>\r\n- &#1050;&#1086;&#1096;, - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;. - &#1052;&#1099;&#1085;&#1072; &#1084;&#1077;&#1085;&#1080;&#1085; &#1089;&#1099;&#1088;&#1099;&#1084;. &#1040;&#1083; &#1072;&#1073;&#1076;&#1072;&#1085; &#1078;&#1257;&#1085;&#1257;&#1082;&#1257;&#1081;:\r\n&#1069;&#1187; &#1084;&#1072;&#1072;&#1085;&#1080;&#1083;&#1199;&#1199; &#1082;&#1257;&#1079;&#1076;&#1257;&#1085; &#1078;&#1199;&#1084;&#1199;&#1083;&#1199;&#1199;.', '', '', '', 1, 36, 'Kirghizistan', 41.2044, 74.7661),
('tur', 0, 'turc', 'Turkish', 'türkçe', '&#X0130;nsan ancak evcille&#x015F;tirirse anlar, dedi tilki. &#X0130;nsanlar&#x0131;n art&#x0131;k anlamaya zamanlar&#x0131; yok. Dükkânlardan her istediklerini sat&#x0131;n al&#x0131;yorlar. Ama dostluk sta&#x0131;lan bir dükkân olmad&#x0131;&#x011F;&#x0131; i&#x00E7;in dostlar&#x0131; yok art&#x0131;k. E&#x011F;er dost istiyorsan, beni evcille&#x015F;tir !\r\n\r\nHos&#x00E7;akal, dedi tilki. &#X0130;&#x015F;te sana dir s&#x0131;r, &#x00E7;ok basit bir &#x015F;ey : &#x0130;nsan yaln&#x0131;z  yüre&#x011F;iyle do&#x011F;ruyu görebilir. As&#x0131;l görülmesi gerekeni gözler göremez.', '', 'Gonca Celik', '', 1, 36, 'turkey', 38.9637, 35.2433),
('est', 0, 'estonien', 'Estonian', 'eesti', 'Väike prints\r\n\r\n\"Tuntakse ainult neid asju, mida taltsutatakse, \" ütles rebane.\r\nInimestel pole enam aega midagi tundma õppida. Nad ostavad kõiki asju valmis kujul kaupmeeste käest. Ja kuna ei ole kaupmehi, kes sõpru müüksid, siis polegi inimestel enam sõpru. Kui tahad endale sõpra, siis taltsuta mind !\r\n\r\n\" Jumalaga, \" ütles rebane. \" Siin on minu saladus. See on väga lihtne : ainult südamega näed hästi. Kõige tähtsam on silmale nähtamatu. \"\r\n', '', 'Ott Ojamaa', '', 1, 63, 'estonia', 58.5953, 25.0136),
('ell', 0, 'grec', 'Greek', 'E&lambda;&lambda;&nu;&rho;&xi;&kappa;&alpha;', '&Delta;&epsilon;  &gamma;&nu;&omega;&rho;&#943;&zeta;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf; &pi;&alpha;&rho;&#940; &#972;,&tau;&iota; &epsilon;&xi;&eta;&mu;&epsilon;&rho;&#974;&nu;&epsilon;&iota;, &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &epsilon;&upsilon;&kappa;&alpha;&iota;&rho;&omicron;&#973;&nu;  &pi;&iota;&alpha; &nu;&alpha; &mu;&#940;&theta;&omicron;&upsilon;&nu; &tau;&#943;&pi;&omicron;&tau;&epsilon;. &Tau;&rsquo;&alpha;&gamma;&omicron;&rho;&#940;&zeta;&omicron;&upsilon;&nu; &#972;&lambda;&alpha; &#941;&tau;&omicron;&iota;&mu;&alpha; &alpha;&pi;&#972; &tau;&omicron;&upsilon;&sigmaf; &epsilon;&mu;&pi;&#972;&rho;&omicron;&upsilon;&sigmaf;. &Kappa;&alpha;&theta;&#974;&sigmaf; &#972;&mu;&omega;&sigmaf; &delta;&epsilon;&nu;  &upsilon;&pi;&#940;&rho;&chi;&omicron;&upsilon;&nu; &delta;&iota;&#972;&lambda;&omicron;&upsilon; &#941;&mu;&pi;&omicron;&rho;&omicron;&iota; &phi;&#943;&lambda;&omega;&nu;, &omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &#941;&chi;&omicron;&upsilon;&nu; &pi;&iota;&alpha; &phi;&#943;&lambda;&omicron;&upsilon;&sigmaf;. &Alpha;&nu; &theta;&#941;&lambda;&epsilon;&iota;&sigmaf; &#941;&nu;&alpha;  &phi;&#943;&lambda;&omicron;, &epsilon;&xi;&eta;&mu;&#941;&rho;&omega;&sigma;&#941; &mu;&epsilon; !\r\n(...)\r\n&#904;&chi;&epsilon;  &gamma;&epsilon;&iota;&alpha;! &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&rho;&#943;&sigma;&tau;&epsilon; &tau;&omicron; &mu;&upsilon;&sigma;&tau;&iota;&kappa;&#972; &mu;&omicron;&upsilon;. &Epsilon;&#943;&nu;&alpha;&iota; &pi;&omicron;&lambda;&#973; &alpha;&pi;&lambda;&#972; : &delta;&epsilon; &beta;&lambda;&#941;&pi;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf;  &kappa;&alpha;&lambda;&#940; &pi;&alpha;&rho;&#940; &mu;&omicron;&nu;&#940;&chi;&alpha; &mu;&epsilon; &tau;&eta;&nu; &kappa;&alpha;&rho;&delta;&iota;&#940;. &Eta; &omicron;&upsilon;&sigma;&#943;&alpha; &epsilon;&#943;&nu;&alpha;&iota; &alpha;&#972;&rho;&alpha;&tau;&eta; &gamma;&iota;&alpha; &tau;&alpha; &mu;&#940;&tau;&iota;&alpha;.', '', 'Michel Lassithiotakis et Anastasia Lazaridis', '', 1, 47, 'greece', 39.0742, 21.8243),
('vls', 0, 'flamand occidental', 'West Flemish', 'Vlaemsch/Vlaams', 'Ze kenn oljinne die dingn woamee da ze echt vertrouwd zin, zegt den vos. De minsn eyn gin tid mji om echt te zien. Ze kwopn dingn kant en kloar bi nen handeloare. Mo verkwopers van moaten, da bestoa nie, en dus eyn de minsn gin moaten mji. Aj ne moat wilt, moej mi temn!...\r\nSalu, zegt den vos, Ier is min geheim. T\'i vrji jinvoudig: Goe zien kundje oljinne me jen herte. Et weznlukke is onzichtboar vo jun wogn.\r\n\r\n', '', 'Sam Huyzentruyt', 'vls=iso3 gem=iso', 1, 68, 'gent', 51.0536, 3.72087),
('urd', 0, 'ourdou', 'Urdu', '', '', 'urdu.gif', 'Zainab Ahmed', '', 1, 46, 'pakistan', 30.3753, 69.3451),
('wuu-shg', 0, 'wuu de Shangaï', 'Shanghaines', 'zanhererau', '', 'shangai.jpg', 'Enchao Lu', 'iso3=wuu iso2=chi / zho', 1, 38, 'shangai', 31.2307, 121.473),
('lao', 0, 'laotien', 'Lao', '', '', 'laotien.gif', '', 'V. Siriyasack siriyas0@etu.unige.ch', 1, 15, 'laos', 19.8563, 102.495),
('kab', 0, 'kabyle', 'Kabyle', 'taqbaylit', 'Ye nnad izirthi, ne tsakey kan ayen swayes in wulef. Imdhanen ur san ara y wekth i thmusni. Tsarend kan ayen i hgan siheraren. Sgwaken n qethwan iheraren i znuzen thadukli, imdhanen ur san ara imdukwal. Ma the vgher amdakwel, alesiyé.\r\nYe nnad izirthi qim dhi le hna. Atsan serya inu, dhan i sehyen. Tha mughli nel kayen tseqed sgul. Ey ni lan dhe ssah its wafer af allen\r\n', '', '', 'khlifa ouidr houidir@hotmail.com de la région de Beni-Douala, Tizi Ouzou :', 1, 25, 'Kabylie', 36.817, 4.3),
('nan', 0, 'min de Taiwan', 'Taiwan Min', '', 'gun chi liau kai ho\' sun hok chi mih\r\nho\' li kong\r\nlin lui kin a lit i keng bo\' si kan khi liau kai saN mih a\r\nin an siong lin hia beh hoe hian seng phin\r\nm ko ki lian bo sun chai siau siu peng iu e siong jin\r\nlin lui toh\r\nbo peng iu a\r\nlu ko\' li beh kau chit e peng iu\r\nsun hok goa pa\r\neng piat a\r\nho\' li kong\r\nche toh si goa e pi bit\r\nchin kan tan\r\nchi u iong sim lai khoaN chiah e khoaN e chheng\r\nsiong ki pun e mih kiaN si bak chiu so\' khoaN be tioh e', '', '', '', 1, 38, 'taiwan', 23.6978, 120.961),
('khm', 0, 'khmer', 'Khmer', '', '', 'khmer.jpg', 'Zamin Saxer', '', 1, 39, 'Cambodge', 12.5657, 104.991),
('isl', 0, 'islandais', 'icelandic', '', 'Maður þekkir ekki annað en það, sem maður temur, sagði refurinn. Mennirnir hafa ekki lengur tíma til að þekkja neitt. Þeir kaupa tilbúna hluti hjá kaupmanninum. En þar sem ekki eru til kaupmenn, sem versla með vini, eiga menn ekki lengur neina vini. Ef þú vilt eiga vin, Þá temdu mig!\r\n\r\nVertu sæll, sagði refurinn. Hér er leyndarmálið mitt. Það er mjög einfalt: maður sér ekki vel nema með hjartanu. Það mikilvægasta er ósýnilegt augunum.\r\n', '', 'Þórarinn Björnsson', 'envoyé par cjorg@infomaniak.ch', 1, 57, 'iceland', 64.9631, -19.0208),
('aze', 0, 'azeri', 'Azerbaijani', 'Az?rbaycan', '', 'azeri.jpg', '', 'from patoche', 1, 36, 'azerbaijan', 40.1431, 47.5769),
('spa-crc', 1, 'espagnol costaricain', '', '', '', '', '', 'varpron: Costa Rica', 1, 65, 'Costa Rica', 9.74696, -83.7543),
('spa-arg', 1, 'espagnol argentin', '', '', '', '', '', 'varpron : argentine', 1, 65, 'Argentine', -38.4161, -63.6167),
('spa-and', 1, 'espagnol andalou', '', '', '', '', '', 'varpron :  andalou', 1, 65, 'andalousie', 37.5443, -4.72775),
('fra-qbc', 1, 'français québécois', '', '', '', '', '', 'varpron: québec', 1, 50, 'Montréal, Canada', 45.5454, -73.6391),
('lld-bad', 2, 'ladin de la val Badia', '', '', 'Le pice prinz\r\n\r\n\"An conësc mâ ées côsses ch\'an inzertiëia, \" â spo ajuntè la olp. \"Les porsones ne n\'á plü degun tëmp por imparè a conësce valgügn. Ares se cumpra scialdi döt tles botëghes. Mo deach\'al ne n\'é degünes botëghes che vënn amîsc, nen á les porsones plü gnanca degügn. Porchël inzertiëieme, sce t\'ôs avëi n amich!\"\r\n\r\n\"Adio,\" â respongnü la olp. \"Chilò áste &#x015b;ëgn spo in&#x0107;e mî socrët. Al é dër scëmpl: an vëiga mâ bun cun le cör, l\'essenzial ne vëigon nia cun i edli\"', '', 'Giovanni Mischì', 'from micura de ru', 1, 51, 'Val Badia', 46.5966, 11.7828),
('lld-gar', 2, 'ladin de la Val Gardena', '', '', 'L pitl prinz\r\n\r\n\"Mé cie che n zertiëia, cunëscen\", ova dit la bolp. \"La persones ne n\'á nia plu dl\'aurela de emparé a cunëscer zeche. Les se compra dut bele anjiniá tla butëighes. Ma daviá che l ne n\'ie nia butëighes che vënd cumpanies, nen n\'á la jënt nia plu. Sce te ues n cumpani, muesse me zertië!\"\r\n\r\n\"Adio\", ova dit la bolp. \"Tlo es mi sucrët. L ie drët scëmpl: cun l cuer vëijen l bën. Cie che ie plu empurtant ne vëijen nia cun i uedli\"', '', 'Beatrix Prinoth', 'from micura de ru', 1, 51, 'Val Gardena', 46.5121, 11.7293),
('roh-sut', 2, 'romanche sutsilvan', '', '', 'Igl pintg prenzi\r\n\r\nIgn ancanuscha me quegl cign â domestitgieu, â la gualp getg. Igls carstgàns ân betga ple peada damprender dancanuscher anzatge. Els cumpran las tgossas fatgas a fitadas tar igls marcadànts. Mo parquegl cigl dat nigns marcadànts damitgs, ân igls carstgàns betga ple amitgs. Scha tei vol egn amitg, alura domestitgescha me!\r\n\r\nAdia, â la gualp getg. A quegl e mieu misteri. El e fetg sempel: Ign veza bagn me cun igl cor. Igl essenzial vezign betg cun igls îls.\r\n', '', '', 'from clau soler 2010 01 22', 1, 51, '', 0, 0),
('gle', 0, 'gaélique irlandais', '', 'Gaeilge', 'An prionsa beag\r\n\r\n-Ní chuireann tú aithne ach ar na nithe a chlónn tú, arsa an madra rua. Na \r\ndaoine anois, níl an t-am acuníos mó aithne a chur ar aon ní. Ceannaíonn \r\nsiad rudaí réamhdhéanta ó lucht díolta. Ach ó tharla nach bhfuil aon lucht \r\ndíolta cairde ann, níl cairde ar bith ag na daoine níos mó. Má tá cara de \r\ndhíth ort, déan mé a chló!\r\n\r\n-Slán leat, arsa an madra rua. Seo é mo rún duit. Tá sé ansimpli: is leis an \r\nchroí is fearr a tímid. Na rudaí is bunúsaí amuigh, ní féidir leis na súile \r\niad a fheiceáil.', '', 'Breandán Ó Doibhlin', '', 1, 74, 'dublin', 53.3441, -6.26749),
('nbf', 0, 'naxi', 'Naxi', 'naxi', '', 'naxidongba.gif', 'Shuyuliu He', 'from isa', 1, 75, 'Lijiang, china', 24.687, 102.964),
('per', 0, 'persan', 'Persian', '', '', 'persan.jpg', 'Arash Khosropanahi', '', 1, 45, 'téhéran', 35.6908, 51.4352),
('bzd', 0, 'bribri', 'bribri', '', '', 'bribri.jpg', 'Ali García, Département de linguistique de l\'Université du Costa Rica', 'from antonio', 1, 76, 'Costa Rica bri bri', 9.25, -83.25),
('jam-lim', 2, 'créole du Limón', 'Limonese creole', '', 'We onle nuo de ting weh we kian tiem, de foks seh. Nou a die man naa no taim to nuo nottin. Every thing them bai mek arredy. An sins you kiant fain a stoor we sel fren, man no hav no fren agen. If yu want a fren, ¡yu gwine hav fi tiem mi!\r\n\r\nA gan, de foks seh. But before mek mi tel u a secrit. It is very simpl: yu kian only si good with yu haat. What matta de most yu kianot si only with yu eyethem.', '', 'Kinda Heron Edwards', 'Kinda Heron <kinyalex@gmail.com>', 1, 73, 'Limón, Costa Rica', 9.98, -83.03),
('pcd-ath', 2, 'picard d\'Ath', '', '', 'On n counwat qu lès afères qu on amadoûe qui dit l èrnârd. Lès omes n ont pus l tans de rieu counwate. I-z-acattë dès aféres toutes ajvées à lès marchands. Mès, vu qu i n a gneu d marchands d coumarâdes, lès omes n ont pus d coumarâdes. Si vos voleuz in coumarâde, amadoûèz-m !\r\n\r\nAdjeu qui dit l èrnârd. Vlà chi m sëcreut. Il eùt fôrt simpe : on n vwat bieu qu aveu l keûr. Eùl prinjipâl n eùt gneu visîbe pou lès ieus.\r\n', '', 'R.Huvelle', '', 1, 50, 'Ath', 50.6403, 3.77724),
('yid', 0, 'yiddish', 'Yiddish', '', 'Men bakent zikh mit zakhn nor ven men shtubikt zey ayn, hot der fuks gezogt. Di mentshn hobn nisht keyn tsayt mit epes zikh bakenen. Zey koyfn fartike zakhn bay di sokhrim. Ober azoy vi keyn khaveyrim-sokhrim zenen nisht faran, hobn di mentshn nisht keyn khaveyrim. Oyb du vilst a khaver, shtubik mikh ayn...\r\n- Adye, hot gezogt der fuks. Ot iz mayn sod. Er iz zeyer poshet: men zet gut nor mitn hartsn. Dos vikhtikste iz farborgn fun di oygn.', '', 'Shloyme Lerman', 'from CIC (alexia et arald)', 1, 68, '', 0, 0),
('frp', 0, 'francoprovençal (arpitan)', '', 'arpitan', '- In cognët maque le tsouse que se rendon atréte, l\'at repondu-lèi lo rèinar. Le s-ommo l\'an pamë lo ten de cognëtre ren. Atseton in tsë le martsan le tsouse dza féte. Më di moman que le martsan cognësson pa de s-ami, le s-ommo l\'an pamë de s-ami. Se te vou un ami, rend-mè euna bëtse atréta! \r\n\r\n- Adzeu, l\'at repondu lo rèinar. Voèlà mon secret. L\'est bramen simplo: se vèit maque bien avouë lo coeur. L\'essanciel l\'est invisiblo pe le je.\r\n', '', 'Raymond Vautherin', '', 1, 50, '', 0, 0),
('kor', 0, 'coréen', 'Korean', '', '?? ???? ? ?? ?? ? ??? ??, ??? ???? ?? ???? ?? ???. ??? ??? ?? ??? ??. ???? ???? ??? ?? ? ?? ??. ??? ????? ? ????......\r\n??! ?? ? ??? ????. ? ??? ? ? ??. ???? ?? ? ???? ??. ?? ??? ? ?? ??? ???.', 'coreen.png', '', '', 1, 15, 'Séoul', 37.55, 127),
('aeb', 0, 'arabe tunisien', 'Tunisian arabic\r\n', '', '', 'arabetunisien.png', 'Hédi Balegh', 'from CIC (alexia et arald)', 1, 62, 'Tunis', 36.82, 10.17),
('tha', 0, 'thaï', 'Thai', '', '', 'thai.JPG', '', 'from CIC (alexia et arald)', 1, 77, 'bangkok', 13.84, 100.66),
('mlg', 0, 'malgache', 'malagasy', '', '-Ny zavatra folahina ihany no mety ho fantatra, hoy ilay fosa. Tsy manam-potoana hahafantaran-javatra na inona na inona intsony ny olombelona. Zavatra raisim-potsiny no vidiny eny aminny mpivarotra. Koa satria tsy misy mpivarotra namana mihitsy, dia tsy mana-namana intsony ny olombelona. Raha te hana-namana ianao, dia folahy aho!\r\n\r\n- Veloma, hoy ilay fosa. Inty ilay tsiambarateloko. Tsotra dia tsotra ilay izy : aminny alalanny fo ihany no ahitan-javatra. Tsy mba hitanny maso ny tena zavatra.\r\n', '', 'Rabenilaina Roger Bruno', 'from CIC (alexia et arald)', 1, 40, 'Antananarivo', -18, 47.53),
('alb-kos', 1, 'albanais du Kosovo', '', '', '', '', '', '', 1, 19, 'Pristina', 42.66, 21.16),
('wln-liege', 2, 'wallon liégeois', 'Walloon (Liège)', '', '-On n\' kinohe bin qui çou qu\'on aprivwèzêye, dèrit li r\'nå. Lès-omes ni prindèt pus l\' tins dè rin k\'nohe. Il atchtèt tot, tot fêt, \'mon lès martchands. Mins come i-n-a nou martchand d\' camarådes, lès-omes n\'ont pus nou copleû. Si vos \'nnè volez onk, aprivwèzez-m\'.\r\n(...)\r\n- Adiè, dèrit li r\'nå. Vochal mi scrèt. Il èst fwért simpe : on n\' veût clér qu\'avou s\' coûr. Çou qui conte li pus\', on n\'èl pout vèy avou sès-oûy.', '', 'Guy Fontaine', 'from Mathieu Fraikin mathieu.fraikin@student.kuleuven.be', 1, 50, 'Liège', 50.633, 5.567),
('frp-bre', 2, 'francoprovençal bressan', '', '', 'On counya lamè le sh<u>eu</u>ze quon acoulache, di lou rena. Léj <u>ou</u>mou non pô mé lazi de rin couny<u>â</u>tre. Lash<u>e</u>ton de sh<u>eu</u>ze dézhya féte vé lé marshè. Mé quemè é ny a pô de marshè dami, léj <u>ou</u>mou non pô dami. Che te vu nami, acoul<u>a</u>cha-me!\r\nA reva, di lou rena. Vtya mon secré. I vra éja : on ne va byè quavoui lou quëur. Che que <u>con</u>tou lou mé ne che va pô avoui lé zu.', '', 'Manuel Meune', '', 1, 50, 'Bourg-en-Bresse', 46.2, 5.2),
('kea', 0, 'créole du Cap-Vert', 'Cape Verdean Creole', 'Kabuverdianu', '-Só kel ki mansádu ki ta konxedu. Algen dja ka teni ténpu pa konxi náda. Ês ta kunpra kusa tudu fetu. Komu amigu ka ta bendedu gó, algen dja fika sen amigu. S-u kré ten amigu, mansâ-m !\r\n\r\nRapoza fla-l:\r\n-Diós bá ku bo. Gósi gó N ta kontâ-u kel segrédu. É kusa sinplis: só ku korason k-u ta odja dretu. Kel ki ta konta, odju ka ta odja.\r\n', '', 'Nicolas Quint & Aires Semedo', '', 1, 78, 'Praia', 14.916, -23.5),
('run', 0, 'kirundi', 'Kirundi', '', 'Ya mbwebwe iti :  ibintu bisa umuntu amenya neza, ni ivyo yemeye kwitungira. Abantu nta kanya bakironka ko kugira ico bamenya. Bagura ibintu bisanzwe bikozwe vyanzwe nabadandaza. Ariko rero ko ata  badandaza b abagenzi babaho, abantu nta bagenzi bagifise. Niwaba  ushaka umugenzi,nunyitungire! \r\n\r\nYa mbwebwe iti turabonanye.Ngaka akabanga kanje. Gaciriye hafi cane: umutima musa ni wo ufasha  kubona neza . Ibihambaye ntibishobora kuboneshwa amaso.', '', '', 'Domitien Nizigiyimana', 1, 29, 'Bujumbura', -3.35, 29.34),
('bod', 0, 'tibetain', 'Tibetan', 'peugué', '', 'tibetain.JPG', '', 'from JM Probst', 1, 75, 'Lhassa', 29.65, 91.11),
('che', 0, 'tchéchène', 'Chechen', '', ' ??? ???I?????? ?I???? ??? ????? ??? ?? ?????, ????? ????????.  ??????, ???? ? ?I??? ?????, ?I???? ??? ????? ?? ?????. ????? ???? ?I??? ???? ???????? ?????? ???????? ????????. ???? ??????I?? ?????? ?, ????? ? ??????? ?????? ?? ??, ??????? ?I???? ??????I?? ????? ?? ?????. ????? ??????I ???????? ?????, ?? ???I????????!\r\n\r\n ????? ?I????,  ????? ????????.  ?? ????? ?????? ? ????? ?????? xIapa ? ?????, ????? ?, ?????? ????? ? ???? ????: ?I??? ??? ???? ???? ??? ??? ??? ?????. ????? ?????????, ?I???????? ???????, ??? ?? ?????.', '', 'Letcha Abdoulaev', '', 1, 81, 'grozny', 43.3217, 45.636),
('cre-cas', 0, 'créole casamançais', '', 'kriyol', 'Gatu-lagáriya falá-l :  Kusa?us so? ku bu bidantá ku bu ta konsé. Ma gó, pekador ka tené mas tempu di sebé nada. I ta kumprá kusa?us ki kompodu ja? nundi bendedor. Ma suma i ka tené ni? bendedor di amigu, pekador ka tené mas amigu. Si bu mesté amigu, bidantá-m !\r\n\r\n()\r\n\r\nGatu-lagáriya rispondé-l :  Pa galiña bra?ku pasá-bu diyanti ! I es k-i ña segredi. I pasá sabi sebé : i so? ku korso? ku bu ta wojá diritu. Kusa? di bardadi ka ta wojadu ku wuju.', '', 'Joseph Jean François Nunez', '', 1, 78, 'Ziguinchor', 12.5597, -16.2742),
('frp-savoyard', 0, 'francoprovençal (arpitan) savoyard', 'Savoyard dialect', 'arpetan', '', 'savoyard.PNG', 'Roger Viret', 'from JMP 2015', 1, 50, 'Rumilly', 45.8758, 5.94472),
('frp-valdotain', 0, 'francoprovençal (arpitan) valdôtain', 'Valdôtain dialect', 'arpetan', '', 'valdotain.PNG', 'Raymond Vautherin', 'from JMP 2000', 1, 50, 'Aoste', 45.7333, 7.31667),
('wln', 0, 'wallon', 'Walloon', 'walon', '', 'walloon.PNG', 'Jean-Luc Fauconnier', 'from JMP 2008', 1, 50, 'oteppe', 50.567, 5.117),
('cpf-gua', 0, 'créole guadeloupéen', 'Guadeloupean créole', '', '', 'cpf-gua.jpg', 'Robert Chilin', '', 1, 42, 'pointe-a-pitre', 16.2411, -61.5331);

-- --------------------------------------------------------

--
-- Table structure for table `prince_language2`
--

CREATE TABLE `prince_language2` (
  `iso` text NOT NULL,
  `varpron` tinyint(1) NOT NULL DEFAULT '0',
  `french` text NOT NULL,
  `english` text NOT NULL,
  `self` text NOT NULL,
  `text` text NOT NULL,
  `imgtext` varchar(255) NOT NULL DEFAULT '',
  `actif` tinyint(4) NOT NULL DEFAULT '0',
  `grp` mediumint(9) NOT NULL DEFAULT '1',
  `geo` varchar(50) NOT NULL DEFAULT '',
  `geolat` float NOT NULL DEFAULT '0',
  `geolng` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prince_language2`
--

INSERT INTO `prince_language2` (`iso`, `varpron`, `french`, `english`, `self`, `text`, `imgtext`, `actif`, `grp`, `geo`, `geolat`, `geolng`) VALUES
('fra', 0, 'français', 'French', 'français', 'On ne connaît que les choses que l\'on apprivoise, dit le renard. Les hommes n\'ont plus le temps de rien connaître. Ils achètent des choses toutes faites chez les marchands. Mais comme il n\'existe point de marchands d\'amis, les hommes n\'ont plus d\'amis. Si tu veux un ami, apprivoise-moi!\r\n\r\nAdieu, dit le renard. Voici mon secret. Il est très simple: on ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.', '', 1, 50, 'france', 46.2276, 2.21375),
('eng', 0, 'anglais', 'English', 'English', 'We only know the things that we tame, said the fox. People no longer have the time to know anything. They buy things already made for peddlers. But since there are no peddlers of friends, they no longer have friends. If you want a friend, tame me!\r\n\r\nGoodbye, said the fox. Here\'s my secret; it\'s very simple: we see well only with the heart. The essential is invisible to the eyes.\r\n', '', 1, 67, 'England, United Kingdom', 52.019, -0.770427),
('deu', 0, 'allemand', 'German', 'Deutsch', 'Man kennt die Dinge, die man zähmt, sagte der Fuchs. Die Menschen haben keine Zeit mehr, etwas kennen zu lernen. Sie kaufen die Dinge fix und fertig bei den Händlern. Aber weil niemand mit Freunden handelt, haben die Menschen keine Freunde mehr. Wenn Du einen Freund willst, zähme mich!\r\n\r\nAdieu!, sagte der Fuchs. Dies ist mein Geheimnis. Es ist sehr einfach: man sieht nur mit dem Herzen gut. Das Wesentliche ist für die Augen unsichtbar.', '', 1, 72, 'germany', 51.1657, 10.4515),
('ita', 0, 'italien', 'Italian', 'italiano', 'Puoi conoscere solo quello che ti è familiare, che ti è domestico - disse la volpe. - Gli uomini non hanno più tempo di conoscere niente. Comprano nei negozi cose già pronte. Ma siccome non esistono negozianti di amici, gli uomini non hanno più amici. Tu, allora, se vuoi un amico, vedi di addomesticarmi.\r\n\r\nAddio, disse la volpe. Ed eccolo qui, il mio segreto - semplice semplice. Vedere è cosa del cuore. Agli occhi l\'essenziale resta sempre invisibile.', '', 1, 52, 'italy', 41.8719, 12.5674),
('spa', 0, 'espagnol', 'Spanish', 'español', 'Sólo conocemos las cosas que domesticamos, dijo el zorro. Los hombres ya no tienen tiempo de conocer nada. Compran en las tiendas cosas hechas. Pero como no hay ninguna tienda donde vendan amigos, los hombres ya no tienen amigos. Si quieres un amigo, !domestícame!\r\n\r\nAdiós, dijo el zorro. Te diré un secreto. Es muy sencillo: sólo se ve bien con el corazón. Lo esencial les resulta invisible a los ojos.', '', 1, 65, 'spain', 40.4637, -3.74922),
('ron', 0, 'roumain', 'Romanian', 'român&#x103;', 'Cunoa&#x15f;tem doar ceea ce îmblînzim, spuse vulpea. Oamenii nu mai au timp s&#x103; cunoasc&#x103; nimic. Cump&#x103;r&#x103; de la negustori lucrurile de-a gata. Cum nsa nu exista negustori de prieteni, oamenii nu mai au prieteni. Dac&#x103; vrei un prieten, mblnze&#x15f;te-m&#x103;!\r\n...\r\nAdio, spuse vulpea. Iat&#x103; care e taina mea. E foarte simpl&#x103;: limpede vezi doar cu inima. Ochii un pot s&#x103; vad&#x103; esen&#x163;ialul.\r\n', '', 1, 54, 'romania', 45.9432, 24.9668),
('swe', 0, 'suédois', 'Swedish', 'svenska', 'Man lär bara känna det man tämjer, sa räven. Människorna har inte längre tid att riktigt bli bekanta med något. De köper färdiga saker i affärerna. Men eftersom det inte finns vänner att köpa i affärerna, har människorna inte längre några vänner. Om du vill ha en vän, så tämj mig!\r\n\r\nAdjö, sa räven. Nu ska du få höra min hemlighet. Den är mycket enkel: det är bara med hjärtat som man kan se ordentligt. Det viktigaste är osynligt för ögonen.', '', 1, 57, 'sweden', 60.1282, 18.6435),
('rus', 0, 'russe', 'Russian', '&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;', '-&#1059;&#1079;&#1085;&#1072;&#1090;&#1100; &#1084;&#1086;&#1078;&#1085;&#1086;  &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1090;&#1086;, &#1095;&#1090;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080;&#1096;&#1100;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083; &#1051;&#1080;&#1089;. &#1059; &#1083;&#1102;&#1076;&#1077;&#1081; &#1073;&#1086;&#1083;&#1100;&#1096;&#1077; &#1085;&#1077;&#1090; &#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1080; &#1095;&#1090;&#1086;-&#1083;&#1080;&#1073;&#1086;  &#1091;&#1079;&#1085;&#1072;&#1074;&#1072;&#1090;&#1100;. &#1054;&#1085;&#1080; &#1087;&#1086;&#1082;&#1091;&#1087;&#1072;&#1102;&#1090; &#1074;&#1077;&#1097;&#1080; &#1091;&#1078;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1099;&#1084;&#1080; &#1074; &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1077;. &#1053;&#1086; &#1074;&#1077;&#1076;&#1100; &#1085;&#1077;&#1090; &#1090;&#1072;&#1082;&#1086;&#1075;&#1086;  &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1072;, &#1075;&#1076;&#1077; &#1087;&#1088;&#1086;&#1076;&#1072;&#1102;&#1090;&#1089;&#1103; &#1076;&#1088;&#1091;&#1079;&#1100;&#1103;, &#1080; &#1091; &#1083;&#1102;&#1076;&#1077;&#1081; &#1085;&#1077; &#1089;&#1090;&#1072;&#1083;&#1086; &#1076;&#1088;&#1091;&#1079;&#1077;&#1081;. &#1045;&#1089;&#1083;&#1080; &#1090;&#1099; &#1093;&#1086;&#1095;&#1077;&#1096;&#1100;,  &#1095;&#1090;&#1086;&#1073;&#1099; &#1091; &#1090;&#1077;&#1073;&#1103; &#1073;&#1099;&#1083; &#1076;&#1088;&#1091;&#1075;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1103;&nbsp;!\r\n\r\n-&#1055;&#1088;&#1086;&#1097;&#1072;&#1081;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;  &#1051;&#1080;&#1089;. - &#1042;&#1086;&#1090; &#1084;&#1086;&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090;. &#1054;&#1085; &#1086;&#1095;&#1077;&#1085;&#1100; &#1087;&#1088;&#1086;&#1089;&#1090;&nbsp;: &#1087;&#1086;-&#1085;&#1072;&#1089;&#1090;&#1086;&#1103;&#1097;&#1077;&#1084;&#1091; &#1074;&#1080;&#1076;&#1080;&#1090; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1089;&#1077;&#1088;&#1076;&#1094;&#1077;.  &#1057;&#1072;&#1084;&#1086;&#1077; &#1075;&#1083;&#1072;&#1074;&#1085;&#1086;&#1077; &#1089;&#1086;&#1082;&#1088;&#1099;&#1090;&#1086; &#1086;&#1090; &#1075;&#1083;&#1072;&#1079;.', '', 1, 71, 'russia', 61.524, 105.319),
('epo', 0, 'espéranto', 'Esperanto', 'esperanto', '\"Nur ni konas tion, kion ni malsova&#x11d;igas\", diris la vulpo. \"La homoj ne plu havas tempon por io ajn koni. Ili a&#x109;etas tute pretajn objektojn &#x109;e vendistoj. Sed, &#x109;ar amikvendistoj ne ekzistas, homoj jam ne havas amikojn. Se vi volas amikojn, malsova&#x11d;igu min!\"\r\n\"Adiau\", diris la vulpo. \"Mi diros al vi unua sekreto. &#x11c;i estas tre simpla: Nur oni bone vidas per la nia koro. La esenco estas nevidebla perla okuloj.\"', '', 1, 14, 'Universala Esperanto Asocio, Nieuwe Binnenweg 176,', 51.9125, 4.4644),
('hun', 0, 'hongrois', 'Hungarian', 'magyar', '- Az ember csak azt ismeri meg igazán, amit megszelídít - mondta a róka.\r\n- Az emberek nem érnek rá, hogy bármit is megismerjenek.\r\nCsupa kész holmit vásárolnak a keresked&#x151;knél.\r\nDe mivel barátkeresked&#x151;k nem léteznek, az embereknek nincsenek is barátaik.\r\nHa azt akarod, hogy barátod legyen, szelídíts meg engem.\r\n\r\n- Isten veled - mondta a róka.\r\n- Tessék, itt a titkom. Nagyon egyszer&#x171;:\r\njól csak a szívével lát az ember.\r\nAmi igazán lényeges, az a szemnek láthatatlan.\r\n', '', 1, 64, 'hungary', 47.1625, 19.5033),
('gsw-app', 2, 'appenzellois', 'Appenzell Swiss German', 'Appezellertütsch', 'me kennt nu d sache wommer zäämt, hät de fux gseit. d lüüt händ ka zit\r\nmeh zum öppis kenne lèrne. si kaufed d sache fix fertig i de läde. aber\r\nwils ka läde für fründ git, händ d lüüt ka fründ meh. wennt du aso en\r\nfründ wötsch, denn zääm mi.\r\n\r\nadie, hät de fux gsait. i säg der no mis gheimnis. s isch ganz eifach!\r\nguet sieht mer nu mit em hèrz. di wichtige sache sind für d auge-n\r\nunsichtbar.', '', 1, 72, 'appenzell', 47.3283, 9.40883),
('lmo-tic', 2, 'tessinois', 'Ticinese', 'ticinese', 'A sa cognos dumá i rop che sa dumestiga, la dis la volp. I gent i g\'ha pü `l temp da cugnos nagota. I cumpra i rop già fai sü di mercant. Ma gh`è mia i mercant da amis, e alura i gent i g\'ha pü amis. Se te vöri un amis, te devi dumestigam.\r\n...\r\nAdiu, la dis la volp. Sculta`l mè segrett, l\'è facil: a sa ved ben dumá cul cör. I rop püsee impurtant, l\'è mia cui öcc ch\' i sa ved. ', '', 1, 52, 'ticino', 46.3317, 8.80045),
('slv', 0, 'slovène', 'Slovenian', 'sloven?cina', 'Le tisto spozna&#x0161;, kar udoma&#x010D;i&#x0161;, je dejala lisica. Lujdje si ne vzamejo &#x010D;asa, da bi sploh spoznali. Pri trgovcih kupujuejo kar izgotovljene predmete. Ker pa ni trgovcev, ki bi prodajali prijatelje, ljudje nimajo ve&#x010D; prijateljev. &#X010D;e bi rad imel prijatelja, me udoma&#x010D;i!\r\n...\r\nZbogom, je rekla lisica. &#X010D;uj mojo skrivnost. Zelo preprosta je: Kdor ho&#x010D;e videti, mora gledati s screm. Bistvo je o&#x010D;em nevidno. \r\n', '', 1, 70, 'slovenia', 46.1512, 14.9955),
('srp', 0, 'serbe', 'Serbian', 'srpski', '-Covek poznaje samo one stvari koje pripitomi, rece lisica. Ljudi nemaju vise vremena da bilo sta upoznaju. Oni kupuju gotove stvari kod trgovaca. A kako nema trgovaca koji prodaju prijatelje, ljudi vise nemaju prijatelja. Ako hoces prijatelja, pripitomi me!\r\n-Zbogom, odgovori lisica. Evo moje tajne. Sasvim je jednostavna: covek samo srcem dobro vidi. Sustina se ocima ne da sagledati.', '', 1, 70, 'serbia', 44.0165, 21.0059),
('jpn', 0, 'japonais', 'Japanese', 'nihongo &#26085;&#26412;&#35486;', '', 'japonais.jpg', 1, 43, 'japan', 36.2048, 138.253),
('wol', 0, 'wolof', 'Wolof', 'wolof', 'Xamouñu lou doul lou ñou miin, (wakh  golo). Nit ñi amatouñu jootu xam. Dañuy jenda lou paré ba noppi ca jaykat ba. Waayé ndéguém amatoul jaykatou xarit, nit amatoul xarit. So beugué xarit, nékhalma!\r\n...\r\nTagounaléen (wakh golo). Li moy li ma doon neubeu. Dafa yonmbeu: ak xol la ñuy gisé bou bakh. Li am solo dafay laxou beuti.\r\n', '', 1, 32, 'senegal', 14.4974, -14.4524),
('sqi', 0, 'albanais', 'Albanese', 'shqip', 'NJohim veçse gjerat qe i aprivuazojme, thote dhelpra. Njerezit s\'kane me kohe te njohin gje tjeter. Blejne gjera te gateshme tek tregetaret. Por meqe tregetaret miq nuk egsistojne me, atehere njerezit s\'kane me miq, Nese do nje mik, ja ku me ke mua!\r\n...\r\nLamtumire, thote dhelpra. Ja sekreti im. Eshte shume i thjeshte: Shohim mire veçse me zemer. Esencialja eshte e padukshme per syte.', '', 1, 19, 'albania', 41.1533, 20.1683),
('heb', 0, 'hébreu', 'Hebrew', 'ivrit &#1506;&#1460;&#1489;&#1456;&#1512;&#1460;&#1497;&#1514;', '', 'hebreu.jpg', 1, 61, 'israel', 31.0461, 34.8516),
('lat', 0, 'latin', 'Latin', 'lingua latina', 'Haec tantum nota sunt quae paulatim domantur, dixit uulpes. Homines aliquid spatii ad cognoscendum subripere non iam possunt; sic apud mercatores res ad usum paratas emunt. Cum autem mercatores qui amicos uendant inueniri non possint, hominibus non iam sunt amici. Si amicum expetis, me doma!\r\n	 \r\n(...) Vale, dixit uulpes. Hoc est arcanum meum, et simplicissimum quidem : corde tantum perspici potest, nec summae rerum ipsae cernuntur oculo ullo.\r\n', '', 1, 79, '', 0, 0),
('oci-pro', 2, 'provençal', 'Provençal', 'prouvençau ', 'Lo Ditz del Raynart\r\n\r\n\"Hom conois solamen \r\no que pot domesgar\".\r\nBos ditz es, e no men:\r\nbe puesc lo t\'explicar.\r\nHuey non a hom lezer\r\nde ren be conoisser,\r\ndoncs compra, e-lh es grazitz,\r\no que-lh estai aizitz,\r\nque-lh vendon mercadant:\r\nals no quier tant ni cant.\r\nPus atrobar no-s poc\r\nlunhz mercadantz d\'amics,\r\nde o cauza s\'esmoc\r\ncÕhuey regn\'om ses amics.\r\nS\'amic vols atrobar,\r\nbe×t caldra m domesgar.\r\nAiqui vuelh descobrir\r\nmo secret al fenir:\r\nab ton cor solamen\r\npotz vezer claramen.\r\n\"Ohlz no ve o que cal\r\nmais, ni qu\'es mais cabal\".', '', 1, 49, '', 0, 0),
('bre', 0, 'breton', 'Breton', 'brezhoneg', 'N\'eus nemet an traou a vez doñvaet a anevezer, eme al louarn. An dud n\'o deus ket amzer ken da anaout netra.  Prenañ a reont traou peurc\'hraet `ti ar varc\'hadourien. Met dre ma n\'eus ket a varc\'hadourien vignoned, n\'o deus an dud mignon ebet ken. Ma fell dit kaout ur mignon, doñva ac\'hanon!\r\n...\r\nKenavo, eme al louarn. Setu va sekred. Aes-kenañ ez eo:  gant ar galon nemetken e vez gwelet mat. Ar pep pouezushañ ne vez ket gwelet gant an daoulagad.', '', 1, 55, 'bretagne', 48.202, -2.93264),
('por', 0, 'portugais', 'Portuguese', 'português', 'Só se conhece aquilo que se amestra, diz a raposa. Os homens já não têm tempo para conhecer nada. Compram tudo já feito nas lojas. Mas como não se podem comprar amigos nas lojas, os homens deixaram de ter amigos. Se queres um amigo, amestra-me!\r\n...\r\nAdeus, diz a raposa. Aqui tens o meu segredo. É muito simples: só se vê bem com o coração. O essencial é invisível para os olhos.\r\n', '', 1, 66, 'portugal', 39.3999, -8.22445),
('roh-srs', 2, 'romanche sursilvan', 'Romance (sursilvan)', 'rumantsch sursilvan', 'Ins enconuscha mo las caussas ch\'ins ha fatg dumiastias, precisescha l\'uolp. Ils carstgauns han buca peda pli d\'emprender d\'enconuscher enzatgei. Els cumpran las caussas fatgas. Mo essend ch\'ei dat buca pli stizuns per amitgs, han ils carstgauns buc amitgs pli. Sche ti vul in amitg, lu fai ch\'jeu daventi dumiastia!\r\n...\r\nAdia, di l\'uolp. Mira tscheu miu misteri. El ei zun sempels: Mo cun il cor vesan ins bein. Igl essenzial ei buca veseivels per ils egls.\r\n', '', 1, 51, 'ilanz, suisse', 46.7743, 9.20475),
('dut', 0, 'néerlandais', 'Dutch', 'vlaams', 'Men kent alleen die dingen waarmee men echt vertrouwd is, zegt de vos. De mensen hebben niet meer de tijd nog iets echt te kennen. Zij kopen dingen kant en klaar bij een handelaar. Maar verkopers van vrienden die bestaan niet, en dus hebben de mensen geen vrienden meer. Als je een vriend wilt moet je me temmen!\r\n...\r\nVaarwel, zegt de vos. Hier is mijn geheim. Het is zeer eenvoudig : Goed zien kan men alleen met zijn hart. Het wezenlijke is onzichtbaar voor je ogen.\r\n', '', 1, 68, 'netherlands', 52.1326, 5.29127),
('dan', 0, 'danois', 'Danish', 'dansk', 'Man kender kun de ting som man t&#xe6;mmer, siger r&#xe6;ven. Menneskene har ikke l&#xe6;ngere tid til at kende noget. De k&#xf8;ber f&#xe6;rdiglavede ting hos k&#xf8;bmanden. Men eftersom der ikke findes nogen k&#xe6;bm&#xe6;nd der s&#xe6;lger venner, har menneskene ikke l&#xe6;ngere nogen venner. Hvis du vil have en ven s&#xe5; t&#xe6;m mig! \r\n...\r\nFarvel, siger r&#xe6;ven. Her er min hemmelighed. Den er meget enkel: kun med hjertet kan man se klart. Det der virkeligt betyder noget er usynligt for &#xf8;jnene.\r\n', '', 1, 57, 'denmark', 56.2639, 9.50179),
('nor', 0, 'norvégien', 'Norwegian', 'norsk', 'Vi kjenner bare de ting vi har gjort oss fortrolig med, sa reven. Menneskene har ikke lenger tid til &#xe5; bli kjent med noe. De kj&#xf8;per alt ferdig i butikken. Men siden det ikke finnes butikker som selger venner, har ikke menneskene venner lenger. Vil du ha en venn, s&#xe5; gj&#xf8;r deg fortrolig med meg!\r\n...\r\nAdj&#xf8;, sa reven. Jeg skal fortelle deg en hemmelighet. Den er veldig enkel. Man ser bare godt med hjertet. Det vesentlige er usynlig for &#xf8;yet.\r\n', '', 1, 57, 'norway', 60.472, 8.46895),
('ukr', 0, 'ukrainien', 'ukrainian', '&#1091;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072; &#1084;&#1086;&#1074;&#1072; oukrayins\'ka mova', '- &#1052;&#1080; &#1079;&#1085;&#1072;&#1108;&#1084;&#1086; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1090;&#1080;&#1093;, &#1082;&#1086;&#1075;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1072;&#1108;&#1084;&#1086;, &#1087;&#1088;&#1086;&#1084;&#1086;&#1083;&#1074;&#1080;&#1083;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1051;&#1102;&#1076;&#1080;  &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1095;&#1072;&#1089;&#1091; &#1076;&#1083;&#1103; &#1087;i&#1079;&#1085;&#1072;&#1085;&#1085;&#1103; i&#1085;&#1096;&#1086;&#1075;&#1086;. &#1042;&#1086;&#1085;&#1080; &#1082;&#1091;&#1087;&#1091;&#1102;&#1090;&#1100; &#1075;&#1086;&#1090;&#1086;&#1074;i &#1088;&#1077;&#1095;i &#1091; &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i&#1074;. &#1040;&#1083;&#1077;, &#1086;&#1089;&#1082;i&#1083;&#1100;&#1082;&#1080;, &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i &#1076;&#1088;&#1091;&#1079;&#1103;&#1084;&#1080; &#1085;&#1077; &#1073;&#1091;&#1074;&#1072;&#1102;&#1090;&#1100;, &#1083;&#1102;&#1076;&#1080; &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1076;&#1088;&#1091;&#1079;i&#1074;. &#1071;&#1082;&#1097;&#1086; &#1090;&#1080; &#1073;&#1072;&#1078;&#1072;&#1108;&#1096; &#1084;&#1072;&#1090;&#1080; &#1076;&#1088;&#1091;&#1075;&#1072;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1077;.\r\n\r\n- &#1041;&#1091;&#1074;&#1072;&#1081;, &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;&#1072;  &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1052;i&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090; &#1090;&#1072;&#1082;&#1080;&#1081;. &#1042;i&#1085; &#1076;&#1091;&#1078;&#1077; &#1087;&#1088;&#1086;&#1089;&#1090;&#1080;&#1081;&nbsp;: &#1084;&#1080; &#1073;&#1072;&#1095;&#1080;&#1084;&#1086; &#1082;&#1088;&#1072;&#1097;&#1077; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1089;&#1077;&#1088;&#1094;&#1077;&#1084;. &#1053;&#1072;&#1081;&#1089;&#1091;&#1090;&#1090;&#1108;&#1074;i&#1096;&#1077; &#1079;&#1072;&#1083;&#1080;&#1096;&#1072;&#1108;&#1090;&#1100;&#1089;&#1103; &#1085;&#1077;  &#1074;&#1080;&#1076;&#1080;&#1084;&#1077; &#1076;&#1083;&#1103; &#1086;&#1095;&#1077;&#1081;.', '', 1, 71, 'ukraine', 48.3794, 31.1656),
('gsw-ber', 2, 'bernois', 'bern swiss german', 'Berndütsch', 'Me kennt nume d Sache wo eim vertraut si, seit der Fuchs. D Mönsche hei ke Zyt me öppis z kenne. Sie choufe alli Sache fix fertig bim Händler. U Gschäft für Fründe git es nid, drum hei d Mönsche keni Fründe meh. We du e Fründ wosch, so gwinn mys Vertraue!\r\n...\r\nAdiö, seit der Fuchs. Da isch mys Gheimnis. Es isch ganz eifach!: guet gseht me nume mit em Härz, ds Wichtigste isch für d Auge unsichtbar.\r\n', '', 1, 72, 'berne, Switzerland', 46.948, 7.44815),
('gsw-bal', 2, 'bâlois', 'Basel Swiss German', 'Baseldytsch', 'Me kennt nur die Sache wo me zäämt, het der Fuggs gsait. D Mensche hän kai Zyt me, irgend ebbis kenne z leere. Sy kaufe alles feertyg in de Lääde. Aber wel\'s kainy Lääde git wo Frind verkaufe, hän d Mensche kainy Frind mee. Wenn du e Frind wottsch, denn zääm my!\r\n...\r\nAadie, het der Fuggs gsait. Doo isch no my Ghaimlis. S isch ganz aifach: me gseet numme mit em Häärz guet. S Wichtyge isch fir d Auge unsichtbaar.\r\n', '', 1, 72, 'basel, Switzerland', 47.5596, 7.58061),
('gsw-arg', 2, 'argovien', 'Aargau Swiss German', 'Aargauerdüütsch', 'Mer kännt nume die Sache wo mer zèèmt, hèd de Fuchs gsäit. D Mäntsche händ nümme der Zit zum öppis känneleere. Si chauffed alls fixfertig im Laade. Wils aber ekäni Lääde für Fründ gid, händ d Lüüt ekä Fründe me. Wennd en Fründ wotsch, so tue mi zèème.\r\n\r\nLäbwool, hèd de Fuchs gsäit. Ich säge der mis Ghäimnis. Es ist ganz äifach: guet gsee cha mer nume mit em Hèèrz. Di wichtige Sache sind für d Auge unsichtbar.', '', 1, 72, 'aargau, Switzerland', 47.3877, 8.25543),
('lat-med', 0, 'latin médiéval', 'Medieval Latin', 'Latina mediaevalis', 'Vulpes inquit: Nullas causas nosse valemus praeter eas cum quibus familiarescimus. Homines vero quicquam cognoscendi spatium non iam sumunt; sibi autem causas iamdudum confectas apud venditores comparant. Sed quoniam nequaquam exsisitit amicorum venditor, homines nunc amicis frui nequeunt. Tu igitur, si amico quodam frui vis, familiarem tibi me fac.\r\n\r\n(...) Vale, ait vulpes. Ecce arcanum, quod est simplicissimum, tibi patefacio: tantum sunt perspicaces cordis oculi. Econtra, carnales oculi summas causas cernere non valent.', '', 1, 79, '', 0, 0),
('fro', 0, 'français (ancien)', 'Old French', '', 'Choses ne sont congneües fors celles dont en s\'aüse, dist li golpis. Li home n\'ont ja loisir d\'aucune rien enquerre. Si vont les choses que cil manuevrent as marcheanz achetant. Or ne sont mie marcheant qui amis vendent, et n\'i a mais celui ne ait amis. Se vuels ami, acointe toi a moi !\r\n...\r\nDieus te gart, dist li golpis. Mes secrez est tels. Si est a entendre legiers : en ne voit si bien qu\'as ielz del cuer. Forz choses ne sont as ielz del chief veües.', '', 1, 50, '', 0, 0),
('gsw-sol', 2, 'soleurois', 'Solothurn Swiss German', 'Soledurnerdütsch', 'Me könnt nume die Sache wo me zähmt, seit dr Fuchs. D Mönsche hei nüm Zit öppis lehre z könne. Si choufe s Züg fixfertig bim Händler. Aber wüus keni Händler für Fründe git, hei d Mönsche keni Fründe meh. Wen e Fründ wottsch, de due mi zähme.\r\n\r\nAdiö, seit dr Fuchs. Das isch auso mys Gheimnis. Es isch ganz eifach. Me gseht nume mit em Härz guet. S Wäsentleche isch für d Ouge unsichtbar.', '', 1, 72, 'solothurn, Switzerland', 47.207, 7.53331),
('gsw-zur', 2, 'zurichois', 'zurich swiss german', 'Züritüütsch', 'Mer känt nume d\'sache wo mer zäämt, hät de fuchs gsäit. D\'mänsche händ nüme ziit zum öppis käneleere. Si chaufed alles fixfertig im lade. Will\'s aber käi läde für fründ git, händ d\'lüüt käi fründ mee. Wänn d\'en fründ wotsch, dänn zääm mi.\r\n\r\nAdiö, hät de fuchs gsäit. Ich säge dir mis ghäimnis. Es isch ganz äifach: guet gsee cha mer nume mit em herz. Di wichtige sache sind für d\'auge unsichtbar.', '', 1, 72, 'zurich, Switzerland', 47.369, 8.53803),
('ara', 0, 'arabe', 'Arabic', '&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577; al ?arab?ya', '', 'arabe.jpg', 1, 62, 'alger', 36.7312, 3.14209),
('hye', 0, 'arménien', 'Armenian', '&#1344;&#1377;&#1397;&#1381;&#1408;&#1381;&#1398;', '', 'armenien.jpg', 1, 17, 'armenia', 40.0691, 45.0382),
('sux', 0, 'sumérien', 'Sumerian', 'EME.?IR', '', 'sumerien.jpg', 1, 15, '', 0, 0),
('prs', 0, 'dari', 'Dari', '', '', 'dari.jpg', 1, 45, 'jalalabad', 34.43, 70.46),
('egy', 0, 'égyptien ancien', 'Egyptian', '', '', 'egyptien.jpg', 1, 26, 'egypt', 26.8206, 30.8025),
('ber', 0, 'tamazight', 'Berber', 'tamazight', '', 'tamazight.jpg', 1, 25, 'algeria', 28.0339, 1.65963),
('grc', 0, 'grec ancien', 'Ancient Greek', '', '', 'grecancien.jpg', 1, 47, '', 0, 0),
('enm', 0, 'anglais (moyen)', 'Middle English', '', 'Man moste tamen that he kenne lists, quoth the fox. To witen mankind hath no tide. Men praty thingys from sellours beyen. But there is of freondes no marchande, so that man freondless now stode. If a freonde thou list, tame me!\r\n\r\nFarewel, quoth the fox. This is my cownsell. Seli it is: man can only see well thurgh the hert. To the eien the essencial is invisibull.', '', 1, 67, '', 0, 0),
('ang', 0, 'anglais (vieil)', 'Old English', '', 'Man nat butan Þe man atemað,cwæð se fox. Menn nabbað hwile nawiht to witanne. Hie bycgað gegarwodu Þing fram ciepemannum. Ac swa na freonda ciepemann nis, menn nabbað na freondas. Gif Þu anne freond wilt, mec atema!\r\n\r\nWes Þu hal, cwæð se fox. Her is min diegolnes. Seo is swiðe anfeald: man siehð wel nefne mid heorte. Seo aweosung nis fram eagum sewenlic.', '', 1, 67, '', 0, 0),
('pol', 0, 'polonais', 'Polish', 'polski', '- Poznaje sie&#x0328; tylko to, co sie oswoi - powiedzia&#x0142; lis. - Ludzie maja&#x0328; zbyt ma&#x0142;o czasu, aby cokolwiek poznac&#x301;. Kupuja&#x0328; w sklepach rzeczy gotowe. A poniewaz&#x307; nie ma magazynów z przyjació&#x0142;mi, wie&#x0328;c ludzie nie maja&#x0328; przyjació&#x0142;. Jes&#x301;li chcesz miec&#x301; przyjaciela, oswój mnie!\r\n\r\n- Z&#x307;egnaj - odpowiedzia&#x0142; lis. - A oto mój sekret. Jest bardzo prosty: dobrze widzi sie&#x0328; tylko sercem. Najwaz&#x307;niejsze jest niewidoczne dla oczy.', '', 1, 69, 'polska', 51.9194, 19.1451),
('ita-tos', 2, 'toscan', 'Tuscan', 'toscano', 'Si conosce solo le cose che s\'addomestica disse la volpe. Gl\'omini un\'hanno piú tempo di conosce\'nulla. Comprano cose bell\'e fatte nei mercati. Ma siccome un\'esiste punti mercati d\'amici, gl\'omini un\'hanno piú amici. Se tu voi un amico, addomesticami! \r\n\r\nAddio disse la volpe. Ecco il mio segreto. È di molto facile: solo si vede bene con il cuore. L\'essenziale è invisibile agl\'occhi.\r\n\r\n\r\n', '', 1, 52, 'Tuscany', 43.5671, 10.9807),
('mlt', 0, 'maltais', 'Maltese', 'Malti', 'Il-bniedem isir jaf biss bil-&#x0127;lejjaq li jimmansa hu, qal il-volpi. Il-bnedmin mg&#x0127;ad g&#x0127;andhom &#x0127;in g&#x0127;al xejn. Jixtru kollox lest ming&#x0127;and tal-&#x0127;wienet. Izda billi ma jezistux bejjieg&#x0127;a tal-&#x0127;bieb, il-bnedmin ma baqg&#x0127;alhomx &#x0127;bieb. Jekk trid &#x0127;abib immansa lili!\r\n\r\nSa&#x0127;&#x0127;iet, qal il-volpi. Is-sigriet tieg&#x0127;i huwa dan. Sigriet semplici &#x0127;afna: ma tistax tara sew jekk mhux bil-qalb. Dak li hu tassew ha&#x0127;tiega ma tarahx be-g&#x0127;ajnejn. \r\n', '', 1, 62, 'malta', 35.9375, 14.3754),
('lav', 0, 'letton', 'Latvian', 'latvie&#x0161;u', 'M&#x0113; pasz&#x012B;stam tikai to, ko pieradin&#x0101;m, sac&#x012B;ja lapsa. Civ&#x0113;kiem vairs nav laika neko iepaz&#x012B;t. Vini nop&#x0113;rk pie tirgot&#x0101;ja jau visu gatavu. Bet, t&#x0101; k&#x0101; nav tirgot&#x0101;ju, kas p&#x0101;rdotu draugus, tad cilv&#x0113;kiem vairs nav draugu. Ja tu v&#x0113;lies draugu, pieradini mani! \r\n...\r\nArdievu, sac&#x012B;ja lapsa. L&#x016B;k, mans nosl&#x0113;pums, tas ir loti vienk&#x0101;r&#x0161;s: &#x012B;sti m&#x0113;s redzam tikai ar sirdi. B&#x016B;tiskais nav ac&#x012B;m saredzams. \r\n', '', 1, 58, 'latvia', 56.8796, 24.6032),
('srd', 0, 'sarde', 'Sardinian', 'sardu', 'Non connoschimus atteru petzi chei sas cosas chi si addomestican, nait su mariane. Sos omines no an prus su tempus de connoscher. Dae sos bèndidores issos comporan sas cosas già fattas. Ma sicomente non saccatana bèndidores de amicos, sos omines non an prus amicos. Si tue cheres unu amicu addomesticande unu!\r\n\r\nAdiosu>>, nait su mariane. Ecco su secretu meu. Est meda fatzile: si biet bene petzi chin su coro. Sessentziale non si biet pompiandelu.\r\n', '', 1, 53, 'sardegna', 40.1209, 9.01289),
('pms', 0, 'piémontais', 'Piemontese Italian', 'piemontèis', 'Noi conossoma mach le cse cha n rendo bindispst, a dis la volp.  Jmini  a lhan pï nen ël temp ëd consse dautr.  A cato le cse gia faite dai marcand.  Ma dal moment che ij marcand amis a esisto nen, jmini a lhan pì gnun amis. Sit veule namis, it deuve domëstieme.\r\n\r\nAdieu, a dis la volp. Veui confidete mè segret. A lè motobin sempi: noi riessima a vëdde bin mach con l cheur. Ln cha lè essensial a lè invisìbil con jeuj.\r\n', '', 1, 52, 'Piedmont, Italy', 45.0522, 7.51539),
('ita-pis', 2, 'Pisan', 'Pisan Italian', '', 'E si  onosce sortanto le ose che ci fanno diventà  docili, dice la vorpe. La gente un ha più  r tempo  di onosce artro. Compra le  ose già fatte da  bottegai. Ma siccome un ci sono bottegai amici, la gente amici un nha più. Se voi unamio, mi devi addomestià.\r\n\r\nTi saluto dice la vorpe.   Ir mi segreto è questo. E semprice:  si riesce a vede bene solo cor cuore.  Quer che conta di più con locchi un si vede.\r\n', '', 1, 52, 'pisa, Italy', 43.7161, 10.3966),
('scn', 0, 'sicilien', 'Sicilian', 'sicilianu', 'Si canusciunu sulamenti i cosi chi sammaistranu, dissi a vurpi. Lomini nonhannu cchjù tempu di canusciri nenti. Ccattunu li cosi fatte sulamenti di mercanti. Ma siccomu non ci sunnu pi-nnenti mercanti damici, lomini non hannu cchjù amici. Si tu voi namicu, ammaistrimi!\r\n\r\nAddiu, dissi a vurpi. Eccu u mè sigretu. E simplici-simplici: si vidi beni sulamenti cu cori. Lessenziali è nvisibili a-llocchj.\r\n', '', 1, 52, 'sicilia', 37.3979, 14.6588),
('ita-vic', 2, 'vicentin', 'Vicentin Italian', 'vicentino', 'Te pui conóssare solo queo che xe de faméja, ga dito la volpe. I òmeni no i ga pì tempo de conóssare gnente. Tuto queo che i ga i lo compra dai botegari. Ma sicome no ghe xe botegari che vende amissi, i òmeni no i ga pì amissi. Se ti te vui namico, fame diventar de faméja.\r\n\r\nAdìo, ga dito la volpe. Ècolo kì el me segreto. El xe tanto fàssile: te ghe vidi ben solo col core. Queo che conta no te lo vidi mia coi oci.\r\n', '', 1, 52, 'vicenza, Italy', 45.5459, 11.5403),
('ast', 0, 'bable/asturien', 'asturian', 'asturianu', 'Solu conocemos les coses que domesticamos, dixo el raposu. Los homes ya nun tien tiempu de domesticar nada. Mercan nes tiendes coses feches. Pero como nun hai nenguna tienda ónde vendan amigos, los homes ya nun tien amigos. Si quies un amigu, ¡domestícame! \r\n\r\nAdiós, dixo el raposu. Direte un secreto. Ye muy sencillu: solu vese bien col corazón. Lo esencial resultayos invisible a los güeyos.\r\n', '', 1, 48, 'Asturias', 43.2504, -5.98326),
('cas-cas', 2, 'castuó', 'Castúo', 'castuó', 'Namág tenemug cunucencia de lag cosag que dumamug, iju el zorru. Lugombrig no tienin tiempu ya pa dumal nâ. Mercan en lag tiendag lag cosagechag. Peru comu no ay tienda que varga ondi vendan amigug, lugombrig no tienen amigug yâ. Si quiégun amigu, ¡dmami!\r\n\r\nAdióg, iju la zorra. Vua icilti un secretinu. Eg mu facilinu: namág se ve bien conel curazón. Er meoyu eginvisibli pa lusojug.\r\n', '', 1, 65, 'Extremadura', 39.4937, -6.06792),
('arg-ben', 0, 'patois de Benasque', 'Benasquese', 'Benasqués', 'Sólo coneixem les coses que adomem, ba di el raboso. Els omes ya no tienen tems de coneixer res. Compren a les tiendes coses fetes. Pero coma no yey niuna tienda agon benguen amigos, els omes ya no tienen amigos. Si ques un amigo, ¡adómame!\r\n\r\nAdeu, ba di el raboso. Te diré un secreto. Ye mol sensillo: sólo se bei bé dan el corasón. Lo més importán no se bei dan els güells.\r\n', '', 1, 49, 'Benasque, Spain', 42.6051, 0.523973),
('arg-che', 2, 'cheso', 'Cheso', '', 'Solamen conocemos las cosas que domesticamos, dicié lo raboso. Los hombres ya no han tiempo de domesticar cosa. Mercan en los comercios cosas feitas. Pero como no bi-há boticas en do se vendan amigos, los hombres  shan quedáu sin amigos. Si quies un amigo... ¡habrás a domesticarme!\r\n\r\nAdiós, dicié lo raboso. Ten diré uno  de los míos secretos. Ye muy simple: sólo se i-veye bien con lo corazón. Lo esencial ye invisible a los güellos.\r\n', '', 1, 65, 'aragon', 41.5976, -0.905662),
('cat', 0, 'catalan ', 'Catalan', 'català', 'Només es coneixen les coses que es domestiquen -va dir la guineu. Els homes ja no tenen temps de conèixer res. Compren coses fetes als botiguers. Però com que no hi ha botiguers damics, els homes ja no tenen amics. Si vols un amic, domesticam!\r\n\r\nAdéu -va dir la guineu. Vet aquí el meu secret. És molt senzill: només shi veu bé amb el cor. Lessencial és invisible als ulls.\r\n', '', 1, 49, 'Catalunya', 41.5912, 1.52086),
('glg', 0, 'galicien', 'Galician', 'gallego', 'Non se coñecen máis ca as cousas que se domestican, dixo o raposo. Os homes non teñen tempo para coñecer nada. Conseguen no mercado as cousas todas. Mais como non existe mercado de amigos, os homes non teñen amigos. Se ti queres un amigo, domestícame!\r\n\r\nAdeus, dixo o raposo. Velaquí tes o meu segredo. Éche moi simple: só co corazón se mira ben. O esencial é invisíbel para os ollos.\r\n', '', 1, 66, 'Galicia', 42.5751, -8.13386),
('eus', 0, 'basque', 'Basque', 'euskara', 'Hezten diren gauzak baino ez dira ezagutzen, esan zuen azeriak. Gizonek ez dute ezer ezagutzeko denborarik. Merkatarienean guztiz egindako gauzak erosten dituzte. Baina adiskide-merkataririk ez dagoenez, gizonek ez dute adiskiderik. Adiskide bat nahi baduzu, hez nazazu!\r\n.....\r\nAdio, esan zuen azeriak. Hona hemen nire sekretua. Oso erraza da: bihotzez baino ez da ondo ikusten. Funtsezkoa ikustezina da begientzako.\r\n', '', 1, 15, 'Basque Country, Spain', 42.9896, -2.61893),
('frp-ann', 0, 'patois du Val d\'Anniviers', 'Val d\'Anniviers dialect', '', 'Oung cognit què lè tzogè coung a adommécia, dèt lé rèingnar. Lé jhommo lann pa mé lo teng dè tzougea conirè. Latzètonn dè tzogè totè prèchtè ou martchiann. Ma kommè la pa mè dè martchian damèk, lè jhommo lann pa mè damik. Ché tou vout oung amèk, dèt lè rèingnar, tou kountè laffrarssiè !\r\n\r\nAdiou, dèt lè rèingar. Tè dio mong sèkrèt. Lè frang cheingplo : oung vit bèing quavouè lo kour. Chènn què conntè frang nè pas péchiouc avouè lè jouèss.\r\n', '', 1, 50, 'Anniviers, Switzerland', 46.1671, 7.60778),
('gsw-wal', 2, 'haut-valaisan', 'Wallis Swiss German', 'Wallisertiitsch', 'Mu chennt nummu dSache wa einum vertruwt sind, hett där Fugs gseit. DMänschu hennt kei Zit meh, eppis lehru zchennu. Schi chöifunt ganz fertigi Sache in dä Gschäftu. Aber wills kei Gschäfti git wa mu cha Fräinda chäifu, hent dMänschu kei Fröinda meh. Wennt dü a Fröind willt, so tüö mich zähmu.\r\n\r\nAde, hett där Fugs gseit. Hie isch mis Gheimnis. Äs isch ganz as eifachs: Mu gseht nummu mit dum Härz richtig. Zwichtigschta chasch mit dä Öigu nit gseh.\r\n', '', 1, 72, 'brig-glis', 46.3182, 7.98458),
('fin', 0, 'finnois', 'Finnish', 'suomi', 'Me tunnemme vain ne, jotka kesytämme, kettu sanoi. Ihmisillä ei ole enää aikaa tuntea mitään. He ostavat tavarat valmiina kauppiailta. Mutta koska kauppiaat eivät myy ystäviä, ihmisillä ei ole enää ystäviä. Jos haluat ystävän, kesytä minut!\r\n\r\n\r\nHyvästi, kettu sanoi. Kerron sinulle salaisuuteni, se on hyvin yksinkertainen: Vain sydämellä näkee hyvin. Tärkein on silmin näkymätöntä.\r\n', '', 1, 63, 'finland', 61.9241, 25.7482),
('scr', 0, 'croate', 'Croatian', 'hrvatski jezik', 'Poznamo samo stvari koje pripitomimo, re&#x010D;e lisica. &#X010C;ovjek nema vi&#x0161;e vremena da i&#x0161;ta upozna. Kupuje samo ve&#x0107; izra&#x0111;ene stvari kod trgovca. A kako vi&#x0161;e ne postoje trgovci koji su prijatelji, &#x010D;ovjek vi&#x0161;e nema prijatelja. Ako ho&#x0107;e&#x0161; prijatelja, pripitomi me!\r\n\r\nZbogom, re&#x010D;e lisica. Evo moje tajne. Ona je vrlo jednostavna: vidi se dobro samo srcem. Najbitnije je o&#x010D;ima nevidljivo. \r\n', '', 1, 70, 'croatia', 45.1, 15.2),
('rom', 0, 'Romani', 'Romani', 'romani ?hib', 'Nané d&#x017E;indlé vavír kolá, fénciu karík savé san prisyklynó- phendziá líso. Manu&#x0161;á, nané lénde kiédy te syklión várso nevó. Joné kinén saró kerdó biknypáske. A paldavá, so nané adáso biknypnári, ke savõ sa&#x0161;tý te kinés malén, to i manu&#x0161;énde nané butedýr malá. Jé&#x015B;li kamés, kaj te javél túte jek mal, to prisykliákir man ke pe. \r\n...\r\nDevlésa-phendziá líso. Óke mro sekréto. Jou sýle izbít prósto: dykh jilésa. So sy andré na&#x0161;tý te udykhés jakhénca. \r\n', '', 1, 46, 'macedonia', 41.6086, 21.7453),
('slk', 0, 'slovaque', 'Slovak', 'sloven&#x010D;ina', 'Spoznávame len to, ?o si skrotíme, povedala líka. ?udia u nemajú ?as nie?o spoznáva?. Kupujú si u obchodníkov celkom hotové veci. Niet vak takých obchodníkov, ?o by predávali priate?ov, preto ?udia priate?ov u nemajú. Ak chce ma? priate?a skro? si ma. \r\n\r\nZbohom, riekla líka. Tu je moje tajomstvo. Je ve?mi jednoduché: dobre vidíme iba srdcom. To hlavné je o?iam nevidite?né.\r\n', '', 1, 69, 'slovakia', 48.669, 19.699),
('cze', 0, 'tchèque', 'Czech', '&#x010D;esky', 'Známe jen ty v&#x011B;ci, které si ocho&#x010D;íme, &#x0159;ekla li&#x0161;ka. Lidé u&#x017E; nemají &#x010D;as, aby n&#x011B;co poznávali. U obchodník&#x016F; nakupují v&#x011B;ci úlpn&#x011B; hotové. Ale proto&#x017E;e s p&#x0159;átelstvím se nekupc&#x010D;í, nemají p&#x0159;átel. Chce&#x0161;-lu p&#x0159;ítele, ocho&#x010D; si m&#x011B;!\r\n\r\nSbohem, &#x0159;ekla li&#x0161;ka. Tady je mé tajemství, docela jednoduché: správn&#x011B; vidíme jen srdcem. To bytostné o&#x010D;i nespat&#x0159;í. \r\n', '', 1, 69, 'czech republic', 49.8175, 15.473),
('lit', 0, 'Lituanien', 'Lituanian', 'letuvi&#x0173 kalba', 'Susipa&#x017E;inti gali tik su tais dalykais, kuriuos prisijaukini, tarè lapè. &#X017E;mones neturi laiko ko nors pa&#x017E;inti. Jie nusiperka visk&#x0105; jau gatav&#x0105; i&#x0161; prekybinink&#x0173;. Bet kadangi nera prekybinink&#x0173; i&#x0161; kuri&#x0173; b&#x016B;t&#x0173; galima nusipirkti draug&#x0173;, tai draug&#x0173; &#x017E;mones ir neture. Jei nori tureti draug&#x0105;, prisijaukink mane! \r\n...\r\nLik sveikas, tare lape. &#X0161;tai kikia mano paslaptis. Ji labai paprasta: matyti galima tik &#x0161;irdimi. Tai, kas svarbiausia nematoma akimis. \r\n', '', 1, 58, 'lithuania', 55.1694, 23.8813),
('wen', 0, 'sorabe', 'Sorbian', 'Serb&#353;&#263;ina', 'Zeznaje&#x0161; jeno&#x017E; w&#x011B;cy, ki&#x017E; sej sklud&#x017A;i&#x0161;, rjeknje li&#x0161;ka. Lud&#x017A;o nimaja hi&#x017E;o &#x010D;as, n&#x011B;&#x0161;to na w&#x011B;domje bra&#x0107;. Kupuja zhotowjene w&#x011B;cy w kupnicach. Ale dokel&#x017E; njeje kupnicow, hd&#x017A;e&#x017A; mó&#x017E;e&#x0161; sej prrre&#x0107;elstwo kupi&#x0107;, nimaja hi&#x017E;o prrre&#x0107;elow. Hdy&#x017E; chce&#x0161; prrre&#x0107;ela, sklud&#x017A; mje! \r\n...\r\nAdej, rjeknje li&#x0161;ka. Tule je moje potajnstwo. Je cyle jednore: Jasnke wid&#x017A;i&#x0161; jeno&#x017E; z wutrobu. To najwa&#x017E;ni&#x0161;e wostanje wo&#x010D;omaj. ', '', 1, 69, 'Gorlitz, Germany', 51.1531, 14.9753),
('tgl', 0, 'tagalog', 'Tagalog', 'tagalog', '\"Maaari lang nating maunawaan ang mga bagay na ating inaamo, sabi ng alamid. Ang mga tao ay wala ng panahon para matuto. Bumibili sila ng mga bagay na handang gawa sa tindahan. Ngunit, dahil wala namang tindahan ng kaibigan, ang mga tao ay wala ng kaibigan. Kung gusto mo ng kaibigan, amuin mo ako.\r\n\r\nPaalam, sabi ng alamid. Pakinggan mo ang aking sekreto. Napakasimple niya: sa pamamagitan lang ng puso na maaari tayong makakita ng mahusay. Ang pinakamahalaga ay hindi nakikita ng mata.\r\n', '', 1, 40, 'philippines', 12.8797, 121.774),
('por-bra', 0, 'portugais brésilien', 'Brasilian', 'brasileiro', 'Só conhecemos as coisas que domesticamos, disse a raposa. Os homens já não têm tempo de domesticar nada. Compram nas lojas coisas feitas. Mas como não existe nenhuma loja onde se vendam amigos, os homens já não têm amigos. Se queres um amigo, domestica-me!\r\n\r\nAdeus, disse a raposa. Dir-lhe-ei um segredo. É muito simples: só se enxerga bem com o coração. O essencial é invisível aos olhos.\r\n', '', 1, 66, 'brazil', -14.235, -51.9253),
('cas-lun', 2, 'lunfardo', 'Lunfardo', '', 'Uno solo manya el fato que acamala, bate el zorro. A los chochamu ya no les da el cuero. Hoy la merca se compra solo en los almacenes. Pero como no existe el comerciante gomía, los tipos se quedan en banda. Si querés un gomía, yugála y dame bola\r\n\r\n-Adiós, dijo el zorro. Y guarda con mi deschave: solo se juna bien con el bobo. Lo que es bien debute es invisible pa los faroles.\r\n', '', 1, 65, '', 0, 0),
('que', 0, 'quechua', 'Quechua', 'runa simi / kichwa', 'Riqsillanchis uywallasqanchista, atuqqa nispa niykun. Runaqa manaña atinñachu uywayta. Anchaqa ruwasqakunata rantipayan. Masikuna mana rantinakuq chayri, manaña tarikunñachu. Masi masayta munanki chayqa, uywakullaway.\r\n\r\n Ripusaq!, atuq nin. Pakanataqa risqayki manan sasachus kayta. Anchachus rikukun sunqullawan. Chaninqa ñawinchiswan mana rikukunchu\r\n', '', 1, 44, 'peru', -9.18997, -75.0152),
('pua', 0, 'purepecha-tarasque', 'Purepecha-Tarascan', '', 'Imani ambekuchisi míteka enkachi sesi pinterheka, isi uantaspti jiuatsi. Kuiripuecha nórekuksi antakuarhesinti pinterheni ka parheni ampe, iámintu ampe piásintiksi. Kóruchka nónani ataranhatasinti pichakuecha (píchpiricha) jimposi kuiripueha nóteru jatsiati píchpirichani. Ekari uékani jaka ma píchpirini, pinterhetakuarherini jínteni. \r\n\r\nNipa-ia, arhispti jiuatsi. Arhintikuakakini ma ampe koru. Nómintu sani tsunhapesti: mintsita jimpo kánekua sesi xarharasinti. Sánteru kéri ampakiti ampe no xarharasinti. \r\n', '', 1, 44, 'Michoacan, Mexique', 19.5665, -101.707),
('cpf', 0, 'créole ', 'french creole (pidgin)', '', 'Réna a di konsa sèl bagay ou moun kab donté sé sa ou konnin.Leszom pa gen tan anko pou yo apran anyin. Yo achté bagay tou fèt nan min komèsan yo. Min kom machan zanmi pa esisté, lézom pa gin zanmi anko. Si ou vlé youn zanmi, sé pou donté mwen.\r\n\r\n\r\nAdié Réna a di. Min sékrè pam. Li trè simp: Sé avek kèou ou kab wè pi bien. Bagay pi impotan invisib pou gé.\r\n', '', 1, 42, 'antilles françaises', 16.5, -62),
('roh', 0, 'romanche (Rumantsch Grischun)', 'Romansh (Grisun)', 'rumatsch grisun', 'Ins conuscha mo quai chins ha domestitgà, ha ditg la vulp. Ils umans nhan betg pli temp demprender a conuscher insatge. Els cumpran las chaussas fatgas e finidas tar ils martgadants. Ma cunquai chi na dat nagins martgadants damis, nhan ils umans betg pli amis. Sche ti vuls in ami, alura domestitgescha mai!\r\n\r\nAdia, ha ditg la vulp. E quai è mes misteri. El è fitg simpel: ins vesa bain mo cun il cor. Lessenzial na vesins betg cun ils egls.\r\n', '', 1, 51, 'grisons, suisse', 46.657, 9.57733),
('roh-srm', 2, 'romanche surmiran', 'Romansh (surmiran)', 'rumantsch surmiran', 'Ins amprenda a canoscher angal las tgossas tgins dumestegia, ò cuntinuo la golp. Igls carstgangs non betg ple peda damprender a canoscher ensatge. Els compran tot las tgossas bel fatgas e fittadas tigls martgadants. Ma i dat nigns martgadants dameis. Parchegl on igls carstgangs er nigns ameis. Schte vot en amei alloura stost am dumestager!\r\n\r\nAdia, ò raspundia la golp. E chegl è igl mies misteri, el è fitg simpel: angal cugl cor ins pogl veir andretg. Igl essenzial nè betg visibel pigls îgls.\r\n', '', 1, 51, 'savognin, suisse', 46.5979, 9.5981),
('roh-val', 2, 'romanche vallader', 'Romansh (vallader)', 'rumantsch vallader', 'Is cugnuoscha be quai chi sha domestichà, ha dit la vuolp. Ils umans nus piglian plü peida dad imprender a cognuoscher alch. I cumpran la roba belle fatta prols marchadants. Ma cun quai chi nu dà ingüns marchadants dad amis, nun han ils umans plü ingüns amis. Scha tü voust ün ami,schi prouva dam domestichar!\r\n\r\nAdieu, ha dit la vuolp. Quist es meis misteri. El es fich simpel: is vezza bain be cul cour. Lessenzial nus vezza culs ögls.\r\n', '', 1, 51, 'scuol, suisse', 46.7869, 10.459),
('roh-put', 2, 'romanche puter', 'Romansh (puter)', 'rumantsch puter', 'Il pitschen prinz\r\n\r\nAs cugnuoscha be que cha sho domesticho, ho dit la vuolp. Ils umauns nus piglian plü peida dad imprender a cognuoscher qualchosa. A cumpran la roba belle fatta tals marchadaunts. Ma cun que cha que nu do üngüns marchadanuts dad amihs, nun haun ils umauns plü üngüns amihs. Scha tü voust ün amih, schi prouva dam domesticher!\r\n\r\nAdieu, ho dit la vuolp. Quist es mieu misteri. El es fich simpel: ques vezza bain be cul cour. Lessenziel nus vezza culs ögls.\r\n', '', 1, 51, 'Samedan', 46.5341, 9.87053),
('gug', 0, 'guaraní', 'Guaraní', 'avañe\'r&#x1EBD; ', 'Jaikuaa ñamombaévante, hei Aguara. Ava nomopa&#x0169;-véima hembiapo osaiteo hagua, mbaeve ha avavépe. Oñemu jejapopyre ha, ndaipórire mamove angir&#x0169; ojogua hagua, ava ndorekovéo iñir&#x0169;rã. Reipotárõ nde rayhupararã, nde chemombaeva erã. \r\n...\r\nAháma, hei Aguara. Che ñee ñemíta ndéve, ndahasýi ikuaapy: ñane ñeã guivénte jahechapaporã. Hekopetegua tesáèe ndojechaukái. \r\n', '', 1, 12, 'paraguay', -23.4425, -58.4438),
('yor', 0, 'yoruba', 'Yoruba', 'yorùbá', 'A kìí mò? ju ohun tí a bá fi kóni ni kò?lò?kò?lò? wí. Àwo?n èníyàn ò ní àsìkò láti waadi nkankan mo. Rírà ni wo?n ? ra ohun gbogbo tí wó?n ti sè pari ló?dò? àwo?n olówò. Sùgbó?n nígbàtí kòsí ìsò wò ò?ré?, awo?n èèyàn ò ní oré? mó?. Tí o bá ? wá òré?, ? jé? máa kó? mí! \r\n\r\nÓ dìgbà, ni kò?lò?kò?lò? wí. Èyí ni às?írí mi. Èyí tí o ro?rùn jù. A ò le ríran àrídájú àyààfi pè?lú o?kan. N kan àtàtà o see fi ojú lásán rí.', 'corrected by Samuel Kayode Akinbo talktokay20042002@yahoo.ca', 1, 30, 'Oshogbo , nigeria', 7.76581, 4.56122),
('bam', 0, 'bambara', 'Bambara', 'bamanankan', 'M&#x254;g&#x254; t&#x25b; fosi d&#x254;n fo i ye min kolon, kungo-wulunin ko ten.\r\nKo ka ñini ka ko d&#x254;n, hadamaden senna ka telin o ma.\r\nF&#x25b;n lab&#x25b;nnenw ka ban, a b&#x25b; o de san u feerey&#x254;r&#x254;.\r\nTerifeerey&#x254;r&#x254; dun t&#x25b; yen, teri t&#x25b; hadamaden na bilen.\r\nNi b&#x25b; teri dø f&#x25b;, ne kolon!\r\n\r\nA ko Kan b&#x25b;n. Ne ka gundo fil&#x25b; nin ye,\r\nA ka n&#x254;g&#x254;n kojugu: F&#x25b;n b&#x25b; ye ka ñ&#x25b; ni dusukun de ye.\r\nA kolomay&#x254;r&#x254; t&#x25b; ye ni ñ&#x25b; ye. \r\n', '', 1, 31, 'mali', 17.5707, -3.99617),
('lad', 0, 'judéo-espagnol', 'Judeo-Spanish', '', '', 'lad.jpg', 1, 48, '', 0, 0),
('tat', 0, 'tatar', 'Tatar', 'tatarça', 'Kulga ijaläshkän äjberne genä belep bula,-dide tölke. \r\nKeshelärneng närsä dä bulsa belergä baskacha vakytlary juk. \r\nAlar kibettän äzer äjberlärne genä satyp alalar. \r\n\r\nä bit äzer duslar satylatyrgan kibetlär juk, shunga kürä keshelärneng duslary da bette.\r\nägär dä üzengä dus buldyrasyng kilsä, mine kulga ijaläshter.\r\n\r\n-Hush, - dide tölke. Menä minem sörem shul:ul bik gadyj:\r\n tik jöräk kenä tieshenchä kürä ala, chönki ing möhime küzdän jasherelgän.\r\n', '', 1, 36, 'Tatarstan', 55.6212, 52.6011),
('akk', 0, 'akkadien', 'akkadian', 'akkadû', '', '', 0, 60, '', 0, 0),
('hbo', 0, 'hébreu ancien', 'old hebrew', '', '', '', 0, 61, '', 0, 0),
('cym', 0, 'gallois', 'Welsh', 'cymraeg', '', '', 0, 55, '', 0, 0),
('uzb', 0, 'ouzbek', 'Uzbek', 'o?zbek tili', 'Inson nimani qolga orgatsa oshanigina biladi, dedi tulki. Hozir odamlarning organishga vaqti yoq. Ular hamma narsaning tayyorini dokondan sotib olishadi. Lekin dostlarni sotadigan dokon yoqligi uchun, endi odamlarning dostlari ham yoq. Agar dosting\r\nbolishini hohlasang unda meni qolga orgat !\r\n\r\n- Hayr, dedi tulki. Mana mening sirim. U juda oddiy: inson yolgiz yuragi ila togri kora oladi. Zotan eng muhim narsalar kozdan berkitilgan.', '', 1, 36, 'uzbekistan', 41.3775, 64.5853),
('kat', 0, 'géorgien', 'Georgian', 'kartuli ena', '', '', 0, 34, 'georgia', 0, 0),
('bul', 0, 'bulgare', 'Bulgarian', '', '&#1057;&#1072;&#1084;&#1086; &#1085;&#1077;&#1097;&#1072;&#1090;&#1072;, &#1082;&#1086;&#1080;&#1090;&#1086; &#1089;&#1080; &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080;&#1083;, &#1084;&#1086;&#1078;&#1077;&#1096; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1077;&#1077;&#1096; -  &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1061;&#1086;&#1088;&#1072;&#1090;&#1072; &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1074;&#1088;&#1077;&#1084;&#1077; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1103;&#1074;&#1072;&#1090; &#1085;&#1080;&#1097;&#1086;. &#1058;&#1077; &#1082;&#1091;&#1087;&#1091;&#1074;&#1072;&#1090; &#1086;&#1090;  &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080;&#1090;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1080; &#1085;&#1077;&#1097;&#1072;. &#1053;&#1086; &#1090;&#1098;&#1081; &#1082;&#1072;&#1090;&#1086; &#1085;&#1103;&#1084;&#1072; &#1085;&#1080;&#1082;&#1072;&#1082;&#1074;&#1080; &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080; &#1085;&#1072; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;, &#1093;&#1086;&#1088;&#1072;&#1090;&#1072;  &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;. &#1040;&#1082;&#1086; &#1080;&#1089;&#1082;&#1072;&#1096; &#1076;&#1072; &#1089;&#1080; &#1080;&#1084;&#1072;&#1096; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083; - &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080; &#1084;&#1077;!</p>\r\n<p>- &#1057;&#1073;&#1086;&#1075;&#1086;&#1084; - &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1045;&#1090;&#1086; &#1084;&#1086;&#1103;&#1090;&#1072; &#1090;&#1072;&#1081;&#1085;&#1072;. &#1058;&#1103; &#1077;  &#1084;&#1085;&#1086;&#1075;&#1086; &#1087;&#1088;&#1086;&#1089;&#1090;&#1072;: &#1085;&#1072;&#1081;-&#1093;&#1091;&#1073;&#1072;&#1074;&#1086;&#1090;&#1086; &#1089;&#1077; &#1074;&#1080;&#1078;&#1076;&#1072; &#1089;&#1072;&#1084;&#1086; &#1089;&#1098;&#1089; &#1089;&#1098;&#1088;&#1094;&#1077;&#1090;&#1086;. &#1053;&#1072;&#1081;-&#1089;&#1098;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1086;&#1090;&#1086; &#1077;  &#1085;&#1077;&#1074;&#1080;&#1076;&#1080;&#1084;&#1086; &#1079;&#1072; &#1086;&#1095;&#1080;&#1090;&#1077;.', '', 1, 70, 'bulgaria', 42.7339, 25.4858),
('kur', 0, 'kurde', 'Kurdish', '', '', '', 0, 45, '', 0, 0),
('mon', 0, 'mongol', 'Mongolian', '', '', 'mongol.jpg', 1, 37, 'mongolia', 46.8625, 103.847),
('ewo', 0, 'ewondo', 'Ewondo', '', '', '', 0, 33, '', 0, 0),
('lin', 0, 'lingala', 'Lingala', 'lingala', '', '', 0, 29, '', 0, 0),
('som', 0, 'somali', 'Somali', '', '', '', 0, 28, '', 0, 0),
('bas', 0, 'bassa', 'Basaa', '', '', '', 0, 33, '', 0, 0),
('ibo', 0, 'igbo', 'Igbo', 'igbo', '', '', 0, 30, '', 0, 0),
('fan', 0, 'fang', 'Fang', '', '', '', 0, 33, '', 0, 0),
('swa', 0, 'swahili', 'Swahili', 'kiswahili', '« Tunajua tu, vitu ambavyo tunaweza kunyanyasa », kasema mbwa mwitu. « Siku hizi, watu hawana wakati wa kujua chochote. Wao hununua bidhaa ambazo tayari zimeandaliwa wachukuzi. Na kwa vile hakuna wachukuzi wa urafiki, wao hawana marafiki. Kama kweli unataka rafiki, mimi hapa, nitupilie mbali upori wangu! \r\n\r\nKwaheri! » , kasema mbwa mwitu, « Siri yangu ni jambo rahisi sana. Ni roho zetu zinatuongoza kutafsiri mambo yale muhimu, ambayo hatuwezi kuona kwa macho yetu makavu. »\r\n', '', 1, 29, 'kenya', -0.023559, 37.9062),
('amh', 0, 'amharic', 'Amharic', 'amharic', '', '', 0, 62, '', 0, 0),
('luo', 0, 'luo', 'Luo', 'dholuo', '', '', 0, 4, '', 0, 0),
('ceb', 0, 'cebuano', 'Cebuano', 'Sinugboanon', '', '', 0, 40, '', 0, 0),
('vie', 0, 'vietnamien', 'Vietnamese', '', '', 'vie.jpg', 1, 39, 'vietnam', 14.0583, 108.277),
('cmn', 0, 'mandarin', 'Mandarin', '', '', 'chinois.jpg', 1, 38, 'china', 35.8617, 104.195);
INSERT INTO `prince_language2` (`iso`, `varpron`, `french`, `english`, `self`, `text`, `imgtext`, `actif`, `grp`, `geo`, `geolat`, `geolng`) VALUES
('bos', 0, 'bosniaque', 'bosnian', 'Bosanski', '\"Poznavati se mogu samo pripitomljene stvari\", re&#x010D;e lisica. \"Ljudi vi&#x161;e nemaju vremena da upoznaju ne&#x161;to novo. Oni kupuju ve&#x107; napravljene stvari kod prodava&#x010D;a. Ali, po&#x161;to ne postoji osoba koja prodaje prijatelje, ljudi, zapravo, nemaju prijatelja. Ako ho&#x107;e&#x161; da ima&#x161; prijatelja onda pripitomi mene ! »\r\nZbogome, re&#x010D;e lisica. Evo je moja tajna. Jednostavna je: dobro se mo&#x017E;e vidjeti samo. Sa srcem. Ono najva&#x017E;nije je nevidlijivo za o&#x010D;i.\r\n', '', 1, 70, 'bosnia', 43.9159, 17.6791),
('jam', 0, 'créole jamaïcain', 'Jamaican Creole', '', '\"Wi ongle riili kyan nuo bout di ting-dem wa wi tek fi-wi han breik iin\", Faks se. \"Man no ha no taim agein fi nuo bout notn. Tidei, dem jos a bai wa di higla-dem a sel. Bot higla no sel fren, so dem no kiip fren agein. Ef yu waan waan fren, yu mos breik mi iin!\".\r\n\r\n\"Mi gaan\" Faks se \"An sii fi-mi siicrit ya... i wel simpl : wi ongl sii gud wid fi-wi haat. Wa riili mata, yu no tek aiy sii i\"', '', 1, 73, 'jamaica', 18.1096, -77.2975),
('cos', 0, 'corse', 'Corsican', '', 'Cunnosce, si cunnoscenu e cose chì omu ammansa, disse a volpe. L\'omi ùn anu più tempu da cunnosce nulla. Compranu cose fatte è lestre ind\'è i marcanti. Ma ùn ci ne hè marcanti d\'amichi è elli amichi ùn ne anu più. S\'è tù voli un amicu, ammansa à mè.\r\n\r\nAddiu disse a volpe. Eccuti u me sicretu. Hè bellu semplice : vede si vede bè cù u core. I punti di primura lochji ùn li ponu vede.\r\n\r\n', '', 1, 52, 'corsica', 42.0396, 9.01289),
('bar', 0, 'bavarois', 'Bavarian', 'bayrisch', 'Du kennst ja nua dees, wo\'st amoi zaehmt host, hot da Fux gsogt.\r\nD\'Leit ham ja koa Zeit mea, dass wos kenna leana. De kaffa oiss scho\r\nfeate gmacht bei am Hendla. Awa wei hoit koana mid aam Freind handln\r\nwui, hoot koana an Freind mea. Wann\'st oiso aan Freind hom wuisst,\r\nmuasst mi hoit zaehma.\r\n\r\nPfiad di! hot da Fuchs gsogt. Und des is mei G\'hoamnis - s\'is awa recht\r\noafach: du koo\'st nua mid\'m Heazn guat seng. Oiss, wos wichtig is,\r\nis mid de Augn ned zum segn!\r\n', '', 1, 72, 'bavière', 48.7904, 11.4979),
('hin', 0, 'hindi', 'Hindi', 'hindi', '', 'hindi.jpg', 1, 46, 'india', 20.5937, 78.9629),
('tok', 0, 'toki pona', 'Toki Pona', '', 'soweli loje li toki: \"jan li pona e ijo la jan li sona e ona taso. tenpo ni la jan li jo ala e tenpo li ken sona e ala. ona li kama jo e ijo pini kepeken mani lon tomo pi jan pana. taso jan li pana ala e jan pona tan mani la jan li jo ala e jan pona. sina wile jo e jan pona la o pona e mi!\"\r\n\r\nsoweli loje li toki e ni: \"tawa pona. ni li sona insa mi li pona mute. jan li lukin pona kepeken pilin taso. jan li ken ala lukin e ijo suli kepeken oko.\"', '', 1, 14, '', 0, 0),
('fur', 0, 'frioulan', 'Friulan', 'furlan', '\"A cognossin nome chel ch\'a àn dumiesteât\", e dîs la bolp. - I oms a no àn plui timp di cognossi nuie. A comprin tai negozis cjossis za prontis. Ma mediant che a no esistin marcjadants di amîs, i oms a no àn plui amîs. Se tu vuelis un amì, alore dumiesteimi.\r\n\r\n\"Cungjò\", e dîs la bolp. \"E ve ca il gno segret. Al è une vore sempliç: a viodin ben nome cul cûr. L\'essenziâl al è invisibil ai voi.\"', '', 1, 51, 'udine', 46.0649, 13.2307),
('wln-namur', 0, 'wallon namurois', 'Walloon', 'walon', 'On ni conèt ki les sacwès k\' on atraite, dijha li rnåd. Les omes n\' ont pus pont d\' timps po rén conèche. Is achetenut des sacwès totès fwaites amon les mårtchands. Mins come gn\' a pont di mårtchands d\' amis, les omes n\' ont pus pont d\' amis. Si vos vloz on ami, atraitîz-mi !\r\n\r\nA Diè, dijha li rnåd. Voci mi sicret. Il est foirt simpe : on ni voet bén k\' avou si keur. Li principal est-invisibe po les îs.', '', 1, 50, 'namur', 50.4641, 4.86043),
('avk', 0, 'kotava', 'Kotava', '', 'Va tulegovitan plek yo anton grupet, bresitol kalir. Ayik ta kona grupera mea\r\nugaldir. Dene dolekik va ixam varon iayan plek yo luster. Vexe oye da me tir\r\ndolekik va nik acum ayik va nik mea dir. Ede va nik kuranil, va jin tulegovital\r\n!\r\n\r\nDone, bresitol kalir. Batse jinafa birga. Opelapafa : kan takra anton winhit.\r\nBenele kan iteem tir merowine.', '', 1, 14, '', 0, 0),
('oci-oux', 2, 'occitan d\'Oulx', 'Occitan (Oulx)', '', 'Nou couneison mac lâ choza quë nz\'avon aprivazà, à dí \'l reinâ. Louz omme i l\'on pâ mai \'l ton ëd couneissë ron. I l\'achëtton da lou marchan \'d choza jó feita. Ma, pisquë la lh\'à pâ \'d marchan d\'amisse, louz omme i l\'on pâ mai d\'amisse. S\'ou vouré in amiss, aprivazëmmë!\r\nAdieu, ou lh\'à dí \'l reinâ. Voualà moun sëcré. Ou l\'i fran sinplë: la s\'vé bion mac bou \'l ceur. L\'essansièl, ou l\'i invizibblë për louz iooû. ', '', 1, 49, 'oulx', 45.0333, 6.83363),
('oci-via', 2, 'occitan viaran', 'Occitan (Viaran)', '', 'Nou counishën puè que la chòuza que nou z-avën aprivouazè, o di l\'rirar. Lou z-òme i z-an pa mai l\'tën d\'counètre pa ren. I z-achatan òu marchan dë chòuza jo touta facha. Mè, coumo ou l\'i o pa d\'marchan d\'ami, lou z-òme i z-an pa mai d\'ami. S\'tu voua z-un ami, aprivouaza-më!\r\nAr\'vèire, ou l\'o di l\'rirar. \'Co l\'i moun sëcrë. Ou l\'i bën simple: la s\'vèi bën qu\'ëmbë l\'cor. L\'eshënshiè, ou l\'i invizible pèr lou z-uòu. ', '', 1, 49, '', 0, 0),
('oci-gav', 2, 'occitan gavot', 'Occitan (Gavot)', '', 'Òm coneisse que las chausas qu\'òm aprivèisa, dissèc lo reinart. Los òmes an mai lo temps de pas ren coneisser. Achaton de chausas totas fachas ves los marchands. Mas bòrd qu\'i a pas de marchands d\'amics, los òmes an pas mai d\'amics. Se vòles un amic, apri', '', 1, 49, 'gap, france', 44.5599, 6.0759),
('kir', 0, 'kirghize', 'Kyrgyz', '', '<pre>&#1041;&#1080;&#1088;&#1257;&#1085;&#1199; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1089;&#1257;&#1187;, &#1086;&#1096;&#1086;&#1085;&#1091; &#1075;&#1072;&#1085;&#1072; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257; &#1084;&#1199;&#1084;&#1199;&#1082;&#1199;&#1085; - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;\r\n&#1040;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1072; &#1073;&#1080;&#1088;&#1085;&#1077;&#1088;&#1089;&#1077;&#1085;&#1080; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257;, &#1091;&#1073;&#1072;&#1082;&#1099;&#1090;&#1072;&#1088;&#1099; &#1078;&#1086;&#1082;. &#1040;&#1083;&#1072;&#1088; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1085; &#1076;&#1072;&#1103;&#1088;\r\n&#1073;&#1091;&#1102;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1099;&#1096;&#1072;&#1090;. &#1041;&#1080;&#1088;&#1086;&#1082;, &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1076;&#1091; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1091;&#1091;&#1075;&#1072; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1088;\r\n&#1078;&#1086;&#1082; &#1075;&#1086;, &#1072;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099;&#1085; &#1076;&#1072; &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1091; &#1078;&#1086;&#1082; &#1073;&#1086;&#1083;&#1091;&#1087; &#1082;&#1072;&#1083;&#1076;&#1099;. &#1069;&#1075;&#1077;&#1088;&#1076;&#1077; &#1089;&#1077;&#1085;&#1076;&#1077; &#1076;&#1086;&#1089;\r\n&#1073;&#1086;&#1083;&#1075;&#1086;&#1085;&#1076;&#1091; &#1082;&#1072;&#1072;&#1083;&#1072;&#1089;&#1072;&#1187;, &#1089;&#1077;&#1085; &#1084;&#1077;&#1085;&#1080; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1199;&#1087; &#1072;&#1083;!<br>\r\n- &#1050;&#1086;&#1096;, - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;. - &#1052;&#1099;&#1085;&#1072; &#1084;&#1077;&#1085;&#1080;&#1085; &#1089;&#1099;&#1088;&#1099;&#1084;. &#1040;&#1083; &#1072;&#1073;&#1076;&#1072;&#1085; &#1078;&#1257;&#1085;&#1257;&#1082;&#1257;&#1081;:\r\n&#1069;&#1187; &#1084;&#1072;&#1072;&#1085;&#1080;&#1083;&#1199;&#1199; &#1082;&#1257;&#1079;&#1076;&#1257;&#1085; &#1078;&#1199;&#1084;&#1199;&#1083;&#1199;&#1199;.', '', 1, 36, 'Kirghizistan', 41.2044, 74.7661),
('tur', 0, 'turc', 'Turkish', 'türkçe', '&#X0130;nsan ancak evcille&#x015F;tirirse anlar, dedi tilki. &#X0130;nsanlar&#x0131;n art&#x0131;k anlamaya zamanlar&#x0131; yok. Dükkânlardan her istediklerini sat&#x0131;n al&#x0131;yorlar. Ama dostluk sta&#x0131;lan bir dükkân olmad&#x0131;&#x011F;&#x0131; i&#x00E7;in dostlar&#x0131; yok art&#x0131;k. E&#x011F;er dost istiyorsan, beni evcille&#x015F;tir !\r\n\r\nHos&#x00E7;akal, dedi tilki. &#X0130;&#x015F;te sana dir s&#x0131;r, &#x00E7;ok basit bir &#x015F;ey : &#x0130;nsan yaln&#x0131;z  yüre&#x011F;iyle do&#x011F;ruyu görebilir. As&#x0131;l görülmesi gerekeni gözler göremez.', '', 1, 36, 'turkey', 38.9637, 35.2433),
('est', 0, 'estonien', 'Estonian', 'eesti', 'Väike prints\r\n\r\n\"Tuntakse ainult neid asju, mida taltsutatakse, \" ütles rebane.\r\nInimestel pole enam aega midagi tundma õppida. Nad ostavad kõiki asju valmis kujul kaupmeeste käest. Ja kuna ei ole kaupmehi, kes sõpru müüksid, siis polegi inimestel enam sõpru. Kui tahad endale sõpra, siis taltsuta mind !\r\n\r\n\" Jumalaga, \" ütles rebane. \" Siin on minu saladus. See on väga lihtne : ainult südamega näed hästi. Kõige tähtsam on silmale nähtamatu. \"\r\n', '', 1, 63, 'estonia', 58.5953, 25.0136),
('ell', 0, 'grec', 'Greek', 'E&lambda;&lambda;&nu;&rho;&xi;&kappa;&alpha;', '&Delta;&epsilon;  &gamma;&nu;&omega;&rho;&#943;&zeta;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf; &pi;&alpha;&rho;&#940; &#972;,&tau;&iota; &epsilon;&xi;&eta;&mu;&epsilon;&rho;&#974;&nu;&epsilon;&iota;, &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &epsilon;&upsilon;&kappa;&alpha;&iota;&rho;&omicron;&#973;&nu;  &pi;&iota;&alpha; &nu;&alpha; &mu;&#940;&theta;&omicron;&upsilon;&nu; &tau;&#943;&pi;&omicron;&tau;&epsilon;. &Tau;&rsquo;&alpha;&gamma;&omicron;&rho;&#940;&zeta;&omicron;&upsilon;&nu; &#972;&lambda;&alpha; &#941;&tau;&omicron;&iota;&mu;&alpha; &alpha;&pi;&#972; &tau;&omicron;&upsilon;&sigmaf; &epsilon;&mu;&pi;&#972;&rho;&omicron;&upsilon;&sigmaf;. &Kappa;&alpha;&theta;&#974;&sigmaf; &#972;&mu;&omega;&sigmaf; &delta;&epsilon;&nu;  &upsilon;&pi;&#940;&rho;&chi;&omicron;&upsilon;&nu; &delta;&iota;&#972;&lambda;&omicron;&upsilon; &#941;&mu;&pi;&omicron;&rho;&omicron;&iota; &phi;&#943;&lambda;&omega;&nu;, &omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &#941;&chi;&omicron;&upsilon;&nu; &pi;&iota;&alpha; &phi;&#943;&lambda;&omicron;&upsilon;&sigmaf;. &Alpha;&nu; &theta;&#941;&lambda;&epsilon;&iota;&sigmaf; &#941;&nu;&alpha;  &phi;&#943;&lambda;&omicron;, &epsilon;&xi;&eta;&mu;&#941;&rho;&omega;&sigma;&#941; &mu;&epsilon; !\r\n(...)\r\n&#904;&chi;&epsilon;  &gamma;&epsilon;&iota;&alpha;! &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&rho;&#943;&sigma;&tau;&epsilon; &tau;&omicron; &mu;&upsilon;&sigma;&tau;&iota;&kappa;&#972; &mu;&omicron;&upsilon;. &Epsilon;&#943;&nu;&alpha;&iota; &pi;&omicron;&lambda;&#973; &alpha;&pi;&lambda;&#972; : &delta;&epsilon; &beta;&lambda;&#941;&pi;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf;  &kappa;&alpha;&lambda;&#940; &pi;&alpha;&rho;&#940; &mu;&omicron;&nu;&#940;&chi;&alpha; &mu;&epsilon; &tau;&eta;&nu; &kappa;&alpha;&rho;&delta;&iota;&#940;. &Eta; &omicron;&upsilon;&sigma;&#943;&alpha; &epsilon;&#943;&nu;&alpha;&iota; &alpha;&#972;&rho;&alpha;&tau;&eta; &gamma;&iota;&alpha; &tau;&alpha; &mu;&#940;&tau;&iota;&alpha;.', '', 1, 47, 'greece', 39.0742, 21.8243),
('vls', 0, 'flamand occidental', 'West Flemish', 'Vlaemsch/Vlaams', 'Ze kenn oljinne die dingn woamee da ze echt vertrouwd zin, zegt den vos. De minsn eyn gin tid mji om echt te zien. Ze kwopn dingn kant en kloar bi nen handeloare. Mo verkwopers van moaten, da bestoa nie, en dus eyn de minsn gin moaten mji. Aj ne moat wilt, moej mi temn!...\r\nSalu, zegt den vos, Ier is min geheim. T\'i vrji jinvoudig: Goe zien kundje oljinne me jen herte. Et weznlukke is onzichtboar vo jun wogn.\r\n\r\n', '', 1, 68, 'gent', 51.0536, 3.72087),
('urd', 0, 'ourdou', 'Urdu', '', '', 'urdu.gif', 1, 46, 'pakistan', 30.3753, 69.3451),
('wuu-shg', 0, 'wuu de Shangaï', 'Shanghaines', 'zanhererau', '', 'shangai.jpg', 1, 38, 'shangai', 31.2307, 121.473),
('lao', 0, 'laotien', 'Lao', '', '', 'laotien.gif', 1, 15, 'laos', 19.8563, 102.495),
('kab', 0, 'kabyle', 'Kabyle', 'taqbaylit', 'Ye nnad izirthi, ne tsakey kan ayen swayes in wulef. Imdhanen ur san ara y wekth i thmusni. Tsarend kan ayen i hgan siheraren. Sgwaken n qethwan iheraren i znuzen thadukli, imdhanen ur san ara imdukwal. Ma the vgher amdakwel, alesiyé.\r\nYe nnad izirthi qim dhi le hna. Atsan serya inu, dhan i sehyen. Tha mughli nel kayen tseqed sgul. Ey ni lan dhe ssah its wafer af allen\r\n', '', 1, 25, 'Kabylie', 36.817, 4.3),
('nan', 0, 'min de Taiwan', 'Taiwan Min', '', 'gun chi liau kai ho\' sun hok chi mih\r\nho\' li kong\r\nlin lui kin a lit i keng bo\' si kan khi liau kai saN mih a\r\nin an siong lin hia beh hoe hian seng phin\r\nm ko ki lian bo sun chai siau siu peng iu e siong jin\r\nlin lui toh\r\nbo peng iu a\r\nlu ko\' li beh kau chit e peng iu\r\nsun hok goa pa\r\neng piat a\r\nho\' li kong\r\nche toh si goa e pi bit\r\nchin kan tan\r\nchi u iong sim lai khoaN chiah e khoaN e chheng\r\nsiong ki pun e mih kiaN si bak chiu so\' khoaN be tioh e', '', 1, 38, 'taiwan', 23.6978, 120.961),
('khm', 0, 'khmer', 'Khmer', '', '', 'khmer.jpg', 1, 39, 'Cambodge', 12.5657, 104.991),
('isl', 0, 'islandais', 'icelandic', '', 'Maður þekkir ekki annað en það, sem maður temur, sagði refurinn. Mennirnir hafa ekki lengur tíma til að þekkja neitt. Þeir kaupa tilbúna hluti hjá kaupmanninum. En þar sem ekki eru til kaupmenn, sem versla með vini, eiga menn ekki lengur neina vini. Ef þú vilt eiga vin, Þá temdu mig!\r\n\r\nVertu sæll, sagði refurinn. Hér er leyndarmálið mitt. Það er mjög einfalt: maður sér ekki vel nema með hjartanu. Það mikilvægasta er ósýnilegt augunum.\r\n', '', 1, 57, 'iceland', 64.9631, -19.0208),
('aze', 0, 'azeri', 'Azerbaijani', 'Az?rbaycan', '', 'azeri.jpg', 1, 36, 'azerbaijan', 40.1431, 47.5769),
('spa-crc', 1, 'espagnol costaricain', '', '', '', '', 1, 65, 'Costa Rica', 9.74696, -83.7543),
('spa-arg', 1, 'espagnol argentin', '', '', '', '', 1, 65, 'Argentine', -38.4161, -63.6167),
('spa-and', 1, 'espagnol andalou', '', '', '', '', 1, 65, 'andalousie', 37.5443, -4.72775),
('fra-qbc', 1, 'français québécois', '', '', '', '', 1, 50, 'Montréal, Canada', 45.5454, -73.6391),
('lld-bad', 2, 'ladin de la val Badia', '', '', 'Le pice prinz\r\n\r\n\"An conësc mâ ées côsses ch\'an inzertiëia, \" â spo ajuntè la olp. \"Les porsones ne n\'á plü degun tëmp por imparè a conësce valgügn. Ares se cumpra scialdi döt tles botëghes. Mo deach\'al ne n\'é degünes botëghes che vënn amîsc, nen á les porsones plü gnanca degügn. Porchël inzertiëieme, sce t\'ôs avëi n amich!\"\r\n\r\n\"Adio,\" â respongnü la olp. \"Chilò áste &#x015b;ëgn spo in&#x0107;e mî socrët. Al é dër scëmpl: an vëiga mâ bun cun le cör, l\'essenzial ne vëigon nia cun i edli\"', '', 1, 51, 'Val Badia', 46.5966, 11.7828),
('lld-gar', 2, 'ladin de la Val Gardena', '', '', 'L pitl prinz\r\n\r\n\"Mé cie che n zertiëia, cunëscen\", ova dit la bolp. \"La persones ne n\'á nia plu dl\'aurela de emparé a cunëscer zeche. Les se compra dut bele anjiniá tla butëighes. Ma daviá che l ne n\'ie nia butëighes che vënd cumpanies, nen n\'á la jënt nia plu. Sce te ues n cumpani, muesse me zertië!\"\r\n\r\n\"Adio\", ova dit la bolp. \"Tlo es mi sucrët. L ie drët scëmpl: cun l cuer vëijen l bën. Cie che ie plu empurtant ne vëijen nia cun i uedli\"', '', 1, 51, 'Val Gardena', 46.5121, 11.7293),
('roh-sut', 2, 'romanche sutsilvan', '', '', 'Igl pintg prenzi\r\n\r\nIgn ancanuscha me quegl cign â domestitgieu, â la gualp getg. Igls carstgàns ân betga ple peada damprender dancanuscher anzatge. Els cumpran las tgossas fatgas a fitadas tar igls marcadànts. Mo parquegl cigl dat nigns marcadànts damitgs, ân igls carstgàns betga ple amitgs. Scha tei vol egn amitg, alura domestitgescha me!\r\n\r\nAdia, â la gualp getg. A quegl e mieu misteri. El e fetg sempel: Ign veza bagn me cun igl cor. Igl essenzial vezign betg cun igls îls.\r\n', '', 1, 51, '', 0, 0),
('gle', 0, 'gaélique irlandais', '', 'Gaeilge', 'An prionsa beag\r\n\r\n-Ní chuireann tú aithne ach ar na nithe a chlónn tú, arsa an madra rua. Na \r\ndaoine anois, níl an t-am acuníos mó aithne a chur ar aon ní. Ceannaíonn \r\nsiad rudaí réamhdhéanta ó lucht díolta. Ach ó tharla nach bhfuil aon lucht \r\ndíolta cairde ann, níl cairde ar bith ag na daoine níos mó. Má tá cara de \r\ndhíth ort, déan mé a chló!\r\n\r\n-Slán leat, arsa an madra rua. Seo é mo rún duit. Tá sé ansimpli: is leis an \r\nchroí is fearr a tímid. Na rudaí is bunúsaí amuigh, ní féidir leis na súile \r\niad a fheiceáil.', '', 1, 74, 'dublin', 53.3441, -6.26749),
('nbf', 0, 'naxi', 'Naxi', 'naxi', '', 'naxidongba.gif', 1, 75, 'Lijiang, china', 24.687, 102.964),
('per', 0, 'persan', 'Persian', '', '', 'persan.jpg', 1, 45, 'téhéran', 35.6908, 51.4352),
('bzd', 0, 'bribri', 'bribri', '', '', 'bribri.jpg', 1, 76, 'Costa Rica bri bri', 9.25, -83.25),
('jam-lim', 2, 'créole du Limón', 'Limonese creole', '', 'We onle nuo de ting weh we kian tiem, de foks seh. Nou a die man naa no taim to nuo nottin. Every thing them bai mek arredy. An sins you kiant fain a stoor we sel fren, man no hav no fren agen. If yu want a fren, ¡yu gwine hav fi tiem mi!\r\n\r\nA gan, de foks seh. But before mek mi tel u a secrit. It is very simpl: yu kian only si good with yu haat. What matta de most yu kianot si only with yu eyethem.', '', 1, 73, 'Limón, Costa Rica', 9.98, -83.03),
('pcd-ath', 2, 'picard d\'Ath', '', '', 'On n counwat qu lès afères qu on amadoûe qui dit l èrnârd. Lès omes n ont pus l tans de rieu counwate. I-z-acattë dès aféres toutes ajvées à lès marchands. Mès, vu qu i n a gneu d marchands d coumarâdes, lès omes n ont pus d coumarâdes. Si vos voleuz in coumarâde, amadoûèz-m !\r\n\r\nAdjeu qui dit l èrnârd. Vlà chi m sëcreut. Il eùt fôrt simpe : on n vwat bieu qu aveu l keûr. Eùl prinjipâl n eùt gneu visîbe pou lès ieus.\r\n', '', 1, 50, 'Ath', 50.6403, 3.77724),
('yid', 0, 'yiddish', 'Yiddish', '', 'Men bakent zikh mit zakhn nor ven men shtubikt zey ayn, hot der fuks gezogt. Di mentshn hobn nisht keyn tsayt mit epes zikh bakenen. Zey koyfn fartike zakhn bay di sokhrim. Ober azoy vi keyn khaveyrim-sokhrim zenen nisht faran, hobn di mentshn nisht keyn khaveyrim. Oyb du vilst a khaver, shtubik mikh ayn...\r\n- Adye, hot gezogt der fuks. Ot iz mayn sod. Er iz zeyer poshet: men zet gut nor mitn hartsn. Dos vikhtikste iz farborgn fun di oygn.', '', 1, 68, '', 0, 0),
('frp', 0, 'francoprovençal (arpitan)', '', 'arpitan', '- In cognët maque le tsouse que se rendon atréte, l\'at repondu-lèi lo rèinar. Le s-ommo l\'an pamë lo ten de cognëtre ren. Atseton in tsë le martsan le tsouse dza féte. Më di moman que le martsan cognësson pa de s-ami, le s-ommo l\'an pamë de s-ami. Se te vou un ami, rend-mè euna bëtse atréta! \r\n\r\n- Adzeu, l\'at repondu lo rèinar. Voèlà mon secret. L\'est bramen simplo: se vèit maque bien avouë lo coeur. L\'essanciel l\'est invisiblo pe le je.\r\n', '', 1, 50, '', 0, 0),
('kor', 0, 'coréen', 'Korean', '', '?? ???? ? ?? ?? ? ??? ??, ??? ???? ?? ???? ?? ???. ??? ??? ?? ??? ??. ???? ???? ??? ?? ? ?? ??. ??? ????? ? ????......\r\n??! ?? ? ??? ????. ? ??? ? ? ??. ???? ?? ? ???? ??. ?? ??? ? ?? ??? ???.', 'coreen.png', 1, 15, 'Séoul', 37.55, 127),
('aeb', 0, 'arabe tunisien', 'Tunisian arabic\r\n', '', '', 'arabetunisien.png', 1, 62, 'Tunis', 36.82, 10.17),
('tha', 0, 'thaï', 'Thai', '', '', 'thai.JPG', 1, 77, 'bangkok', 13.84, 100.66),
('mlg', 0, 'malgache', 'malagasy', '', '-Ny zavatra folahina ihany no mety ho fantatra, hoy ilay fosa. Tsy manam-potoana hahafantaran-javatra na inona na inona intsony ny olombelona. Zavatra raisim-potsiny no vidiny eny aminny mpivarotra. Koa satria tsy misy mpivarotra namana mihitsy, dia tsy mana-namana intsony ny olombelona. Raha te hana-namana ianao, dia folahy aho!\r\n\r\n- Veloma, hoy ilay fosa. Inty ilay tsiambarateloko. Tsotra dia tsotra ilay izy : aminny alalanny fo ihany no ahitan-javatra. Tsy mba hitanny maso ny tena zavatra.\r\n', '', 1, 40, 'Antananarivo', -18, 47.53),
('alb-kos', 1, 'albanais du Kosovo', '', '', '', '', 1, 19, 'Pristina', 42.66, 21.16),
('wln-liege', 2, 'wallon liégeois', 'Walloon (Liège)', '', '-On n\' kinohe bin qui çou qu\'on aprivwèzêye, dèrit li r\'nå. Lès-omes ni prindèt pus l\' tins dè rin k\'nohe. Il atchtèt tot, tot fêt, \'mon lès martchands. Mins come i-n-a nou martchand d\' camarådes, lès-omes n\'ont pus nou copleû. Si vos \'nnè volez onk, aprivwèzez-m\'.\r\n(...)\r\n- Adiè, dèrit li r\'nå. Vochal mi scrèt. Il èst fwért simpe : on n\' veût clér qu\'avou s\' coûr. Çou qui conte li pus\', on n\'èl pout vèy avou sès-oûy.', '', 1, 50, 'Liège', 50.633, 5.567),
('frp-bre', 2, 'francoprovençal bressan', '', '', 'On counya lamè le sh<u>eu</u>ze quon acoulache, di lou rena. Léj <u>ou</u>mou non pô mé lazi de rin couny<u>â</u>tre. Lash<u>e</u>ton de sh<u>eu</u>ze dézhya féte vé lé marshè. Mé quemè é ny a pô de marshè dami, léj <u>ou</u>mou non pô dami. Che te vu nami, acoul<u>a</u>cha-me!\r\nA reva, di lou rena. Vtya mon secré. I vra éja : on ne va byè quavoui lou quëur. Che que <u>con</u>tou lou mé ne che va pô avoui lé zu.', '', 1, 50, 'Bourg-en-Bresse', 46.2, 5.2),
('kea', 0, 'créole du Cap-Vert', 'Cape Verdean Creole', 'Kabuverdianu', '-Só kel ki mansádu ki ta konxedu. Algen dja ka teni ténpu pas konxi náda. Ês ta kunpra kusa tudu fetu. Komu amigu ka ta bendedu gó, algen dja fika sen amigu. S-u kré ten amigu, mansâ-m !\r\n\r\nRapoza fla-l:\r\n-Diós bá ku bo. Gósi gó N ta kontâ-u kel segrédu. É kusa sinplis: só ku korason k-u ta odja dretu. Kel ki ta konta, odju ka ta odja.\r\n', '', 1, 78, 'Praia', 14.916, -23.5),
('run', 0, 'kirundi', 'Kirundi', '', 'Ya mbwebwe iti :  ibintu bisa umuntu amenya neza, ni ivyo yemeye kwitungira. Abantu nta kanya bakironka ko kugira ico bamenya. Bagura ibintu bisanzwe bikozwe vyanzwe nabadandaza. Ariko rero ko ata  badandaza b abagenzi babaho, abantu nta bagenzi bagifise. Niwaba  ushaka umugenzi,nunyitungire! \r\n\r\nYa mbwebwe iti turabonanye.Ngaka akabanga kanje. Gaciriye hafi cane: umutima musa ni wo ufasha  kubona neza . Ibihambaye ntibishobora kuboneshwa amaso.', '', 1, 29, 'Bujumbura', -3.35, 29.34),
('bod', 0, 'tibetain', 'Tibetan', 'peugué', '', '', 1, 75, 'Lhassa', 29.65, 91.11);

-- --------------------------------------------------------

--
-- Table structure for table `prince_sound`
--

CREATE TABLE `prince_sound` (
  `filename` varchar(255) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `speaker` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `private` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_sound`
--

INSERT INTO `prince_sound` (`filename`, `date`, `speaker`, `language`, `comment`, `private`) VALUES
('vs.rum.mp3', '2006-05-19', 'vs', 'ron', '', ''),
('jpg.fra.mp3', '2006-05-19', 'jpg', 'fra', '', ''),
('gk.rus.mp3', '2006-05-19', 'gk', 'rus', '', ''),
('am.gre.mp3', '2006-05-19', 'am', 'ell', '', ''),
('al.spa.mp3', '2006-05-22', 'al', 'spa-crc', 'costa rica', ''),
('al.epo.mp3', '2006-05-22', 'al', 'epo', '', ''),
('aa.fra.mp3', '2006-05-22', 'aa', 'fra', '', ''),
('cc.fra.mp3', '2006-05-22', 'cc', 'fra', '', ''),
('hna.nor.mp3', '2006-05-22', 'hna', 'nor', '', ''),
('ys.gsw-app.mp3', '2006-05-22', 'ys', 'gsw-app', '', ''),
('ng.fra.mp3', '2006-05-22', 'ng', 'fra', '', ''),
('ta.scc.mp3', '2006-05-30', 'ta', 'srp', '', ''),
('vst.scc.mp3', '2006-05-30', 'vst', 'srp', '', ''),
('lb.ita-tic.mp3', '2006-05-30', 'lb', 'lmo-tic', '', ''),
('lb.ita.mp3', '2006-05-30', 'lb', 'ita', '', ''),
('gs.rum.mp3', '2006-05-30', 'gs', 'ron', '', ''),
('ln.slv.mp3', '2006-05-30', 'ln', 'slv', '', ''),
('ec.hun.mp3', '2006-05-31', 'ec', 'hun', '', ''),
('ta2.scc.mp3', '2006-05-30', 'ta', 'srp', '', ''),
('it.jpn.mp3', '2006-06-01', 'it', 'jpn', '', ''),
('mg.wol.mp3', '2006-06-02', 'mg', 'wol', '', ''),
('dl.alb.mp3', '2006-06-07', 'dl', 'sqi', '', ''),
('mp.rum.mp3', '2006-06-07', 'mp', 'ron', '', ''),
('ru.rus.mp3', '2006-06-08', 'ru', 'rus', '', ''),
('us.heb.mp3', '2006-06-08', 'us', 'heb', '', ''),
('mn.wol.mp3', '2006-06-08', 'mn', 'wol', '', ''),
('su.gsw-sol.mp3', '2006-06-20', 'su', 'gsw-sol', '', ''),
('ne.deu.mp3', '2006-06-20', 'ne', 'deu', '', ''),
('mc.gre.mp3', '2006-06-21', 'mc', 'ell', '', ''),
('cl.fra.mp3', '2006-06-21', 'cl', 'fra', '', ''),
('alm.spa.mp3', '2006-07-03', 'alm', 'spa', '', ''),
('mt.dar.mp3', '2006-07-03', 'mt', 'prs', '', ''),
('ec.fra.mp3', '2006-10-28', 'ec', 'fra', '', ''),
('ech.fra.mp3', '2006-10-28', 'ech', 'fra', '', ''),
('at.fra.mp3', '2006-10-28', 'at', 'fra-qbc', 'québec', ''),
('ej.fra.mp3', '2006-11-06', 'ej', 'fra-qbc', 'québec', ''),
('cs.roh.mp3', '2006-11-01', 'cs', 'roh-srs', '', ''),
('nr.rus.mp3', '2006-10-16', 'nr', 'rus', '', ''),
('ov.pol.mp3', '2006-11-08', 'ov', 'pol', '', ''),
('ov.rus.mp3', '2006-11-08', 'ov', 'rus', '', ''),
('gb.eng.mp3', '2006-11-14', 'gb', 'eng', '', ''),
('gb.enm.mp3', '2006-11-14', 'gb', 'enm', '', ''),
('gb.ang.mp3', '2006-11-14', 'gb', 'ang', '', ''),
('xx.roh-val.mp3', '2006-11-15', 'xx', 'roh-val', '', ''),
('xx.roh-srm.mp3', '2006-11-29', 'xf', 'roh-srm', '', ''),
('te.fra.mp3', '2006-11-28', 'te', 'fra', '', ''),
('te.spa.mp3', '2006-11-28', 'te', 'spa', '', ''),
('xx.roh-gri.mp3', '2006-11-29', 'xx', 'roh', '', ''),
('xx.bam.mp3', '2006-12-01', 'xx', 'bam', '', ''),
('xx.nor-levanger.mp3', '2006-12-14', 'xf', 'nor', '', ''),
('xx.nor-nordhordaland', '2006-12-14', 'xf', 'nor', '', ''),
('xx.nor-vadso.mp3', '2006-12-14', 'xx', 'nor', '', ''),
('xx3.tgl.mp3', '2006-12-20', 'xx3', 'tgl', '', ''),
('xx2.bos.mp3', '2006-12-20', 'xx2', 'bos', '', ''),
('xx2.deu.mp3', '2006-12-20', 'xx2', 'deu', '', ''),
('xx2.scc.mp3', '2006-12-20', 'xx2', 'srp', '', ''),
('h.vie.mp3', '2007-01-18', 'h', 'vie', '', ''),
('f.vie.mp3', '2007-01-18', 'f', 'vie', '', ''),
('f.vie.2.mp3', '2007-01-18', 'f', 'vie', '', ''),
('amu.rus.mp3', '2007-01-24', 'amu', 'rus', '', ''),
('amu.mon.mp3', '2007-01-24', 'amu', 'mon', '', ''),
('kcs.hun.mp3', '2007-01-24', 'kcs', 'hun', '', ''),
('lao.1.mp3', '2009-04-30', 'female', 'lao', '', ''),
('sdt.eng.mp3', '2007-01-24', 'sdt', 'eng', '', ''),
('sdt.jam.mp3', '2007-01-24', 'sdt', 'jam', '', ''),
('pmi.ita.mp3', '2007-01-26', 'pmi', 'ita', '', ''),
('dm.hin.mp3', '2007-02-14', 'dm', 'hin', '', ''),
('ka.hin.mp3', '2007-02-18', 'ka', 'hin', '', ''),
('xx.kot.mp3', '2007-02-21', 'xx', 'avk', '', ''),
('ma.wln.mp3', '2007-02-21', 'ma', 'wln-namur', '', ''),
('lm.swa.mp3', '2007-02-27', 'lm', 'swa', '', ''),
('cv.bul.mp3', '2007-03-12', 'cv', 'bul', '', ''),
('54.jpn.mp3', '2007-03-16', '54', 'jpn', '', ''),
('55.scn.mp3', '2007-03-16', '55', 'scn', '', ''),
('55.ita.mp3', '2007-03-16', '55', 'ita', '', ''),
('57.kir.mp3', '2007-03-16', '57', 'kir', '', ''),
('58.rus.mp3', '2007-03-16', '58', 'rus', '', ''),
('58.ukr.mp3', '2007-03-16', '58', 'ukr', '', ''),
('59.rus.mp3', '2007-03-16', '59', 'rus', '', ''),
('59.ukr.mp3', '2007-03-16', '59', 'ukr', '', ''),
('60.pol.mp3', '2007-03-16', '60', 'pol', '', ''),
('56.bra.mp3', '2007-03-16', '56', 'por-bra', 'nordestino', ''),
('61.chi.mp3', '2007-03-15', '61', 'cmn', '', ''),
('63.chi.mp3', '2007-03-23', '63', 'cmn', '', ''),
('62.tur.mp3', '2007-03-23', '62', 'tur', '', ''),
('64.alb.mp3', '2007-03-23', '64', 'sqi', '', ''),
('65.spa.mp3', '2007-03-28', '65', 'spa-arg', 'argentine', 'laura, étudiant de isa'),
('66.bul.mp3', '2007-04-04', '66', 'bul', '', ''),
('67.uzb.mp3', '2007-05-02', '67', 'uzb', '', ''),
('68.scr.mp3', '2007-05-02', '68', 'scr', '', ''),
('69.deu.mp3', '2007-05-02', '68', 'deu', '', ''),
('69.deu.sax.mp3', '2007-05-02', '68', 'deu', '', ''),
('68.swe.mp3', '2007-09-27', '68', 'swe', '', ''),
('69.swe.mp3', '2007-09-27', '69', 'swe', '', ''),
('kaisa.est.mp3', '2008-10-31', 'kaisa', 'est', '', ''),
('ines.vls.mp3', '2008-10-31', 'ines', 'vls', '', ''),
('juri.gsw-zur.mp3', '2008-10-31', 'juri', 'gsw-zur', '', ''),
('ines.dut-bel.mp3', '2008-10-31', 'ines', 'dut', '', ''),
('enchao.wuu-shangai.mp3', '2008-10-31', 'enchao', 'wuu-shg', '', ''),
('zeinab.urd.mp3', '2008-10-31', 'zeinab', 'urd', '', ''),
('kab.mp3', '2009-06-26', '1', 'kab', '', ''),
('kab2.mp3', '2009-06-26', '1', 'kab', '', ''),
('nan1-f.mp3', '2009-09-17', 'female', 'nan', '', ''),
('nan2-f.mp3', '2009-09-17', 'female', 'nan', '', ''),
('por.f1.mp3', '2009-10-25', '', 'por', '', ''),
('khm.1.mp3', '2009-11-16', 'female', 'khm', '', ''),
('cat.1.mp3', '2009-11-16', '1', 'cat', '', ''),
('glg.1.mp3', '2009-11-16', '1', 'glg', '', ''),
('dut.f1.mp3', '2009-12-09', 'female - lonneke', 'dut', '', ''),
('dut.m1.mp3', '2009-12-09', '1', 'dut', '', ''),
('spa.1.mp3', '2009-12-15', '1', 'spa', '', 'ibnamzer@yahoo.es'),
('spa.1.and.mp3', '2009-12-15', '1', 'spa-and', 'andalou', 'ibnamzer@yahoo.es'),
('wol.mp3', '2009-12-15', '1', 'wol', '', 'from antoine,  M A Coly'),
('vie.4.mp3', '2009-12-15', '', 'vie', '', 'recorded by AAuchlin, TRAN_Phung_Kim'),
('esp.and.2.mp3', '2009-12-17', '1', 'spa-and', 'andalou', 'rafael mesa jimenez from isa'),
('eus.1.mp3', '2009-12-17', '', 'eus', 'espagnol', 'ane tolosa from isa'),
('aze.1.mp3', '2009-12-17', '', 'aze', '', 'leila_ahmadova from isa'),
('heb.2.f.mp3', '2010-01-11', 'female', 'heb', '', 'vered silber'),
('por-bra-car.mp3', '2010-01-12', 'male', 'por-bra', 'carioca', 'antonio.prates@forship.com.br, ami de vered silber'),
('roh-put.mp3', '2010-01-25', '1', 'roh-put', '', 'from clau soler 2010 01 25'),
('roh-sut.mp3', '2010-01-25', '1', 'roh-sut', '', 'from clau soler 2010 01 25'),
('isl.1.mp3', '2010-01-28', '2', 'isl', '', 'cjorg'),
('arm.1.mp3', '2010-03-11', '2', 'hye', 'oriental', ''),
('arm.2.mp3', '2010-03-11', '2', 'hye', 'oriental', ''),
('ara.1.mp3', '2010-03-11', '1', 'ara', 'alger', ''),
('ara.2.mp3', '2010-03-11', '1', 'ara', 'alger', ''),
('arm.occ.1.mp3', '2010-03-11', '1', 'hye', 'occidental', ''),
('arm.occ.2.mp3', '2010-03-11', '2', 'hye', 'occidental', ''),
('deu.wuppertal.2.mp3', '2010-03-11', '2', 'deu', 'Wuppertal', ''),
('nbf.1.mp3', '2010-03-24', '2', 'nbf', '', 'from isa'),
('per.1.mp3', '2010-03-30', '1', 'per', '', 'from isa'),
('bzd.mp3', '2010-10-23', '1', 'bzd', '', ''),
('jam-lim.mp3', '2010-10-23', '2', 'jam-lim', '', ''),
('picard-ath.mp3', '2011-02-15', '1', 'pcd-ath', '', 'R.Huvelle remath@skynet.be'),
('slo.m.1.mp3', '2011-03-20', '1', 'slk', '', ''),
('slo.m.2.mp3', '2011-03-20', '1', 'slk', '', ''),
('slo.f.1.mp3', '2011-03-20', '2', 'slk', '', ''),
('slo.f.2.mp3', '2011-03-20', '2', 'slk', '', ''),
('ron-as.mp3', '2012-02-16', 'h', 'ron', '', 'arald sale'),
('spa-and.mp3', '2012-02-16', 'f', 'spa-and', '', 'from alexia hoffman'),
('kor.mp3', '2012-03-19', '2', 'kor', '', 'Kwi-hee Bin'),
('cze.ag.mp3', '2012-03-20', '2', 'cze', '', 'alena GOETZOVA'),
('catalan.eef.mp3', '2012-05-16', '2', 'cat', '', 'from eva esteve ferrer'),
('gal.fer.mp3', '2012-05-29', '1', 'glg', '', 'from eva esteve ferrer'),
('cat.lid.mp3', '2012-05-29', '2', 'cat', '', 'from eva esteve ferrer'),
('alb.eri.mp3', '2012-06-04', '1', 'sqi', '', 'from ulza ferizi'),
('alb.alban.mp3', '2012-06-04', '1', 'alb-kos', '', 'from ulza ferizi'),
('alb.moza.mp3', '2012-06-04', '2', 'sqi', '', 'from ulza ferizi'),
('alb.bes.mp3', '2012-06-04', '1', 'alb-kos', '', 'from ulza ferizi'),
('frp-bressan.mp3', '2013-07-30', '1', 'frp-bre', '', ''),
('fr.pd.h', '2014-01-13', '1', 'fra', '', 'pierredelosme@wanadoo.fr'),
('bod.1.mp3', '2014-02-28', '2', 'bod', '', ''),
('bod.2.mp3', '2014-02-28', '1', 'bod', '', ''),
('che.mp3', '2015-05-01', '1', 'che', '', 'from isa'),
('cre-cas.mp3', '2015-05-01', '1', 'cre-cas', '', 'from nicolas quint'),
('kea.mp3', '2015-06-02', '1', 'kea', '', 'Aires Semedo, from Nicolas Quint'),
('cpf-gua.mp3', '2016-05-31', '1', 'cpf-gua', '', 'from sandrine galtier sa.galtier@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `prince_sound2`
--

CREATE TABLE `prince_sound2` (
  `filename` varchar(255) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `language` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_sound2`
--

INSERT INTO `prince_sound2` (`filename`, `date`, `language`) VALUES
('vs.rum.mp3', '2006-05-19', 'ron'),
('jpg.fra.mp3', '2006-05-19', 'fra'),
('gk.rus.mp3', '2006-05-19', 'rus'),
('am.gre.mp3', '2006-05-19', 'ell'),
('al.spa.mp3', '2006-05-22', 'spa-crc'),
('al.epo.mp3', '2006-05-22', 'epo'),
('aa.fra.mp3', '2006-05-22', 'fra'),
('cc.fra.mp3', '2006-05-22', 'fra'),
('hna.nor.mp3', '2006-05-22', 'nor'),
('ys.gsw-app.mp3', '2006-05-22', 'gsw-app'),
('ng.fra.mp3', '2006-05-22', 'fra'),
('ta.scc.mp3', '2006-05-30', 'srp'),
('vst.scc.mp3', '2006-05-30', 'srp'),
('lb.ita-tic.mp3', '2006-05-30', 'lmo-tic'),
('lb.ita.mp3', '2006-05-30', 'ita'),
('gs.rum.mp3', '2006-05-30', 'ron'),
('ln.slv.mp3', '2006-05-30', 'slv'),
('ec.hun.mp3', '2006-05-31', 'hun'),
('ta2.scc.mp3', '2006-05-30', 'srp'),
('it.jpn.mp3', '2006-06-01', 'jpn'),
('mg.wol.mp3', '2006-06-02', 'wol'),
('dl.alb.mp3', '2006-06-07', 'sqi'),
('mp.rum.mp3', '2006-06-07', 'ron'),
('ru.rus.mp3', '2006-06-08', 'rus'),
('us.heb.mp3', '2006-06-08', 'heb'),
('mn.wol.mp3', '2006-06-08', 'wol'),
('su.gsw-sol.mp3', '2006-06-20', 'gsw-sol'),
('ne.deu.mp3', '2006-06-20', 'deu'),
('mc.gre.mp3', '2006-06-21', 'ell'),
('cl.fra.mp3', '2006-06-21', 'fra'),
('alm.spa.mp3', '2006-07-03', 'spa'),
('mt.dar.mp3', '2006-07-03', 'prs'),
('ec.fra.mp3', '2006-10-28', 'fra'),
('ech.fra.mp3', '2006-10-28', 'fra'),
('at.fra.mp3', '2006-10-28', 'fra-qbc'),
('ej.fra.mp3', '2006-11-06', 'fra-qbc'),
('cs.roh.mp3', '2006-11-01', 'roh-srs'),
('nr.rus.mp3', '2006-10-16', 'rus'),
('ov.pol.mp3', '2006-11-08', 'pol'),
('ov.rus.mp3', '2006-11-08', 'rus'),
('gb.eng.mp3', '2006-11-14', 'eng'),
('gb.enm.mp3', '2006-11-14', 'enm'),
('gb.ang.mp3', '2006-11-14', 'ang'),
('xx.roh-val.mp3', '2006-11-15', 'roh-val'),
('xx.roh-srm.mp3', '2006-11-29', 'roh-srm'),
('te.fra.mp3', '2006-11-28', 'fra'),
('te.spa.mp3', '2006-11-28', 'spa'),
('xx.roh-gri.mp3', '2006-11-29', 'roh'),
('xx.bam.mp3', '2006-12-01', 'bam'),
('xx.nor-levanger.mp3', '2006-12-14', 'nor'),
('xx.nor-nordhordaland', '2006-12-14', 'nor'),
('xx.nor-vadso.mp3', '2006-12-14', 'nor'),
('xx3.tgl.mp3', '2006-12-20', 'tgl'),
('xx2.bos.mp3', '2006-12-20', 'bos'),
('xx2.deu.mp3', '2006-12-20', 'deu'),
('xx2.scc.mp3', '2006-12-20', 'srp'),
('h.vie.mp3', '2007-01-18', 'vie'),
('f.vie.mp3', '2007-01-18', 'vie'),
('f.vie.2.mp3', '2007-01-18', 'vie'),
('amu.rus.mp3', '2007-01-24', 'rus'),
('amu.mon.mp3', '2007-01-24', 'mon'),
('kcs.hun.mp3', '2007-01-24', 'hun'),
('lao.1.mp3', '2009-04-30', 'lao'),
('sdt.eng.mp3', '2007-01-24', 'eng'),
('sdt.jam.mp3', '2007-01-24', 'jam'),
('pmi.ita.mp3', '2007-01-26', 'ita'),
('dm.hin.mp3', '2007-02-14', 'hin'),
('ka.hin.mp3', '2007-02-18', 'hin'),
('xx.kot.mp3', '2007-02-21', 'avk'),
('ma.wln.mp3', '2007-02-21', 'wln-namur'),
('lm.swa.mp3', '2007-02-27', 'swa'),
('cv.bul.mp3', '2007-03-12', 'bul'),
('54.jpn.mp3', '2007-03-16', 'jpn'),
('55.scn.mp3', '2007-03-16', 'scn'),
('55.ita.mp3', '2007-03-16', 'ita'),
('57.kir.mp3', '2007-03-16', 'kir'),
('58.rus.mp3', '2007-03-16', 'rus'),
('58.ukr.mp3', '2007-03-16', 'ukr'),
('59.rus.mp3', '2007-03-16', 'rus'),
('59.ukr.mp3', '2007-03-16', 'ukr'),
('60.pol.mp3', '2007-03-16', 'pol'),
('56.bra.mp3', '2007-03-16', 'por-bra'),
('61.chi.mp3', '2007-03-15', 'cmn'),
('63.chi.mp3', '2007-03-23', 'cmn'),
('62.tur.mp3', '2007-03-23', 'tur'),
('64.alb.mp3', '2007-03-23', 'sqi'),
('65.spa.mp3', '2007-03-28', 'spa-arg'),
('66.bul.mp3', '2007-04-04', 'bul'),
('67.uzb.mp3', '2007-05-02', 'uzb'),
('68.scr.mp3', '2007-05-02', 'scr'),
('69.deu.mp3', '2007-05-02', 'deu'),
('69.deu.sax.mp3', '2007-05-02', 'deu'),
('68.swe.mp3', '2007-09-27', 'swe'),
('69.swe.mp3', '2007-09-27', 'swe'),
('kaisa.est.mp3', '2008-10-31', 'est'),
('ines.vls.mp3', '2008-10-31', 'vls'),
('juri.gsw-zur.mp3', '2008-10-31', 'gsw-zur'),
('ines.dut-bel.mp3', '2008-10-31', 'dut'),
('enchao.wuu-shangai.mp3', '2008-10-31', 'wuu-shg'),
('zeinab.urd.mp3', '2008-10-31', 'urd'),
('kab.mp3', '2009-06-26', 'kab'),
('kab2.mp3', '2009-06-26', 'kab'),
('nan1-f.mp3', '2009-09-17', 'nan'),
('nan2-f.mp3', '2009-09-17', 'nan'),
('por.f1.mp3', '2009-10-25', 'por'),
('khm.1.mp3', '2009-11-16', 'khm'),
('cat.1.mp3', '2009-11-16', 'cat'),
('glg.1.mp3', '2009-11-16', 'glg'),
('dut.f1.mp3', '2009-12-09', 'dut'),
('dut.m1.mp3', '2009-12-09', 'dut'),
('spa.1.mp3', '2009-12-15', 'spa'),
('spa.1.and.mp3', '2009-12-15', 'spa-and'),
('wol.mp3', '2009-12-15', 'wol'),
('vie.4.mp3', '2009-12-15', 'vie'),
('esp.and.2.mp3', '2009-12-17', 'spa-and'),
('eus.1.mp3', '2009-12-17', 'eus'),
('aze.1.mp3', '2009-12-17', 'aze'),
('heb.2.f.mp3', '2010-01-11', 'heb'),
('por-bra-car.mp3', '2010-01-12', 'por-bra'),
('roh-put.mp3', '2010-01-25', 'roh-put'),
('roh-sut.mp3', '2010-01-25', 'roh-sut'),
('isl.1.mp3', '2010-01-28', 'isl'),
('arm.1.mp3', '2010-03-11', 'hye'),
('arm.2.mp3', '2010-03-11', 'hye'),
('ara.1.mp3', '2010-03-11', 'ara'),
('ara.2.mp3', '2010-03-11', 'ara'),
('arm.occ.1.mp3', '2010-03-11', 'hye'),
('arm.occ.2.mp3', '2010-03-11', 'hye'),
('deu.wuppertal.2.mp3', '2010-03-11', 'deu'),
('nbf.1.mp3', '2010-03-24', 'nbf'),
('per.1.mp3', '2010-03-30', 'per'),
('bzd.mp3', '2010-10-23', 'bzd'),
('jam-lim.mp3', '2010-10-23', 'jam-lim'),
('picard-ath.mp3', '2011-02-15', 'pcd-ath'),
('slo.m.1.mp3', '2011-03-20', 'slk'),
('slo.m.2.mp3', '2011-03-20', 'slk'),
('slo.f.1.mp3', '2011-03-20', 'slk'),
('slo.f.2.mp3', '2011-03-20', 'slk'),
('ron-as.mp3', '2012-02-16', 'ron'),
('spa-and.mp3', '2012-02-16', 'spa-and'),
('kor.mp3', '2012-03-19', 'kor'),
('cze.ag.mp3', '2012-03-20', 'cze'),
('catalan.eef.mp3', '2012-05-16', 'cat'),
('gal.fer.mp3', '2012-05-29', 'glg'),
('cat.lid.mp3', '2012-05-29', 'cat'),
('alb.eri.mp3', '2012-06-04', 'sqi'),
('alb.alban.mp3', '2012-06-04', 'alb-kos'),
('alb.moza.mp3', '2012-06-04', 'sqi'),
('alb.bes.mp3', '2012-06-04', 'alb-kos'),
('frp-bressan.mp3', '2013-07-30', 'frp-bre'),
('fr.pd.h', '2014-01-13', 'fra'),
('bod.1.mp3', '2014-02-28', 'bod'),
('bod.2.mp3', '2014-02-28', 'bod');

-- --------------------------------------------------------

--
-- Table structure for table `prince_speaker`
--

CREATE TABLE `prince_speaker` (
  `n` mediumint(9) NOT NULL,
  `id` varchar(255) NOT NULL DEFAULT '',
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `age` tinyint(30) NOT NULL DEFAULT '0',
  `L1` varchar(255) NOT NULL DEFAULT '',
  `L1_comments` varchar(255) NOT NULL DEFAULT '',
  `L2` varchar(255) NOT NULL DEFAULT '',
  `L2_comments` varchar(255) NOT NULL DEFAULT '',
  `L3` varchar(255) NOT NULL DEFAULT '',
  `L3_comments` varchar(255) NOT NULL DEFAULT '',
  `born` varchar(255) NOT NULL DEFAULT '',
  `live` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prince_speaker`
--

INSERT INTO `prince_speaker` (`n`, `id`, `gender`, `age`, `L1`, `L1_comments`, `L2`, `L2_comments`, `L3`, `L3_comments`, `born`, `live`, `comment`) VALUES
(1, 'jpg', 'male', 35, 'fr', 'native', 'en', '1school, 1yrs at Edinburgh, 2yrs in NJ', 'de', 'school only', 'Paris, France', 'Geneva, Switzerland', '0-36 fr -  21+33+34 en'),
(2, 'vs', 'female', 30, 'ro', 'native', 'fr', 'school', 'it', '6 last yrs', 'Romania', 'Geneva, Switzerland', '0-24 ro 24-30 fr(+it)'),
(3, 'am', 'female', 0, 'ru', '', 'tatar', '', '', 'fr', '', 'Geneva, Switzerland', ''),
(4, 'am', 'female', 0, 'gr', '', 'fr', '', '', '', 'Greece', 'Geneva,Switzerland', ''),
(5, 'aa', 'male', 0, 'français', '', '', '', '', '', '', '', 'antoine auchlin'),
(6, 'al', 'male', 0, 'espagnol', '', '', '', '', '', '', '', 'antonio'),
(7, 'cc', 'female', 36, 'fr', '', 'de', '', 'en', '', 'Paris, France', 'Genève, Switzerland', 'céline courtin'),
(8, 'hna', 'female', 0, 'nor', '', '', '', '', '', '', '', 'Hélène Nordgard-Andreassen'),
(9, 'ys', 'male', 0, '', '', '', '', '', '', '', '', 'yves scherrer'),
(10, 'vst', 'male', 0, '', '', '', '', '', '', '', '', 'Veran Stanojevic (Belgrade)'),
(11, 'ta', 'female', 0, '', '', '', '', '', '', '', '', 'tijana Asic (Belgrade)'),
(12, 'gs', 'female', 0, '', '', '', '', '', '', '', '', 'gabriela soare'),
(13, 'ln', 'male', 0, '', '', '', '', '', '', '', '', 'nerima'),
(14, 'lb', 'female', 0, '', '', '', '', '', '', '', '', ''),
(15, 'ng', 'female', 0, '', '', '', '', '', '', '', '', 'nalou'),
(16, 'ec', 'female', 0, '', '', '', '', '', '', '', '', 'eva capitao'),
(17, 'it', 'female', 0, 'jp', '', '', '', '', '', '', '', 'izumi tahara'),
(18, 'mg', 'male', 0, '', '', '', '', '', '', '', '', 'ms gom @gmail.com'),
(19, 'dl', 'female', 0, 'alb', '', '', '', '', '', '', '', 'Lekaj	Dorentina kossovo ?'),
(20, 'mp', 'female', 0, 'ro', '', '', '', '', '', '', '', 'mikhaela popa'),
(21, 'mn', 'male', 0, '', '', '', '', '', '', '', '', 'mar ndiaye'),
(22, 'us', 'male', 0, '', '', '', '', '', '', '', '', 'ur shlonsky'),
(23, 'ru', 'female', 0, '', '', '', '', '', '', '', '', 'stagiaire russe de paris'),
(24, 'cl', 'male', 0, 'fr', '', '', '', '', '', '', '', 'christopher laenzlinger'),
(25, 'mc', 'female', 0, 'el', '', '', '', '', '', '', '', 'maria campagnolo'),
(26, 'su', 'female', 0, 'gsw-sol', '', '', '', '', '', '', '', 'Simone Uebelhart'),
(27, 'ne', 'female', 0, 'deu', '', '', '', '', '', '', '', 'natalia egger'),
(28, 'alm', 'male', 0, 'es', '', '', '', '', '', '', '', ''),
(29, 'mt', 'male', 0, 'dar', '', '', '', '', '', '', '', ''),
(30, 'ec', 'female', 25, 'fr', '', '', '', '', '', '', '', 'emilie courtin'),
(31, 'ech', 'female', 25, '', '', '', '', '', '', '', '', 'elodie chra'),
(32, 'at', 'male', 40, '', '', '', '', '', '', '', '', 'alain theriaut'),
(33, 'ej', 'male', 0, '', '', '', '', '', '', '', '', 'eric joanis'),
(34, 'cs', 'male', 0, '', '', '', '', '', '', '', '', 'clau soler'),
(35, 'nr', 'female', 0, '', '', '', '', '', '', '', '', 'nina rojina'),
(36, 'ov', 'female', 0, '', '', '', '', '', '', '', '', 'olga vassiltchouk'),
(37, 'gb', 'female', 0, '', '', '', '', '', '', '', '', 'guillemette bolens'),
(38, 'xx', 'male', 0, '', '', '', '', '', '', '', '', ''),
(39, 'te', 'male', 35, '', '', '', '', '', '', '', '', 'thierry etchegoyhen'),
(40, 'xf', 'female', 0, '', '', '', '', '', '', '', '', ''),
(41, 'xx3', 'male', 20, 'tgl', '', '', '', '', '', '', '', ''),
(42, 'xx2', 'female', 20, 'bos', '', 'scc', '', 'deu', '', '', '', ''),
(43, 'h', 'male', 0, '', '', '', '', '', '', '', '', ''),
(44, 'f', 'female', 0, '', '', '', '', '', '', '', '', ''),
(45, 'kcs', 'female', 0, 'hun', '', '', '', '', '', '', '', 'Kitti Cseffan'),
(46, 'sdt', 'female', 0, '', '', '', '', '', '', '', '', 'Stephanie Durlemman-Tame'),
(47, 'amu', 'female', 0, '', '', '', '', '', '', '', '', 'Amgalan Munkhdorj'),
(48, 'pmi', 'female', 0, '', '', '', '', '', '', '', '', 'paola minen'),
(49, 'dm', 'male', 0, 'hin', '', '', '', '', '', '', '', 'deepak'),
(50, 'ka', 'female', 0, 'hin', '', '', '', '', '', '', '', 'Kiran Asthana  deepak.mathur@mageos.com'),
(51, 'ma', 'male', 0, 'wln', '', '', '', '', '', '', '', 'maisse arsoyue on babel'),
(52, 'lm', 'female', 0, 'swa', '', '', '', '', '', '', '', 'Lilian Magonya'),
(53, 'cv', 'female', 0, 'bulgare', '', 'francais', '', '', '', '', '', 'Voukovska Christine'),
(54, '', 'female', 0, 'japonais', '', '', '', '', '', '', '', 'Kaoru Banno'),
(55, '', 'female', 0, 'scn', '', 'ita', '', '', '', '', '', 'Rosalia Graziano'),
(56, '', 'female', 0, 'por-bre', '', '', '', '', '', '', '', 'Perla Sousa da Silva'),
(57, '', 'female', 0, 'kir', '', '', '', '', '', '', '', 'Olga Katanaeva'),
(58, '', 'female', 0, 'rus', '', 'ukr', '', '', '', '', '', 'Lyubov Velykoivanenko'),
(59, '', 'female', 0, 'rus -ukr', '', '', '', '', '', '', '', 'Olga Moldavanova'),
(60, '', 'female', 0, 'pol', '', '', '', '', '', '', '', 'Wioletta Barszcz'),
(61, '', 'male', 0, 'chi', '', '', '', '', '', '', '', 'jeff xin fan'),
(62, '', 'female', 0, 'tur', '', '', '', '', '', '', '', 'gonca celik elcf'),
(63, '', 'female', 0, 'chi', '', '', '', '', '', '', '', 'shan wang elcf'),
(64, '', 'female', 0, 'alb', '', '', '', '', '', '', '', 'silva bozo elcf'),
(65, '', 'female', 0, 'spa', 'argentin', '', '', '', '', '', '', 'laura elcf'),
(66, '', 'male', 0, 'bul', '', '', '', '', '', '', '', 'vercislav pepurov elcf'),
(67, '', 'female', 0, '', '', '', '', '', '', '', '', 'narghiza kuldashova  elcf'),
(68, '', 'female', 0, 'croate', '', '', '', '', '', '', '', 'tea psrir'),
(69, '', 'female', 0, 'allemand', '', '', '', '', '', '', '', 'romy lassota ppp06-07'),
(70, '68', 'female', 0, 'swe', '', '', '', '', '', '', '', 'collegue de jonas lindh loc69'),
(71, '69', 'male', 0, 'swe', '', '', '', '', '', '', '', 'jonas lindh'),
(72, 'juri', 'male', 0, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prince_speaker_20070319`
--

CREATE TABLE `prince_speaker_20070319` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `age` tinyint(30) NOT NULL DEFAULT '0',
  `L1` varchar(255) NOT NULL DEFAULT '',
  `L1_comments` varchar(255) NOT NULL DEFAULT '',
  `L2` varchar(255) NOT NULL DEFAULT '',
  `L2_comments` varchar(255) NOT NULL DEFAULT '',
  `L3` varchar(255) NOT NULL DEFAULT '',
  `L3_comments` varchar(255) NOT NULL DEFAULT '',
  `born` varchar(255) NOT NULL DEFAULT '',
  `live` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prince_speaker_20070319`
--

INSERT INTO `prince_speaker_20070319` (`id`, `gender`, `age`, `L1`, `L1_comments`, `L2`, `L2_comments`, `L3`, `L3_comments`, `born`, `live`, `comment`) VALUES
('jpg', 'male', 35, 'fr', 'native', 'en', 'school, 1yrs at Edinburgh, 2yrs in NJ', 'de', 'school only', 'Paris, France', 'Geneva, Switzerland', '0-36 fr -  21+33+34 en'),
('vs', 'female', 30, 'ro', 'native', 'fr', 'school', 'it', '6 last yrs', 'Romania', 'Geneva, Switzerland', '0-24 ro 24-30 fr(+it)'),
('am', 'female', 0, 'ru', '', 'tatar', '', '', 'fr', '', 'Geneva, Switzerland', ''),
('am', 'female', 0, 'gr', '', 'fr', '', '', '', 'Greece', 'Geneva,Switzerland', ''),
('aa', 'male', 0, 'français', '', '', '', '', '', '', '', 'antoine auchlin'),
('al', 'male', 0, 'espagnol', '', '', '', '', '', '', '', 'antonio'),
('cc', 'female', 36, 'fr', '', 'de', '', 'en', '', 'Paris, France', 'Genève, Switzerland', 'céline courtin'),
('hna', 'female', 0, 'nor', '', '', '', '', '', '', '', 'Hélène Nordgard-Andreassen'),
('ys', 'male', 0, '', '', '', '', '', '', '', '', 'yves scherrer'),
('vst', 'male', 0, '', '', '', '', '', '', '', '', 'Veran Stanojevic (Belgrade)'),
('ta', 'female', 0, '', '', '', '', '', '', '', '', 'tijana Asic (Belgrade)'),
('gs', 'female', 0, '', '', '', '', '', '', '', '', 'gabriela soare'),
('ln', 'male', 0, '', '', '', '', '', '', '', '', 'nerima'),
('lb', 'female', 0, '', '', '', '', '', '', '', '', ''),
('ng', 'female', 0, '', '', '', '', '', '', '', '', 'nalou'),
('ec', 'female', 0, '', '', '', '', '', '', '', '', 'eva capitao'),
('it', 'female', 0, 'jp', '', '', '', '', '', '', '', 'izumi tahara'),
('mg', 'male', 0, '', '', '', '', '', '', '', '', 'ms gom @gmail.com'),
('dl', 'female', 0, 'alb', '', '', '', '', '', '', '', 'Lekaj	Dorentina'),
('mp', 'female', 0, 'ro', '', '', '', '', '', '', '', 'mikhaela popa'),
('mn', 'male', 0, '', '', '', '', '', '', '', '', 'mar ndiaye'),
('us', 'male', 0, '', '', '', '', '', '', '', '', 'ur shlonsky'),
('ru', 'female', 0, '', '', '', '', '', '', '', '', 'stagiaire russe de paris'),
('cl', 'male', 0, 'fr', '', '', '', '', '', '', '', 'christopher laenzlinger'),
('mc', 'female', 0, 'el', '', '', '', '', '', '', '', 'maria campagnolo'),
('su', 'female', 0, 'gsw-sol', '', '', '', '', '', '', '', 'Simone Uebelhart'),
('ne', 'female', 0, 'deu', '', '', '', '', '', '', '', 'natalia egger'),
('alm', 'male', 0, 'es', '', '', '', '', '', '', '', ''),
('mt', 'male', 0, 'dar', '', '', '', '', '', '', '', ''),
('ec', 'female', 25, 'fr', '', '', '', '', '', '', '', 'emilie courtin'),
('ech', 'female', 25, '', '', '', '', '', '', '', '', 'elodie chra'),
('at', 'male', 40, '', '', '', '', '', '', '', '', 'alain theriaut'),
('ej', 'male', 0, '', '', '', '', '', '', '', '', 'eric joanis'),
('cs', 'male', 0, '', '', '', '', '', '', '', '', 'clau soler'),
('nr', 'female', 0, '', '', '', '', '', '', '', '', 'nina rojina'),
('ov', 'female', 0, '', '', '', '', '', '', '', '', 'olga vassiltchouk'),
('gb', 'female', 0, '', '', '', '', '', '', '', '', 'guillemette bolens'),
('xx', 'male', 0, '', '', '', '', '', '', '', '', ''),
('te', 'male', 35, '', '', '', '', '', '', '', '', 'thierry etchegoyhen'),
('xf', 'female', 0, '', '', '', '', '', '', '', '', ''),
('xx3', 'male', 20, 'tgl', '', '', '', '', '', '', '', ''),
('xx2', 'female', 20, 'bos', '', 'scc', '', 'deu', '', '', '', ''),
('h', 'male', 0, '', '', '', '', '', '', '', '', ''),
('f', 'female', 0, '', '', '', '', '', '', '', '', ''),
('kcs', 'female', 0, 'hun', '', '', '', '', '', '', '', 'Kitti Cseffan'),
('sdt', 'female', 0, '', '', '', '', '', '', '', '', 'Stephanie Durlemman-Tame'),
('amu', 'female', 0, '', '', '', '', '', '', '', '', 'Amgalan Munkhdorj'),
('pmi', 'female', 0, '', '', '', '', '', '', '', '', 'paola minen'),
('dm', 'male', 0, 'hin', '', '', '', '', '', '', '', 'deepak'),
('ka', 'female', 0, 'hin', '', '', '', '', '', '', '', 'Kiran Asthana  deepak.mathur@mageos.com'),
('ma', 'male', 0, 'wln', '', '', '', '', '', '', '', 'maisse arsoyue on babel'),
('lm', 'female', 0, 'swa', '', '', '', '', '', '', '', 'Lilian Magonya'),
('cv', 'female', 0, 'bulgare', '', 'francais', '', '', '', '', '', 'Voukovska Christine');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `quizz_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `type` set('yn','mult','','') NOT NULL DEFAULT 'mult'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `quizz_id`, `text`, `type`) VALUES
(1, 1, 'adieu', 'yn'),
(2, 1, 'dîner', 'yn'),
(3, 1, 'pain_au_chocolat', 'mult'),
(4, 1, 'pain_au_raisin', 'mult'),
(5, 1, 'papier_ménage', 'mult'),
(6, 1, 'sac', 'mult'),
(7, 1, 'savoir', 'yn'),
(8, 1, 'serpillère', 'mult'),
(9, 3, 'adieu', 'yn'),
(10, 3, 'dîner', 'yn'),
(11, 3, 'pain_au_chocolat', 'mult'),
(12, 3, 'pain_au_raisin', 'mult'),
(13, 3, 'papier_ménage', 'mult'),
(14, 3, 'sac', 'mult'),
(15, 3, 'savoir', 'yn'),
(16, 3, 'serpillère', 'mult');

-- --------------------------------------------------------

--
-- Table structure for table `quizz`
--

CREATE TABLE `quizz` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quizz`
--

INSERT INTO `quizz` (`id`, `name`, `active`) VALUES
(1, 'euro1reduced', 1),
(2, 'euro1reduced', 1),
(3, 'euro1reduced2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `question_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `text`, `question_id`) VALUES
(1, 'non', 1),
(2, 'oui', 1),
(3, 'non', 2),
(4, 'oui', 2),
(5, 'choc_ine', 3),
(6, 'couque', 3),
(7, 'croissant', 3),
(8, 'pain_c', 3),
(9, 'pt_pain', 3),
(10, 'pt_pain_c', 3),
(11, 'alsac', 4),
(12, 'cagouille', 4),
(13, 'escargot', 4),
(14, 'pain_rai', 4),
(15, 'pain_rus', 4),
(16, 'schnäcke', 4),
(17, 'essuie_t', 5),
(18, 'p_absorb', 5),
(19, 'p_ménage', 5),
(20, 'sopalin', 5),
(21, 'cornet', 6),
(22, 'poche', 6),
(23, 'poche_p', 6),
(24, 'pochon', 6),
(25, 'sac', 6),
(26, 'sac_p', 6),
(27, 'sachet', 6),
(28, 'sachet_n', 6),
(29, 'non', 7),
(30, 'oui', 7),
(31, 'chiffon', 8),
(32, 'cinse', 8),
(33, 'lave_pont', 8),
(34, 'loque', 8),
(35, 'panosse', 8),
(36, 'patte', 8),
(37, 'pièce', 8),
(38, 'serpill', 8),
(39, 'toile', 8),
(40, 'torchon', 8),
(41, 'wassingue', 8),
(42, 'non', 9),
(43, 'oui', 9),
(44, 'non', 10),
(45, 'oui', 10),
(46, 'choc_ine', 11),
(47, 'couque', 11),
(48, 'croissant', 11),
(49, 'pain_c', 11),
(50, 'pt_pain', 11),
(51, 'pt_pain_c', 11),
(52, 'alsac', 12),
(53, 'cagouille', 12),
(54, 'escargot', 12),
(55, 'pain_rai', 12),
(56, 'pain_rus', 12),
(57, 'schnäcke', 12),
(58, 'essuie_t', 13),
(59, 'p_absorb', 13),
(60, 'p_ménage', 13),
(61, 'sopalin', 13),
(62, 'cornet', 14),
(63, 'poche', 14),
(64, 'poche_p', 14),
(65, 'pochon', 14),
(66, 'sac', 14),
(67, 'sac_p', 14),
(68, 'sachet', 14),
(69, 'sachet_n', 14),
(70, 'non', 15),
(71, 'oui', 15),
(72, 'chiffon', 16),
(73, 'cinse', 16),
(74, 'lave_pont', 16),
(75, 'loque', 16),
(76, 'panosse', 16),
(77, 'patte', 16),
(78, 'pièce', 16),
(79, 'serpill', 16),
(80, 'toile', 16),
(81, 'torchon', 16),
(82, 'wassingue', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agora_voice`
--
ALTER TABLE `agora_voice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD KEY `id` (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD KEY `id` (`id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD KEY `id` (`id`);

--
-- Indexes for table `participation`
--
ALTER TABLE `participation`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`idipa`);

--
-- Indexes for table `prince_grp`
--
ALTER TABLE `prince_grp`
  ADD PRIMARY KEY (`i`);

--
-- Indexes for table `prince_speaker`
--
ALTER TABLE `prince_speaker`
  ADD PRIMARY KEY (`n`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `quizz`
--
ALTER TABLE `quizz`
  ADD KEY `id` (`id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agora_voice`
--
ALTER TABLE `agora_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prince_grp`
--
ALTER TABLE `prince_grp`
  MODIFY `i` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `prince_speaker`
--
ALTER TABLE `prince_speaker`
  MODIFY `n` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `quizz`
--
ALTER TABLE `quizz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
