-- MySQL dump 9.11
--
-- Host: localhost    Database: linguistique
-- ------------------------------------------------------
-- Server version	4.1.18-standard-log

--
-- Table structure for table `agora_voice`
--

CREATE TABLE agora_voice (
  id int(11) NOT NULL auto_increment,
  created datetime NOT NULL default '0000-00-00 00:00:00',
  updated datetime NOT NULL default '0000-00-00 00:00:00',
  ip varchar(15) NOT NULL default '',
  lat double default NULL,
  lng double default NULL,
  gender tinyint(1) NOT NULL default '0',
  age smallint(5) unsigned NOT NULL default '0',
  device_udid varchar(100) NOT NULL default '',
  audiofile varchar(100) NOT NULL default '',
  canton varchar(100) NOT NULL default '',
  speechrate double default NULL,
  frequency double default NULL,
  is_primary tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agora_voice`
--


--
-- Table structure for table `answer`
--

CREATE TABLE answer (
  id int(11) NOT NULL auto_increment,
  quizz_id int(11) NOT NULL default '0',
  participation_id int(11) NOT NULL default '0',
  question_id int(11) NOT NULL default '0',
  variant_id int(11) NOT NULL default '0',
  KEY id (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO answer VALUES (1,1,1,1,2);
INSERT INTO answer VALUES (2,1,1,2,4);
INSERT INTO answer VALUES (3,1,1,3,9);
INSERT INTO answer VALUES (4,1,1,4,14);
INSERT INTO answer VALUES (5,1,1,5,17);
INSERT INTO answer VALUES (6,1,1,6,27);
INSERT INTO answer VALUES (7,1,1,7,30);
INSERT INTO answer VALUES (8,1,1,8,38);

--
-- Table structure for table `idp07_abstract`
--

CREATE TABLE idp07_abstract (
  n mediumint(9) NOT NULL auto_increment,
  `file` varchar(255) NOT NULL default '',
  presentation enum('oral','poster','indifferent') default NULL,
  auteur varchar(255) NOT NULL default '',
  mail varchar(255) NOT NULL default '',
  `comment` mediumtext NOT NULL,
  titre text NOT NULL,
  PRIMARY KEY  (n)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idp07_abstract`
--

INSERT INTO idp07_abstract VALUES (1,'1_Hedberg_Yaeger-Dror_Sosa.pdf','indifferent','Nancy Hedberg Malcah, Yaeger-Dror  and Juan M. Sosa','hedberg@sfu.ca','(Simon Fraser University, Canada), (University of Arizona, USA), (Simon Fraser University, Canada)','Parameters of prominence: Information, agreement, and situation');
INSERT INTO idp07_abstract VALUES (2,'2_Beyssadeetal_IDP07.pdf','indifferent','Claire BEYSSADE, Elisabeth DELAIS-ROUSSARIE, Jean-Marie MARANDIN, Cristel PORTES','Elisabeth.Roussarie@wanadoo.fr','CNRS / Institut Jean Nicod - UMR 8129, Claire.Beyssade@ehess.fr\r\nCNRS / UMR 7110 & Université de Paris 7\r\nCNRS / UMR 7110 & Université de Paris 7 marandin@linguist.jussieu.fr\r\nUniversité de Provence, Laboratoire Parole et Langage UMR 6057 / CNRS, Cristel.Portes@lpl.univ-aix.fr\r\n\r\n','Types de phrase, force illocutoire, acte dialogique et intonation');
INSERT INTO idp07_abstract VALUES (7,'7_hascoet_interface_geste_intonation.pdf','indifferent','Nathalie Hascoet','hascoetn@yahoo.fr','MCF - Anglais\r\nUniversité Pierre et Marie Curie Paris 6','Le contexte gestuel dans l’interprétation de la prosodie');
INSERT INTO idp07_abstract VALUES (3,'3_BrigitteZellnerKeller.pdf','oral','Brigitte Zellner Keller','Brigitte.ZellnerKeller@unil.ch','Dr. Brigitte Zellner Keller,\r\nInstitut de Psychologie, UNIGER, Gérontologie\r\nBureau 5182.3, tel + 41 21 692 32 53\r\nUniversity of Lausanne.CH-1015 Lausanne, Switzerland\r\nEditorial Board, Revue Française de Linguistique Appliquée ','Comment est-ce qu\'on dit ? Réparations du manque de mot en conversation par les personnes âgées');
INSERT INTO idp07_abstract VALUES (4,'4_martin_avanzi.pdf','indifferent','Mathieu Avanzi, Philippe Martin','philippe.martin134@wanadoo.fr','','L’intonème conclusif : une fin (de phrase) en soi ?');
INSERT INTO idp07_abstract VALUES (5,'5_bertrand_portes_espesser.pdf','indifferent','Roxane Bertrand, Cristel Portes et Robert Espesser','roxane.bertrand@lpl.univ-aix.fr','Laboratoire Parole et Langage, UMR 6057, CNRS, Université de Provence\r\n29 avenue R. Schuman , 13621 Aix-en-Provence','Contribution à une Grammaire des Contours intonatifs du Français: comparaison formelle et fonctionnelle de trois contours intonatifs montants');
INSERT INTO idp07_abstract VALUES (6,'6_RITTAUD-HUTINET.pdf','indifferent','Chantal RITTAUD-HUTINET','chrit@wanadoo.fr','professeur à l\'Université de Savoie, chercheur à l\'Université Paris 3 - EA 1483','Des traits acoustiques pour les signes vocaux');
INSERT INTO idp07_abstract VALUES (8,'8_yeou_focus_arabic_dialects.pdf','indifferent','Mohamed Yeou, Mohamed Embarki & Sallal Al Maqtari','m_yeou@yahoo.com','*Université Bouchaib Doukkali, El Jadida (Maroc)\r\n**Praxiling UMR 5267 CNRS-Montpellier III (France)\r\n*** Université de Sanaa (Yémen)','Contrastive Focus and F0 patterns in Arabic dialects');
INSERT INTO idp07_abstract VALUES (9,'9_Carroll_Shea_anon.pdf','indifferent','S.E. Carroll & Christine Shea','ceshea@ucalgary.ca','University of Calgary','Prosodic Prominence and Segmentation in a Second Language');
INSERT INTO idp07_abstract VALUES (10,'10_bourhis.pdf','oral','Véronique Bourhis','bourhisveronique@yahoo.fr','IUFM Rennes - CREAD Rennes 2 E.A.3875\r\nveronique.bourhis@bretagne.iufm.fr\r\n','Rôle de l’intonation  dans la construction de l’espace discursif chez le jeune enfant : quelle influence contextuelle ?');
INSERT INTO idp07_abstract VALUES (11,'11_TinaDesabrais.pdf','indifferent','Tina Desabrais','tinadesabrais@hotmail.com','','Le contexte de l’Ontario français dans l’interprétation du rôle de la prosodie dans le discours des doctorantes');
INSERT INTO idp07_abstract VALUES (12,'12_pepin.pdf','indifferent','Nicolas Pepin','Nicolas.Pepin@unibas.ch','Institut d\'Etudes françaises et francophones\r\nUniversité de Bâle\r\nStapfelberg 7/9\r\nCh-4051 Bâle','Prosodie et multimodalité en classes de français langue seconde: le cas des productions de listes');
INSERT INTO idp07_abstract VALUES (13,'13_Chen.pdf','oral','Chun-Mei Chen','chench@nuu.edu.tw','National United University','The Functions of Prosody in Discourse Analysis — A Case Study of Tags in Mandarin Talk Shows');
INSERT INTO idp07_abstract VALUES (14,'14_Loock_Auran.pdf','indifferent','Rudy Loock & Cyril Auran','cyril.auran@univ-lille3.fr','Laboratoire Savoirs, Textes, Langage\r\nUMR CNRS 8163\r\nUniversité Lille 3 Charles-de-Gaulle\r\n\r\nun pdf d\'annexes a été envoyé (ask JP)\r\n','Fonctions discursives et formes prosodiques des propositions relatives appositives : le cas de la relative appositive de transition dans le discours journalistique en français.');
INSERT INTO idp07_abstract VALUES (15,'15_Patin-focus-ngazidja.pdf','indifferent','Cédric Patin','patin@zas.gwz-berlin.de','Centre for General Linguistics, Typology and Universals Research (ZAS)\r\nSchützenstr. 18, 10117 Berlin','Shingazidja Focus Hierarchy');
INSERT INTO idp07_abstract VALUES (16,'16_stephane_jullien.pdf','indifferent','Stéphane Jullien','stephane.jullien@unine.ch','Centre de Linguistique Appliquée\r\nInstitut d\'Orthophonie\r\nUniversité de Neuchâtel\r\nUniversité de Paris III','Prosodie et grammaire-en-interaction, le cas d’il y a');
INSERT INTO idp07_abstract VALUES (17,'17_tokizaki-intrasentential.pdf','indifferent','Hisao Tokizaki','htoki@cf6.so-net.ne.jp','Sapporo University\r\n','Intrasentential Prosody: conjunction, speech rate and sentence length');
INSERT INTO idp07_abstract VALUES (18,'18_Suciu_Kanellos_Moudenc_anon.pdf','indifferent','Ioana SUCIU, Ioannis KANELLOS, Thierry MOUDENC','ioana.suciu@enst-bretagne.fr','Ioana SUCIU1&2, Ioannis KANELLOS2, Thierry MOUDENC1\r\nioannis.kanellos@enst-bretagne.fr,\r\nthierry.moudenc@orange-ftgroup.com\r\n\r\n1 TECH\\SSTP\\VMI, France Télécom Recherche & Développement, Lannion, France\r\n2 Dépt. Informatique, Ecole Nationale Supérieure des Télécommunications Bretagne, France','L\'expressivité dans la synthèse de la parole : formes discursives, vecteurs prosodiques (de préférence présentation orale en français)');
INSERT INTO idp07_abstract VALUES (19,'19_wichmann_anon.pdf','indifferent','Anne Wichmann','a.wichmann@virgin.net','University of Central Lancashire, Preston PR1 2HE\r\n','Can English question tags grammaticalise?');
INSERT INTO idp07_abstract VALUES (20,'20_chanet.pdf','indifferent','Catherine Chanet','catherine.chanet@free.fr','Laboratoire Parole et Langage\r\nCentre des Lettres et Sciences Humaines\r\n29 av. Robert Schuman\r\n13 621 AIX-EN-PROVENCE CEDEX 1\r\nFrance\r\nTél professionnel : (+33) 4 42 95 35 55\r\nFax professionnel : (+33) 4 42 95 37 44 (secrétariat du LPL : indiquer le destinataire)\r\ne-mail professionnel : catherine.chanet@lpl.univ-aix.fr\r\nTel personnel : (+33) 4 94 69 75 41\r\nNatel : (+33) 6 14 78 16 04','Les unités discursives et leurs relations : bilan dans les modèles actuels et propositions ');
INSERT INTO idp07_abstract VALUES (21,'21_teixeira_anon.pdf','indifferent','Lara TEIXEIRA CARNEIRO','teixeiracarneiro@hotmail.com','Filiation: Universtie de Limoges - France - CERES laboratoire\r\nAddress : 3 rue sainte claire\r\nTel: 0587845175','The Status of Filler Syllables in a Brazilian Cochlear Implanted Child’s Early Speech');
INSERT INTO idp07_abstract VALUES (22,'22_legac.pdf','oral','David LE GAC & Hi-Yon YOO','david.le.gac@wanadoo.fr','Maître de Conférences - Université de Rouen\r\nMaître de Conférences - Université de Paris 7\r\n ','INDEPENDANCE ET DEPENDANCES DE L’INTONATION');
INSERT INTO idp07_abstract VALUES (23,'23_tuttle_lovick.pdf','indifferent','Siri Tuttle and Olga Lovick','Olga@lithophile.com','Alaska Native Language Center\r\nUniversity of Alaska Fairbanks\r\nUSA\r\nffsgt1@uaf.edu','Intonational Marking of Discourse Units in two Dena’ina Narratives');
INSERT INTO idp07_abstract VALUES (24,'24_Akpossan_Delumeau.pdf','oral','Johanne Akpossan et Fabrice Delumeau','joh_akpossan@yahoo.fr','* Sorbonne Nouvelle, ILPGA,  LPP UMR 7018 CNRS\r\n* Paris X\r\n','Comment la prosodie donne du sens aux interjections ?');
INSERT INTO idp07_abstract VALUES (25,'25_Shokeir.pdf','indifferent','Vanessa Shokeir','vanessa.shokeir@utoronto.ca','PhD Candidate\r\nUniversity of Toronto','Uptalk in Southern Ontario English');
INSERT INTO idp07_abstract VALUES (26,'26_mettouchi-izreel-lacheret-silber.pdf','indifferent','A. Mettouchi , S. Izre’el , A. Lacheret-Dujour  & Vered Silber-Varod','amina.mettouchi@wanadoo.fr','(U. de Nantes)\r\n(U. of Tel-Aviv)\r\n(U. de Paris 10)\r\n(U. of Tel-Aviv)','Intonation Units in Kabyle (Berber) and Hebrew (Semitic) : Perception, Acoustic cues and Informational Structure');
INSERT INTO idp07_abstract VALUES (27,'27_AKhaldoyanidi.pdf','indifferent','Anna Khaldoianidi','akhaldoianidi@yahoo.fr','Department of Foreign Languages\r\nNovosibirsk State University\r\n2, Pirogova str.\r\n630090 Novosibirsk - Russia\r\ntel/fax: (+7383)339-75-65\r\n','Distinctive prosodic features of information structure in Russian discourse');
INSERT INTO idp07_abstract VALUES (28,'28_romain_anon.pdf','indifferent','Christina Romain','c.romain@aix-mrs.iufm.fr','Maître de conférences - 7ème section\r\nI.U.F.M. Aix-en-Provence\r\n2 avenue J. Isaac\r\n13626 Aix-en-Provence Cédex 1\r\n\r\nLaboratoire \"Parole et Langage\" CNRS UMR 6057\r\nCentre des Lettres et Sciences Humaines\r\n29, avenue Robert Schuman\r\n13621 Aix-en-Provence Cedex 01','Faits prosodiques et faits discursifs dans la construction de la relation interpersonnelle enseignant / élève(s) au collège ');
INSERT INTO idp07_abstract VALUES (29,'29_tea_prsir.pdf','indifferent','Tea Prsir','prsir@rom.ucl.ac.be','','La prosodie et la polyphonie dans l\'élaboration du discours : \"tout va bien\" avant et après');
INSERT INTO idp07_abstract VALUES (30,'30_poire_similarite.pdf','indifferent','François Poiré et Svetlana Kaminskaïa','fpoire@uwo.ca','Département d’études françaises, The University of Western Ontario, London Ontario, Canada','Similarité prosodique et analyse des contours intonatifs');
INSERT INTO idp07_abstract VALUES (31,'31_poire_into_canada.pdf','indifferent','François Poiré et Rémi Tremblay','fpoire@uwo.ca','Département d’études françaises, The University of Western Ontario, London Ontario, Canada','L’influence de l’anglais sur deux dialectes du français canadien');
INSERT INTO idp07_abstract VALUES (32,'32_neijt_rythm_anon.pdf','indifferent','Anneke Neijt and Robert Schreuder','A.Neijt@let.ru.nl','Center for Language Studies, Radboud University\r\nNICI/Max Planck Institute for Psycholinguistics, Nijmegen, The Netherlands\r\n','Rhythm versus analogy');
INSERT INTO idp07_abstract VALUES (33,'33_bergmann.pdf','indifferent','Pia Bergmann','pia.bergmann@germanistik.uni-freiburg.de','Universität Freiburg\r\nDeutsches Seminar I\r\nWerthmannplatz 1-3\r\n79085 Freiburg\r\n','How to model the \"meaning\" of intonation: Some insights from an interactional perspective');

--
-- Table structure for table `idp07_reviewer`
--

CREATE TABLE idp07_reviewer (
  n smallint(6) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  mail varchar(255) NOT NULL default '',
  last_modif datetime NOT NULL default '0000-00-00 00:00:00',
  sauve smallint(6) NOT NULL default '0',
  last_acces datetime NOT NULL default '0000-00-00 00:00:00',
  acces smallint(6) NOT NULL default '0',
  xurl varchar(255) NOT NULL default '',
  ab1_n smallint(6) NOT NULL default '0',
  ab1_comment text NOT NULL,
  ab1_reco enum('tres fav','fav','defav','tres defav') default NULL,
  ab1_pres enum('oral','poster','indifferent') default NULL,
  ab2_n smallint(6) NOT NULL default '0',
  ab2_comment text NOT NULL,
  ab2_reco enum('tres fav','fav','defav','tres defav') default NULL,
  ab2_pres enum('oral','poster','indifferent') default NULL,
  ab3_n smallint(6) NOT NULL default '0',
  ab3_comment text NOT NULL,
  ab3_reco enum('tres fav','fav','defav','tres defav') default NULL,
  ab3_pres enum('oral','poster','indifferent') default NULL,
  ab4_n smallint(6) NOT NULL default '0',
  ab4_comment text NOT NULL,
  ab4_reco enum('tres fav','fav','defav','tres defav') default NULL,
  ab4_pres enum('oral','poster','indifferent') default NULL,
  ab1_theme tinyint(4) default NULL,
  ab2_theme tinyint(4) default NULL,
  ab3_theme tinyint(4) default NULL,
  ab4_theme tinyint(4) default NULL,
  ab1_theme2 tinyint(4) default NULL,
  ab2_theme2 tinyint(4) default NULL,
  ab3_theme2 tinyint(4) default NULL,
  ab4_theme2 tinyint(4) default NULL,
  PRIMARY KEY  (n),
  UNIQUE KEY xurl (xurl)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idp07_reviewer`
--

INSERT INTO idp07_reviewer VALUES (1,'Jean-Philippe Goldman','goldman@lettres.unige.ch','2007-03-11 09:30:44',17,'2007-04-05 16:38:07',36,'691577707',0,'qweqweq','tres fav','poster',0,'','tres defav','',0,'','tres fav','',0,'',NULL,NULL,1,0,0,NULL,1,0,0,NULL);
INSERT INTO idp07_reviewer VALUES (3,'Antoine Auchlin','auchlin@lettres.unige.ch','2007-03-14 10:16:51',16,'2007-03-20 09:24:08',35,'307980124',33,'','fav','oral',0,'','','',0,'','','',0,'',NULL,NULL,1,NULL,NULL,NULL,2,NULL,NULL,NULL);
INSERT INTO idp07_reviewer VALUES (4,'Alain Berrendonner','alain.berrendonner@unifr.ch','0000-00-00 00:00:00',0,'2007-05-22 17:53:43',10,'987565242',5,'',NULL,NULL,14,'',NULL,NULL,20,'',NULL,NULL,29,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO idp07_reviewer VALUES (5,'Roxane Bertrand','roxane.bertrand@lpl.univ-aix.fr','2007-03-23 18:56:12',1,'2007-03-23 18:56:12',6,'357412397',23,'L\'étude porte sur une langue parlée par très peu de locuteurs, et possède un système intonatif spécifique. Intéressant.','fav','poster',21,'Réserve: L\'avis est favorable car la thématique est intéressante, le sujet bien documenté bien qu\'il me semble un peu en dehors des thématiques du symposium.','fav','poster',3,'Etude très intéressante qui pourrait apporter des éléments relatifs à la (re)structuration prosodique des énoncés: comment ces derniers sont-ils réorganisés  (prosodiquement notamment) lorsque les locuteurs rencontrent des difficultés de production, en l\'occurrence ici le manque de mot. ','fav','indifferent',28,'Très programmatique. Corpus énorme. Les auteurs souhaitent mettre en relation des phénomènes interactifs et prosodiques mais on ne sait pas comment, dans quel cadre, à quelles fins. Il n\'y a pas de problématique ou d\'hypothèse claire, encore moins le début d\'un résultat.','defav','',2,1,2,0,3,3,3,0);
INSERT INTO idp07_reviewer VALUES (6,'Catherine Chanet','catherine.chanet@lpl.univ-aix.fr','2007-03-27 09:20:02',1,'2007-03-27 09:20:03',4,'683623110',16,'On ne sait pas très bien si le but de la présentation est d\'étudiar les procédés de continuation du tour de parole à travers l\'exemple de il y a ou s\'il s\'agit d\'étudier les séquences en il y a pour elles-mêmes. On aurait aimé avoir des exemples','fav','indifferent',10,'pas toujours très clair mais problématique intéressante','fav','oral',2,'bien documenté. On peut discuter les conclusions en fonction de ce que les auteurs mettent sous les terme \"énoncé interrogatif\" et \"énoncé déclaratif\", qui semblent aller de soi pour eux, mais pas pour bon nombre de linguistes','tres fav','oral',30,'Bien documenté. Intéressant. On pourra discuter le lien entre ces syntagmes intonatifs et d\'éventuelles unités discursives, bien que cela ne semble pas l\'objectif principal de la proposition','tres fav','indifferent',2,3,1,1,3,0,0,2);
INSERT INTO idp07_reviewer VALUES (7,'Emanuela Cresti','elicresti@unifi.it','2007-03-20 18:58:50',1,'2007-03-20 18:58:50',5,'294277027',26,'The paper is well based on experimental evidence. It brings new data on the perceptive parsing of the speech flow  at crosslinguistic level','tres fav','oral',27,'The hipothesis of two distinct categories of down step in the intonation structure  is interesting. We espect that the paper will demonstrate it on a sufficient variety of spontaneous speech utterances ','fav','oral',2,'The paper does not consider the background literature regarding the formal correlation between prosody and illocutionary values. More specifically the preliminary assumption of a raising contour for all kinds of questions contraddict  most of the basic knowledge on the issue. \r\nBoth the method and the empyrical results are very rough.','defav','',0,'',NULL,NULL,2,2,2,NULL,0,0,3,NULL);
INSERT INTO idp07_reviewer VALUES (8,'Elizabeth Delais-Roussarie','elisabeth.roussarie@wanadoo.fr','2007-03-21 10:38:55',1,'2008-12-17 16:16:49',5,'651191049',22,'Réflexion intéressante sur la façon de représenter et de construire une grammaire de l\'intonation et sur la construction du sens des contours.\r\nSelon moi, certaines approches dans la mouvance de Pierrehumbert (cf. Post) ne peuvent pas être considérées comme morphologiques.\r\nVision un peu rapide.','tres fav','oral',16,'L\'abstract est très succint, sans exemple aucun, et ne permet pas vraiment de voir ce que veut défendre l\'auteur.\r\nJe ne suis ni favorable ni défavorable à la sélection de ce papier.','fav','poster',4,'Intéressant.\r\n','fav','oral',11,'Bien que la thèmatique soit intéressante, elle ne me semble pas rentrer dans les thèmes de IDP 07. Aussi m\'est-il difficile de donner un avis.\r\nSi vous décidez de maintenir ce papier, plutôt par curiosité, il doit être en session poster.','defav','',1,3,2,0,2,2,3,0);
INSERT INTO idp07_reviewer VALUES (9,'Albert Di Cristo','albert.dicristo@lpl.univ-aix.fr','2007-03-22 09:19:42',4,'2007-03-22 09:19:43',11,'151112923',22,'Texte indépendance…\r\n\r\nLe texte soumis présente des défauts qui, sans être rédhibitoires, entravent la compréhension du projet. D’abord, des généralisations hâtives. Ainsi, l’affirmation selon laquelle dans les approches autosegmentales toutes les combinaisons d’unités sont à priori autorisées, n’est pas défendable. En fait, dans ces approches, ces combinaisons sont contraintes par les exigences d’une grammaire à états finis (cf. par exemple, la grammaire à états finis de Pierrehumbert). Il n’est pas juste d’autre part, de qualifier ces approches de morphologiques. C’est vrai pour l’approche de Rossi, mais pas pour celle de Pierrehumbert ou de Hirst et Di Cristo. On ne peut pas affirmer, par ailleurs que les tons sont les unités qui forment la structure intonative dans l’approche de Martin dans la mesure où les entités primitives de son modèle sont des contours indivisibles.\r\n\r\nL’auteur ne précise pas la signification du terme de « ton racine ». S’agit-il du ton nucléaire ? Comment ce dernier est-il déductible des « relations de dépendance », en admettant que ce ton, comme  le suggère l’auteur, est déterminé par la force illocutoire de l’énoncé ?\r\n\r\nEn  résumé, les texte demeure plutôt opaque, en raison de la façon assez floue dont les concepts sont appréhendés. \r\n\r\nJ’émets un avis réservé.\r\n','defav','poster',19,'La communication traite du statut pragmatique/discursif des constructions qualifiées dans la littérature anglo-saxone de \"question-tag\" et de leurs correlats prosodiques. Le sujet est nouveau dans la façon dont il est abordé et questionné. Ce projet me paraît constituer un bon exemple de ce que l\'on est en droit d\'attendre pour le colloque.','fav','indifferent',4,'Très intéressant, dans la mesure ou ce que l\'on supposait  acquis sur \"l\'intonème conclusif\" est remis en question,à la lumière de l\'analyse du discours.','tres fav','oral',29,'Approche très intéressante, dans la mesure où elle s\'intéresse aux principes et aux activités qui président à la construction du discours.','tres fav','oral',1,0,2,3,2,3,4,0);
INSERT INTO idp07_reviewer VALUES (10,'Anne Grobet','anne.grobet@lettres.unige.ch','2007-03-22 10:33:49',1,'2007-03-23 18:49:59',3,'726180059',31,'Résumé qui s\'inscrit parfaitement dans la thématique des transferts prosodiques: les deux questions annoncées semblent intéressantes. Il sera indispensable d\'avoir des exemples sonores lors de la présentation.','tres fav','indifferent',32,'A mon avis, cette communication - par ailleurs peut-être intéressante - ne s\'inscrit pas dans le thème du colloque: elle relève plus de la morphologie que de la prosodie (le rythme n\'y intervient que comme l\'un des facteurs explicatifs). ','defav','',0,'',NULL,NULL,0,'',NULL,NULL,4,1,NULL,NULL,3,0,NULL,NULL);
INSERT INTO idp07_reviewer VALUES (11,'Carlos Gussenhoven','c.gussenhoven@qmul.ac.uk','2007-03-22 17:50:01',3,'2007-03-22 17:50:02',4,'314222441',25,'','fav','poster',13,'','tres fav','indifferent',8,'','tres fav','indifferent',0,'',NULL,NULL,3,3,3,NULL,4,2,2,NULL);
INSERT INTO idp07_reviewer VALUES (12,'Philippe Hiligsmann','hiligsmann@lige.ucl.ac.be','2007-03-13 15:16:48',2,'2007-03-13 15:16:49',5,'837426351',11,'Abstract pas clair au niveau des objectifs. Le sujet me semble anecdotique pour le colloque en question.','defav','poster',6,'Pas de question de recherche. Sur quelle langue porte cet abstract? Purement descriptif. Aucun lien avec la recherche actuelle.','defav','poster',9,'Sujet très intéressant.','tres fav','oral',0,'',NULL,NULL,3,2,3,NULL,0,0,4,NULL);
INSERT INTO idp07_reviewer VALUES (13,'Daniel Hirst','daniel.hirst@lpl.univ-aix.fr','2007-03-26 21:49:52',2,'2007-03-26 21:49:52',4,'128386733',15,'','fav','poster',17,'','fav','poster',25,'','fav','poster',26,'','fav','poster',3,3,4,2,2,2,0,0);
INSERT INTO idp07_reviewer VALUES (14,'Anne Lacheret-Dujour','anne@lacheret.com','2007-03-25 17:06:12',1,'2007-03-25 17:06:13',4,'395622455',24,'sujet très intéressant mais pas situé théoriquement','fav','oral',18,'Sujet de pointe','tres fav','oral',5,'','tres fav','',28,'','fav','indifferent',3,3,1,3,2,2,2,2);
INSERT INTO idp07_reviewer VALUES (15,'John Local','lang4@york.ac.uk','2007-03-23 14:46:08',3,'2007-03-23 14:46:21',9,'906380040',1,'American English Corpus based investigation of prosodic design of \'not\'/\'n\'t\' (NEG).  Shows that \'social situation\' (discourse context) and \'footing\' (participant role) determine prosodic design more than information status. Not clear what techniques are employed to motivate discourse categories. Proposes a \'more nuanced measurement protocol\' (not clear what this is) for prosodic variation.','fav','poster',19,'Reports on pitch contours and tag questions in British English - particularly so-called utterance medial ‘punctuational’ tags, which are claimed to emphasise what the speaker says and not expect involvement or reply as do other tags. Looks like analysis willl propose that such tags are grammaticized and are prosodically integrated.  Not clear how robust the analysis is going to deliver as there seem to be relatively few tokens. ','fav','poster',23,'Data look potentially interesting (Dena\'ina Alaskan Athabascan language) but not clear what the analysis is really about. A native transcriber was asked to demarcate \'narrative units\' and the authors argue that the transcriber \'picks up on intonational clues\' as the units do not align with either particular syntactic structures or units delimited with \'sentence-final\' particles.','fav','poster',0,'',NULL,NULL,3,2,2,NULL,2,3,0,NULL);
INSERT INTO idp07_reviewer VALUES (16,'Piet  Mertens','piet.mertens@arts.kuleuven.be','2007-03-13 14:21:07',3,'2007-04-10 13:51:41',11,'496363994',1,'One could consider numerous other factors having a potential impact on the pitch prominence of negation elements, apart from those mentioned in the paper. But where do we stop? ','fav','indifferent',18,'Notions floues. Qu\'est-ce qu\'un \"vecteur\" prosodique ? S\'agit-il d\'un paramètre prosodique (acoustique) ? Qu\'est-ce qu\'un \"motif\" expressif ? S\'agit-il d\'un contour particulier ? Qu\'est-ce que la médiatisation vient faire là-dedans? Pourquoi parler de \"mouvements prosodiques (temporels, énergétiques...\" ? Variation mélodique, d\'accord, mais \"mouvement énergétique\" (pour intensité), ou \"m. temporels\" (pour durée) ??. Quels sont les objectifs concrets de ce travail ??? ','defav','indifferent',24,'Aucune précision sur l\'analyse acoustique de la prosodie des interjections. Est-ce qu\'on a mesuré le F0 ? Comment ? Est-ce qu\'on a mesuré d\'autres paramètres, et comment ? Les formes sont prononcées avec quels contours mélodiques ? L\'article parle de la \"richesse des combinaisons acoustiques\" des interjections, mais c\'est particulièrement flou comme description de leur forme.','defav','indifferent',0,'',NULL,NULL,3,1,0,NULL,0,0,0,NULL);
INSERT INTO idp07_reviewer VALUES (17,'Cristel Portes','cristel.portes@lpl.univ-aix.fr','2007-03-07 16:11:50',1,'2007-04-05 16:36:11',7,'350925866',7,'Le résumé est assez flou dans la formulation de ses hypothèses comme de ses résultats. Mais l\'étude des relations entre geste et prosodie dans le cadre théorique élaboré par Morel et Danon Boileau (1998) peut s\'avérer intéressant.\r\nL’avis est donc plutôt favorable sous réserve des places disponibles.\r\n','fav','poster',10,'Résumé très jargonnant dont certaines phrases sont presque incompréhensibles. La problématique semble pourtant suffisamment intéressante et pertinente pour le colloque pour justifier un avis favorable sous réserve.','fav','poster',21,'Problématique et résultats trop peu explicites pour justifier une présentation orale. Avis favorable pour un poster.','fav','poster',0,'',NULL,NULL,3,3,0,NULL,1,0,0,NULL);
INSERT INTO idp07_reviewer VALUES (18,'Isabelle Racine','isabelle.racine@lettres.unige.ch','2007-03-23 18:54:27',5,'2007-03-28 17:30:01',10,'247578038',31,'Je penche plus pour une présentation orale car il me semble que ce serait difficile de s\'imaginer ce que ça donne sur poster! Les exemples sonores me semblent indispensables.','tres fav','oral',32,'A priori, j\'ai de la peine à faire rentrer ce résumé - qui par ailleurs me semble très intéressant et expérimentalement très solide- dans l\'une de nos catégories, il relève plus de la phonologie me semble-t-il, mais je ne suis pas une spécialiste du domaine...','defav','',0,'',NULL,NULL,0,'',NULL,NULL,4,0,NULL,NULL,4,0,NULL,NULL);
INSERT INTO idp07_reviewer VALUES (19,'Laurent Rasier','rasier@lige.ucl.ac.be','2007-03-07 14:39:23',3,'2007-03-22 16:11:08',8,'370159224',8,'Bien que le sujet traité soit très intéressant d\'un point de vue théorique ( nous ne disposons que de très peu de données empiriques concernant la variation diatopique de la prosodie) que pratique (synthèse de la parole) et que je sois favorable à cette communication dans le cadre d\'un colloque sur la prosodie, la thématique proposée ne rentre à mon sens pas directment dans le sujet d\'étude principal du colloque. C\'est pourquoi il me semble approprié de placer cette communication dans la session des posters, cette formule offrant plus de souplesse thématique.','fav','poster',9,'Recherche intéressante tant d\'un point de vue théorique que pratique pour les enseignants de langue étrangère/seconde et qui trouve sa place dans une session sur la prosodie & l\'apprentissage d\'une langue étrangère/seconde - même si le thème abordé n\'est pas celui des transferts prosodiques entre L1 & L2.','fav','oral',12,'L\'auteur semblant se situer dans la phase initiale de sa recherche (qui, par ailleurs, aborde un thème très intéressant), cette communication semble être plus appropriée pour un poster que pour une présentation orale. Je ne suis toutefois pas opposé à ce que cet exposé devienne une communication orale qui trouve par ailleurs totalement sa place dans deux sessions thématiques. ','fav','indifferent',0,'',NULL,NULL,3,4,3,NULL,1,3,4,NULL);
INSERT INTO idp07_reviewer VALUES (20,'Frédéric Sabio','frederic.sabio@orange.fr','2007-03-26 22:53:19',10,'2007-03-26 22:53:19',17,'994294075',6,'Cette proposition, quoiqu\'intéressante dans sa thématique, paraît manquer d\'assises claires au plan théorique et méthodologique: rien n\'est dit du modèle dans lequel s\'inscrit la description, et les unités de descriptions restent peu définies au plan formel. Certains propositions paraissent étonnantes : l\'idée par exemple que la présence de l\'accent tonique serait \"un phénomène prévisible\", qui ne saurait être adoptée sans examen. A la lecture du résumé qui nous a été fourni, je suis assez nettement défavorable à ce que cette proposition soit retenue.\r\n\r\n\r\n\r\n\r\n\r\n\r\n','defav','',14,'Cette communication paraît tout à fait intéressante tant dans son ambition de décrire un corpus oral authentique (parole radiophonique et télédiffusée) que dans le choix très convaincant des outils descriptifs convoqués : analyse acoustico-phonétique accompagnée d\'une modélisation MoMel, choix d\'une pluralité de paramètres prosodiques. Le type de relatives spécifiquement étudiées ici (dites \"de transition\") semble tout à fait particulier au plan discursif et syntaxique, et une analyse de leur forme prosodique paraît fort bienvenue.','fav','indifferent',20,'Cette proposition de communication est très (trop?) ambitieuse puisqu\'elle annonce un bilan sur la manière de concevoir les unités discursives dans pas moins de six modèles actuels, en s\'interrogeant notamment sur les notions d\'unité maximale en syntaxe, sur celles d\'unités textuelles et discursives, sur la place à réserver aux inférences, sur le rôle de la prosodie... Le résumé laisse à penser que la communication proposée constituera un parcours instructif et bien documenté sur les modèles et les méthodologies actuels : pour cette raison, mon avis est positif. Cela dit, le risque n\'est pas exclu que l\'on s\'égare un peu au milieu de tant de notions aussi complexes, auxquelles il paraît bien difficile de rendre justice dans le cadre très contraignant d\'une intervention de colloque.','fav','oral',30,'Mon avis reste mitigé pour cette proposition de communication : l\'auteur est visiblement un spécialiste de prosodie et l\'un des aspects mentionnés  (comparaison de deux variétés de français) n\'est pas sans lien avec la description du discours oral. Il n\'en demeure pas moins que, autant que nous comprenions le résumé, la proposition qui est soumise ne fait aucune place à la dimension discursive ou à l\'interaction prosodie / discours, mais traite plus spécifiquement de l\'organisation tonale en \"syntagmes mélodiques\". Il s\'agit ainsi d\'un exposé qui aurait toute sa place dans une rencontre de phonologie prosodique mais qui est peut-être moins adapté aux thèmes qu\'entend privilégier l\'IDP07. Nous laissons au comité d\'organisation le soin de statuer sur l\'adéquation de cette proposition au thème de la rencontre.','fav','',0,3,2,0,0,2,0,0);
INSERT INTO idp07_reviewer VALUES (21,'Anne Catherine Simon	','simon@rom.ucl.ac.be','0000-00-00 00:00:00',0,'2007-04-05 16:38:23',2,'294150821',0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO idp07_reviewer VALUES (22,'Anne Wichmann','awichmann@uclan.ac.uk','2007-03-10 22:55:31',8,'2007-03-10 22:55:31',14,'570842230',12,'This is not a very good abstract - there is no reference to secondary literature and little detail about the features observed. However, interactional functions of intonation are important, and since this is based on empirical evidence I would recommend acceptance.','fav','indifferent',13,'This is a good abstract, clearly setting out the context for the resesarch. The study is empirical and based on appropriate natural data. The study  could make a useful contribution to understanding the role of prosody in signalling, and in some cases disambiguating, pragmatic/ discourse function. I recommend acceptance','tres fav','oral',15,'This is a clear abstract but there is no indication of the prosodic model used. Since this is presumably a contribution to prosodic phonology, and not based on naturally occurring data, there seems little need for oral presentation. There are some mistakes in the English gloss (e.g. What did he *saw. I would be interested to know how this focus system operates in natural speech.','fav','poster',27,'This is a weak abstract and without examples difficult to follow. There is\r\nno clear indication of the motivation for the study, nor the data on which\r\nit was based or the theoretical implications of the results. There may be aa\r\ngood study concealed behind the abstract but I am not expert enough to see\r\nit and on the evidence of the abstract would not accept it.','tres defav',NULL,3,3,2,NULL,4,0,0,NULL);
INSERT INTO idp07_reviewer VALUES (23,'Françoise Zay','francoise.zay@lettres.unige.ch','0000-00-00 00:00:00',0,'2007-03-25 23:09:56',3,'332673846',0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO idp07_reviewer VALUES (24,'Peter Auer','peter.auer@germanistik.uni-freiburg.de','2007-03-05 20:25:59',1,'2007-04-05 16:36:37',4,'640549584',3,'interesting topic, innovative look on word search in old age speakers. methodology not entirely clear, and potentially the link to prosody is not very strong. Therefore not a MUST but surely a CAN.','fav','oral',7,' a highly important topic (relationship of gesture and prosody) but I\'m not sure I really understand the kind of approach chosen. Unfortunately nothing on methodology. The paper doesn\'t look very focused.','fav','poster',17,'I\'m afraid that this is going to be more of an introspective than an empirical paper, but it may raise interesting discussions because of its methodology. So, although I don\'t think the approach taken is right, I suggest the paper be included in the list of oral presentations.  The abstract is well written, anyway.','fav','oral',0,'',NULL,NULL,3,3,2,NULL,0,2,1,NULL);
INSERT INTO idp07_reviewer VALUES (25,'Odie PROSE','prose.odie@parlotte.org','2007-03-27 23:54:35',4,'2007-05-22 23:17:58',7,'167511997',0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO idp07_reviewer VALUES (26,'Odie PROSE','prose.odie@parlotte.org','2007-03-27 23:55:51',7,'2007-03-27 23:55:51',10,'291466409',0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--
-- Table structure for table `language_20100105`
--

CREATE TABLE language_20100105 (
  iso tinytext NOT NULL,
  french tinytext NOT NULL,
  english tinytext NOT NULL,
  self tinytext NOT NULL,
  `text` text NOT NULL,
  imgtext varchar(255) NOT NULL default '',
  trad varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  actif tinyint(4) NOT NULL default '0',
  grp mediumint(9) NOT NULL default '1',
  geo varchar(50) NOT NULL default '',
  geolat float NOT NULL default '0',
  geolng float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language_20100105`
--

INSERT INTO language_20100105 VALUES ('fra','français','french','français','On ne connaît que les choses que l\'on apprivoise, dit le renard. Les hommes n\'ont plus le temps de rien connaître. Ils achètent des choses toutes faites chez les marchands. Mais comme il n\'existe point de marchands d\'amis, les hommes n\'ont plus d\'amis. Si tu veux un ami, apprivoise-moi!\r\n\r\nAdieu, dit le renard. Voici mon secret. Il est très simple: on ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.','','','A26 + àâçèéêôîûùëüï',1,50,'france',1,2);
INSERT INTO language_20100105 VALUES ('eng','anglais','english','english','We only know the things that we tame, said the fox. People no longer have the time to know anything. They buy things already made for peddlers. But since there are no peddlers of friends, they no longer have friends. If you want a friend, tame me!\r\n\r\nGoodbye, said the fox. Here\'s my secret; it\'s very simple: we see well only with the heart. The essential is invisible to the eyes.\r\n','','Richard Waswo','A26+ ð  þ',1,67,'England, United Kingdom',0,0);
INSERT INTO language_20100105 VALUES ('deu','allemand','german','deutsch','Man kennt die Dinge, die man zähmt, sagte der Fuchs. Die Menschen haben keine Zeit mehr, etwas kennen zu lernen. Sie kaufen die Dinge fix und fertig bei den Händlern. Aber weil niemand mit Freunden handelt, haben Sie Menschen keine Freunde mehr. Wenn Du einen Freund willst, zähme mich!\r\n\r\nAdieu!, sagte der Fuchs. Dies ist mein Geheimnis. Es ist sehr einfach: man sieht nur mit dem Herzen gut. Das Wesenliche ist für die Augen unsichtbar.','','Carlos Alvar et Henriette Partzsch','A26 + ä, ö ü ß, eszet ou scharfes S',1,72,'germany',0,0);
INSERT INTO language_20100105 VALUES ('ita','italien','italian','italiano','Puoi conoscere solo quello che ti è familiare, che ti è domestico - disse la volpe. - Gli uomini non hanno più tempo di conoscere niente. Comprano nei negozi cose già pronte. Ma siccome non esistono negozianti di amici, gli uomini non hanno più amici. Tu, allora, se vuoi un amico, vedi di addomesticarmi.\r\n\r\nAddio, disse la volpe. E eccolo qui, il mio segreto - semplice semplice. Vedere è cosa del cuore. Agli occhi l\'essenziale resta sempre invisibile.','','Emilio Manzotti','A26 - jkwxy sont utilisés que dans les mots d’emprunt. On trouve toutefois le j (i lunga) ainsi que l’y (ipsilon ou i greca) et le w (doppia vu) dans certains toponymes et noms ou prénoms. + àòóìíùúéè',1,52,'italy',0,0);
INSERT INTO language_20100105 VALUES ('spa','espagnol','spanish','español','Sólo conocemos las cosas que domesticamos, dijo el zorro. Los hombres ya no tienen tiempo de conocer nada. Compran en las tiendas cosas hechas. Pero como no hay ninguna tienda donde vendan amigos, los hombres ya no tienen amigos. Si quieres un amigo, !domestícame!\r\n\r\nAdiós, dijo el zorro. Te diré un secreto. Es muy sencillo: sólo se ve bien con el corazón. Lo esencial les resulta invisible a los ojos.','','Jesús Munárriz','',1,65,'spain',0,0);
INSERT INTO language_20100105 VALUES ('rum','roumain','romanian','român&#x103;','Cunoa&#x15f;tem doar ceea ce îmblînzim, spuse vulpea. Oamenii nu mai au timp s&#x103; cunoasc&#x103; nimic. Cump&#x103;r&#x103; de la negustori lucrurile de-a gata. Cum ”nsa nu exista negustori de prieteni, oamenii nu mai au prieteni. Dac&#x103; vrei un prieten, ”mbl”nze&#x15f;te-m&#x103;!\r\n...\r\nAdio, spuse vulpea. Iat&#x103; care e taina mea. E foarte simpl&#x103;: limpede vezi doar cu inima. Ochii un pot s&#x103; vad&#x103; esen&#x163;ialul.\r\n','','','&#x15f; &#x163f; &#x103; î',1,54,'romania',0,0);
INSERT INTO language_20100105 VALUES ('swe','suédois','Swedish','','Man lär bara känna det man tämjer, sa räven. Människorna har inte längre tid att riktigt bli bekanta med något. De köper färdiga saker i affärerna. Men eftersom det inte finns vänner att köpa i affärerna, har människorna inte längre några vänner. Om du vill ha en vän, så tämj mig!\r\n\r\nAdjö, sa räven. Nu ska du få höra min hemlighet. Den är mycket enkel: det är bara med hjärtat som man kan se ordentligt. Det viktigaste är osynligt för ögonen.','','','http://www.borderline.nu/nuke/modules.php?name=News&file=print&sid=31',1,57,'sweden',0,0);
INSERT INTO language_20100105 VALUES ('rus','russe','russian','','-&#1059;&#1079;&#1085;&#1072;&#1090;&#1100; &#1084;&#1086;&#1078;&#1085;&#1086;  &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1090;&#1086;, &#1095;&#1090;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080;&#1096;&#1100;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083; &#1051;&#1080;&#1089;. &#1059; &#1083;&#1102;&#1076;&#1077;&#1081; &#1073;&#1086;&#1083;&#1100;&#1096;&#1077; &#1085;&#1077;&#1090; &#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1080; &#1095;&#1090;&#1086;-&#1083;&#1080;&#1073;&#1086;  &#1091;&#1079;&#1085;&#1072;&#1074;&#1072;&#1090;&#1100;. &#1054;&#1085;&#1080; &#1087;&#1086;&#1082;&#1091;&#1087;&#1072;&#1102;&#1090; &#1074;&#1077;&#1097;&#1080; &#1091;&#1078;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1099;&#1084;&#1080; &#1074; &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1077;. &#1053;&#1086; &#1074;&#1077;&#1076;&#1100; &#1085;&#1077;&#1090; &#1090;&#1072;&#1082;&#1086;&#1075;&#1086;  &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1072;, &#1075;&#1076;&#1077; &#1087;&#1088;&#1086;&#1076;&#1072;&#1102;&#1090;&#1089;&#1103; &#1076;&#1088;&#1091;&#1079;&#1100;&#1103;, &#1080; &#1091; &#1083;&#1102;&#1076;&#1077;&#1081; &#1085;&#1077; &#1089;&#1090;&#1072;&#1083;&#1086; &#1076;&#1088;&#1091;&#1079;&#1077;&#1081;. &#1045;&#1089;&#1083;&#1080; &#1090;&#1099; &#1093;&#1086;&#1095;&#1077;&#1096;&#1100;,  &#1095;&#1090;&#1086;&#1073;&#1099; &#1091; &#1090;&#1077;&#1073;&#1103; &#1073;&#1099;&#1083; &#1076;&#1088;&#1091;&#1075;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1103;&nbsp;!\r\n\r\n-&#1055;&#1088;&#1086;&#1097;&#1072;&#1081;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;  &#1051;&#1080;&#1089;. - &#1042;&#1086;&#1090; &#1084;&#1086;&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090;. &#1054;&#1085; &#1086;&#1095;&#1077;&#1085;&#1100; &#1087;&#1088;&#1086;&#1089;&#1090;&nbsp;: &#1087;&#1086;-&#1085;&#1072;&#1089;&#1090;&#1086;&#1103;&#1097;&#1077;&#1084;&#1091; &#1074;&#1080;&#1076;&#1080;&#1090; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1089;&#1077;&#1088;&#1076;&#1094;&#1077;.  &#1057;&#1072;&#1084;&#1086;&#1077; &#1075;&#1083;&#1072;&#1074;&#1085;&#1086;&#1077; &#1089;&#1086;&#1082;&#1088;&#1099;&#1090;&#1086; &#1086;&#1090; &#1075;&#1083;&#1072;&#1079;.','','Olga Inkova','',1,71,'russia',0,0);
INSERT INTO language_20100105 VALUES ('epo','espéranto','esperanto','esperanto','\"Nur ni konas tion, kion ni malsova&#x11d;igas\", diris la vulpo. \"La homoj ne plu havas tempon por io ajn koni. Ili a&#x109;etas tute pretajn objektojn &#x109;e vendistoj. Sed, &#x109;ar amikvendistoj ne ekzistas, homoj jam ne havas amikojn. Se vi volas amikojn, malsova&#x11d;igu min!\"\r\n\"Adiau\", diris la vulpo. \"Mi diros al vi unua sekreto. &#x11c;i estas tre simpla: Nur oni bone vidas per la nia koro. La esenco estas nevidebla perla okuloj.\"','','Emilio Gastón','&#x108; &#x109; &#x11d;  &#x11c;',1,14,'',0,0);
INSERT INTO language_20100105 VALUES ('hun','hongrois','hungarian','magyar','- Az ember csak azt ismeri meg igazán, amit megszelídít - mondta a róka.\r\n- Az emberek nem érnek rá, hogy bármit is megismerjenek.\r\nCsupa kész holmit vásárolnak a keresked&#x151;knél.\r\nDe mivel barátkeresked&#x151;k nem léteznek, az embereknek nincsenek is barátaik.\r\nHa azt akarod, hogy barátod legyen, szelídíts meg engem.\r\n\r\n- Isten veled - mondta a róka.\r\n- Tessék, itt a titkom. Nagyon egyszer&#x171;:\r\njól csak a szívével lát az ember.\r\nAmi igazán lényeges, az a szemnek láthatatlan.\r\n','','Rónay György','http://www.sztaki.hu/~smarton/vegtelen/kish/kish.htm',1,64,'hungary',0,0);
INSERT INTO language_20100105 VALUES ('gsw-app','appenzellois','appenzell swiss german','','me kennt nu d sache wommer zäämt, hät de fux gseit. d lüüt händ ka zit\r\nmeh zum öppis kenne lèrne. si kaufed d sache fix fertig i de läde. aber\r\nwils ka läde für fründ git, händ d lüüt ka fründ meh. wennt du aso en\r\nfründ wötsch, denn zääm mi.\r\n\r\nadie, hät de fux gsait. i säg der no mis gheimnis. s isch ganz eifach!\r\nguet sieht mer nu mit em hèrz. di wichtige sache sind für d auge-n\r\nunsichtbar.','','Yves Scherrer','',1,72,'appenzell',0,0);
INSERT INTO language_20100105 VALUES ('ita-tic','tessinois','','ticinese','A sa cognos dumá i rop che sa dumestiga, la dis la volp. I gent i g\'ha pü `l temp da cugnos nagota. I cumpra i rop già fai sü di mercant. Ma gh`è mia i mercant da amis, e alura i gent i g\'ha pü amis. Se te vöri un amis, te devi dumestigam.\r\n...\r\nAdiu, la dis la volp. Sculta`l mè segrett, l\'è facil: a sa ved ben dumá cul cör. I rop püsee impurtant, l\'è mia cui öcc ch\' i sa ved. ','','Laura Baranzini','bellinzona áüöè',1,52,'ticino',0,0);
INSERT INTO language_20100105 VALUES ('slv','slovène','slovenian','slovenšcina','Le tisto spozna&#x0161;, kar udoma&#x010D;i&#x0161;, je dejala lisica. Lujdje si ne vzamejo &#x010D;asa, da bi sploh spoznali. Pri trgovcih kupujuejo kar izgotovljene predmete. Ker pa ni trgovcev, ki bi prodajali prijatelje, ljudje nimajo ve&#x010D; prijateljev. &#X010D;e bi rad imel prijatelja, me udoma&#x010D;i!\r\n...\r\nZbogom, je rekla lisica. &#X010D;uj mojo skrivnost. Zelo preprosta je: Kdor ho&#x010D;e videti, mora gledati s screm. Bistvo je o&#x010D;em nevidno. \r\n','','Ivan Minatti','',1,70,'slovenia',0,0);
INSERT INTO language_20100105 VALUES ('scc','serbe','serbian','','-Covek poznaje samo one stvari koje pripitomi, rece lisica. Ljudi nemaju vise vremena da bilo sta upoznaju. Oni kupuju gotove stvari kod trgovaca. A kako nema trgovaca koji prodaju prijatelje, ljudi vise nemaju prijatelja. Ako hoces prijatelja, pripitomi me!\r\n-Zbogom, odgovori lisica. Evo moje tajne. Sasvim je jednostavna: covek samo srcem dobro vidi. Sustina se ocima ne da sagledati.','','','',1,70,'serbia',0,0);
INSERT INTO language_20100105 VALUES ('jpn','japonais','japanese','','','japonais.jpg','Masayuki Ninomiya','',1,43,'japan',0,0);
INSERT INTO language_20100105 VALUES ('wol','wolof','','','Xamouñu lou doul lou ñou miin, (wakh  golo). Nit ñi amatouñu jootu xam. Dañuy jenda lou paré ba noppi ca jaykat ba. Waayé ndéguém amatoul jaykatou xarit, nit amatoul xarit. So beugué xarit, nékhalma!\r\n...\r\nTagounaléen (wakh golo). Li moy li ma doon neubeu. Dafa yonmbeu: ak xol la ñuy gisé bou bakh. Li am solo dafay laxou beuti.\r\n','','Yacine Diop Fonjallaz','ñ é',1,32,'senegal',0,0);
INSERT INTO language_20100105 VALUES ('alb','albanais','albanese','shqip','NJohim veçse gjerat qe i aprivuazojme, thote dhelpra. Njerezit s\'kane me kohe te njohin gje tjeter. Blejne gjera te gateshme tek tregetaret. Por meqe tregetaret miq nuk egsistojne me, atehere njerezit s\'kane me miq, Nese do nje mik, ja ku me ke mua!\r\n...\r\nLamtumire, thote dhelpra. Ja sekreti im. Eshte shume i thjeshte: Shohim mire veçse me zemer. Esencialja eshte e padukshme per syte.','','Lefteri Hasanaj','',1,19,'albania',0,0);
INSERT INTO language_20100105 VALUES ('heb','hébreu','hebrew','','','hebreu.jpg','','',1,61,'israel',0,0);
INSERT INTO language_20100105 VALUES ('lat','latin','latin','lingua latina','Haec tantum nota sunt quae paulatim domantur, dixit uulpes. Homines aliquid spatii ad cognoscendum subripere non iam possunt; sic apud mercatores res ad usum paratas emunt. Cum autem mercatores qui amicos uendant inueniri non possint, hominibus non iam sunt amici. Si amicum expetis, me doma!\r\n	 \r\n(...) Vale, dixit uulpes. Hoc est arcanum meum, et simplicissimum quidem : corde tantum perspici potest, nec summae rerum ipsae cernuntur oculo ullo.\r\n','','Yves Rütsche','',1,20,'',0,0);
INSERT INTO language_20100105 VALUES ('roa','provençal','provençal','occitan','Lo Ditz del Raynart\r\n\r\n\"Hom conois solamen \r\no que pot domesgar\".\r\nBos ditz es, e no men:\r\nbe puesc lo t\'explicar.\r\nHuey non a hom lezer\r\nde ren be conoisser,\r\ndoncs compra, e-lh es grazitz,\r\no que-lh estai aizitz,\r\nque-lh vendon mercadant:\r\nals no quier tant ni cant.\r\nPus atrobar no-s poc\r\nlunhz mercadantz d\'amics,\r\nde o cauza s\'esmoc\r\ncÕhuey regn\'om ses amics.\r\nS\'amic vols atrobar,\r\nbe×t caldra m domesgar.\r\nAiqui vuelh descobrir\r\nmo secret al fenir:\r\nab ton cor solamen\r\npotz vezer claramen.\r\n\"Ohlz no ve o que cal\r\nmais, ni qu\'es mais cabal\".','','Maurizio Perugi','',1,49,'',0,0);
INSERT INTO language_20100105 VALUES ('bre','breton','breton','brezhoneg','N\'eus nemet an traou a vez doñvaet a anevezer, eme al louarn. An dud n\'o deus ket amzer ken da anaout netra.  Prenañ a reont traou peurc\'hraet `ti ar varc\'hadourien. Met dre ma n\'eus ket a varc\'hadourien vignoned, n\'o deus an dud mignon ebet ken. Ma fell dit kaout ur mignon, doñva ac\'hanon!\r\n...\r\nKenavo, eme al louarn. Setu va sekred. Aes-kenañ ez eo:  gant ar galon nemetken e vez gwelet mat. Ar pep pouezushañ ne vez ket gwelet gant an daoulagad.','','Yvon Abiven','',1,55,'bretagne',0,0);
INSERT INTO language_20100105 VALUES ('por','portugais','portuguese','português','Só se conhece aquilo que se amestra, diz a raposa. Os homens já não têm tempo para conhecer nada. Compram tudo já feito nas lojas. Mas como não se podem comprar amigos nas lojas, os homens deixaram de ter amigos. Se queres um amigo, amestra-me!\r\n...\r\nAdeus, diz a raposa. Aqui tens o meu segredo. É muito simples: só se vê bem com o coração. O essencial é invisível para os olhos.\r\n','','Nuno Júdice','',1,66,'portugal',0,0);
INSERT INTO language_20100105 VALUES ('roh','romanche sursilvan','romance (sursilvan)','rumantsch sursilvan','Ins enconuscha mo las caussas ch\'ins ha fatg dumiastias, precisescha l\'uolp. Ils carstgauns han buca peda pli d\'emprender d\'enconuscher enzatgei. Els cumpran las caussas fatgas. Mo essend ch\'ei dat buca pli stizuns per amitgs, han ils carstgauns buc amitgs pli. Sche ti vul in amitg, lu fai ch\'jeu daventi dumiastia!\r\n...\r\nAdia, di l\'uolp. Mira tscheu miu misteri. El ei zun sempels: Mo cun il cor vesan ins bein. Igl essenzial ei buca veseivels per ils egls.\r\n','','Donat Cadruvi','',1,51,'',0,0);
INSERT INTO language_20100105 VALUES ('dut','néerlandais','dutch','vlaams','Men kent alleen die dingen waarmee men echt vertrouwd is, zegt de vos. De mensen hebben niet meer de tijd nog iets echt te kennen. Zij kopen dingen kant en klaar bij een handelaar. Maar verkopers van vrienden die bestaan niet, en dus hebben de mensen geen vrienden meer. Als je een vriend wilt moet je me temmen!\r\n...\r\nVaarwel, zegt de vos. Hier is mijn geheim. Het is zeer eenvoudig : Goed zien kan men alleen met zijn hart. Het wezenlijke is onzichtbaar voor je ogen.\r\n','','Yasmina Foehr-Janssens','',1,68,'netherlands',0,0);
INSERT INTO language_20100105 VALUES ('dan','danois','danish','dansk','Man kender kun de ting som man t&#xe6;mmer, siger r&#xe6;ven. Menneskene har ikke l&#xe6;ngere tid til at kende noget. De k&#xf8;ber f&#xe6;rdiglavede ting hos k&#xf8;bmanden. Men eftersom der ikke findes nogen k&#xe6;bm&#xe6;nd der s&#xe6;lger venner, har menneskene ikke l&#xe6;ngere nogen venner. Hvis du vil have en ven s&#xe5; t&#xe6;m mig! \r\n...\r\nFarvel, siger r&#xe6;ven. Her er min hemmelighed. Den er meget enkel: kun med hjertet kan man se klart. Det der virkeligt betyder noget er usynligt for &#xf8;jnene.\r\n','','Laura et Leonardo F.Lisi','',1,57,'denmark',0,0);
INSERT INTO language_20100105 VALUES ('nor','norvégien','norwegian','norsk','Vi kjenner bare de ting vi har gjort oss fortrolig med, sa reven. Menneskene har ikke lenger tid til &#xe5; bli kjent med noe. De kj&#xf8;per alt ferdig i butikken. Men siden det ikke finnes butikker som selger venner, har ikke menneskene venner lenger. Vil du ha en venn, s&#xe5; gj&#xf8;r deg fortrolig med meg!\r\n...\r\nAdj&#xf8;, sa reven. Jeg skal fortelle deg en hemmelighet. Den er veldig enkel. Man ser bare godt med hjertet. Det vesentlige er usynlig for &#xf8;yet.\r\n','','Kirsti Baggethun','',1,57,'norway',0,0);
INSERT INTO language_20100105 VALUES ('ukr','ukrainien','ukrainian','?????????? ????','- &#1052;&#1080; &#1079;&#1085;&#1072;&#1108;&#1084;&#1086; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1090;&#1080;&#1093;, &#1082;&#1086;&#1075;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1072;&#1108;&#1084;&#1086;, &#1087;&#1088;&#1086;&#1084;&#1086;&#1083;&#1074;&#1080;&#1083;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1051;&#1102;&#1076;&#1080;  &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1095;&#1072;&#1089;&#1091; &#1076;&#1083;&#1103; &#1087;i&#1079;&#1085;&#1072;&#1085;&#1085;&#1103; i&#1085;&#1096;&#1086;&#1075;&#1086;. &#1042;&#1086;&#1085;&#1080; &#1082;&#1091;&#1087;&#1091;&#1102;&#1090;&#1100; &#1075;&#1086;&#1090;&#1086;&#1074;i &#1088;&#1077;&#1095;i &#1091; &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i&#1074;. &#1040;&#1083;&#1077;, &#1086;&#1089;&#1082;i&#1083;&#1100;&#1082;&#1080;, &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i &#1076;&#1088;&#1091;&#1079;&#1103;&#1084;&#1080; &#1085;&#1077; &#1073;&#1091;&#1074;&#1072;&#1102;&#1090;&#1100;, &#1083;&#1102;&#1076;&#1080; &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1076;&#1088;&#1091;&#1079;i&#1074;. &#1071;&#1082;&#1097;&#1086; &#1090;&#1080; &#1073;&#1072;&#1078;&#1072;&#1108;&#1096; &#1084;&#1072;&#1090;&#1080; &#1076;&#1088;&#1091;&#1075;&#1072;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1077;.\r\n\r\n- &#1041;&#1091;&#1074;&#1072;&#1081;, &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;&#1072;  &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1052;i&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090; &#1090;&#1072;&#1082;&#1080;&#1081;. &#1042;i&#1085; &#1076;&#1091;&#1078;&#1077; &#1087;&#1088;&#1086;&#1089;&#1090;&#1080;&#1081;&nbsp;: &#1084;&#1080; &#1073;&#1072;&#1095;&#1080;&#1084;&#1086; &#1082;&#1088;&#1072;&#1097;&#1077; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1089;&#1077;&#1088;&#1094;&#1077;&#1084;. &#1053;&#1072;&#1081;&#1089;&#1091;&#1090;&#1090;&#1108;&#1074;i&#1096;&#1077; &#1079;&#1072;&#1083;&#1080;&#1096;&#1072;&#1108;&#1090;&#1100;&#1089;&#1103; &#1085;&#1077;  &#1074;&#1080;&#1076;&#1080;&#1084;&#1077; &#1076;&#1083;&#1103; &#1086;&#1095;&#1077;&#1081;.','','Ekateryna Kondrattsova','',1,71,'ukraine',0,0);
INSERT INTO language_20100105 VALUES ('gsw-ber','bernois','bern swiss german','berndütsch','Me kennt nume d Sache wo eim vertraut si, seit der Fuchs. D Mönsche hei ke Zyt me öppis z kenne. Sie choufe alli Sache fix fertig bim Händler. U Gschäft für Fründe git es nid, drum hei d Mönsche keni Fründe meh. We du e Fründ wosch, so gwinn mys Vertraue!\r\n...\r\nAdiö, seit der Fuchs. Da isch mys Gheimnis. Es isch ganz eifach!: guet gseht me nume mit em Härz, ds Wichtigste isch für d Auge unsichtbar.\r\n','','Greti Kläy','',1,72,'berne, Switzerland',0,0);
INSERT INTO language_20100105 VALUES ('gaw-bal','bâlois','basel swiss german','','Me kennt nur die Sache wo me zäämt, het der Fuggs gsait. D Mensche hän kai Zyt me, irgend ebbis kenne z leere. Sy kaufe alles feertyg in de Lääde. Aber wel\'s kainy Lääde git wo Frind verkaufe, hän d Mensche kainy Frind mee. Wenn du e Frind wottsch, denn zääm my!\r\n...\r\nAadie, het der Fuggs gsait. Doo isch no my Ghaimlis. S isch ganz aifach: me gseet numme mit em Häärz guet. S Wichtyge isch fir d Auge unsichtbaar.\r\n','','Tobias Brandenberger','',1,72,'basel, Switzerland',0,0);
INSERT INTO language_20100105 VALUES ('gaw-arg','argovien','aargau swiss german','','Mer kännt nume die Sache wo mer zèèmt, hèd de Fuchs gsäit. D Mäntsche händ nümme der Zit zum öppis känneleere. Si chauffed alls fixfertig im Laade. Wils aber ekäni Lääde für Fründ gid, händ d Lüüt ekä Fründe me. Wennd en Fründ wotsch, so tue mi zèème.\r\n\r\nLäbwool, hèd de Fuchs gsäit. Ich säge der mis Ghäimnis. Es ist ganz äifach: guet gsee cha mer nume mit em Hèèrz. Di wichtige Sache sind für d Auge unsichtbar.','','Beatrice Schmid','',1,72,'aargau, Switzerland',0,0);
INSERT INTO language_20100105 VALUES ('lat-med','latin médiéval','medieval latin','','Vulpes inquit: Nullas causas nosse valemus praeter eas cum quibus familiarescimus. Homines vero quicquam cognoscendi spatium non iam sumunt; sibi autem causas iamdudum confectas apud venditores comparant. Sed quoniam nequaquam exsisitit amicorum venditor, homines nunc amicis frui nequeunt. Tu igitur, si amico quodam frui vis, familiarem tibi me fac.\r\n\r\n(...) Vale, ait vulpes. Ecce arcanum, quod est simplicissimum, tibi patefacio: tantum sunt perspicaces cordis oculi. Econtra, carnales oculi summas causas cernere non valent.','','Jean-Yves et Lorraine Tilliette','',1,20,'',0,0);
INSERT INTO language_20100105 VALUES ('fro','français (ancien)','old french','','Choses ne sont congneües fors celles dont en s\'aüse, dist li golpis. Li home n\'ont ja loisir d\'aucune rien enquerre. Si vont les choses que cil manuevrent as marcheanz achetant. Or ne sont mie marcheant qui amis vendent, et n\'i a mais celui ne ait amis. Se vuels ami, acointe toi a moi !\r\n...\r\nDieus te gart, dist li golpis. Mes secrez est tels. Si est a entendre legiers : en ne voit si bien qu\'as ielz del cuer. Forz choses ne sont as ielz del chief veües.','','Olivier Collet','',1,50,'',0,0);
INSERT INTO language_20100105 VALUES ('gsw-sol','soleurois','solothurn swiss german','','','','Simone Übelhart','',1,72,'solothurn, Switzerland',0,0);
INSERT INTO language_20100105 VALUES ('gsw-zur','zurichois','zurich swiss german','züritüütsch','Mer känt nume d\'sache wo mer zäämt, hät de fuchs gsäit. D\'mänsche händ nüme ziit zum öppis käneleere. Si chaufed alles fixfertig im lade. Will\'s aber käi läde für fründ git, händ d\'lüüt käi fründ mee. Wänn d\'en fründ wotsch, dänn zääm mi.\r\n\r\nAdiö, hät de fuchs gsäit. Ich säge dir mis ghäimnis. Es isch ganz äifach: guet gsee cha mer nume mit em herz. Di wichtige sache sind für d\'auge unsichtbar.','','Juri Mengon','',1,72,'zurich, Switzerland',0,0);
INSERT INTO language_20100105 VALUES ('ara','arabe','arabic','','','arabe.jpg','','',1,62,'',0,0);
INSERT INTO language_20100105 VALUES ('arm','armenien','armenian','','','armenien.jpg','','',1,17,'armenia',0,0);
INSERT INTO language_20100105 VALUES ('sum','sumérien','sumerian','','','sumerien.jpg','Antoine Cavigneaux','',1,15,'',0,0);
INSERT INTO language_20100105 VALUES ('dar','dari','','','','dari.jpg','Mirwais Tayebi','',1,45,'iran',0,0);
INSERT INTO language_20100105 VALUES ('egy','égyptien','egyptian','','','egyptien.jpg','Michel Vallogia','',1,26,'egypt',0,0);
INSERT INTO language_20100105 VALUES ('tam','tamazight','','','','tamazight.jpg','Ekram Hamu Haddu','',1,25,'algeria',0,0);
INSERT INTO language_20100105 VALUES ('gra','grec ancien','old greek','','','grecancien.jpg','Paul Schubert','',1,47,'',0,0);
INSERT INTO language_20100105 VALUES ('enm','anglais (moyen)','middle english','','Man moste tamen that he kenne lists, quoth the fox. To witen mankind hath no tide. Men praty thingys from sellours beyen. But there is of freondes no marchande, so that man freondless now stode. If a freonde thou list, tame me!\r\n\r\nFarewel, quoth the fox. This is my cownsell. Seli it is: man can only see well thurgh the hert. To the eien the essencial is invisibull.','','Guillemette Bolens','',1,67,'',0,0);
INSERT INTO language_20100105 VALUES ('ang','anglais (vieil)','old english','','Man nat butan Þe man atemað,cwæð se fox. Menn nabbað hwile nawiht to witanne. Hie bycgað gegarwodu Þing fram ciepemannum. Ac swa na freonda ciepemann nis, menn nabbað na freondas. Gif Þu anne freond wilt, mec atema!\r\n\r\nWes Þu hal, cwæð se fox. Her is min diegolnes. Seo is swiðe anfeald: man siehð wel nefne mid heorte. Seo aweosung nis fram eagum sewenlic.','','Fabienne Michelet','',1,67,'',0,0);
INSERT INTO language_20100105 VALUES ('pol','polonais','polish','polski','- Poznaje sie&#x0328; tylko to, co sie oswoi - powiedzia&#x0142; lis. - Ludzie maja&#x0328; zbyt ma&#x0142;o czasu, aby cokolwiek poznac&#x301;. Kupuja&#x0328; w sklepach rzeczy gotowe. A poniewaz&#x307; nie ma magazynów z przyjació&#x0142;mi, wie&#x0328;c ludzie nie maja&#x0328; przyjació&#x0142;. Jes&#x301;li chcesz miec&#x301; przyjaciela, oswój mnie!\r\n\r\n- Z&#x307;egnaj - odpowiedzia&#x0142; lis. - A oto mój sekret. Jest bardzo prosty: dobrze widzi sie&#x0328; tylko sercem. Najwaz&#x307;niejsze jest niewidoczne dla oczy.','','??','http://www.odaha.com/littleprince.php?f=MalyKsiaze',1,69,'polska',0,0);
INSERT INTO language_20100105 VALUES ('ita-tos','toscan','tuscan','toscano','Si conosce solo le cose che s\'addomestica disse la volpe. Gl\'omini un\'hanno piú tempo di conosce\'nulla. Comprano cose bell\'e fatte nei mercati. Ma siccome un\'esiste punti mercati d\'amici, gl\'omini un\'hanno piú amici. Se tu voi un amico, addomesticami! \r\n\r\nAddio disse la volpe. Ecco il mio segreto. È di molto facile: solo si vede bene con il cuore. L\'essenziale è invisibile agl\'occhi.\r\n\r\n\r\n','','Roberta Orlandi','',1,52,'Tuscany',0,0);
INSERT INTO language_20100105 VALUES ('mlt','maltais','maltese','malti','Il-bniedem isir jaf biss bil-&#x0127;lejjaq li jimmansa hu, qal il-volpi. Il-bnedmin m’g&#x0127;ad g&#x0127;andhom &#x0127;in g&#x0127;al xejn. Jixtru kollox lest ming&#x0127;and tal-&#x0127;wienet. Izda billi ma jezistux bejjieg&#x0127;a tal-&#x0127;bieb, il-bnedmin ma baqg&#x0127;alhomx &#x0127;bieb. Jekk trid &#x0127;abib immansa lili!\r\n…\r\nSa&#x0127;&#x0127;iet, qal il-volpi. Is-sigriet tieg&#x0127;i huwa dan. Sigriet semplici &#x0127;afna: ma tistax tara sew jekk mhux bil-qalb. Dak li hu tassew ha’&#x0127;tiega ma tarahx be-g&#x0127;ajnejn. \r\n','','Toni Aquilina','',1,62,'malta',0,0);
INSERT INTO language_20100105 VALUES ('lav','letton','latvian','latvie&#x0161;u valada','M&#x0113; pasz&#x012B;stam tikai to, ko pieradin&#x0101;m, sac&#x012B;ja lapsa. Civ&#x0113;kiem vairs nav laika neko iepaz&#x012B;t. Vini nop&#x0113;rk pie tirgot&#x0101;ja jau visu gatavu. Bet, t&#x0101; k&#x0101; nav tirgot&#x0101;ju, kas p&#x0101;rdotu draugus, tad cilv&#x0113;kiem vairs nav draugu. Ja tu v&#x0113;lies draugu, pieradini mani! \r\n...\r\nArdievu, sac&#x012B;ja lapsa. L&#x016B;k, mans nosl&#x0113;pums, tas ir loti vienk&#x0101;r&#x0161;s: &#x012B;sti m&#x0113;s redzam tikai ar sirdi. B&#x016B;tiskais nav ac&#x012B;m saredzams. \r\n','','Ieva Lase','',1,58,'latvia',0,0);
INSERT INTO language_20100105 VALUES ('srd','sarde','sardinian','sardu','Non connoschimus atteru petzi chei sas cosas chi si addomestican, nait su mariane. Sos omines no an prus su tempus de connoscher. Dae sos bèndidores issos comporan sas cosas già fattas. Ma sicomente non s’accatana bèndidores de amicos, sos omines non an prus amicos. Si tue cheres unu amicu addomesticande unu!\r\n…\r\nAdiosu>>, nait su mariane. Ecco su secretu meu. Est meda fatzile: si biet bene petzi chin su coro. S’essentziale non si biet pompiandelu.\r\n','','Dino Manca','',1,53,'sardegna',0,0);
INSERT INTO language_20100105 VALUES ('ita-pie','piémontais','piemontese italian','','Noi conossoma mach le c”se ch’a ‘n rendo bindisp”st, a dis la volp.  J’”mini  a l’han pï nen ël temp ëd con”sse d’autr.  A cato le c”se gia faite dai marcand.  Ma dal moment che ij marcand amis a esisto nen, j’”mini a l’han pì gnun amis. S’it veule n’amis, it deuve domëstieme.\r\n…\r\nAdieu, a dis la volp. Veui confidete mè segret. A l’è motobin sempi: noi riessima a vëdde bin mach con ‘l cheur. L”n ch’a l’è essensial a l’è invisìbil con j’euj.\r\n','','Lidia Rubio et Cristina Tango','',1,52,'Piedmont, Italy',0,0);
INSERT INTO language_20100105 VALUES ('ita-pis','pisan','pisan italian','','E si  ‘onosce sortanto le ‘ose che ci fanno diventà  docili, dice la vorpe. La gente un ha più  ‘r tempo  di ‘onosce artro. Compra le  ‘ose già fatte da’  bottegai. Ma siccome un ci sono bottegai amici, la gente amici un n’ha più. Se voi un’amio, mi devi addomestià.\r\n…\r\nTi saluto dice la vorpe.   Ir mi’ segreto è questo. E’ semprice:  si riesce a vede’ bene solo cor cuore.  Quer che conta di più con l’occhi un si vede.\r\n','','Roberto Sbrana','',1,52,'pisa, Italy',0,0);
INSERT INTO language_20100105 VALUES ('scn','sicilien','sicilian','siciliano','Si canusciunu sulamenti ‘i cosi chi s’ammaistranu, dissi ‘a vurpi. L’omini nonhannu cchjù tempu di canusciri nenti. Ccattunu li cosi fatte sulamenti di mercanti. Ma siccomu non ci sunnu pi-nnenti mercanti d’amici, l’omini non hannu cchjù amici. Si tu voi n’amicu, ammaistrimi!\r\n…\r\nAddiu, dissi ‘a vurpi. Eccu u mè sigretu. E’ simplici-simplici: si vidi beni sulamenti cu cori. L’essenziali è nvisibili a-ll’occhj.\r\n','','Rossana Castano','',1,52,'sicilia',0,0);
INSERT INTO language_20100105 VALUES ('ita-vic','vicentin','vicentin italian','vicentino','Te pui conóssare solo queo che xe de faméja, ga dito la volpe. I òmeni no i ga pì tempo de conóssare gnente. Tuto queo che i ga i lo compra dai botegari. Ma sicome no ghe xe botegari che vende amissi, i òmeni no i ga pì amissi. Se ti te vui n’amico, fame diventar de faméja.\r\n…\r\nAdìo, ga dito la volpe. Ècolo kì el me segreto. El xe tanto fàssile: te ghe vidi ben solo col core. Queo che conta no te lo vidi mia coi oci.\r\n','','Luciano Zampese','',1,52,'vicenza, Italy',0,0);
INSERT INTO language_20100105 VALUES ('ast','bable/asturien','asturian','asturianu','Solu conocemos les coses que domesticamos, dixo el raposu. Los homes ya nun tien tiempu de domesticar nada. Mercan nes tiendes coses feches. Pero como nun hai nenguna tienda ónde vendan amigos, los homes ya nun tien amigos. Si quies un amigu, ¡domestícame! \r\n…\r\nAdiós, dixo el raposu. Direte un secreto. Ye muy sencillu: solu vese bien co’l corazón. Lo esencial resultayos invisible a los güeyos.\r\n','','Antonio D\'az Orejas','',1,48,'Asturias',0,0);
INSERT INTO language_20100105 VALUES ('cas','castuó','','castuó','Namág tenemug cunucencia de lag cosag que dumamug, iju el zorru. Lug’ombrig no tienin tiempu ya pa dumal nâ. Mercan en lag tiendag lag cosag’echag. Peru comu no ay tienda que varga ondi vendan amigug, lug’ombrig no tienen amigug yâ. Si quiég’un amigu, ¡d”mami!\r\n…\r\nAdióg, iju la zorra. Vu’a icilti un secretinu. Eg mu facilinu: namág se ve bien con’el curazón. Er meoyu eg’invisibli pa lus’ojug.\r\n','','Pablo Muñoz Regadera','',1,65,'Extremadura',0,0);
INSERT INTO language_20100105 VALUES ('pat-ben','patois de Benasque','','','Sólo coneixem les coses que adomem, ba di el raboso. Els omes ya no tienen tems de coneixer res. Compren a les tiendes coses fetes. Pero coma no yey niuna tienda agon benguen amigos, els omes ya no tienen amigos. Si ques un amigo, ¡adómame!\r\n…\r\nAdeu, ba di el raboso. Te diré un secreto. Ye mol sensillo: sólo se bei bé dan el corasón. Lo més importán no se bei dan els güells.\r\n','','José Mar\'a Mur','',1,65,'Benasque, Spain',0,0);
INSERT INTO language_20100105 VALUES ('chs','cheso','cheso','','Solamen conocemos las cosas que domesticamos, dicié lo raboso. Los hombres ya no han tiempo de domesticar cosa. Mercan en los comercios cosas feitas. Pero como no bi-há boticas en do se vendan amigos, los hombres  s’han quedáu sin amigos. Si quies un amigo... ¡habrás a domesticarme!\r\n…\r\nAdiós, dicié lo raboso. Te’n diré uno  de los míos secretos. Ye muy simple: sólo se i-veye bien con lo corazón. Lo esencial ye invisible a los güellos.\r\n','','Emilio Gastón','',1,65,'aragon',0,0);
INSERT INTO language_20100105 VALUES ('cat','catalan ','catalan','català','Només es coneixen les coses que es domestiquen -va dir la guineu. Els homes ja no tenen temps de conèixer res. Compren coses fetes als botiguers. Però com que no hi ha botiguers d’amics, els homes ja no tenen amics. Si vols un amic, domestica’m!\r\n…\r\nAdéu -va dir la guineu. Vet aquí el meu secret. És molt senzill: només s’hi veu bé amb el cor. L’essencial és invisible als ulls.\r\n','','Luis Puig et Jenaro Talens','',1,49,'Catalunya',0,0);
INSERT INTO language_20100105 VALUES ('glg','galicien','galician','gallego','Non se coñecen máis ca as cousas que se domestican, dixo o raposo. Os homes non teñen tempo para coñecer nada. Conseguen no mercado as cousas todas. Mais como non existe mercado de amigos, os homes non teñen amigos. Se ti queres un amigo, domestícame!\r\n…\r\nAdeus, dixo o raposo. Velaquí tes o meu segredo. Éche moi simple: só co corazón se mira ben. O esencial é invisíbel para os ollos.\r\n','','Antón Dobao et Chus Pato','',1,66,'Galicia',0,0);
INSERT INTO language_20100105 VALUES ('eus','basque','basque','euskara','Hezten diren gauzak baino ez dira ezagutzen, esan zuen azeriak. Gizonek ez dute ezer ezagutzeko denborarik. Merkatarienean guztiz egindako gauzak erosten dituzte. Baina adiskide-merkataririk ez dagoenez, gizonek ez dute adiskiderik. Adiskide bat nahi baduzu, hez nazazu!\r\n.....\r\nAdio, esan zuen azeriak. Hona hemen nire sekretua. Oso erraza da: bihotzez baino ez da ondo ikusten. Funtsezkoa ikustezina da begientzako.\r\n','','Rikardo Arregi D\'az de Heredia','',1,15,'Basque Country, Spain',0,0);
INSERT INTO language_20100105 VALUES ('pat-ann','patois du Val d\'Anniviers','','','Oung cognit què lè tzogè coung a adommécia, dèt lé rèingnar. Lé jhommo l’ann pa mé lo teng dè tzougea conirè. L’atzètonn dè tzogè totè prèchtè ou martchiann. Ma kommè la pa mè dè martchian d’amèk, lè jhommo l’ann pa mè d’amik. Ché tou vout oung amèk, dèt lè rèingnar, tou kountè l’affrarssiè !\r\n…\r\nAdiou, dèt lè rèingar. Tè dio mong sèkrèt. Lè frang cheingplo : oung vit bèing qu’avouè lo kour. Chènn què conntè frang nè pas péchiouc avouè lè jouèss.\r\n','','Jean-Jacques Zufferey','',1,51,'Anniviers, Switzerland',0,0);
INSERT INTO language_20100105 VALUES ('pat-htv','haut-valaisan','','','Mu chennt nummu d’Sache wa einum vertruwt sind, hett där Fugs gseit. D’Mänschu hennt kei Zit meh, eppis lehru z’chennu. Schi chöifunt ganz fertigi Sache in dä Gschäftu. Aber wills kei Gschäfti git wa mu cha Fräinda chäifu, hent d’Mänschu kei Fröinda meh. Wennt dü a Fröind willt, so tüö mich zähmu.\r\n…\r\nAde, hett där Fugs gseit. Hie isch mis Gheimnis. Äs isch ganz as eifachs: Mu gseht nummu mit dum Härz richtig. Z’wichtigschta chasch mit dä Öigu nit gseh.\r\n','','Christian Escher','',1,72,'brig-glis',0,0);
INSERT INTO language_20100105 VALUES ('fin','finnois','finnish','suomi','Me tunnemme vain ne, jotka kesytämme, kettu sanoi. Ihmisillä ei ole enää aikaa tuntea mitään. He ostavat tavarat valmiina kauppiailta. Mutta koska kauppiaat eivät myy ystäviä, ihmisillä ei ole enää ystäviä. Jos haluat ystävän, kesytä minut!\r\n…\r\n\r\nHyvästi, kettu sanoi. Kerron sinulle salaisuuteni, se on hyvin yksinkertainen: Vain sydämellä näkee hyvin. Tärkein on silmin näkymätöntä.\r\n','','Merja Torvinen','',1,63,'finland',0,0);
INSERT INTO language_20100105 VALUES ('scr','croate','croatian','hrvatski jezik','Poznamo samo stvari koje pripitomimo, re&#x010D;e lisica. &#X010C;ovjek nema vi&#x0161;e vremena da i&#x0161;ta upozna. Kupuje samo ve&#x0107; izra&#x0111;ene stvari kod trgovca. A kako vi&#x0161;e ne postoje trgovci koji su prijatelji, &#x010D;ovjek vi&#x0161;e nema prijatelja. Ako ho&#x0107;e&#x0161; prijatelja, pripitomi me!\r\n…\r\nZbogom, re&#x010D;e lisica. Evo moje tajne. Ona je vrlo jednostavna: vidi se dobro samo srcem. Najbitnije je o&#x010D;ima nevidljivo. \r\n','','Jasna Adler','',1,70,'croatia',0,0);
INSERT INTO language_20100105 VALUES ('rom','rromanes','rromanes','','Nané d&#x017E;indlé vavír kolá, fénciu karík savé san prisyklynó- phendziá líso. Manu&#x0161;á, nané lénde kiédy te syklión várso nevó. Joné kinén saró kerdó biknypáske. A paldavá, so nané adáso biknypnári, ke savõ sa&#x0161;tý te kinés malén, to i manu&#x0161;énde nané butedýr malá. Jé&#x015B;li kamés, kaj te javél túte jek mal, to prisykliákir man ke pe. \r\n...\r\nDevlésa-phendziá líso. Óke mro sekréto. Jou sýle izbít prósto: dykh jilésa. So sy andré na&#x0161;tý te udykhés jakhénca. \r\n','','Lev Tcherenkov et Stéphane Laederich','',1,46,'macedonia',0,0);
INSERT INTO language_20100105 VALUES ('slo','slovaque','slovak','sloven&#x010D;ina','Spoznávame len to, &#x010D;o si skrotíme, povedala lí&#x0161;ka. L’udia u&#x017E; nemajú &#x010D;as nie&#x010D;o spoznavát’. Kupujú si u obchodníkov celkom hotové veci. Niet v&#x0161;ak takých obchodníkov, &#x010D;o by predávali priatel’ov, preto l’udia priatel’ov u&#x017E; nemajú. Ak chce&#x0161; mat’ priatela skrot’ si ma. \r\n…\r\nZbohom, riekla lí&#x0161;ka. Tu je moje tajomstvo. Je vel’mi jednoduché: dobre vidíme iba srdcom. To hlavné je o&#x010D;iam neviditel’né. \r\n','','Mária Kovácová','corrigé par Vivien <ninien@zmail.sk>',1,69,'slovakia',0,0);
INSERT INTO language_20100105 VALUES ('cze','tchèque','czech','&#x010D;esky','Známe jen ty v&#x011B;ci, které si ocho&#x010D;íme, &#x0159;ekla li&#x0161;ka. Lidé u&#x017E; nemají &#x010D;as, aby n&#x011B;co poznávali. U obchodník&#x016F; nakupují v&#x011B;ci úlpn&#x011B; hotové. Ale proto&#x017E;e s p&#x0159;átelstvím se nekupc&#x010D;í, nemají p&#x0159;átel. Chce&#x0161;-lu p&#x0159;ítele, ocho&#x010D; si m&#x011B;!\r\n…\r\nSbohem, &#x0159;ekla li&#x0161;ka. Tady je mé tajemství, docela jednoduché: správn&#x011B; vidíme jen srdcem. To bytostné o&#x010D;i nespat&#x0159;í. \r\n','','Lubor Jílek','',1,69,'czech republic',0,0);
INSERT INTO language_20100105 VALUES ('lit','lituanien','lituanian','letuvi&#x0173 kalba','Susipa&#x017E;inti gali tik su tais dalykais, kuriuos prisijaukini, tarè lapè. &#X017E;mones neturi laiko ko nors pa&#x017E;inti. Jie nusiperka visk&#x0105; jau gatav&#x0105; i&#x0161; prekybinink&#x0173;. Bet kadangi nera prekybinink&#x0173; i&#x0161; kuri&#x0173; b&#x016B;t&#x0173; galima nusipirkti draug&#x0173;, tai draug&#x0173; &#x017E;mones ir neture. Jei nori tureti draug&#x0105;, prisijaukink mane! \r\n...\r\nLik sveikas, tare lape. &#X0161;tai kikia mano paslaptis. Ji labai paprasta: matyti galima tik &#x0161;irdimi. Tai, kas svarbiausia nematoma akimis. \r\n','','Vitautas Kauneckas','',1,58,'lithuania',0,0);
INSERT INTO language_20100105 VALUES ('wen','sorabe','','','Zeznaje&#x0161; jeno&#x017E; w&#x011B;cy, ki&#x017E; sej sklud&#x017A;i&#x0161;, rjeknje li&#x0161;ka. Lud&#x017A;o nimaja hi&#x017E;o &#x010D;as, n&#x011B;&#x0161;to na w&#x011B;domje bra&#x0107;. Kupuja zhotowjene w&#x011B;cy w kupnicach. Ale dokel&#x017E; njeje kupnicow, hd&#x017A;e&#x017A; mó&#x017E;e&#x0161; sej prrre&#x0107;elstwo kupi&#x0107;, nimaja hi&#x017E;o prrre&#x0107;elow. Hdy&#x017E; chce&#x0161; prrre&#x0107;ela, sklud&#x017A; mje! \r\n...\r\nAdej, rjeknje li&#x0161;ka. Tule je moje potajnstwo. Je cyle jednore: Jasnke wid&#x017A;i&#x0161; jeno&#x017E; z wutrobu. To najwa&#x017E;ni&#x0161;e wostanje wo&#x010D;omaj. ','','Róza Domascyna','',1,69,'Gorlitz, Germany',0,0);
INSERT INTO language_20100105 VALUES ('tgl','tagalog','tagalog','tagalog','\"Maaari lang nating maunawaan ang mga bagay na ating inaamo”, sabi ng alamid. Ang mga tao ay wala ng panahon para matuto. Bumibili sila ng mga bagay na handang gawa sa tindahan. Ngunit, dahil wala namang tindahan ng kaibigan, ang mga tao ay wala ng kaibigan. Kung gusto mo ng kaibigan, amuin mo ako.\r\n…\r\n“Paalam”, sabi ng alamid. Pakinggan mo ang aking sekreto. Napakasimple niya: sa pamamagitan lang ng puso na maaari tayong makakita ng mahusay. Ang pinakamahalaga ay hindi nakikita ng mata.\r\n','','Marjorie Goetschy','',1,40,'philippines',0,0);
INSERT INTO language_20100105 VALUES ('bra','portugais brésilien','brasilian','brasileiro','Só conhecemos as coisas que domesticamos, disse a raposa. Os homens já não têm tempo de domesticar nada. Compram nas lojas coisas feitas. Mas como não existe nenhuma loja onde se vendam amigos, os homens já não têm amigos. Se queres um amigo, domestica-me!\r\n…\r\nAdeus, disse a raposa. Dir-lhe-ei um segredo. É muito simples: só se enxerga bem com o coração. O essencial é invisível aos olhos.\r\n','','Prisca Agustoni','',1,66,'brazil',0,0);
INSERT INTO language_20100105 VALUES ('lun','lunfardo','','','“Uno solo manya el fato que acamala, bate el zorro. A los chochamu’ ya no les da el cuero. Hoy la merca se compra solo en los almacenes. Pero como no existe el comerciante gomía, los tipos se quedan en banda. Si querés un gomía, yugála y dame bola\r\n…\r\n-Adiós, dijo el zorro. Y guarda con mi deschave: solo se juna bien con el bobo. Lo que es bien debute es invisible pa’ los faroles.”\r\n','','Fernanda Nussbaum','',1,65,'',0,0);
INSERT INTO language_20100105 VALUES ('que','quechua','quechua','runa simi / kichwa','‘Riqsillanchis uywallasqanchista’, atuqqa nispa niykun. Runaqa manaña atinñachu uywayta. Anchaqa ruwasqakunata rantipayan. Masikuna mana rantinakuq chayri, manaña tarikunñachu. Masi masayta munanki chayqa, uywakullaway.\r\n…\r\n ‘Ripusaq!’, atuq nin. Pakanataqa risqayki manan sasachus kayta. Anchachus rikukun sunqullawan. Chaninqa ñawinchiswan mana rikukunchu\r\n','','Gladys Achahuanco et Julio Calvo','',1,44,'peru',0,0);
INSERT INTO language_20100105 VALUES ('pur','purepecha','purepecha','','“Imani ambek’uchisi mítek’a enkachi sesi p’interhek’a, isi uantaspti jiuatsi. K’uiripuecha nórekuksi antak’uarhesinti p’interheni ka p’arheni ampe, iámintu ampe piásintiksi. Kóruchka nónani ataranhatasinti pichakuecha (píchpiricha) jimposi k’uiripueha nóteru jatsiati píchpirichani. Ekari uékani jaka ma píchpirini, p’interhetakuarherini jínteni. \r\n…\r\nNipa-ia, arhispti jiuatsi. Arhintikuakakini ma ampe k’oru. Nómintu sani ts’unhapesti: mintsita jimpo kánekua sesi xarharasinti. Sánteru kéri ampakiti ampe no xarharasinti.” \r\n','','Pedro Márquez Joaquín','',1,44,'Michoacan, Mexique',0,0);
INSERT INTO language_20100105 VALUES ('cpf','créole ','french creole (pidgin)','','Réna a di konsa sèl bagay ou moun kab donté sé sa ou konnin.Leszom pa gen tan anko pou yo apran anyin. Yo achté bagay tou fèt nan min komèsan yo. Min kom machan zanmi pa esisté, lézom pa gin zanmi anko. Si ou vlé youn zanmi, sé pou donté mwen.\r\n…\r\n\r\nAdié Réna a di. Min sékrè pam. Li trè simp: Sé avek kèou ou kab wè pi bien. Bagay pi impotan invisib pou gé.\r\n','','Carl et Yasmina Tippenhauer','',1,42,'antilles françaises',0,0);
INSERT INTO language_20100105 VALUES ('roh-gri','romanche des grisons','romance (Grisun)','rumatsch grisun','„Ins conuscha mo quai ch’ins ha domestitgà“, ha ditg la vulp. Ils umans n’han betg pli temp d’emprender a conuscher insatge. Els cumpran las chaussas fatgas e finidas tar ils martgadants. Ma cunquai ch’i na dat nagins martgadants d’amis, n’han ils umans betg pli amis. Sche ti vuls in ami, alura domestitgescha mai!“\r\n…\r\n„Adia“, ha ditg la vulp. „E quai è mes misteri. El è fitg simpel: ins vesa bain mo cun il cor. L’essenzial na ves’ins betg cun ils egls.“\r\n','','Ursulina Monn','',1,51,'',0,0);
INSERT INTO language_20100105 VALUES ('roh-srm','romanche surmiran','romance (surmiran)','rumantsch surmiran','Ins amprenda a canoscher angal las tgossas tg’ins dumestegia, ò cuntinuo la golp. Igls carstgangs n’on betg ple peda d’amprender a canoscher ensatge. Els compran tot las tgossas bel fatgas e fittadas tigls martgadants. Ma i dat nigns martgadants d’ameis. Parchegl on igls carstgangs er nigns ameis. Sch’te vot en amei… alloura stost am dumestager!\r\n…\r\nAdia, ò raspundia la golp. E chegl è igl mies misteri, el è fitg simpel: angal cugl cor ins pogl veir andretg. Igl essenzial n’è betg visibel pigls îgls.\r\n','','Peder Cadotsch','',1,51,'',0,0);
INSERT INTO language_20100105 VALUES ('roh-val','romanche vallader','romance (vallader)','rumantsch vallader','I’s cugnuoscha be quai chi s’ha domestichà, ha dit la vuolp. Ils umans nu’s piglian plü peida dad imprender a cognuoscher alch. I cumpran la roba bell’e fatta pro’ls marchadants. Ma cun quai chi nu dà ingüns marchadants dad amis, nun han ils umans plü ingüns amis. Scha tü voust ün ami,s chi prouva da’m domestichar!\r\n…\r\nAdieu, ha dit la vuolp. Quist es meis misteri. El es fich simpel: i’s vezza bain be cul cour. L’essenzial nu’s vessa culs ögls.\r\n','','Jachen Curdin Arquint','',1,51,'',0,0);
INSERT INTO language_20100105 VALUES ('roh-put','romanche puter','romance (puter)','rumantsch puter','','','','',1,51,'',0,0);
INSERT INTO language_20100105 VALUES ('grn','guaraní','guaraní','avañe\'r&#x1EBD; ','Jaikuaa ñamomba’évante, he’i Aguara. Ava nomopa’&#x0169;-véima hembiapo osaite’o hagua, mba’eve ha avavépe. Oñemu jejapopyre ha, ndaipórire mamove angir&#x0169; ojogua hagua, ava ndorekovéo iñir&#x0169;rã. Reipotárõ nde rayhupararã, nde chemomba’eva erã. \r\n...\r\nAháma, he’i Aguara. Che ñe’e ñemíta ndéve, ndahasýi ikuaapy: ñane ñe’ã guivénte jahechapaporã. Hekopetegua tesáèe ndojechaukái. \r\n','','Ruth Mariela Mello-Wolter','',1,12,'paraguay',0,0);
INSERT INTO language_20100105 VALUES ('yor','yoruba','yoruba','yorùbá','A kìí mòn ju ohun tí a bá fi k&#xf3;&#x0329;’nim ni kòlòk&#xf2;&#x0329;l&#xf2;&#x0329; wí. Àwo&#x0329;n è níyàn ò ní àsìkò láti wadi nkankan mon. Rírà ni wo&#x0329;n &#x0144; ra ohungbogbo tí w&#xf3;&#x0329;n ti se pari l’&#xf3;&#x0329;d&#xf2;&#x0329; àwo&#x0329;n olówò. Sùgb&#xf3;&#x0329;n ní’gbàtí kòsí ìsò wò &#xf2;&#x0329; ré&#x0329;, awo&#x0329;n èèyàn ò ní oré&#x0329; m&#xf3;&#x0329;n. Tí o bá &#x0144; wá òré&#x0329;, &#x0144; jé&#x0329; máa k&#xf3;&#x0329; mí! \r\n…\r\nÓdì’gbà, ni kòlòk&#xf2;&#x0329;l&#xf2;&#x0329; wí. Èyí ni às&#x0329;írí mi. Èyí tí o ro&#x0329;rùn jù. A o le ríran àrídájú àyààfi pè&#x0329;lú  o&#x0329;kan. N kan àtàtà o see fi ojú lásán rí. \r\n','','Taoufik Owodjobi','',1,30,'Oshogbo , nigeria',0,0);
INSERT INTO language_20100105 VALUES ('bam','bambara','bambara','bamanankan','M&#x254;g&#x254; t&#x25b; fosi d&#x254;n fo i ye min kolon, kungo-wulunin ko ten.\r\nKo k’a ñini ka ko d&#x254;n, hadamaden senna ka telin o ma.\r\nF&#x25b;n lab&#x25b;nnenw ka ban, a b&#x25b; o de san u feerey&#x254;r&#x254;.\r\nTerifeerey&#x254;r&#x254; dun t&#x25b; yen, teri t&#x25b; hadamaden na bilen.\r\nN’i b&#x25b; teri dø f&#x25b;, ne kolon!\r\n\r\nA ko K’an b&#x25b;n. Ne ka gundo fil&#x25b; nin ye,\r\nA ka n&#x254;g&#x254;n kojugu: F&#x25b;n b&#x25b; ye ka ñ&#x25b; ni dusukun de ye.\r\nA kolomay&#x254;r&#x254; t&#x25b; ye ni ñ&#x25b; ye. \r\n','','Amadou Tamba DOUMBIA','',1,31,'mali',0,0);
INSERT INTO language_20100105 VALUES ('lad','judéo-espagnol','ladino','','','lad.jpg','Beatrice Schmid et Angel Berenguer','',1,48,'',0,0);
INSERT INTO language_20100105 VALUES ('test 2\r\n','test 2','oui','test','','','','',0,1,'',0,0);
INSERT INTO language_20100105 VALUES ('tat','tatar','tatar','tatarça','Kulga ijaläshkän äjberne genä belep bula,-dide tölke. \r\nKeshelärneng närsä dä bulsa belergä baskacha vakytlary juk. \r\nAlar kibettän äzer äjberlärne genä satyp alalar. \r\n\r\nä bit äzer duslar satylatyrgan kibetlär juk, shunga kürä keshelärneng duslary da bette.\r\nägär dä üzengä dus buldyrasyng kilsä, mine kulga ijaläshter.\r\n\r\n-Hush, - dide tölke. Menä minem sörem shul:ul bik gadyj:\r\n tik jöräk kenä tieshenchä kürä ala, chönki ing möhime küzdän jasherelgän.\r\n','','Gouldjikhan KACHAEVA','',1,36,'Tatarstan',0,0);
INSERT INTO language_20100105 VALUES ('akk','Akkadien','akkadian','akkadû','','','','',0,60,'',0,0);
INSERT INTO language_20100105 VALUES ('heb-old','hébreu ancien','old hebrew','','','','','',0,61,'',0,0);
INSERT INTO language_20100105 VALUES ('cym','gallois','welsh','cymraeg','','','','',0,55,'',0,0);
INSERT INTO language_20100105 VALUES ('uzb','ouzbek','','','Inson nimani qo’lga o’rgatsa oshanigina biladi, dedi tulki. Hozir odamlarning o’rganishga vaqti yo’q. Ular hamma narsaning tayyorini do’kondan sotib olishadi. Lekin do’stlarni sotadigan do’kon yo’qligi uchun, endi odamlarning do’stlari ham yo’q. Agar do’sting\r\nbo’lishini hohlasang unda meni qo’lga o’rgat !\r\n\r\n- Hayr, dedi tulki. Mana mening sirim. U juda oddiy: inson yolg’iz yuragi ila to’g’ri ko’ra oladi. Zotan eng muhim narsalar ko’zdan berkitilgan.','','Narghiza Kuldashova','',1,36,'uzbekistan',0,0);
INSERT INTO language_20100105 VALUES ('geo','géorgien','georgian','','','','','',0,34,'georgia',0,0);
INSERT INTO language_20100105 VALUES ('bul','bulgare','bulgarian','','&#1057;&#1072;&#1084;&#1086; &#1085;&#1077;&#1097;&#1072;&#1090;&#1072;, &#1082;&#1086;&#1080;&#1090;&#1086; &#1089;&#1080; &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080;&#1083;, &#1084;&#1086;&#1078;&#1077;&#1096; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1077;&#1077;&#1096; -  &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1061;&#1086;&#1088;&#1072;&#1090;&#1072; &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1074;&#1088;&#1077;&#1084;&#1077; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1103;&#1074;&#1072;&#1090; &#1085;&#1080;&#1097;&#1086;. &#1058;&#1077; &#1082;&#1091;&#1087;&#1091;&#1074;&#1072;&#1090; &#1086;&#1090;  &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080;&#1090;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1080; &#1085;&#1077;&#1097;&#1072;. &#1053;&#1086; &#1090;&#1098;&#1081; &#1082;&#1072;&#1090;&#1086; &#1085;&#1103;&#1084;&#1072; &#1085;&#1080;&#1082;&#1072;&#1082;&#1074;&#1080; &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080; &#1085;&#1072; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;, &#1093;&#1086;&#1088;&#1072;&#1090;&#1072;  &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;. &#1040;&#1082;&#1086; &#1080;&#1089;&#1082;&#1072;&#1096; &#1076;&#1072; &#1089;&#1080; &#1080;&#1084;&#1072;&#1096; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083; - &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080; &#1084;&#1077;!</p>\r\n<p>- &#1057;&#1073;&#1086;&#1075;&#1086;&#1084; - &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1045;&#1090;&#1086; &#1084;&#1086;&#1103;&#1090;&#1072; &#1090;&#1072;&#1081;&#1085;&#1072;. &#1058;&#1103; &#1077;  &#1084;&#1085;&#1086;&#1075;&#1086; &#1087;&#1088;&#1086;&#1089;&#1090;&#1072;: &#1085;&#1072;&#1081;-&#1093;&#1091;&#1073;&#1072;&#1074;&#1086;&#1090;&#1086; &#1089;&#1077; &#1074;&#1080;&#1078;&#1076;&#1072; &#1089;&#1072;&#1084;&#1086; &#1089;&#1098;&#1089; &#1089;&#1098;&#1088;&#1094;&#1077;&#1090;&#1086;. &#1053;&#1072;&#1081;-&#1089;&#1098;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1086;&#1090;&#1086; &#1077;  &#1085;&#1077;&#1074;&#1080;&#1076;&#1080;&#1084;&#1086; &#1079;&#1072; &#1086;&#1095;&#1080;&#1090;&#1077;.','','','',1,70,'bulgaria',0,0);
INSERT INTO language_20100105 VALUES ('per','persan','persian','','','','','',0,45,'',0,0);
INSERT INTO language_20100105 VALUES ('kur','kurde','kurdish','','','','','',0,45,'',0,0);
INSERT INTO language_20100105 VALUES ('mon','mongol','mongolian','','','','Amgalan Munkhdorj','',1,37,'mongolia',0,0);
INSERT INTO language_20100105 VALUES ('ewo','ewondo','ewondo','','','','','',0,33,'',0,0);
INSERT INTO language_20100105 VALUES ('lin','lingala','lingala','lingala','','','','',0,29,'',0,0);
INSERT INTO language_20100105 VALUES ('som','somalien','somali','','','','','',0,28,'',0,0);
INSERT INTO language_20100105 VALUES ('bas','basáa','basa','','','','','',0,33,'',0,0);
INSERT INTO language_20100105 VALUES ('ibo','igbo','igbo','igbo','','','','',0,30,'',0,0);
INSERT INTO language_20100105 VALUES ('fan','fang','fang','','','','','',0,33,'',0,0);
INSERT INTO language_20100105 VALUES ('swa','swahili','swahili','kiswahili','« Tunajua tu, vitu ambavyo tunaweza kunyanyasa », kasema mbwa mwitu. « Siku hizi, watu hawana wakati wa kujua chochote. Wao hununua bidhaa ambazo tayari zimeandaliwa wachukuzi. Na kwa vile hakuna wachukuzi wa urafiki, wao hawana marafiki. Kama kweli unataka rafiki, mimi hapa, nitupilie mbali upori wangu! \r\n\r\nKwaheri! » , kasema mbwa mwitu, « Siri yangu ni jambo rahisi sana. Ni roho zetu zinatuongoza kutafsiri mambo yale muhimu, ambayo hatuwezi kuona kwa macho yetu makavu. »\r\n','','Lilian Magonya','',1,29,'kenya',0,0);
INSERT INTO language_20100105 VALUES ('amh','amharic','amharic','amharic','','','','',0,62,'',0,0);
INSERT INTO language_20100105 VALUES ('luo','luo','luo','dholuo','','','','',0,4,'',0,0);
INSERT INTO language_20100105 VALUES ('ceb','cebuano','cebuano','Sinugboanon','','','','',0,40,'',0,0);
INSERT INTO language_20100105 VALUES ('vie','vietnamien','vietnamese','','','vie.jpg','','',1,39,'vietnam',0,0);
INSERT INTO language_20100105 VALUES ('kor','coréen','korean','','','','','',0,15,'south korea',0,0);
INSERT INTO language_20100105 VALUES ('chi','chinois','','','','chinois.jpg','','',1,38,'china',0,0);
INSERT INTO language_20100105 VALUES ('bos','bosniaque','bosnian','bosanski','\"Poznavati se mogu samo pripitomljene stvari\", re&#x010D;e lisica. \"Ljudi vi&#x161;e nemaju vremena da upoznaju ne&#x161;to novo. Oni kupuju ve&#x107; napravljene stvari kod prodava&#x010D;a. Ali, po&#x161;to ne postoji osoba koja prodaje prijatelje, ljudi, zapravo, nemaju prijatelja. Ako ho&#x107;e&#x161; da ima&#x161; prijatelja onda pripitomi mene ! »\r\n„Zbogome“, re&#x010D;e lisica. „Evo je moja tajna. Jednostavna je: dobro se mo&#x017E;e vidjeti samo. Sa srcem. Ono najva&#x017E;nije je nevidlijivo za o&#x010D;i.”\r\n','','Selma Avdic','',1,70,'bosnia',0,0);
INSERT INTO language_20100105 VALUES ('jam','créole jamaïcain','','','\"Wi ongle riili kyan nuo bout di ting-dem wa wi tek fi-wi han breik iin\", Faks se. \"Man no ha no taim agein fi nuo bout notn. Tidei, dem jos a bai wa di higla-dem a sel. Bot higla no sel fren, so dem no kiip fren agein. Ef yu waan waan fren, yu mos breik mi iin!\".\r\n\r\n\"Mi gaan\" Faks se \"An sii fi-mi siicrit ya... i wel simpl : wi ongl sii gud wid fi-wi haat. Wa riili mata, yu no tek aiy sii i\"','','Stéphanie Durrleman-Tame','',1,73,'jamaica',0,0);
INSERT INTO language_20100105 VALUES ('cos','corse','','','Cunnosce, si cunnoscenu e cose chì omu ammansa, disse a volpe. L\'omi ùn anu più tempu da cunnosce nulla. Compranu cose fatte è lestre ind\'è i marcanti. Ma ùn ci ne hè marcanti d\'amichi è elli amichi ùn ne anu più. S\'è tù voli un amicu, ammansa à mè.\r\n\r\nAddiu disse a volpe. Eccuti u me sicretu. Hè bellu semplice : vede si vede bè cù u core. I punti di primura l’ochji ùn li ponu vede.\r\n\r\n','','Santu Casta','',1,52,'corsica',0,0);
INSERT INTO language_20100105 VALUES ('nsd','bavarois','bavarian','bayrisch','Du kennst ja nua dees, wo\'st amoi zaehmt host, hot da Fux gsogt.\r\nD\'Leit ham ja koa Zeit mea, dass wos kenna leana. De kaffa oiss scho\r\nfeate gmacht bei am Hendla. Awa wei hoit koana mid aam Freind handln\r\nwui, hoot koana an Freind mea. Wann\'st oiso aan Freind hom wuisst,\r\nmuasst mi hoit zaehma.\r\n\r\nPfiad di! hot da Fuchs gsogt. Und des is mei G\'hoamnis - s\'is awa recht\r\noafach: du koo\'st nua mid\'m Heazn guat seng. Oiss, wos wichtig is,\r\nis mid de Augn ned zum segn!\r\n','','Gabi Waltermann','',1,72,'bavière',0,0);
INSERT INTO language_20100105 VALUES ('hin','hindi','','','','hindi.jpg','D & K Mathur / K. Asthana','deepak.mathur@mageos.com',1,46,'india',0,0);
INSERT INTO language_20100105 VALUES ('tok','toki pona','','','soweli li toki e ni: jan li sona taso e ijo pi pali pona. tenpo ala la jan li ken sona. jan li jo mani e ijo sama lon jan pana mani. jan pana mani pi jan pona li lon ala la jan pona. sina wile e jan pona la o pali pona e mi. soweli li toki e ni: mi tawa. ni li pilin mi li pona sona. jan li lukin pona taso kepeken pilin. oko li lukin ala e lon.','','Mathieu Fraikin','',1,14,'',0,0);
INSERT INTO language_20100105 VALUES ('fur','frioulan','friulan','furlan','\"A cognossin nome chel ch\'a àn dumiesteât\", e dîs la bolp. - I oms a no àn plui timp di cognossi nuie. A comprin tai negozis cjossis za prontis. Ma mediant che a no esistin marcjadants di amîs, i oms a no àn plui amîs. Se tu vuelis un amì, alore dumiesteimi.\r\n\r\n\"Cungjò\", e dîs la bolp. \"E ve ca il gno segret. Al è une vore sempliç: a viodin ben nome cul cûr. L\'essenziâl al è invisibil ai voi.\"','','Mathieu Fraikin','',1,51,'udine',0,0);
INSERT INTO language_20100105 VALUES ('wln','wallon','Walloon','walon','On ni conèt ki les sacwès k\' on atraite, dijha li rnåd. Les omes n\' ont pus pont d\' timps po rén conèche. Is achetenut des sacwès totès fwaites amon les mårtchands. Mins come gn\' a pont di mårtchands d\' amis, les omes n\' ont pus pont d\' amis. Si vos vloz on ami, atraitîz-mi !\r\n\r\nA Diè, dijha li rnåd. Voci mi sicret. Il est foirt simpe : on ni voet bén k\' avou si keur. Li principal est-invisibe po les îs.','','Maisse Arsouye','',1,50,'namur',0,0);
INSERT INTO language_20100105 VALUES ('kot','kotava','','','Va tulegovitan plek yo anton grupet, bresitol kalir. Ayik ta kona grupera mea\r\nugaldir. Dene dolekik va ixam varon iayan plek yo luster. Vexe oye da me tir\r\ndolekik va nik acum ayik va nik mea dir. Ede va nik kuranil, va jin tulegovital\r\n!\r\n\r\nDone, bresitol kalir. Batse jinafa birga. Opelapafa : kan takra anton winhit.\r\nBenele kan iteem tir merowine.','','Philippe G.','',1,14,'',0,0);
INSERT INTO language_20100105 VALUES ('occ-oulx','occitan d\'Oulx','','','Nou couneison mac lâ choza quë nz\'avon aprivazà, à dí \'l reinâ. Louz omme i l\'on pâ mai \'l ton ëd couneissë ron. I l\'achëtton da lou marchan \'d choza jó feita. Ma, pisquë la lh\'à pâ \'d marchan d\'amisse, louz omme i l\'on pâ mai d\'amisse. S\'ou vouré in amiss, aprivazëmmë!\r\nAdieu, ou lh\'à dí \'l reinâ. Voualà moun sëcré. Ou l\'i fran sinplë: la s\'vé bion mac bou \'l ceur. L\'essansièl, ou l\'i invizibblë për louz iooû. ','','Giovanna Jayme','from nikura babel, Prince dans le patois occitan d\'Oulx (Italie, près de Briançon), écrit en graphie \"Escolo dóou Po\".',1,49,'oulx',0,0);
INSERT INTO language_20100105 VALUES ('occ-via','occitan viaran','','','Nou counishën puè que la chòuza que nou z-avën aprivouazè, o di l\'rirar. Lou z-òme i z-an pa mai l\'tën d\'counètre pa ren. I z-achatan òu marchan dë chòuza jo touta facha. Mè, coumo ou l\'i o pa d\'marchan d\'ami, lou z-òme i z-an pa mai d\'ami. S\'tu voua z-un ami, aprivouaza-më!\r\nAr\'vèire, ou l\'o di l\'rirar. \'Co l\'i moun sëcrë. Ou l\'i bën simple: la s\'vèi bën qu\'ëmbë l\'cor. L\'eshënshiè, ou l\'i invizible pèr lou z-uòu. ','','Nikura','from babel, dans le patois occitan de mon village (patois viaran, langue en train de mourir), en Briançonnais, mais côté français, plus ou moins avec la même graphie mais allégée. (que occ-oul)',1,49,'',0,0);
INSERT INTO language_20100105 VALUES ('occ-gav','gavot','','Òm coneisse que las chausas qu\'òm aprivèisa, dissèc lo reinart. Los òmes an mai lo temps de pas ren coneisser. Achaton de chausas totas fachas ves los marchands. Mas bòrd qu\'i a pas de marchands d\'amics, los òmes an pas mai d\'amics. Se vòles un amic, apri','','','Nikura (Babel)','En occitan alpin (ou gavot) de la zone de Gap, cela donnerait ceci. La graphie choisie est celle de l\'occitan standard cette fois-ci, en essayant de retranscrire un langage soutenu.',1,49,'gap, france',0,0);
INSERT INTO language_20100105 VALUES ('kir','kirghize','Kirghiz','','<pre>&#1041;&#1080;&#1088;&#1257;&#1085;&#1199; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1089;&#1257;&#1187;, &#1086;&#1096;&#1086;&#1085;&#1091; &#1075;&#1072;&#1085;&#1072; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257; &#1084;&#1199;&#1084;&#1199;&#1082;&#1199;&#1085; - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;\r\n&#1040;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1072; &#1073;&#1080;&#1088;&#1085;&#1077;&#1088;&#1089;&#1077;&#1085;&#1080; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257;, &#1091;&#1073;&#1072;&#1082;&#1099;&#1090;&#1072;&#1088;&#1099; &#1078;&#1086;&#1082;. &#1040;&#1083;&#1072;&#1088; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1085; &#1076;&#1072;&#1103;&#1088;\r\n&#1073;&#1091;&#1102;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1099;&#1096;&#1072;&#1090;. &#1041;&#1080;&#1088;&#1086;&#1082;, &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1076;&#1091; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1091;&#1091;&#1075;&#1072; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1088;\r\n&#1078;&#1086;&#1082; &#1075;&#1086;, &#1072;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099;&#1085; &#1076;&#1072; &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1091; &#1078;&#1086;&#1082; &#1073;&#1086;&#1083;&#1091;&#1087; &#1082;&#1072;&#1083;&#1076;&#1099;. &#1069;&#1075;&#1077;&#1088;&#1076;&#1077; &#1089;&#1077;&#1085;&#1076;&#1077; &#1076;&#1086;&#1089;\r\n&#1073;&#1086;&#1083;&#1075;&#1086;&#1085;&#1076;&#1091; &#1082;&#1072;&#1072;&#1083;&#1072;&#1089;&#1072;&#1187;, &#1089;&#1077;&#1085; &#1084;&#1077;&#1085;&#1080; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1199;&#1087; &#1072;&#1083;!<br>\r\n- &#1050;&#1086;&#1096;, - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;. - &#1052;&#1099;&#1085;&#1072; &#1084;&#1077;&#1085;&#1080;&#1085; &#1089;&#1099;&#1088;&#1099;&#1084;. &#1040;&#1083; &#1072;&#1073;&#1076;&#1072;&#1085; &#1078;&#1257;&#1085;&#1257;&#1082;&#1257;&#1081;:\r\n&#1069;&#1187; &#1084;&#1072;&#1072;&#1085;&#1080;&#1083;&#1199;&#1199; &#1082;&#1257;&#1079;&#1076;&#1257;&#1085; &#1078;&#1199;&#1084;&#1199;&#1083;&#1199;&#1199;.','','','',1,36,'Kirghizistan',0,0);
INSERT INTO language_20100105 VALUES ('tur','turc','turkish','türkçe','&#X0130;nsan ancak evcille&#x015F;tirirse anlar, dedi tilki. &#X0130;nsanlar&#x0131;n art&#x0131;k anlamaya zamanlar&#x0131; yok. Dükkânlardan her istediklerini sat&#x0131;n al&#x0131;yorlar. Ama dostluk sta&#x0131;lan bir dükkân olmad&#x0131;&#x011F;&#x0131; i&#x00E7;in dostlar&#x0131; yok art&#x0131;k. E&#x011F;er dost istiyorsan, beni evcille&#x015F;tir !\r\n\r\nHos&#x00E7;akal, dedi tilki. &#X0130;&#x015F;te sana dir s&#x0131;r, &#x00E7;ok basit bir &#x015F;ey : &#x0130;nsan yaln&#x0131;z  yüre&#x011F;iyle do&#x011F;ruyu görebilir. As&#x0131;l görülmesi gerekeni gözler göremez.','','Gonca Celik','',1,36,'turkey',0,0);
INSERT INTO language_20100105 VALUES ('est','estonien','estonian','eesti','Väike prints\r\n\r\n\"Tuntakse ainult neid asju, mida taltsutatakse, \" ütles rebane.\r\nInimestel pole enam aega midagi tundma õppida. Nad ostavad kõiki asju valmis kujul kaupmeeste käest. Ja kuna ei ole kaupmehi, kes sõpru müüksid, siis polegi inimestel enam sõpru. Kui tahad endale sõpra, siis taltsuta mind !\r\n\r\n\" Jumalaga, \" ütles rebane. \" Siin on minu saladus. See on väga lithne : ainult südamega näed hästi. Kõige tähtsam on silmale nähtamatu. \"\r\n','','Ott Ojamaa','',1,63,'estonia',0,0);
INSERT INTO language_20100105 VALUES ('gre','grec','greek','E&lambda;&lambda;&nu;&rho;&xi;&kappa;&alpha;','&Delta;&epsilon;  &gamma;&nu;&omega;&rho;&#943;&zeta;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf; &pi;&alpha;&rho;&#940; &#972;,&tau;&iota; &epsilon;&xi;&eta;&mu;&epsilon;&rho;&#974;&nu;&epsilon;&iota;, &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &epsilon;&upsilon;&kappa;&alpha;&iota;&rho;&omicron;&#973;&nu;  &pi;&iota;&alpha; &nu;&alpha; &mu;&#940;&theta;&omicron;&upsilon;&nu; &tau;&#943;&pi;&omicron;&tau;&epsilon;. &Tau;&rsquo;&alpha;&gamma;&omicron;&rho;&#940;&zeta;&omicron;&upsilon;&nu; &#972;&lambda;&alpha; &#941;&tau;&omicron;&iota;&mu;&alpha; &alpha;&pi;&#972; &tau;&omicron;&upsilon;&sigmaf; &epsilon;&mu;&pi;&#972;&rho;&omicron;&upsilon;&sigmaf;. &Kappa;&alpha;&theta;&#974;&sigmaf; &#972;&mu;&omega;&sigmaf; &delta;&epsilon;&nu;  &upsilon;&pi;&#940;&rho;&chi;&omicron;&upsilon;&nu; &delta;&iota;&#972;&lambda;&omicron;&upsilon; &#941;&mu;&pi;&omicron;&rho;&omicron;&iota; &phi;&#943;&lambda;&omega;&nu;, &omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &#941;&chi;&omicron;&upsilon;&nu; &pi;&iota;&alpha; &phi;&#943;&lambda;&omicron;&upsilon;&sigmaf;. &Alpha;&nu; &theta;&#941;&lambda;&epsilon;&iota;&sigmaf; &#941;&nu;&alpha;  &phi;&#943;&lambda;&omicron;, &epsilon;&xi;&eta;&mu;&#941;&rho;&omega;&sigma;&#941; &mu;&epsilon; !\r\n(...)\r\n&#904;&chi;&epsilon;  &gamma;&epsilon;&iota;&alpha;! &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&rho;&#943;&sigma;&tau;&epsilon; &tau;&omicron; &mu;&upsilon;&sigma;&tau;&iota;&kappa;&#972; &mu;&omicron;&upsilon;. &Epsilon;&#943;&nu;&alpha;&iota; &pi;&omicron;&lambda;&#973; &alpha;&pi;&lambda;&#972; : &delta;&epsilon; &beta;&lambda;&#941;&pi;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf;  &kappa;&alpha;&lambda;&#940; &pi;&alpha;&rho;&#940; &mu;&omicron;&nu;&#940;&chi;&alpha; &mu;&epsilon; &tau;&eta;&nu; &kappa;&alpha;&rho;&delta;&iota;&#940;. &Eta; &omicron;&upsilon;&sigma;&#943;&alpha; &epsilon;&#943;&nu;&alpha;&iota; &alpha;&#972;&rho;&alpha;&tau;&eta; &gamma;&iota;&alpha; &tau;&alpha; &mu;&#940;&tau;&iota;&alpha;.','','Michel Lassithiotakis et Anastasia Lazaridis','',1,47,'greece',0,0);
INSERT INTO language_20100105 VALUES ('vls','flamand occidental','West Flemish','Vlaemsch/Vlaams','Ze kenn oljinne die dingn woamee da ze echt vertrouwd zin, zegt den vos. De minsn eyn gin tid mji om echt te zien. Ze kwopn dingn kant en kloar bi nen handeloare. Mo verkwopers van moaten, da bestoa nie, en dus eyn de minsn gin moaten mji. Aj ne moat wilt, moej mi temn!...\r\nSalu, zegt den vos, Ier is min geheim. T\'i vrji jinvoudig: Goe zien kundje oljinne me jen herte. Et weznlukke is onzichtboar vo jun wogn.\r\n\r\n','','Sam Huyzentruyt','vls=iso3 gem=iso',1,68,'gent',0,0);
INSERT INTO language_20100105 VALUES ('urd','ourdou','Urdu','','','urdu.gif','Zainab Ahmed','',1,46,'pakistan',0,0);
INSERT INTO language_20100105 VALUES ('wuu-shangai','shangaïen','Shanghaines','zanhererau','','shangai.jpg','Enchao Lu','iso3=wuu iso2=chi / zho',1,38,'shangai',0,0);
INSERT INTO language_20100105 VALUES ('lao','laotien','lao','','','laotien.gif','','V. Siriyasack siriyas0@etu.unige.ch',1,15,'laos',0,0);
INSERT INTO language_20100105 VALUES ('kab','kabyle','kabyle','taqbaylit','Ye nnad izirthi, ne tsakey kan ayen swayes in wulef. Imdhanen ur san ara y wekth i thmusni. Tsarend kan ayen i hgan siheraren. Sgwaken n qethwan iheraren i znuzen thadukli, imdhanen ur san ara imdukwal. Ma the vgher amdakwel, alesiyé.\r\nYe nnad izirthi qim dhi le hna. Atsan serya inu, dhan i sehyen. Tha mughli nel kayen tseqed sgul. Ey ni lan dhe ssah its wafer af allen\r\n','','','khlifa ouidr houidir@hotmail.com de la région de Beni-Douala, Tizi Ouzou :',1,25,'Kabylie',0,0);
INSERT INTO language_20100105 VALUES ('nan','min de Taiwan','Taiwan Min','','','','','',1,38,'taiwan',0,0);
INSERT INTO language_20100105 VALUES ('khm','khmer','','','','khmer.jpg','Zamin Saxer','',1,39,'Cambodge',0,0);
INSERT INTO language_20100105 VALUES ('isl','islandais','icelandic','','Maður þekkir ekki annað en það, sem maður temur, sagði refurinn. Mennirnir hafa ekki lengur tíma til að þekkja neitt. Þeir kaupa tilbúna hluti hjá kaupmanninum. En þar sem ekki eru til kaupmenn, sem versla með vini, eiga menn ekki lengur neina vini. Ef þú vilt eiga vin, Þá temdu mig!\r\n\r\nVertu sæll, sagði refurinn. Hér er leyndarmálið mitt. Það er mjög einfalt: maður sér ekki vel nema með hjartanu. Það mikilvægasta er ósýnilegt augunum.\r\n','','Þórarinn Björnsson','envoyé par cjorg@infomaniak.ch',1,57,'iceland',0,0);
INSERT INTO language_20100105 VALUES ('aze','azeri','Azerbaijani','Az?rbaycan','','azeri.jpg','','from patoche',1,36,'azerbaijan',0,0);

--
-- Table structure for table `ling_books`
--

CREATE TABLE ling_books (
  titre varchar(255) NOT NULL default '',
  auteur varchar(255) NOT NULL default '',
  editeur varchar(255) NOT NULL default '',
  `date` varchar(255) NOT NULL default '',
  lieu varchar(255) NOT NULL default '',
  cote varchar(255) NOT NULL default '',
  acquisition varchar(255) NOT NULL default '',
  acquisition_statut enum('proposé','commandé','acquis') NOT NULL default 'proposé',
  collection varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ling_books`
--

INSERT INTO ling_books VALUES ('Conversational style','Tannen, Deborah','','','','I3*TAN Con','2005-12-22','acquis','');
INSERT INTO ling_books VALUES ('Context as other minds','Givon, T.','','','','I3*GIV Con','2005-12-22','acquis','');
INSERT INTO ling_books VALUES ('Regularity in semantic change','Traugott, Elizabeth Closs.','','','','D7*TRA Reg','2005-12-22','acquis','');
INSERT INTO ling_books VALUES ('Politeness in Europe','ed. by Leo Hickey','','','','G4f*Pol HIC','2005-12-22','acquis','');
INSERT INTO ling_books VALUES ('Sémantique et corpus','sous la dir. de Anne Condamines','','','','D7*Sém CON','2005-12-22','acquis','');
INSERT INTO ling_books VALUES ('Artificial intelligence in second language learning','Dodigovic, Marina','Multilingual Matters','2005','Clevedon','L12*DOD Art','','acquis','');
INSERT INTO ling_books VALUES ('The innate mind','Carruthers, Peter','Oxford Univ. Press','2005','Oxford','H4*Inn CAR','2006/01','acquis','');
INSERT INTO ling_books VALUES ('La voix','Cornut, Guy','Presses univ. de France','2004','Paris','D2a*COR Voi','2006/01','acquis','');
INSERT INTO ling_books VALUES ('Le guide de la voix','Ormezzano, Yves','O. Jacob','2000','Paris','D2a*ORM Gui','2006/01','acquis','');
INSERT INTO ling_books VALUES ('Alternative histories of English','Watts, Richard','Routledge','2002','London','F1*Alt WAT','2006/01','acquis','');
INSERT INTO ling_books VALUES ('A student\'s introduction to English grammar','Huddleston, Rodney','Cambridge Univ. Press','2005','Cambridge','D1b*Ang HUD','2006/01','acquis','');
INSERT INTO ling_books VALUES ('English corpus linguistics','Meyer, Charles','Cambridge Univ. Press','2002','Cambridge','L8a*MEY Eng','2006/01','acquis','');
INSERT INTO ling_books VALUES ('The handbook of historical linguistics','Joseph, Brian D.','Blackwell','2005','Oxford','E1*Han JOS','2006/01','acquis','');
INSERT INTO ling_books VALUES ('The history of English','Singh, Ishtla','Hodder Arnold','2005','London','F1*SIN His','2006/01','acquis','');
INSERT INTO ling_books VALUES ('Ecrits de linguistique générale','Saussure, Ferdinand de','Gallimard','2002','Paris','C3*SAU Ecr','2006/01','acquis','');
INSERT INTO ling_books VALUES ('Introduction à la linguistique contemporaine','Moeschler, Jacques','A. Colin','2005','Paris','C1*MOE Int','2006/01','acquis','');
INSERT INTO ling_books VALUES ('The grammar of genes','López Garcia, Angel','P. Lang','2005','Bern','C6*LOP Gra','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Discourse markers across languages','Siepmann, Dirk','Routledge','2005','London','I3*SIE Dis','2006/02','acquis','');
INSERT INTO ling_books VALUES ('L\'analyse des actions et des discours en situation de travail','Filliettaz, Laurent','Peeters','2005','Louvain-la-Neuve','I3*Ana FIL','2006/02','acquis','');
INSERT INTO ling_books VALUES ('A course in minimalist syntax','Lasnik, Howard','Blackwell','2005','Malden','D6a*LAS Cou','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Simpler syntax','Culicover, Peter W.','Oxford Univ. Press','2005','Oxford','D6a*CUL Sim','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Syntax and variation','Cornips, Leonie','J. Benjamins','2005','Amsterdam','D6a*Syn COR','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Linguistic variation in the Shakespeare corpus','Busse, Ulrich','J. Benjamins','2002','Amsterdam','E1*BUS Lin','2006/02','acquis','');
INSERT INTO ling_books VALUES ('La phonétique','Vaissière, Jacqueline','Presses univ. de France','2006','Paris','D2a*VAI Pho','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Vowels and consonants','Ladefoged, Peter','Blackwell','2005','Malden','D2a*LAD Vow','2006/02','acquis','');
INSERT INTO ling_books VALUES ('The changing face of corpus linguistics','Renouf, Antoinette','Rodopi','2006','Amsterdam','L8a*Cha REN','2006/02','acquis','');
INSERT INTO ling_books VALUES ('La grammaire graduelle à une virgule près','Pop, Liana','P. Lang','2005','Bern','I3*POP Gra','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Japanese language, gender, and ideology','Okamoto, Shigeko','Oxford Univ. Press','2004','New York','G4g*Jap OKA','2006/02','acquis','');
INSERT INTO ling_books VALUES ('The internal organization of phonological segments','Van Oostendorp, Marc','Mouton de Gruyter','2005','Berlin','D3a*Int VAN','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Ellipsis and focus in generative grammar','Winkler Susanne','Mouton de Gruyter','2005','Berlin','D6a*WIN Ell','2006/02','acquis','');
INSERT INTO ling_books VALUES ('Theta theory','Haiden, Martin','Mouton de Gruyter','2005','Berlin','D8*HAI The','2006/02','acquis','');
INSERT INTO ling_books VALUES ('A minimalist approach to scrambling','Karimi, Simin','Mouton de Gruyter','2005','Berlin','D6c*KAR Min','2006/02','acquis','');
INSERT INTO ling_books VALUES ('The free word order phenomenon','Sabel, Joachim','Mouton de Gruyter','2005','Berlin','D6a*Fre SAB','2006/02','acquis','');
INSERT INTO ling_books VALUES ('La syntaxe au coeur de la grammaire : recueil offert en hommage pour le 60e anniversaire de Claude Muller','Lambert, Frédéric','Presses univ. de Rennes','2005','Rennes','A5*\"MUL\" Syn','2006/03','acquis','(Rivages linguistiques)');
INSERT INTO ling_books VALUES ('Minimalist syntax','Radford, Andrew','Cambridge Univ. Press','2005','Cambridge','D6c*RAD Min','2006/03','acquis','(Cambridge textbooks in linguistics)');
INSERT INTO ling_books VALUES ('Manipulation and ideologies in the Twentieth Century','Saussure, Louis de','J. Benjamins','2005','Amsterdam','G4e*Man SAU','2006/03','acquis','(Discourse approaches to politics, society and culture ; vol. 17)');
INSERT INTO ling_books VALUES ('The Mouton interactive introduction to phonetics and phonology [CD-ROM]','Handke, Jürgen','Mouton de Gruyter','2000','Berlin','BFLI 139 (vitrine)','2006/06','acquis','');
INSERT INTO ling_books VALUES ('Fluency and its teaching','Guillot, Marie-Noëlle','Multilingual Matters','1999','Clevedon','K1*GUI Flu','2006/05','acquis','(Modern languages in practice)');
INSERT INTO ling_books VALUES ('Aspects of English negation','Iyeiri, Yoko','J. Benjamins','2005','Amsterdam','D6c*Asp IYE','2006/05','acquis','');
INSERT INTO ling_books VALUES ('The syntax of Old Norse','Faarlund, Jan Terje','Oxford Univ. Press','2004','','D6c*FAA Syn','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Second language research','Mackey, Alison','L. Erlbaum','2005','Mahwah','H2*MAC Sec','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Minimalist syntax','Hendrick, Randall','Blackwell','2003','Malden','D6a*Min HEN','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Pragmatique des figures du discours','Bonhomme, Marc','H. Champion','2005','Paris','I3*BON Pra','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Lectures de l\'Atlas linguistique de la France de Gilliéron et Edmont','Le Dû, Jean','CTHS','2005','Paris','I1*LED Lec','2006/05','acquis','');
INSERT INTO ling_books VALUES ('L\'énigme indo-européenne','Renfrew, Colin','Flammarion','1990','Paris','C9*REN Eni','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Les origines de la vie','Maynard Smith, John','Dunod','2000','Paris','C9*MAY Ori','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Qui sommes-nous ?','Cavalli-Sforza, Luca','Flammarion','1997','Paris','C6*CAV Qui','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Gènes, peuples et langues','Cavalli-Sforza, Luca','O. Jacob','1996','Paris','C9*CAV Gen','2006/05','acquis','');
INSERT INTO ling_books VALUES ('L\'origine des langues','Ruhlen, Merritt','Belin','1997','Paris','C9*RUH Ori','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Darwin est-il dangereux ?','Dennett, Daniel C.','O. Jacob','2000','Paris','C9*DEN Dar','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Aux origines des langues et du langage','Hombert, Jean-Marie','Fayard','2005','Paris','C9*Aux HOM','2006/05','acquis','');
INSERT INTO ling_books VALUES ('Universal grammar in the reconstruction of ancient languages','Kiss, Katalin E.','Mouton de Gruyter','2005','Berlin','D1a*Uni KIS','2006/05','acquis','(Studies in generative grammar ; 83)');
INSERT INTO ling_books VALUES ('Voicing in Japanese','Van de Weijer, Jeroen','Mouton de Gruyter','2005','Berlin','D2a*Voi VAN','2006/05','acquis','(Studies in generative grammar ; 84)');
INSERT INTO ling_books VALUES ('Fossilized second language grammars','Franceschina, Florencia','J. Benjamins','2005','Amsterdam','H2*FRA Fos','2006/05','acquis','(Language acquisition & language disorders ; 38)');
INSERT INTO ling_books VALUES ('Language variation and change in the American Midland','Murray, Thomas E.','J. Benjamins','2006','Amsterdam','I1*Lan MUR','2006/05','acquis','(Varieties of English around the world ; G36)');
INSERT INTO ling_books VALUES ('Intercultural pragmatics [périodique]','','Mouton de Gruyter','Vol. 3(2006)->','Berlin','REV*Int pra','2006/06','acquis','');
INSERT INTO ling_books VALUES ('The lexicon in focus','Behrens, Leila','P. Lang','2002','Frankfurt am Main','D8*Lex BEH','2006/06','acquis','');
INSERT INTO ling_books VALUES ('Pragmatics today','Cap, Piotr','P. Lang','2005','Frankfurt am Main','I3*Pra CAP','2006/06','acquis','(Lodz studies in language ; vol. 12)');
INSERT INTO ling_books VALUES ('L\'évolution','Le Guyader, Hervé','Pour la science','2003','Paris','C9*Evo LEG','2006/06','acquis','(Bibliothèque pour la science)');
INSERT INTO ling_books VALUES ('Psycholinguistics','Field, John','Routledge','2004','London','H1*FIE Psy','2006/06','acquis','');
INSERT INTO ling_books VALUES ('Language and the mind','Field, John','Routledge','2005','London','H1*Fie Lan','2006/06','acquis','');
INSERT INTO ling_books VALUES ('Dialects. - 2nd ed.','Trudgill, Peter','Routledge','2006','London','I1*TRU Dia','2006/06','acquis','');
INSERT INTO ling_books VALUES ('Time in natural language','Thompson, Ellen','Mouton de Gruyter','2005','Berlin','C3*THO Tim','2006/06','acquis','(Interface exlorations ; 11)');
INSERT INTO ling_books VALUES ('Introduction to discourse studies','Renkema, Jan','J. Benjamins','2004','Amsterdam','I3*REN Int','2006/06','acquis','');
INSERT INTO ling_books VALUES ('The structure of time','Evans, Vyvyan','J. Benjamins','2003','Amsterdam','H4*EVA Str','2006/06','acquis','(Human cognitive processing ; vol. 12)');
INSERT INTO ling_books VALUES ('Analyse de la métaphore et de la fiction','Reboul, Anne','Univ. de Genève','1990','','I3*REB Ana','2006/06','acquis','');
INSERT INTO ling_books VALUES ('Dictionnaire suisse romand [CD-ROM]','Knecht, Pierre','Ed. Zoé','1999','Genève','BFLI 140 (vitrine)','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Reconnaissance automatique de la parole','Haton, Jean-Paul','Dunod','2006','Paris','L8b*Rec HAT','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Le sens et ses voix','Perrin, Laurent','Univ. Paul Verlaine','2006','Metz','I3*Sen PER','2006/07','acquis','(Recherches linguistiques ; 28)');
INSERT INTO ling_books VALUES ('Sutures sémiotiques','Parret, Herman','Lambert-Lucas','2006','Limoges','C7a*PAR Sut','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Effects of pragmatic interpretation on translation','Sequeiros, Xosé Rosales','Lincom Europa','2005','München','I2*SEQ Eff','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Origins of language','Johansson, Sverker','J. Benjamins','2005','Amsterdam','C9*JOH Ori','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Possessives and beyond','Kim, Ji-Yung','GLSA Publ.','2004','Amherst Mass.','D6a*Pos KIM','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Correspondance avec Roman Jakobson et autres écrits','Trubeckoj, Nikolaj Sergeevic','Payot','2006','Lausanne','C2*TRU Cor','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Linguistic variation yearbook, vol. 3(2003)','','J. Benjamins','2003','Amsterdam','D1a*Lin','2006/07','acquis','');
INSERT INTO ling_books VALUES ('The handbook of the history of English','Kemenade, Ans van','Blackwell','2006','Malden Mass.','E1*Han KEM','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Word order in 17th century English','Baekken, Bjorg','Novus Press','2003','Oslo','E3*BAE Wor','2006/07','acquis','');
INSERT INTO ling_books VALUES ('A history of English negation','Mazzon, Gabriella','Longman','2004','London','E3*MAZ His','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Historical sociolinguistics','Nevalainen, Terttu','Longman','2003','London','G4f*NEV His','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Linguistic evidence','Kepser, Stephan','Mouton de Gruyter','2005','Berlin','C3*Lin KEP','2006/07','acquis','');
INSERT INTO ling_books VALUES ('Norwegian modals','Eide, Kristin Melum','Mouton de Gruyter','2005','Berlin','D6c*EID Nor','2006/07','acquis','');
INSERT INTO ling_books VALUES ('The architecture of focus','Molnar, Valéria','Mouton de Gruyter','2006','Berlin','D6a*Arc MOL','2006/07','acquis','(Studies in generative grammar ; 82)');
INSERT INTO ling_books VALUES ('Organizing grammar : studies in honor of Henk van Riemsdijk','Broekhuis, Hans','Mouton de Gruyter','2005','Berlin','A5*\"RIE\" Org','2006/07','acquis','(Studies in generative grammar ; 86)');
INSERT INTO ling_books VALUES ('Introducing speech and language processing','Coleman, John S.','Cambridge Univ. Press','2005','Cambridge','L8a*COL Int','2006/08','acquis','');
INSERT INTO ling_books VALUES ('English syntax : an introduction','Radford, Andrew','Cambridge Univ. Press','2004','Cambridge','D6c*RAD Eng','2006/08','acquis','');
INSERT INTO ling_books VALUES ('Introducing phonology','Odden, David','Cambridge Univ. Press','2005','Cambridge','D3a*ODD Int','2006/08','acquis','');
INSERT INTO ling_books VALUES ('A history of language philosophies','Formigari, Lia','J. Benjamins','2004','Amsterdam','C8*FOR His','2006/08','acquis','');
INSERT INTO ling_books VALUES ('Principles of generative phonology','Jensen, John Tillotson','J. Benjamins','2004','Amsterdam','D3c*JEN Pri','2006/08','acquis','(Current issues in linguistic theory ; vol. 249)');
INSERT INTO ling_books VALUES ('Binding theory','Büring, Daniel','Cambridge Univ. Press','2005','Cambridge','D6a*BUR Bin','2006/08','acquis','');
INSERT INTO ling_books VALUES ('Morphology and lexical semantics','Lieber, Rochelle','Cambridge Univ. Press','2004','Cambridge','D5a*LIE Mor','2006/08','acquis','(Cambridge studies in linguistics ; 104)');
INSERT INTO ling_books VALUES ('The acquisition of complex sentences','Diessel, Holger','Cambridge Univ. Press','2004','Cambridge','D6c*DIE Acq','2006/08','acquis','(Cambridge studies in linguistics ; 105)');
INSERT INTO ling_books VALUES ('Principles and parameters in a VSO language','Roberts, Ian G.','Oxford Univ. Press','2005','New York','D6c*ROB Pri','2006/08','acquis','');
INSERT INTO ling_books VALUES ('The grammar of words','Booij, Geert E.','Cambridge Univ. Press','2005','New York','D5a*BOO Gra','2006/08','acquis','');
INSERT INTO ling_books VALUES ('Subject clitics in the Northern Italian dialects','Goria, Cecilia','Kluwer Academic Publ.','2004','Dordrecht','D6c*GOR Sub','2006/08','acquis','(Studies in natural language and linguistic theory ; vol. 60)');
INSERT INTO ling_books VALUES ('Structures and beyond','Belletti, Adriana','Oxford Univ. Press','2004','Oxford','D6a*Car','2006/08','acquis','(Oxford studies in comparative syntax)');
INSERT INTO ling_books VALUES ('Clause structure in South Asian languages','Dayal, Veneeta','Kluwer Academic Publ.','2004','Dordrecht','D6c*Cla DAY','2006/08','acquis','(Studies in natural language and linguistic theory ; vol. 61)');
INSERT INTO ling_books VALUES ('Person','Siewierska, Anna','Cambridge Univ. Press','2004','Cambridge','D1a*SIE Per','2006/08','acquis','');
INSERT INTO ling_books VALUES ('The Blackwell companion to syntax','Everaert, Martin','Blackwell','2006','Malden','D6a*Bla EVE','2006/09','acquis','(Blackwell handbooks in linguistics ; 19)');
INSERT INTO ling_books VALUES ('The dynamics of language','Cann, Ronnie','Elsevier','2005','Amsterdam','D6a*Syn','2006/09','acquis','(Syntax and semantics ; vol. 35)');
INSERT INTO ling_books VALUES ('The syntax of Chichewa','Mchombo, Sam','Cambridge Univ. Press','2004','Cambridge','D6c*MCH Syn','2006/09','acquis','');
INSERT INTO ling_books VALUES ('Phonetically based phonology','Hayes, Bruce','Cambridge Univ. Press','2004','Cambridge','D3a*Pho HAY','2006/09','acquis','');
INSERT INTO ling_books VALUES ('Reduplication','Inkelas, Sharon','Cambridge Univ. Press','2005','Cambridge','D5a*INK Red','2006/09','acquis','(Cambridge studies in linguistics ; 106)');
INSERT INTO ling_books VALUES ('Aspectual inquiries','Kempchinsky, Paula','Springer','2005','Dordrecht','D6a*Asp KEM','2006/09','acquis','(Studies in natural language and linguistic theory ; vol. 62)');
INSERT INTO ling_books VALUES ('Peripheries','Adger, David','Kluwer Academic Publ.','2004','Dordrecht','D6a*Per ADG','2006/09','acquis','(Studies in natural language and linguistic theory ; vol. 59)');
INSERT INTO ling_books VALUES ('Non-projecting words','Toivonen, Ida','Kluwer Academic Publ.','2003','Dordrecht','D6c*TOI Non','2006/09','acquis','(Studies in natural language and linguistic theory ; vol. 58)');
INSERT INTO ling_books VALUES ('Events and semantic architecture','Pietroski, Paul M.','Oxford Univ. Press','2005','Oxford','D7*PIE Eve','2006/09','acquis','');
INSERT INTO ling_books VALUES ('Where semantics meets pragmatics','Heusinger, Klaus von','Elsevier','2006','Amsterdam','D7*Whe HEU','2006/09','acquis','(Current research in the semantics/pragmatics interface ; vol. 16)');
INSERT INTO ling_books VALUES ('Politeness and face in Caribbean creoles','Mühleisen, Susanne','J. Benjamins','2005','Amsterdam','I1*Pol MUH','2006/09','acquis','Varieties of English around the world. General series ; vol. 34)');
INSERT INTO ling_books VALUES ('Dictionnaire des sciences humaines','Mesure, Sylvie','PUF','2006','Paris','A2b*Dic MES','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Proceedings of the West Coast Conference on Formal Linguistics, vol. 17','Stanford Linguistics Association','Stanford Linguistics Association','1998','Stanford','A4*Wcc STA','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Words and structure','Grimshaw, Jane','CSLI','2005','Stanford','H2*GRI Wor','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Speech acoustics and phonetics','Fant, Gunnar','Kluwer Academic Publ.','2006','Dordrecht','D2d*FAN Spe','2006/10','acquis','(Text, speech and language technology ; vol. 24)');
INSERT INTO ling_books VALUES ('Language, society and consciousness','Webster, Jonathan J.','Equinox','2005','London','G4c*HAS Col','2006/10','acquis','(The collected works of Ruqaiya Hasan ; vol. 1)');
INSERT INTO ling_books VALUES ('Methods in empirical prosody research','Sudhoff, Stefan','W. de Gruyter','2006','Berlin','D3d*Met SUD','2006/10','acquis','(Language, context, and cognition ; vol. 3)');
INSERT INTO ling_books VALUES ('Introduction to French linguistics','Vandeloise, Claude','Lincom Europa','2001','München','C1*VAN Int','2006/10','acquis','(Lincom studies in Romance linguistics ; 21)');
INSERT INTO ling_books VALUES ('Fundamentals of French syntax','Gledhill, Christopher','Lincom Europa','2003','München','D6c*GLE Fun','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Les connecteurs temporels du français','Moline, Estelle','Rodopi','2006','Amsterdam','D6c*Con MOL','2006/10','acquis','(Cahiers chronos ; 15)');
INSERT INTO ling_books VALUES ('Coursebook in Romance linguistics','Klausenburger, Jurgen','Lincom Europa','2001','München','D6b*KLA Cou','2006/10','acquis','(Lincom studies in romance linguistics ; 02)');
INSERT INTO ling_books VALUES ('Approaches to discourse particles','Fischer, Kerstin','Elsevier','2006','Amsterdam','I3*Stu pra','2006/10','acquis','(Studies in pragmatics ; 1)');
INSERT INTO ling_books VALUES ('Pragmatic markers in contrast','Aijmer, Karin','Elsevier','2006','Amsterdam','I3*Stu pra','2006/10','acquis','(Studies in pragmatics ; 2)');
INSERT INTO ling_books VALUES ('Aux carrefours du sens : hommage offerts à Georges Kleiber pour son 60e anniversaire','Riegel, Martin','Peeters','2006','Leuven','A5*\"KLE\"Aux','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Corpus linguistics around the world','Wilson, Andrew','Rodopi','2006','Amsterdam','L8a*Cor WIL','2006/10','acquis','(Language and computers ; no 56)');
INSERT INTO ling_books VALUES ('Space in languages','Hickmann, Maya','J. Benjamins','2006','Amsterdam','H4*Spa HIC','2006/10','acquis','');
INSERT INTO ling_books VALUES ('The student\'s guide to cognitive neuroscience','Ward, Jamie','Psychology Press','2006','Hove','L13*WAR Stu','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Les réseaux bayésiens','Gonzales, Christophe','Lavoisier','2004','Paris','L13*Res GON','2006/10','acquis','(Revue d\'intelligence artificielle ; vol. 18, no 2)');
INSERT INTO ling_books VALUES ('Compréhension des langues et interaction','Sabah, Gérard','Lavoisier','2006','Paris','L8a*Com SAB','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Coherence in natural language','Wolf, Florian','MIT Press','2006','Cambridge Mass.','L8a*WOL Coh','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Crosslinguistic research in syntax and semantics','Zanuttini, Raffaella','Georgetown Univ. Press','2006','Washington','D6a*Cro ZAN','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Machine translation : 6th Conference of the Association for Machine Translation in the Americas','Frederking, Robert E.','AMTA','2004','Berlin','L10a*AMTA Con','2006/10','acquis','');
INSERT INTO ling_books VALUES ('Politeness and face in Caribbean creoles','Mühleisen, Susanne','J. Benjamins','2005','Amsterdam','I1*Pol MUH','2006/10','acquis','(Varieties of English around the world ; G34)');
INSERT INTO ling_books VALUES ('Where semantics meets pragmatics','Heusinger, Klaus von','Elsevier','2006','Amsterdam','D7*Whe HEU','2006/10','acquis','(Current research in the semantics/pragmatics interface ; vol. 16)');
INSERT INTO ling_books VALUES ('The integration of phonetic knowledge in speech technology','Barry, William John','Springer','2005','Dordrecht','D2a*Int BAR','2006/10','acquis','(Text, speech and language technology ; vol. 25)');
INSERT INTO ling_books VALUES ('Current and new directions in discourse and dialogue','Kuppevelt, Jan van','Kluwer Academic Publ.','2003','Dordrecht','L8b*Cur KUP','2006/10','acquis','(Text, speech and language technology ; vol. 22)');
INSERT INTO ling_books VALUES ('Paths of development in L1 and L2 acquisition','Unsworth, Sharon','J. Benjamins','2006','Amsterdam','H2*Pat UNS','2006/10','acquis','(Language acquisition and language disorders ; vol. 39)');
INSERT INTO ling_books VALUES ('The acquisition of Swahili','Kamil Ud Deen','J. Benjamins','2005','Amsterdam','H2*KAM Acq','2006/10','acquis','(Language acquisition & language disorders ; vol. 40)');
INSERT INTO ling_books VALUES ('The handbook of English linguistics','Aarts, B.','Blackwell','2006','Oxford','C1*Han AAR','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Negation in non-standard British English','Anderwald, L.','Routledge','2002','London','I1*AND Ned','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Non-nominative subjects','Bhaskararao, P.','J. Benjamins','2004','Amsterdam','D6a*Non BHA','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Varieties of modern English','Davies, D.','Pearson Longman','2005','London','I1*DAV Var','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Gradience in grammar : generative perspectives','Fanselow, G.','Oxford Univ. Press','2006','Oxford','C4*Gra FAN','2007/03','acquis','');
INSERT INTO ling_books VALUES ('English words','Harley, H.','Blackwell','2005','Oxford','C1*HAR Eng','2008/05','acquis','');
INSERT INTO ling_books VALUES ('Legacies of colonial English','Hickey, R.','Cambridge Univ. Press','2005','Cambridge','I1*Leg HIC','2007/03','acquis','');
INSERT INTO ling_books VALUES ('A comparative grammar of British English dialects','Kortmann, B.','De Gruyter','2005','Berlin','I1*Com KOR','2007/01','acquis','');
INSERT INTO ling_books VALUES ('L2 acquisition and Creole genesis','Lefebvre, C.','J. Benjamins','2006','Amsterdam','H2*L2 LEF','2007/03','acquis','');
INSERT INTO ling_books VALUES ('The oxford history of the English language','Mugglestone, L.','Oxford Univ. Press','2006','Oxford','F1*Oxf MUG','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Possible and probable languages : a genrative perspective on linguistic typology','Newmeyer, F.','Oxford Univ. Press','2005','Oxford','C3*NEW Pos','2007/01','acquis','');
INSERT INTO ling_books VALUES ('A linguistic history of English','Ringe, D.','Oxford Univ. Press','2006','Oxford','F1*RIN Fro','2007/03','acquis','');
INSERT INTO ling_books VALUES ('English intonation','Wells, J.C.','Cambridge Univ. Press','2006','Cambridge','D3d*WEL Eng','2007/03','acquis','');
INSERT INTO ling_books VALUES ('The syntax of spoken arabic','Brustad, Kristen E.','Georgetown Uni. Press','2000','Washington','D6c*BRU Syn','2007/04','acquis','');
INSERT INTO ling_books VALUES ('Discours rapporté(s) : approches linguistique et/ou traductologiques','Delesse, Catherine','Artois Presses Université','2006','Arras','I2*Dis DEL','2007/04','acquis','(Collection traductologie)');
INSERT INTO ling_books VALUES ('Noun phrase in the generative perspective','Alexiadou, Artemis','Mouton de Gruyter','2007','Berlin','C4*ALE Nou','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Discours et évènement : l\'histoire langagière des concepts','Guilhaumou, Jacques','Presses univ. de Franche-Comté','2006','Besançon','I3*GUI Dis','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Understanding minimalism','Hornstein, Norbert','Cambridge Univ. Press','2005','Cambridge','D6a*HOR Und','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Representation theory','Williams, Edwin','MIT Press','2003','Cambridge Mass.','D6a*WIL Rep','2006/12','acquis','(Current studies in linguistics ; 39)');
INSERT INTO ling_books VALUES ('Phrase structure composotion and syntactic dependencies','Frank, Robert','MIT Press','2002','Cambridge Mass.','D6a*FRA Phr','2006/12','acquis','(Current studies in linguistics ; 38)');
INSERT INTO ling_books VALUES ('Situations and individuals','Elbourne, Paul D.','MIT Press','2005','Cambridge Mass.','D7*ELB Sit','2006/12','acquis','(Current studies in linguistics ; 41)');
INSERT INTO ling_books VALUES ('Wh-movement','Cheng, Lisa Lai-Shen','MIT Press','2006','Cambridge Mass.','D6a*Wh CHE','2006/12','acquis','(Current studies in linguistics ; 42)');
INSERT INTO ling_books VALUES ('The computational nature of language learning and evolution','Niyogi, Partha','MIT Press','2006','Cambridge Mass.','L12*NIY Com','2006/12','acquis','(Current studies in linguistics ; 43)');
INSERT INTO ling_books VALUES ('Pragmatics','Huang, Yan','Oxford Univ. Press','2007','Oxford','I3*HUA Pra','2006/12','acquis','(Oxford textbook in linguistics)');
INSERT INTO ling_books VALUES ('Movement and silence','Kayne, Richard S.','Oxford Univ. Press','2005','Oxford','D6b*KAY Mov','2006/12','acquis','(Oxford studies in comparative syntax)');
INSERT INTO ling_books VALUES ('Canonical forms in prosodic morphology','Downing, Laura J.','Oxford Univ. Press','2006','Oxford','D5a*DOW Can','2006/12','acquis','(Oxford studies in theoretical linguistics)');
INSERT INTO ling_books VALUES ('Aspect and reference time','Borik, Olga','Oxford Univ. Press','2006','Oxford','D6c*BOR Asp','2006/12','acquis','(Oxford studies in theoretical linguistics)');
INSERT INTO ling_books VALUES ('Lexical markers of common grounds','Fetzer, Anita','Elsevier','2007','Amsterdam','I3*Stu pra','2006/12','acquis','(Studies in pragmatics ; 3)');
INSERT INTO ling_books VALUES ('Mitigation','Caffi, Claudia','Elsevier','2007','Amsterdam','I3*Stu pra','2006/12','acquis','(Studies in pragmatics ; 4)');
INSERT INTO ling_books VALUES ('Interface strategies','Reinhart, Tanya','MIT Press','2006','Cambridge Mass.','D6a*REI Int','2006/12','acquis','(Linguistic inquiry monographs ; 45)');
INSERT INTO ling_books VALUES ('Asymmetry in morphology','Di Sciullo, Anna Maria','MIT Press','2005','Cambridge Mass.','D5a*DIS Asy','2006/12','acquis','(Linguistic inquiry monographs ; 46)');
INSERT INTO ling_books VALUES ('Relators and linkers','Dikken, Marcel den','MIT Press','2006','Cambridge Mass.','D6a*DIK Rel','2006/12','acquis','(Linguistic inquiry monographs ; 47)');
INSERT INTO ling_books VALUES ('Le hongrois dans la typologie des langues','Sores, Anna','Lambert-Lucas','2006','Limoges','D1b*Hon SOR','2006/12','acquis','');
INSERT INTO ling_books VALUES ('Teacher education in CALL','Hubbard, Philip','J. Benjamins','2006','Amsterdam','L12*Tea HUB','2006/12','acquis','');
INSERT INTO ling_books VALUES ('Introduction à la lexicologie','Lehmann, Alise','A. Colin','2005','Paris','D8*LEH Int','2006/12','acquis','');
INSERT INTO ling_books VALUES ('Morphology, syntax, semantics, and pragmatics','Nishida, Chiyo','J. Benjamins','2006','Amsterdam','A4*LSRL','2007/01','acquis','(New perspectives on Romance linguistics ; vol. 1)');
INSERT INTO ling_books VALUES ('Romance languages and linguistic theory 2004','Doetjes, Jenny','J. Benjamins','2006','Amsterdam','D6b*Rom DOE','2007/01','acquis','(Current issues in linguistic theory ; vol. 278)');
INSERT INTO ling_books VALUES ('L\'enseignement ud français langue étrangère','Muresanu-Ionescu, Marina','Institutul European','2007','Iasi','K1*MUR Ens','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Chomsky','Bricmont, Jean','L\'Herne','2007','Paris','C4*Cho BRI','2007/04','acquis','(Cahiers de l\'Herne ; 88)');
INSERT INTO ling_books VALUES ('Le nom de l\'absent : épistémologie de la science saussurienne des signes','Gandon, Francis','Ed. Lambert-Lucas','2006','Limoges','C3*GAN Nom','2007/04','acquis','');
INSERT INTO ling_books VALUES ('Discourses of endangerment','Duchene, Alexandre','Continuum','2007','London','G4e*Dis DUC','2007/04','acquis','');
INSERT INTO ling_books VALUES ('Grammaticalization and parametric variation','Batllori, M. et al.','Oxford Univ. Press','2005','Oxford','D6a*Gra BAT','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Thinking syntactically','Haegeman, L.','Blackwell','2006','Oxford','D6a*HAE Thi','2007/04','acquis','');
INSERT INTO ling_books VALUES ('The psychology of the language learner','Dörnyei, Z.','L. Erlbaum','2005','Mahwah','H2*DOR Psy','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Nineteenth-Century English','Kytö, M.','Cambridge Univ. Press','2006','Cambridge','E1*Nin KYT','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Twentieth Century English','Mair, Christian','Cambridge Univ. Press','2006','Cambridge','E1*MAI Twe','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Analyzing sociolinguistic variation','Tagliamonte, S.','Cambridge Univ. Press','2006','Cambridge','G4f*TAG Ana','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Morphosyntactic change','Fischer, O.','Oxford Univ. Press','2006','Oxford','','2007/01','commandé','');
INSERT INTO ling_books VALUES ('Diachronic syntax','Roberts, I.','Oxford Univ. Press','2006','Oxford','E3*ROB Dia','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Minimalsit syntax','Boskovic, Z.','Blackwell','2007','Malden','D6a*Min BOS','2007/03','acquis','');
INSERT INTO ling_books VALUES ('The Germanic languages','Harbert, W.','Cambridge Univ. Press','2006','Cambridge','F1*HAR Ger','2007/03','acquis','');
INSERT INTO ling_books VALUES ('The cognitive neuroscience of second language acquisition','Gullberg, M.','Blackwell','2006','Oxford','H2*Cog GUL','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Romance languages and linguistic theory 2000','Beyssade, Claire','J. Benjamins','2002','Amsterdam','D6b*Rom BEY','2007/03','acquis','(Current issues in linguistic theory ; vol. 232)');
INSERT INTO ling_books VALUES ('Approaches to studying world-situated language use','Trueswell, John C.','MIT Press','2005','Cambridge Mass.','H4*App TRU','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Argumentation in practice','Eemeren, Frans H. van','J. Benjamins','2005','Amsterdam','I3*Arg EEM','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Controversies and subjectivity','Barrotta, Pierluigi','J. Benjamins','2005','Amsterdam','H4*Con BAR','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Speech and thought presentation in French','Marnette, Sophie','J. Benjamins','2005','Amsterdam','I3*MAR Spe','2007/01','acquis','');
INSERT INTO ling_books VALUES ('New perspectives on English historical linguistics','Kay, Christian','J. Benjamins','2004','Amsterdam','E1*New KAY','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Beyond misunderstanding','Bührig, Kristin','J. Benjamins','2006','Amsterdam','G4f*Bey BUH','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Scrambling, remnant movement, and restructuring in West Germanic','Hinterhölzl, Roland','Oxford Univ. Press','2006','Oxford','D6c*HIN Scr','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Claude structure and adjuncts in Austronesian languages','Gärtner, Hans-Martin','Mouton de Gruyter','2006','Berlin','D6c*Cla GAR','2007/01','acquis','(Studies in generative grammar ; 87)');
INSERT INTO ling_books VALUES ('An introduction to African languages','Childs, G. Tucker','J. Benjamins','2003','Amsterdam','D6c*CHI Int','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Language contact and grammatical change','Heine, Bernd','Cambridge Univ. Press','2005','Cambridge','G3*HEI Lan','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Coling 2002 : proceedings of the 19th International Conference... August 26-30, 2002, Taipei','Association for Computational Linguistics','ACL','2002','New Brunswick','L1*ACL Col','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Coling Geneva 2004 : 20th International Conference... August 23rd to 27th, 2004','Association for Computational Linguistics','ACL','2004','East Stroudsburg','L1*ACL Col','2007/01','acquis','');
INSERT INTO ling_books VALUES ('Fuzzy grammar','Aarts, Bas','Oxford Univ. Press','2004','Oxford','C8*Fuz AAR','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Generative theory and corpus studies','Bermudez-Otero, Ricardo','Mouton de Gruyter','2000','Berlin','E1*Gen BER','','acquis','');
INSERT INTO ling_books VALUES ('Variation and universals in biolinguistics','Jenkins, Lyle','Elsevier','2004','Amsterdam','C6*Var JEN','2007/03','acquis','');
INSERT INTO ling_books VALUES ('New perspectives on English historical linguistics','Kay, Christian','J. Benjamins','2004','Amsterdam','E1*New KAY','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Diachronic clues to synchronic grammar','Fuss, Eric','J. Benjamins','2004','Amsterdam','E1*Dia FUS','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Introduction to cognition and communication','Stenning, Keith','MIT Press','2006','Cambridge Mass.','H4*STE Int','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Ethnologue : languages of the world','Gordon, Raymond G.','SIL International','2005','Dallas','A2b*Eth GOR','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Le français en République du Congo sous l\'ère pluripartiste','Massoumou, Omer ; Queffélec, Ambroise','Ed. des Archives contemporaines','2007','Paris','','2007/03','commandé','');
INSERT INTO ling_books VALUES ('Applications et implications en sciences du langage','Léglise, Isabelle','L\'Harmattan','2007','Paris','K1*App LEG','2007/04','acquis','');
INSERT INTO ling_books VALUES ('Terms and truth','Berger, Alan','MIT Press','2002','Cambridge Mass.','C8*BER Ter','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Covert modality in non-finite contexts','Bhatt, Rajesh','Mouton de Gruyter','2006','Berlin','D5a*BHA Cov','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Mélanges de mythologie et de linguistique','Bréal, Michel','Ed. Lambert-Lucas','2005','Limoges','C2*BRE Mel','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Datives and other cases','Hole, Daniel','J. Benjamins','2006','Amsterdam','D5a*Dat HOL','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Deixis and demonstratives in Oceanic languages','Senft, Gunter','Pacific Linguistics','2004','Canberra','D5a*Dei SEN','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Event arguments','Maienborn, Claudia','M. Niemeyer','2005','Tübingen','C3*Eve MAI','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Conditionals in context','Gauker, Christopher','MIT Press','2005','Cambridge Mass.','C8*GAU Con','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Game theory and pragmatics','Benz, Anton','Palgrave Macmillan','2006','Houndmills','C5*Gam BEN','2007/03','acquis','');
INSERT INTO ling_books VALUES ('The literal and nonliteral in language and thought','Coulson, Seana','P. Lang','2005','Frankfurt am Main','D7*Lit COU','2007/03','acquis','');
INSERT INTO ling_books VALUES ('Questions in dynamic semantics','Aloni, Maria','Elsevier','2007','Amsterdam','D7*Que ALO','2007/03','acquis','(Current research in the semantics/pragmatics interface ; vol. 17)');
INSERT INTO ling_books VALUES ('Topic and focus','Lee, Chungmin','Springer','2007','Dordrecht','D7*Top LEE','2007/03','acquis','(Studies in linguistics and philosophy ; vol. 82)');
INSERT INTO ling_books VALUES ('A course in phonetics','Ladefoged, Peter','Thomson Wadsworth','2006','Boston','D2a*LAD Cou','2007/04','acquis','');
INSERT INTO ling_books VALUES ('A la recherche de Ferdinand de Saussure','Arrivé, Michel','PUF','2007','Paris','C3*ARR A','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Interrogative and negative constructions in sign languages','Zeshan, Ulrike','Ishara Press','2005','Nijmegen','','2007/04','commandé','(Sign language typology series ; no 1)');
INSERT INTO ling_books VALUES ('Cognitive linguistics : an introduction','Evans, Vyvyan','L. Erlbaum','2006','','L13*EVA Cog','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Cognitive linguistics : basic readings','Geeraerts, Dirk','Mouton de Gruyter','2006','Berlin','L13*Cog GEE','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Learning and teaching languages through content','Lyster, Roy','J. Benjamins','2007','Amsterdam','H2*LYS Lea','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Syntaxe fonctionnelle','Costaouec, Denis','Presses univ. de Rennes','2007','Rennes','D6a*COS Syn','2007/04','acquis','');
INSERT INTO ling_books VALUES ('Sémantique et diachronie du système verbal français','Labeau, Emmanuelle','Rodopi','2007','Amsterdam','D7*Sem LAB','2007/04','acquis','(Cahiers Chronos ; 16)');
INSERT INTO ling_books VALUES ('Tense, mood and aspect','Saussure, Louis de','Rodopi','2007','Amsterdam','D6a*Ten SAU','2007/04','acquis','(Cahiers chronos ; 17)');
INSERT INTO ling_books VALUES ('Mille ans de langue française','Rey, Alain','Perrin','2007','Paris','C2*REY Mil','2007/04','acquis','');
INSERT INTO ling_books VALUES ('Coling-ACL 2006','Association for Computational Linguistics','ACL','2006','Stroudsburg','L1*ACL Col','2007/04','acquis','');
INSERT INTO ling_books VALUES ('Advances in natural multimodal dialogue systems','Kuppevelt, Jan van','Springer','2005','Dordrecht','L8c*Adv KUP','2007/04','acquis','(Text, speech and language technology ; vol. 30)');
INSERT INTO ling_books VALUES ('Contributions to the science of text and language','Grzybek, Peter','Springer','2006','Dordrecht','C3*Con GRZ','2007/04','acquis','(Text, speech and language technology ; vol. 31)');
INSERT INTO ling_books VALUES ('Advances in open domain question answering','Strzalkowski, Tomek','Springer','2006','Dordrecht','L9a*Adv STR','2007/04','acquis','(Text, speech and language technology ; vol. 32)');
INSERT INTO ling_books VALUES ('Word sense disambiguation','Agirre, Eneko','Springer','2006','Dordrecht','L8f*Wor AGI','2007/04','acquis','(Text, speech and language technology ; vol. 33)');
INSERT INTO ling_books VALUES ('Inductive dependency parsing','Nivre, Joakim','Springer','2006','Dordrecht','L8e*NIV Ind','2007/04','acquis','(Text, speech and language technology ; vol. 34)');
INSERT INTO ling_books VALUES ('Handbook of multilingualism and multilingual communication','Auer, Peter','Mouton de Gruyter','2007','Berlin','G3*Han AUE','2007/08','acquis','(Handbook of applied linguistics ; 5)');
INSERT INTO ling_books VALUES ('Mélanges offerts au professeur Lothar Wolf','Horiot, Brigitte','Univ. Lyon III','2005','Lyon','A5*\"WOL\" Mel','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Restructuring and functional heads','Cinque, Giuglielmo','Oxford Univ. Press','2006','Oxford','D6a*Car','2007/05','acquis','(Oxford studies in comparative syntax)');
INSERT INTO ling_books VALUES ('Words and intelligence I','Wilks, Yorick','Springer','2007','Dordrecht','L1*WIL Wor','2007/05','acquis','(Text, speech and language technology ; vol. 35)');
INSERT INTO ling_books VALUES ('English historical syntax and morphology','Fanego, Teresa','J. Benjamins','2002','Amsterdam','E1*Eng FAN','2007/05','acquis','(Current issues in linguistic theory ; vol. 223)');
INSERT INTO ling_books VALUES ('Non-definiteness and plurality','Vogeleer, Svetlana','J. Benjamins','2005','Amsterdam','D6a*Non VOG','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Sounds, words, texts and change','Fanego, Teresa','J. Benjamins','2002','Amsterdam','E1*Sou FAN','2007/05','acquis','(Current issues in linguistic theory ; vol. 224)');
INSERT INTO ling_books VALUES ('Action to language via the mirror neuron system','Arbib, Michael A.','Cambridge Univ. Press','2006','Cambridge','C9*Act ARB','2007/05','acquis','');
INSERT INTO ling_books VALUES ('Le mot \"de\"','Kupferman, Lucien','De Boeck','2004','Bruxelles','D6c*KUP Mot','2007/09','acquis','(Champs linguistique)');
INSERT INTO ling_books VALUES ('La phrase complexe','Leeman, Danielle','De Boeck','2002','Bruxelles','D6c*BOU Phr','2007/09','acquis','(Champs linguistique)');
INSERT INTO ling_books VALUES ('De l\'un à l\'autre et réciproquement','Schnedecker, Catherine','De Boeck','2006','Bruxelles','D7*SCH De','2007/09','acquis','(Champs linguistique)');
INSERT INTO ling_books VALUES ('Représentation du sens linguistique','Bouchard, Denis','De Boeck','2007','Bruxelles','','2007/05','commandé','(Champs linguistique)');
INSERT INTO ling_books VALUES ('Language description, history and development','Siegel, Jeff','J. Benjamins','2007','Amsterdam','I1*Lan SIE','2007/08','acquis','(Creole language library ; vol. 30)');
INSERT INTO ling_books VALUES ('Structure and variation in language contact','Deumert, Ana ; Durrleman, Stephanie','J. Benjamins','2006','Amsterdam','G3*Str DEU','2007/08','acquis','(Creole language library ; vol. 29)');
INSERT INTO ling_books VALUES ('Space, time, and the use of language','Tenbrink, Thora','Mouton de Gruyter','2007','Berlin','L13*TEN Spa','2007/08','acquis','');
INSERT INTO ling_books VALUES ('Mind design and minimalist syntax','Hinzen, Wolfram','Oxford Univ. Press','2006','Oxford','C4*HIN Min','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Connectives as discourse landmarks','Celle, Agnès','J. Benjamins','2007','Amsterdam','I3*Con CEL','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Words and intelligence II : essays in honor of Yorick Wilks','Ahmad, Khurshid','Springer','2007','Dordrecht','L1*Wor AHM','2007/06','acquis','(Text, speech and language technology ; vol. 36)');
INSERT INTO ling_books VALUES ('Evaluation of text and speech systems','Dybkjaer, Laila','Springer','2007','Dordrecht','L8a*Eva DYB','2007/06','acquis','(Text, speech and language technology ; vol. 37)');
INSERT INTO ling_books VALUES ('Speech and language engineering','Rajman, Martin','EPFL Press','2007','Lausanne','L8a*Spe RAJ','2007/06','acquis','');
INSERT INTO ling_books VALUES ('Mots, termes et contextes','Blampain, Daniel','Ed. Archives contemporaines','2006','Paris','D8*Mot BLA','2007/06','acquis','');
INSERT INTO ling_books VALUES ('Syntactic gradience','Aarts, B.','Oxford Univ. Press','2007','Oxford','D6a*AAR Syn','2008/02','acquis','');
INSERT INTO ling_books VALUES ('The English language','Brinton, L.','Oxford Univ. Press','2006','Oxford','F1*BRI Eng','2008/02','acquis','');
INSERT INTO ling_books VALUES ('Comparative studies in Germanic syntax','Hartmann, J.','J. Benjamins','2006','Amsterdam','D6b*Com HAR','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Code-switching in bilingual children','Cantone, K.','Springer','2007','Dordrecht','G3*CAN Cod','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Case and linking in language comprehension','Bader, M.','Springer','2006','Dordrecht','H4*BAD Cas','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Broca\'s region','Grodzinsky, Y.','Oxford Univ. Press','2006','Oxford','H4*Bro GRO','2008/02','acquis','');
INSERT INTO ling_books VALUES ('Subjects and universal grammar','Falk, Y.','Cambridge Univ. Press','2006','Cambridge','D6a*FAL Sub','2007/09','acquis','');
INSERT INTO ling_books VALUES ('British or American English ?','Algeo, J.','Cambridge Univ. Press','2006','Cambridge','I1*ALG Bri','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Dialect change','Auer, Peter','Cambridge Univ. Press','2006','Cambridge','I1*Dia AUE','2007/09','acquis','');
INSERT INTO ling_books VALUES ('From case to adposition','Hewson, J.','J. Benjamins','2006','Amsterdam','F1*HEW Fro','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Errors and intelligence in CALL','Heift, Trude','Routledge','2007','New York','L12*HEI Err','2007/10','acquis','');
INSERT INTO ling_books VALUES ('Variation et stabilité du français','Larrivée, P.','Peeters','2007','Paris','A5*\"LEA\"Var','2007/10','acquis','');
INSERT INTO ling_books VALUES ('Information temporelle, procédures et ordre discursif','Saussure, Louis de','Rodopi','2007','Amsterdam','I3*Inf SAU','2007/08','acquis','(Cahiers chronos ; 18)');
INSERT INTO ling_books VALUES ('D\'un français à l\'autre','Vinet, Marie-Thérèse','Fides','2001','Saint-Laurent','D6c*VIN Dun','2007/08','acquis','');
INSERT INTO ling_books VALUES ('Aspects of the theory of clitics','Anderson, Stephen R.','Oxford Univ. Press','2005','Oxford','D6a*AND Asp','2007/08','acquis','(Oxford studies in theoretical linguistics ; 11)');
INSERT INTO ling_books VALUES ('Direct compositionality','Barker, Chris','Oxford Univ. Press','2007','Oxford','D7*Dir BAR','2007/08','acquis','(Oxford studies in theoretical linguistics ; 14)');
INSERT INTO ling_books VALUES ('Game theory and linguistic meaning','Pietarinen, Ahti-Veikko','Elsevier','2007','Amsterdam','C5*Gam PIE','2007/08','acquis','(Current research in the semantics/pragmatics interface ; vol. 18)');
INSERT INTO ling_books VALUES ('Explorations in pragmatics','Kecsles, Istvan','Mouton de Gruyter','2007','Berlin','I3*Exp KEC','2007/10','acquis','');
INSERT INTO ling_books VALUES ('Langage et cognition humaine','Reboul, Anne','Presses univ. de Grenoble','2007','Grenoble','H4*REB Lan','2007/12','acquis','');
INSERT INTO ling_books VALUES ('La production de la parole','Marchal, Alain','Hermes','2007','Paris','D2a*MAR Pro','2007/10','acquis','');
INSERT INTO ling_books VALUES ('Proceedings of the XXXII Incontro di grammatica generativa','Picchi, Cecilia','Ed. dell\'Orso','2007','Alessandria','C4*Pro PIC','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Phonetics for communication disorders','Ball, Martin John','L. Erlbaum','2005','Mahwah','H3*BAL Pho','2007/09','acquis','');
INSERT INTO ling_books VALUES ('Computing meaning, vol. 3','Bunt, Harry','Springer','2007','Amsterdam','L8f*Com BUN','2007/09','acquis','');
INSERT INTO ling_books VALUES ('A natural history of infixation','Yu, Alan C.L.','Oxford Univ. Press','2007','Oxford','D5a*YU Nat','2007/09','acquis','');
INSERT INTO ling_books VALUES ('The bilingual child','Yip, Virginia','Cambridge Univ. Press','2007','Cambridge','G3*YIP Bil','2008/02','acquis','');
INSERT INTO ling_books VALUES ('Teacher language awareness','Andrews, Stephen','Cambridge Univ. Press','2007','Cambridge','K1*AND Tea','2008/02','acquis','');
INSERT INTO ling_books VALUES ('Linguistic diversity','Nettle, Daniel','Oxford Univ. Press','1999','Oxford','','2007/10','commandé','');
INSERT INTO ling_books VALUES ('Ergativity','Johns, Alana','Springer','2006','Dordrecht','','2007/10','commandé','(Studies in natural language and linguistic theory ; vol. 65)');
INSERT INTO ling_books VALUES ('Handbook of intercultural communication','Kotthoff, Helga','Mouton de Gruyter','2007','Berlin','G4f*Han KOT','2008/02','acquis','');
INSERT INTO ling_books VALUES ('Arabic computational morphology','Soudi, Abdelhadi','Springer','2007','Dordrecht','L8d*Ara SOU','2007/10','acquis','(Text, speech and language technology ; vol. 38)');
INSERT INTO ling_books VALUES ('Existence : semantics and syntax','Comorovski, Ileana','Springer','2007','Dordrecht','C8*Exi COM','2007/10','acquis','(Studies in linguistics and philosophy ; vol. 84)');
INSERT INTO ling_books VALUES ('French dislocation','Cat, Cécile de','Oxford Univ. Press','2007','Oxford','D6c*CAT Fre','2007/10','acquis','');
INSERT INTO ling_books VALUES ('Grammaticalization','Hopper, Paul J ; Closs Traugott, Elizabeth','Cambridge Univ. Press','2003','Cambridge','','2007/11','commandé','');
INSERT INTO ling_books VALUES ('Noun phrase in creole language','Baptista, Marlyse ; Guéron, Jacqueline','J. Benjamins','2007','Amsterdam','I1*Nou BAP','2008/02','acquis','(Creole language library ; vol. 31)');
INSERT INTO ling_books VALUES ('Body, language and mind I : Embodiment','Ziemke, Tom','Mouton de Gruyter','2007','Amsterdam','H4*Bod ZIE','2008/02','acquis','(Cognitive linguistics research ; 35.1)');
INSERT INTO ling_books VALUES ('Tones and tunes vol. 2: experimental studies in word and sentence prosody','Gussenhoven, Carlos','Mouton de Gruyter','2007','Amsterdam','','2007/11','commandé','(Phonology and phonetics ; 12.2)');
INSERT INTO ling_books VALUES ('The syntax of Icelandic','Trainsson, H.','Cambridge Univ. Press','2007','Cambridge','D6c*THR Syn','2008/03','acquis','(Cambridge syntax guides)');
INSERT INTO ling_books VALUES ('Conversation analysis and language for specific purposes','Seedhouse, Paul','P. Lang','2007','Bern','G4f*Con BOW','2008/02','acquis','(Linguistic insights ; vol. 63)');
INSERT INTO ling_books VALUES ('Etudes sémantiques et pragmatiques sur le temps, l\'aspect et la modalité','Saussure, Louis de','Rodopi','2007','Amsterdam','D7*Etu SAU','2007/12','acquis','(Cahiers chronos ; 19)');
INSERT INTO ling_books VALUES ('Representation and inference for natural language','Blackburn, Patrick','CSLI Publ.','2005','Stanford Calif.','L8f*BLA Rep','2007/12','acquis','');
INSERT INTO ling_books VALUES ('The syntax of Jamaican creole','Durrleman, Stephanie','Univ. de Genève','2007','Genève','D6c*DUR Syn','2007/12','acquis','');
INSERT INTO ling_books VALUES ('Il linguaggio e l\'uomo attuale','Coseriu, Eugenio','Ed. Centro Studi Campostrini','2007','Verona','C8*COS Lin','2007/12','acquis','');
INSERT INTO ling_books VALUES ('Neurolinguistics : an introduction to spoken language processing and its disorders','Ingram, John','Cambridge Univ. Press','2007','Cambridge','H4*ING neu','2008/03','acquis','');
INSERT INTO ling_books VALUES ('Verb first','Carnie, A.','J. Benjamins','2007','Amsterdam','D6a*Ver CAR','2008/03','acquis','');
INSERT INTO ling_books VALUES ('The syntax of verb initial languages','Carnie, A.','Oxford Univ. Press','2000','Oxford','D6b*Syn CAR','2007/12','acquis','');
INSERT INTO ling_books VALUES ('The practical study of languages','Sweet, Henry','Oxford Univ. Press','1964','Oxford','','2008/01','commandé','');
INSERT INTO ling_books VALUES ('Music, language, and the brain','Patel, Aniruddh','Oxford Univ. Press','2007','Oxford','H4*PAT Mus','2008/03','acquis','');
INSERT INTO ling_books VALUES ('Clausal and phrasal architecture','Karimi, Simin','J. Benjamins','2007','Amsterdam','A5\"EMO\" Phr','2008/03','acquis','');
INSERT INTO ling_books VALUES ('The Chomsky effect','Barsky, Robert F.','MIT Press','2007','Cambridge Mass.','C2*BAR Cho','2008/03','acquis','');
INSERT INTO ling_books VALUES ('DISFA : Dictionnaire synchronique des familles dérivationnelles de mots français','Gruaz, Claude','Ed. Lambert-Lucas','2008','Limoges','A2b*Dis GRU','2008/05','acquis','');
INSERT INTO ling_books VALUES ('Espace, temps, prépositions','Asic, Tijana','Droz','2008','Paris','D6b*ASI Esp','2008/04','acquis','');
INSERT INTO ling_books VALUES ('Crises rhétoriques, crises démocratiques','Danblon, Emmanuelle','Presses Univ. de Nancy','2007','Nancy','','2008/03','commandé','(Questions de communication ; 12)');
INSERT INTO ling_books VALUES ('Inflectional identity','Bachrach, Asaf','Oxford Univ. Press','2008','Oxford','D 5a*Inf BAC','2008/03','acquis','(Oxford studies in theoretical linguistics ; 18)');
INSERT INTO ling_books VALUES ('Etudes sur le changement linguistique en français','Combettes, Bernard','Presses Univ. de Nancy','2008','Nancy','','2008/03','commandé','');
INSERT INTO ling_books VALUES ('Storage and computation in the language faculty','Nooteboom (ed.)','Kluwer','','Dordrecht','','2008/05','commandé','');
INSERT INTO ling_books VALUES ('L\'homme-thermomètre','Cohen, Laurent','O. Jacob','2004','Paris','','2008/05','commandé','');
INSERT INTO ling_books VALUES ('The language of thought','Fodor, Jerry Alan','Harvester Press','1976','Hassocks','','2008/05','commandé','');
INSERT INTO ling_books VALUES ('La lexicologie','Niklas-Salminen, Aïno','A. Colin','1997','Paris','','2008/05','commandé','');
INSERT INTO ling_books VALUES ('Lexical plurals','Acquaviva, Paolo','Oxford Univ. Press','2008','Oxford','D8*ACQ Lex','2008/04','acquis','(Oxford studies in theoretical linguistics ; 19)');
INSERT INTO ling_books VALUES ('Word-formation and creolisation','Braun, Maria','M. Niemeyer','2007','New York','','2008/04','commandé','');
INSERT INTO ling_books VALUES ('Oxford handbook of linguistic interfaces','Ramchand, Gillian','Oxford Univ. Press','2007','Oxford','','2008/05','commandé','');
INSERT INTO ling_books VALUES ('Didactique du lexique','Grossmann, Francis','ELLUG','2005','Grenoble','D8*Did GRO','2008/05','acquis','');
INSERT INTO ling_books VALUES ('Les connecteurs en français et en roumain','Spita, Doina Paula','Institutul European','2003','Iasi','I3*SPI Con','2008/05','acquis','');

--
-- Table structure for table `ling_event`
--

CREATE TABLE ling_event (
  id int(11) NOT NULL auto_increment,
  `date` date NOT NULL default '0000-00-00',
  event mediumtext NOT NULL,
  privacy enum('public','private') NOT NULL default 'public',
  abstract mediumtext NOT NULL,
  lien varchar(255) NOT NULL default '',
  doclink varchar(255) NOT NULL default '',
  cat enum('reunion','conf','glecture','semrech') NOT NULL default 'reunion',
  KEY id (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ling_event`
--

INSERT INTO ling_event VALUES (1,'2005-10-27','Début des cours','public','','','','');
INSERT INTO ling_event VALUES (2,'2005-10-24','Séance d\'accueil des nouveaux étudiants de linguistique','public','12h, B106 (Aula)','','','reunion');
INSERT INTO ling_event VALUES (3,'2005-10-24','Séance d\'accueil des nouveaux étudiants de DEA (linguistique) ','public','16h15, L208','','','reunion');
INSERT INTO ling_event VALUES (12,'2005-12-03','Course de l\'Escalade','public','','','','');
INSERT INTO ling_event VALUES (11,'2005-12-13','Repas de fin d\'année \r\n\r\n','private','Restaurant de l’Arquebuse - « LA BROCHE »<br>\r\n36, rue du Stand – 1204 GENEVE<br>\r\ndès 20h15<br>\r\n','','','');
INSERT INTO ling_event VALUES (72,'2005-11-08','Séminaire de linguistique','public','12h-14h, salle L208\r\nRoberto Zamparelli, université de Trento\r\n\"The DP syntax-semantics interface\"','','','semrech');
INSERT INTO ling_event VALUES (70,'2005-10-31','Groupe de lecture en pragmatique','public','Le groupe de lecture en pragmatique a pour objectif de \r\nlire un livre important sur une question de pragmatique \r\n(présentation de chapitres par les étudiants). L\'ouvrage du \r\nsemestre d\'hiver sera le suivant: Marc Hauser, The \r\nevolution of communication, Cambridge (MA), MIT Press, \r\n1996.','http://www.unige.ch/lettres/linguistique/moeschler/groupe-lecture/index.php','','glecture');
INSERT INTO ling_event VALUES (69,'2005-10-18','Assemblée des enseignants du département','private','12h15 en L208<br>\r\n<a href=http://www.unige.ch/lettres/linguistique/docs/intranet/2005.10.18_enseignant_LINGE.ppt>présentation</a>, \r\n<a href=http://www.unige.ch/lettres/linguistique/docs/intranet/2005.10.18.PV.doc>PV</a><br>\r\n\r\n','','','reunion');
INSERT INTO ling_event VALUES (74,'2005-11-29','Séminaire de linguistique','public','12h-14h, salle L208, Bernard \r\nJacquemin, Sabine Ploux, ISC Lyon, Présentation du \r\nmodèle géométrique des /Atlas sémantiques/ et \r\nperspectives pour le traitement sémantique des textes \r\nécrits\r\nRésumé\r\nCet exposé articule deux approches dont l’apport \r\nmutuel nous permettra d’aborder le traitement \r\nsémantique des textes écrits.\r\nDans une première partie, nous présenterons les \r\nprincipes de la représentation géométrique du sens \r\ntelle qu’elle est mise en œuvre dans les Atlas \r\nSémantiques. Nous montrerons comment le modèle \r\npeut être le support d’un calcul des valeurs \r\nsémantiques lexicales et de l’appariement entre deux \r\nlangues. Enfin, nous présenterons les résultats obtenus \r\npar H. Ji sur la représentation du contenu des concepts \r\nà partir de relations de co-texte.\r\nDans une deuxième partie, nous nous pencherons sur \r\nles perspectives ouvertes au niveau du texte par ces \r\napproches de la sémantique des mots. Nous \r\nexposerons les fondements d\'une méthode permettant \r\nde globaliser la sémantique de phrases à partir du sens \r\ndes mots qui la constituent. Cette méthode permet \r\nd\'identifier dans des textes les phrases qui \r\ncorrespondent à la réponse à une question posée, \r\nattendu que la signification de l\'une et des autres \r\ncoïncide.','','http://www.unige.ch/lettres/linguistique/docs/Ploux-Geneve-29-11-05.pdf','semrech');
INSERT INTO ling_event VALUES (76,'2005-11-21','Groupe de lecture en pragmatique','public','Présentation du Chapitre 2 The evolution of \r\ncommunication: historical overview, de Marc Hauser, The \r\nevolution of communication, MIT Press, 1996 par Cécile \r\nGrivaz et Monica Jakots','http://www.unige.ch/lettres/linguistique/moeschler/groupe-lecture/index.php','','glecture');
INSERT INTO ling_event VALUES (78,'2005-12-05','Séminaire de linguistique','public','18h-20h, salle L208. \r\nWinfried Lechner: The categorial status of syntactic indices.\r\n\r\nAbstract:\r\n\r\nAdmitting movement indices into the object language generates two problems: First, indices are not part of the numeration, in violation of Inclusiveness. Second, movement indices require a construction specific re-analysis rule in order to yield an interpretable LF-output configuration (see Heim & Kratzer 1998). In this talk, I will discuss evidence that supports the assumption that indices are assigne a syntactic representation, and will suggest a novel perspective on indices that makes it possible to avoid conflicts with Inclusiveness and interpretability.','','','semrech');
INSERT INTO ling_event VALUES (79,'2005-12-06','Séminaire de linguistique','public','Seminaire de Anagnostopoulou *annulé*!!','','','semrech');
INSERT INTO ling_event VALUES (80,'2005-11-14','Absence de Jacques Moeschler','public','Jacques Moeschler ne donnera pas ses cours lundi 14, \r\nmardi 15 et mercredi 16 novembre, pour cause de \r\nparticipation à un colloque à Biarritz (Sem05). Il sera de \r\nretour mercredi 16 en fin de matinée et pourra recevoir les \r\nétudiants qui le désirent mercredi après-midi.','','','');
INSERT INTO ling_event VALUES (81,'2005-11-10','Cours Bloc Phonétique/phonologie : applications logopédiques ','public','Dans le cadre d\'un cours-bloc de 2 jours de la formation Logopédie, les cours Louis-Jean Boë (ICP-Grenoble), Claire Pillot(orthophoniste) et Cécile Fougeron(phonéticienne) pourront être suivis par les personnes en dehors de la formation (les ateliers du vendredi sont réservés à la formation). Voir le programme ci-joint.\r\n','','http://www.unige.ch/lettres/linguistique/docs/CoursBloc_Phon_05.pdf','conf');
INSERT INTO ling_event VALUES (89,'2005-12-09','Séminaire Psycholinguistique : Juan Segui - Comment récupére-t-on le nom des objets?','public','Le Laboratoire de psycholinguistique experimentale vous invite cordialement a participer au seminaire de Juan Segui (Laboratoire de Psychologie Expérimentale, Paris 5) :\r\n\r\nComment récupére-t-on le nom des objets?\r\n\r\nVendredi 9 décembre 2005 a 14h, salle 4189.\r\n\r\n','http://www.unige.ch/fapse/PSY/persons/frauenfelder/talks/seminaires.html','','conf');
INSERT INTO ling_event VALUES (90,'2006-01-13','Séminaire Psycholinguistique : Ram Frost - Morphological and orthographic processing in Hebrew and English','public','from Department of Psychology, Hebrew University of Jerusalem\r\n14h, salle 4189, uni Mail\r\n\r\n','http://www.unige.ch/fapse/PSY/persons/frauenfelder/talks/seminaires.html','','conf');
INSERT INTO ling_event VALUES (95,'2005-12-22','Verrée de Noël','private','Eric W propose une verrée en L511 ce jeudi 22 décembre à partir de 17h. Je suis aussi plutôt pour. Bonne fêtes de fin d\'anneille.','','','reunion');
INSERT INTO ling_event VALUES (92,'2005-12-12','Groupe de lecture en pragmatique','public','Chapitre 3 (Conceptual issues in the study of \r\ncomunication) de Marc Hauser, The evolution of \r\ncommunication, présenté par Marianna Pak, Svetlana \r\nDupriez, Stefan Bodea\r\nL208, 18h15-20','','','glecture');
INSERT INTO ling_event VALUES (93,'2005-12-16','(Multiple-)Wh-Movement: Structures and Derivations','public','Bonjour,\r\n\r\nVeuillez consulter le programme du workshop sur les wh organisé ce vendredi. Vous recevez ce mail assez tard dû à des empêchements de dernier minute des invités.\r\nOn vous attend nombreux vendredi.\r\n\r\nA bientôt, \r\nGabi Soare','','http://www.unige.ch/lettres/linguistique/docs/Workshop_programme.doc','conf');
INSERT INTO ling_event VALUES (96,'2005-12-20','Linglunch: Some issues on the structure of du/des-NPs in French','private','Discussion informelle menée par Tabea. Mardi 20 décembre, 12h15, L 208','','','reunion');
INSERT INTO ling_event VALUES (97,'2006-01-06','Sortie ski du département','private','Vendredi 06 janvier 2006 : première sortie à ski de la saison pour décrasser les repas de fêtes. la station reste à définir. les suggestions sont les bienvenues. joyeuses fêtes à tous. j:-P','','','reunion');
INSERT INTO ling_event VALUES (98,'2006-01-26','Colloque Latsis: Early Langauge Development and Disorders ','public','Colloque international en pycholinguistique: Jan 26-28, 2006','http://www.unige.ch/fapse/PSY/LATSIS/','','conf');
INSERT INTO ling_event VALUES (99,'2006-01-30','Doug Saddy (Potsdam): Looking for Meaning: Processing Polarity Constructions','public','18h. salle L-208 (Landolt).\r\n\r\nThis talk will  provide an overview of the results of recent investigations into the processing of polarity constructions in German.  We will consider the following questions: Are negative and positive polarity constructions processed the same way? How is the processing of the polarity dependency affected by intrusive information? Can the cortical reflexes of negative and positive polar interpretations be distinguished?  The talk will highlight the application of new non-linear analytic methods and their application to understanding the time course and processing loads associated with sentence processing.\r\n','','','semrech');
INSERT INTO ling_event VALUES (100,'2006-01-31','Doug Saddy (Potsdam): Grammatical Perception: An investigation of the limits of statistical rule learning','public','14h, salle 5193 (Uni Mail).\r\n\r\nThere has been much recent discussion about the centrality (or lack of it) of recursion in language and cognition.  In this talk I will review some of the recent literature on statistical learning and present the results of some recent studies that examine the ability of adults to detect both recursively driven and non-recursive structure in auditory stimuli. I will show that humans have a remarkable ability to detect recursively driven structure in pseudo-random strings. I will argue that the special property that recursion brings to language and cognition is not necessarily what has been assumed, and suggest that further investigation of this ability may reveal a type of cortical processing that mediates between higher level cognitive representations and lower level perceptual phenomena.','','','conf');
INSERT INTO ling_event VALUES (101,'2006-01-16','Groupe de lecture de pragmatique','public','Carmen Miresan et Madalina Tenea présentent le chapitre \r\n5 (Ontogenetic design of communication) du livre de Marc \r\nHauser, The evolution of communication, MIT Press, 1996','','','glecture');
INSERT INTO ling_event VALUES (102,'2006-01-17','Assemblée générale du Département de linguistique, L208, 12h15-14h','public','désignation de la commission mixte, renouvellement des \r\nmembres du corps professoral','','','reunion');
INSERT INTO ling_event VALUES (103,'2006-02-06','Groupe de lecture de pragmatique','public','chapitre 6, Psychological design of communication, de \r\nMarc Hauser, The evolution of communication, présenté \r\npar Sandrine Zufferey et Andrei Popescu-Belis','','','glecture');
INSERT INTO ling_event VALUES (104,'2006-01-16','Programme du séminaire de recherche','public','','','http://www.unige.ch/lettres/linguistique/docs/SEMINAIRE DE LINGUISTIQUE-05-06.doc','');
INSERT INTO ling_event VALUES (105,'2006-03-15','cours ','public','Nouveau cours inter-facultaire pour les personnes désirant devenir professeur-chercheur','http://www.unige.ch/presse/archives/unes/2006/20060116_carriere_aca.php','','reunion');
INSERT INTO ling_event VALUES (106,'2006-06-01','PROGRAMME DU SEMINAIRE DE RECHERCHE','public','Vous trouverez sous ce lien le programme complet du séminaire de recherche. Il sera régulièrement mis à jour (Pour toute question/modification, veuillez vous adresser à genoveva.puskas@lettres.unige.ch) ','','http://www.unige.ch/lettres/linguistique/docs/SEMLING-05-06-7.doc','semrech');
INSERT INTO ling_event VALUES (109,'2006-01-23','Brownbag seminar de TECFA: WikiViz : la visualisation d\'un réseau sémantique','public','Le prochain Brownbag seminar aura lieu le lundi 23 janvier de 12h15 à 13h45 à TECFA-Accacias\r\nUrs Richle, écrivain et développeur en séjour à Tecfa présentera son dernier projet : WikiViz : la visualisation d\'un réseau sémantique\r\n\r\nOutil cognitif permettant d\'explorer le contenu sémantique de la plateforme MediaWiki (www.mediawiki.org) à l\'aide d\'une carte conceptuelle.\r\n\r\n* structurer les connaissances\r\n* aider à la mémorisation\r\n* amplifier la cognition\r\n* renforcer la pensé réflexive\r\n* créer des conflits cognitifs et stimuler l\'autorégulation cognitive\r\n* servir comme outil de suivi\r\n\r\nLes séminaires \"brownbag\" se déroulent certains lundi de 12h15 à 13h45 dans les locaux de TECFA, aux Accacias. Des chercheurs, enseignants, étudiants ou autres personnalités interviennent pour présenter leur travail dans une ambiance détendue. \r\n\r\n','http://tecfa.unige.ch/tecfa/brownbags/welcome.htm','','conf');
INSERT INTO ling_event VALUES (114,'2006-02-06','Le rôle des indices prosodiques dans la segmentation lexicale et l\'analyse syntaxique','public','Le Laboratoire de psycholinguistique experimentale et le Laboratoire de developpement et troubles du langage vous invitent cordialement a participer au seminaire que donnera Séverine Millotte (Université de genève)\r\n\r\n','http://www.unige.ch/fapse/PSY/persons/frauenfelder/talks/seminaires.html','','conf');
INSERT INTO ling_event VALUES (115,'2006-02-07','Séminaire de recherche','public','Jacques Jayez (ENS Lettres et SH, Lyon), Une sémantique \r\ndynamique des implicatures conventionnelles\r\nRésumé: Des travaux récents sur les implicatures et les \r\nprésuppositions confirment l\'intuition de Ducrot (1972), \r\nselon laquelle les présuppositions ne sont pas vraiment \r\nintégrées dans le contenu asserté. Potts (2005) montre \r\nque c\'est également le cas pour les implicatures \r\nconventionnelles. La question qui se pose \r\nimmédiatement est la suivante: si les implicatures \r\nconventionnelles et les présuppositions ne contribuent \r\npas au contenu asserté, ou, plus généralement, au \r\ncontenu propositionnel, à quoi servent-elles \r\nexactement? Intuitivement, il est difficile de dire qu\'elle \r\nne véhiculent aucune information, mais de quelle \r\nnature est cette information et comment se combine-t-\r\nelle avec le contenu propositionnel et la force \r\nillocutoire qui le module? Dans cet exposé, je montre \r\nque: 1. la frontière entre implicature conventionnelle et \r\nprésupposition est difficile à établir car elle correspond \r\nà une distinction \"modale\" (épistémique) très délicate; \r\nen substance, les présuppositions sont des implicatures \r\nconventionnelles présentées comme déjà présentes \r\ndans l\'état d\'information du locuteur au moment de son \r\nénonciation; 2. les théories vériconditionnelles, quoique \r\nde natures très différentes (Beaver 2001, Merin 2003, \r\nPotts 2005), ont du mal à capturer ce qui est spécifique \r\ndes présuppositions par rapport aux implicatures non \r\nprésuppositionnelles;3. une approche épistémique \r\ndynamique et multi-agent est à l\'heure actuelle le \r\nmeilleur candidat, même si elle ne résout pas tous les \r\nproblèmes.','http://perso.ens-lsh.fr/jjayez/index.html','','semrech');
INSERT INTO ling_event VALUES (116,'2006-01-31','Mike Rosner (Malte): Natural Language Generation and Multimodality','public','12-14h, salle L208. The first part of this seminar will delimit the terrain by introducing some fundamental concepts of NLG (including in particular a comparison with NLU) and multimodality. The second part will concentrate on current and future projects at the University of Malta. These concern (i) generation of spatial prepositional phrases (ii) simplification of multimodal route descriptions. Presentation of a third project on natural generation of sign-language, which is currently in the planning stage, will provide a setting for discussion of some of the most challenging issues facing research in this area.\r\n \r\n','','','semrech');
INSERT INTO ling_event VALUES (117,'2006-02-15','Modèles de la compétence discursive - journées d\'étude BAI Louvain Genève','public','Deux journées d\'étude réunissent linguistes, \r\npsychologues, didacticiens et formateurs de Louvain-\r\nla-Neuve et Genève (Bourse d\'Appui à \r\nl\'Internationalisation BAI). Analyses de corpus \r\nauthentiques variés; comparaisons de diagnostics; \r\nréflexion sur l\'outillage et la posture didactique-\r\nformatrice, sur la variation longitudinale, et les \r\ntransferts (oral-écrit; L1-L2) dans un modèle général \r\nde la compétence discursive.\r\naa-03.02.06','','http://www.unige.ch/lettres/linguistique/docs/BAI_Journées_GE06Pro.pdf','');
INSERT INTO ling_event VALUES (118,'2006-03-10','2ème Journée Ski 2006 du Département','private','2ème sortie à ski avant le début des cours (semestre d\'été). station et transport restent encore à définir. on en reparle début mars.... jpg','','','');
INSERT INTO ling_event VALUES (119,'2006-03-02','Journées Analyse du discours et des interactions - Lyon ','public','','','http://www.unige.ch/lettres/linguistique/docs/Programme_2-3_mars_06.pdf','conf');
INSERT INTO ling_event VALUES (130,'2006-05-30','Tijana Asic (Belgrade), L\'aspect lexical et morphologique et les instructions des temps  verbaux','public','12h15-14h, salle L208<br>\r\nJe vais montrer et analyser plusieurs situations \r\npossibles dans les langues:\r\na) l\'instruction aspectuelle d\'un TV est plus forte que \r\nl\'aspect lexical (le cas du passé simple en français)\r\nb) l\'instruction aspectuelle d\'un TV est moins forte que \r\nl\'aspect lexical (le cas du futur simple en français)\r\nc) l\'instruction aspectuelle d\'un TV est moins forte que \r\nl\'aspect morphologique (le cas du futur antérieur en \r\nserbe)\r\nd)  l\'instruction aspectuelle d\'un TV  ne supporte pas un \r\ncertain aspect morphologique (le cas de l\'aoriste en \r\nserbe).\r\nJe vais commenter les résultats de mes analyses avec \r\nles outils provenant de la Théorie de l\'Optimalité (Prince \r\net Smolensky, 1993).','http://tel.ccsd.cnrs.fr/documents/archives0/00/00/79/99/index_fr.html','','semrech');
INSERT INTO ling_event VALUES (131,'2006-05-23','L’acquisition du schwa en français: enjeux théoriques et pratiques','public','12h15-14h, salle L208<br>\r\nHelene Nordgard Andreasson (Université de Tromso/Université de Genève)  \r\nRésumé:\r\n\r\nDans cette communication, je présenterai le projet L’acquisition du schwa en français. La communication comprendra deux parties. Dans une première partie, je discuterai en quoi la distribution du schwa (le e muet) lors l’acquisition de L1 permet d’enrichir notre compréhension du comportement du schwa en général. Je me concentrerai surtout sur la question de la variation inhérente, de la qualité vocalique et de la forme sous-jacente. Dans cette discussion, je me servirai de quelques analyses précédentes du schwa (Anderson 1982, Tranel 2000), ainsi que du Gradual Learning Algorithm (GLA) de Boersma & Hayes (2001). Dans une deuxième partie, je présenterai le travail de terrain que je mène actuellement dans les environs de Nyon. J’exposerai le corpus en cours de construction, le choix de méthodologie ainsi que quelques indications préliminaires sur la distribution du schwa dans le langage des enfants suisses de 2;6-3;0.\r\n\r\n\r\nBibliographie\r\nAnderson, S. 1982. « The Analysis of French Shwa : Or, How to Get Something for \r\nNothing. » Language 58. 534-573.\r\nBoersma, P. & B. Hayes. 2001. « Empirical Tests of the Gradual Learning Algorithm. » \r\nLinguistic Inquiry 32. 45-86.\r\nTranel, B. 2000. « Aspects de la phonologie du français et la théorie de l’optimalité. » \r\nLangue Française 126. 39-72.\r\n','','','semrech');
INSERT INTO ling_event VALUES (121,'2006-03-30','Mini-cours Erasmus: Issues of distribution and interpretation of adjectives across languages','public','Trois séances sur les adjectifs, proposéss par Prof. Melita Stavrou (Thessalonique):<ul><li><a href=\"docs/General introduction-stavrou.pdf\">Présentation</a><li>lundi 27 mars de 18h à 20h (L-208) <a href=\"docs/First_handout.pdf\">handout</a><li>mardi 28 mars de 12h à 14h (L-208)<li>le jeudi 30 mars de 16h à 18h <strong>(B-103)</strong>.</ul>','','','reunion');
INSERT INTO ling_event VALUES (123,'2006-03-20','Cristiano Chesi (Siena): Top Down Minimalist Grammars','public','Première d\'une série de deux ou trois conférences sur le traitement syntaxique mode minimaliste.','','','semrech');
INSERT INTO ling_event VALUES (124,'2006-03-14','Mireille Lapata - Constructing Semantic Space Models from Parsed Corpora','public','Tuesday 14th March 12-14 L208\r\n\r\nConstructing Semantic Space Models from Parsed Corpora\r\n\r\nTraditional vector-based models use word co-occurrence counts from\r\nlarge corpora to represent lexical meaning. In this talk we\r\npresent a novel framework for constructing semantic spaces that\r\ntakes syntactic relations into account. We introduce a\r\nformalisation for this class of models which allows linguistic\r\nknowledge to guide the construction of semantic spaces. We\r\nevaluate our framework on tasks that are relevant for cognitive\r\nscience and NLP: semantic priming, lexicon acquisition and word\r\nsense disambiguation. In all cases we show that our framework\r\nobtains results that are comparable or superior to state-of-the\r\nart.\r\n','','','semrech');
INSERT INTO ling_event VALUES (125,'2006-03-15','Conférence Erasmus - Mireille Lapata (Edimbourg)','public','Wednesday 15th March 14-16 L511\r\n\r\nConstraint-based Sentence Compression: An Integer Programming\r\nApproach\r\n\r\nIn this talk we introduce the sentence compression task, which can be\r\nviewed as producing a summary of a single sentence.  An ideal\r\ncompression algorithm should produce a shorter version of an original\r\nsentence that retains the most important information while remaining\r\ngrammatical. The task has an immediate impact on several applications\r\nranging from document summarisation to audio scanning devices for the\r\nblind and caption generation.\r\n\r\nPrevious approaches have primarily relied on parallel corpora to\r\ndetermine what is important in a sentence. These include data\r\nintensive methods inspired from machine translation using the\r\nnoisy-channel model and from parsing by treating compression as a\r\nseries of tree rewriting operations.  Our work views sentence\r\ncompression as an optimisation problem. We develop an integer\r\nprogramming formulation and infer globally optimal compressions in the\r\nface of linguistically motivated constraints. We show that such a\r\nformulation allows for relatively simple and knowledge-lean\r\ncompression models that do not require parallel corpora or large-scale\r\nresources. The proposed approach yields results comparable and in some\r\ncases superior to state-of-the-art.\r\n','','','conf');
INSERT INTO ling_event VALUES (126,'2006-03-21','Anne Catherine Simon (Louvain-la-Neuve): Prosodie et contexte. ','public','<font color=red>ANNULÉ</font> Prosodie et contexte. Comment interpréter les aspects \r\n\"phonétiques\" de la prosodie en discours? ','','','semrech');
INSERT INTO ling_event VALUES (129,'2006-04-25','Quantification ramifiée en grammaire générative','public','Isabelle Berlanger (UCLouvain)\r\n12h15 - 14h\r\nL208','','','semrech');
INSERT INTO ling_event VALUES (128,'2006-04-13','Cours Erasmus','public','Gillian Ramchand (Université de Tromsö) donne  un mini-cours dans cadre des échanges Erasmus du 10 au 13 avril. Sujet: `First Phase Syntax\'(general verbal decomposition, results and paths and causatives).<br>\r\nHoraires:<ul>\r\n<li>Mardi 11 avril: 12-14, L208\r\n<li>Mercredi 12 avril: 12-14, A323\r\n<li>Jeudi 13 Avril: 12-14, L208\r\n</ul>\r\nHandouts: <a href=docs/Gillian_Ramchand_1.pdf>1</a> <a href=docs/Gillian_Ramchand_2.pdf>2</a> <a href=docs/Gillian_Ramchand_2b.pdf>2b</a>','','','conf');
INSERT INTO ling_event VALUES (132,'2006-05-29','Veran Stanojevic (Belgrade): Sur l\'interprétation des indéfinis: de la logique du premier ordre aux approches dynamiques','public','ATTENTION: SEMINAIRE EXCEPTIONNEL, LUNDI 18h-20h, Salle L208<br>\r\n\r\nApproches référentielles vs. approches \r\nquantificationnelles: problèmes empiriques; \r\nreprésentation sémantique des SN indéfinis, liage de \r\npronoms anaphoriques et interprétation des indéfinis \r\n(problème des \"donkey sentences\"), indéfinis en tant \r\nque variables discursives (DRT), problèmes de \r\nl\'interprétation des numéraux nus et des numéraux \r\nmodifiés','','','semrech');
INSERT INTO ling_event VALUES (135,'2006-05-16','Michal Starke (CASTL, Tromso)','public','12h15-14h, salle L208','http://uit.no/humfak/3345/175','','semrech');
INSERT INTO ling_event VALUES (136,'2006-05-09','Olaf Koeneman (Meertens Insitute, Amsterdam): Presentation of the European Dialect Syntax project (Edisyn)','public','Our goal is to set up a European network of research groups collecting and investigating data on syntactic phenomena particular to dialects, using similar standards with respect to methodology of data collection, data storage and annotation, data retrieval and cartography.<br>\r\nThe presentation includes<ul><li>(i) a description of the SAND project (Syntactic Atlas of the Dutch\r\nDialects). This discusses how the research and the concomitant database were set up, which methodological choices were made and why, which empirical issues were investigated and why, etc.\r\n<li>a demonstration of the online database and the cartographic tool, which allows the automatic generation of maps of selected variables\r\n<li>a description of the Edisyn project and the European network of\r\ndialect syntax.</ul>','http://www.meertens.knaw.nl/projecten/edisyn/','','semrech');
INSERT INTO ling_event VALUES (137,'2006-05-16','Le Dictionnaire suisse romand: genèse, microstructure, phonétique','public','14h15-16h, salle B111<br>\r\nDans le cadre du cours \"Phonétique et phonologie du français\" et du séminaire \"Construction et usage du lexique\" du module (BA1/DE6)<br>\r\n\r\nRaphaël Maître, Glossaire des patois de la Suisse romande et Centre de\r\ndialectologie de l\'Université de Neuchâtel.<br>\r\n\r\nDorothée Aquino, Centre de dialectologie de l\'Université de Neuchâtel.','','','conf');
INSERT INTO ling_event VALUES (138,'2006-06-06','Dies Academicus','public','','http://www.unige.ch/presse/communique/05-06/0530Dies.html','','');
INSERT INTO ling_event VALUES (139,'2006-06-07','Sandra Schwab de l\'Université de Neuchâtel: \"Les variables temporelles en perception et production de la parole\"','public','dans le cadre du cours de Jean-Philippe Goldman \"Phonologie et prosodie\"<br>\r\n8h30-10h à UniPignon S04','','','semrech');
INSERT INTO ling_event VALUES (140,'2006-06-13','Soirée de la Faculté des Lettres','public','','','','');
INSERT INTO ling_event VALUES (141,'2006-06-14','Cristina Petras, Université A.I. Cuza de Iasi, Roumanie,  Alternance des marqueurs discursifs \'but\' et \'mais\' dans un corpus acadien de la Nouvelle-Ecosse: double emploi ou spécialisation sémantique/pragmatique?','public','L208, 11h-12h <br>\r\nIntervention dans le cadre du séminaire BA5-6 Sémantique dynamique de Jacques Moeschler (échange Socrates)','','','semrech');
INSERT INTO ling_event VALUES (142,'2006-10-23','Séance d\'accueil pour les nouveaux étudiants','public','12h en B106\r\nUnité d\'enseignement: Linguistique','http://www.unige.ch/lettres/or/Rentree2006.pdf','http://www.unige.ch/lettres/linguistique/docs/LINGE.pdf','reunion');
INSERT INTO ling_event VALUES (143,'2006-10-30','Phonology in Down Syndrom- linguistic deficit or peripheral impairment? Michele Pettinato (City University London, Language and Communication Science)','public','à 14h15, salle 4393 (Unimail)<br>\r\n<br>\r\nLe Laboratoire de psycholinguistique expérimentale vous invite cordialement à participer au séminaire de Michele Pettinato (City University London, Language and Communication Science) intitulé:<br>\r\n<br>\r\nPhonology in Down Syndrom- linguistic deficit or peripheral impairment?\r\n\r\nDiscussions of linguistic abilities in children with Down Syndrome routinely focus on phonological difficulties. Nevertheless, there are very few studies into the nature of linguistic impairment in these children. Our work primarily aims to draw up a phonological profile in this population, but we would also like to propose that detailed investigations of phonetics and phonology could eventually shed more light on the origin of the deficit.','','','conf');
INSERT INTO ling_event VALUES (156,'2006-10-25','Séance d\'introduction pour l\'unité Linguistique Informatique','public','à Bastions B112<br>11h15','','','reunion');
INSERT INTO ling_event VALUES (145,'2006-10-31','Conférence de Ian Roberts (University of Cambridge)','public','Titre: A Deletion Analysis of Null Subjects: French as a Case Study. ','','','semrech');
INSERT INTO ling_event VALUES (146,'2006-11-07','Conférence de Vlad Zegarac (University of Bedfordshire)','public','Titre : A Cognitive Pragmatic Perspective on Communication and Culture. <br>\r\n<br>\r\nRésumé: In this talk I try to present an argument and to consider some examples of intercultural communication which support the view that a particular cognitive perspective on culture and communication (Sperber’s (1996) epidemiological approach to culture and Sperber and Wilson’s (1986; 1995) Relevance-theoretic account of communication and cognition) provides an explanatory framework for analyzing communicative behaviour in the context of culture. In particular, I argue that the concept of ‘mutual cognitive environment’ can be related to culture in a way which brings us closer to an understanding of its role in communication. On the one hand, this argument addresses some well-known criticisms of Relevance theory. On the other hand, the unified cognitive approach to culture and communication advocated in this talk has some interesting implications for considering culture and communication in various professional settings (such as cross-cultural training and language teaching). ','','','semrech');
INSERT INTO ling_event VALUES (147,'2006-11-14','Conférence de Istvan Kecskes (State University of New York, Albany)','public','Titre : \r\nA cognitive-pragmatic approach to meaning.<br>\r\n<br>\r\nRésumé:\r\nThis paper argues that world knowledge is available to interlocutors in two forms: as encapsulated in lexical items based on prior encounters and experience, and as provided by the actual situational context framed by the given situation. Actual situational meaning is the result of the interaction of the two sides of world knowledge represented by the private contexts of the speaker and hearer, and the actual situational context. \r\nThe S-context is the private context that is uttered “out there” in the world by a speaker in a situation (actual situational context= A-CONTEXT), and is matched (“internalized”) to the private context represented by lexical units “inside” the head of the hearer (prior knowledge) = H-CONTEXT.','','','semrech');
INSERT INTO ling_event VALUES (148,'2006-11-21','Conférence de Hagit Borer (University of Southern California) ','public','Title: Locales','','','semrech');
INSERT INTO ling_event VALUES (149,'2006-11-28','Conférence de Enoch Aboh (University of Amsterdam)','public','Titre: The P route.<br>\r\n<br>Résumé: In this paper, I show that, in certain locative phrases, the preposition encoding \r\ndirection/path selects a truncated possessive phrase or a predicate phrase in which the \r\nfigure is the subject and its part expressing the location is embedded in the complement. \r\nThe head of the part-phrase incorporates in a higher functional head leading to P1-DP-P2 \r\nsequences in some Kwa languages. In Chadic, Romance, and Germanic, however, P2 undergoes \r\npredicate head inversion and moves past the figure, dragging along a possessive \r\ninflection. This movement operation generates P1-P2-Poss-DP sequences. ','','','semrech');
INSERT INTO ling_event VALUES (150,'2006-12-05','Conférence de Kleanthes Grohman (University of Cyprus)','public','Title: Structuring the derivation: Prolific Domains','','','semrech');
INSERT INTO ling_event VALUES (151,'2006-12-04','Conférence de Franck Ramus (EHESS/ENS/CNRS Paris)','public','Titre: Génétique du langage.<br>\r\n<br>\r\nRésumé: Les bases génétiques du langage font l’objet de spéculations depuis des décennies. L’achèvement du séquençage du génome humain permet enfin de commencer à aborder le sujet de manière empirique. Nous examinerons les premières données de génétique moléculaire sur des troubles développementaux du langage. Ces données seront l’occasion de se pencher sur la complexité des processus biologiques nécessairement impliqués, d’écarter toute notion simpliste de \"gène du langage\" et d’acquérir une vision informée de ce que peut être une contribution génétique à la faculté de langage.','','','semrech');
INSERT INTO ling_event VALUES (152,'2006-12-12','Conférence de Francesco Costantini (University of Venice)','public','Titre: An interface approach to obviation in subjunctive clauses.','','','semrech');
INSERT INTO ling_event VALUES (153,'2006-12-19','Conférence de Shigeru Miyagawa (MIT)','public','Title: Why Agree? Why Move?','','','semrech');
INSERT INTO ling_event VALUES (154,'2007-01-30','Conférence d\'Anne Reboul (ISC/CNRS, Lyon)','public','Titre : Vers une théorie des concepts compatible avec la parcimonie sémantique et avec la syntaxe exo-squelettale.<br>\r\n<br>Résumé: La pragmatique contemporaine et certaines approches en sémantique formelle s\'appuient sur l\'idée, proposée par Grice dans les années 70, selon laquelle il ne faut pas multiplier les significations au-delà de ce qui est strictement nécessaire. Dans les dernières années, un mouvement syntaxique, appelé \"exo-squelettal\" par Borer, s\'est développé parallèlement. Bien que totalement indépendants et à première vue étrangers l\'un à l\'autre, ces deux mouvements convergent vers l\'idée selon laquelle la signification lexicale est beaucoup plus pauvre et bien moins déterminée qu\'on a bien voulu le croire. Apres un bref rappel des positions principales de ces deux théories, la parcimonie sémantique et la syntaxe exo-squelettale, j\'esquisserai une théorie des concepts qui me paraît répondre aux nécessités qu\'elles produisent. Je définirai la notion de concept appropriée et indiquerai comment se fait l\'acquisition de tels concepts.','','','semrech');
INSERT INTO ling_event VALUES (166,'2007-01-25','Morpho-syntaxe du grec moderne','public','Conférence de Vassilis Spiropoulos donnée dans le cadre du cours Syntaxe avancée.<br>\r\n10h15-12h00, salle B104.','','','conf');
INSERT INTO ling_event VALUES (157,'2006-10-30','Groupe de lecture en pragmatique, L208, 18h15-20h','public','Lecture du livre d\'Anne Reboul (ISC Lyon), Langage et \r\ncognition humaine, à paraître aux Presses Universitaires \r\nde Grenoble, janvier 2007\r\nPrésentation de l\'Introduction (par J. Moeschler)','http://www.unige.ch/lettres/linguistique/moeschler/groupe-lecture/index.php','','glecture');
INSERT INTO ling_event VALUES (158,'2006-11-08','Bilingual Pragmatics (1), M7 EDSLD CUSO, A208 (10-12), B302 (14-17)','public','5h de cours donnés par le prof. Istvan Kecskes (SUNY, \r\nAlbany), dans le cadre du programme doctoral CUSO en \r\nSciences du Langage (module7). Enseignement réservé \r\naux doctorants CUSO en Sciences du Langage (sur \r\ninscription), ouvert aux étudiants de DEA UniGe (sur \r\ndemande).','http://www.unige.ch/lettres/linguistique/edsdl/M7','http://www.unige.ch/lettres/linguistique/docs/genevacourseM7.pdf','semrech');
INSERT INTO ling_event VALUES (159,'2006-11-13','Groupe de lecture en pragmatique, L208, 18h15-20h','public','Présentatin du chapitre 1 (commmunication animale vs. \r\ncommunication humaine) du livre d\'Anne Reboul, Langage \r\net cognition humaine (à paraître, Presses Universitaires de \r\nGrenoble) par T. Gaivas et D. Istrati','','','glecture');
INSERT INTO ling_event VALUES (160,'2007-01-15','Conférence d\'Antonella Sorace (University of Edinburgh)','public','Attention horaire spécial : 18h15 - 19h45, salle L208.<br>\r\n<br>\r\nTitle: Syntax-discourse interfaces in bilingual speakers: issues of representation and processing.<br>\r\n<br>\r\nAbstract: Some of the interfaces between syntax and other cognitive domains have been shown to  be unstable and open to cross-linguistic influence in different areas of bilingual language development, including adult second language acquisition, first language attrition, and  bilingual first language acquisition. This instability is manifested in optionality and variability in production and interpretation. The nature of interfaces, however, is still poorly understood and is therefore unclear what causes instability at interfaces, what distinguishes among different interfaces in developmental terms, and why not all interfaces appear to be equally open to instability. I will focus on the syntax of pronominal subjects as a syntax-discourse interface phenomenon that turns out to be prone to optionality in Italian-English and Spanish-English bilingual speakers. One of the distinctive characteristics of the Italian of bilingual speakers is the (optional) inappropriate use of overt subject pronouns in contexts that call for the use of a null subject (‘Quando Mariai è andata a trovare Paolaj, leii ha portato un mazzo di fiori” When Maria visited Paola, she brought some flowers). Why is this a privileged domain for optionality? Two broad types of explanations have been proposed: one is that optionality is the result of un(der)specification of interface features at the level of knowledge representations; the other is that it stems from the lack of processing resources to integrate the multiple (syntactic, pragmatic) types of information involved in the appropriate selection of a particular pronominal form. I will explore the second explanation in some detail, based on recent research on the processing of pronoun-antecedent dependencies in Italian (Carminati, 2002, 2005). I will suggest that a complex interaction of structural factors and processing requirements in bilingual language development favours overt subject pronouns as the most ‘economical’ forms. Moreover, since this pattern is found in bilinguals irrespective of whether one of their languages does or does not allow null subjects, crosslinguistic influence cannot be the only cause. It is therefore important to distinguish—theoretically and methodologically— between cross-linguistic influence and the use of default forms. Finally, although both child (early) and adult (late) bilinguals appear to use overt subject pronouns inappropriately, they may do so for different reasons: bilingual children’s overuse of overt pronouns may reflect a tendency to avoid ambiguity and miscommunication, whereas redundant overt pronouns in adult bilinguals  may be a  genuine default strategy to compensate for insufficient processing resources.\r\n\r\n\r\n \r\n','','','semrech');
INSERT INTO ling_event VALUES (161,'2006-12-18','Soutenance de thèse  Yoshio Endo : \"A study of the cartography of the Japanese Syntactic Structures\"','public','14h A-208 (Aile Jura)','','','conf');
INSERT INTO ling_event VALUES (162,'2007-01-23','Conférence de Vassilis Spiropoulos (Université de l\'Egée, Rhodes)','public','Title : Agreement and Conjunction in Greek.<br>\r\n<br>Abstract: This paper investigates the agreement patterns triggered by the conjoined element in the following agreement pairs: (i) DP-subject – verb and (ii) DP – adjectival predicate in secondary predication (small clause)structures. The examination focuses on the distribution of full vs. partial/first conjunct agreement regarding number (both pairs) and gender (DP – adj. predicate pair). <br>\r\nWhereas full agreement is the only option for SVO orders in Greek, partial/first conjunct agreement is also available in VSO orders. In this respect, it is argued that Greek patterns similarly to Moroccan Arabic, for which it has been argued that partial/first conjunct agreement in VSO orders is the result of clausal and not of phrasal coordination (Aoun, Benmamoun & Sportiche 1994, Aoun & Benmamoun 1999, Benmamoun 2000).<br>\r\nDP – adjective predicate pairs exhibit a very complex agreement pattern, which is determined by divergent factors. It will be shown that the overall pattern involves three different subpatterns: (i) full agreement with gender resolution rules, (ii) first conjunct agreement which is the result of clausal coordination and not phrasal coordination, (iii) partial gender\r\nagreement with the most adjacent conjunct.<br>\r\nThe examination of these patterns will offer some very interesting insights about (i) the structure of coordination in Greek and (b) the computation of the feature constitution of the conjoined element as it derives from the feature constitution of its conjuncts, (iii) the hierarchy of agreement features.','','','semrech');
INSERT INTO ling_event VALUES (163,'2007-01-15','Effets syntagmatiques et paradigmatiques de la prosodie','public','Exposé d\'Anne Catherine Simon (Louvain la Neuve)\r\nLundi 15 janvier 2007, 12h15-14h, A 214\r\n(dans le cadre du DEA Prosodie du discours et de \r\nl\'échange)','','','conf');
INSERT INTO ling_event VALUES (164,'2007-01-16','Conférence de F.-Xavier Alario (Laboratoire de Psychologie Cognitive, CNRS, Marseille)','public','Titre: Le choix des mots: Approche psycholinguistique de la production de déterminants.<br>\r\n<br> Résumé (l\'exposé sera donné en français):<br>\r\nA fundamental aspect of many cognitive models of language production is how they select information for further processing. In this context, open and closed-class words have been hypothesized to be processed by different mechanisms. In this research, we address the issue of closed-class word selection by investigating how determiners are retrieved for speaking.\r\n<br>\r\nWe used several reaction time paradigms involving the production of determiner + noun phrases in response to pictures (e.g. variants of the Stroop interference paradigm). For example, participants were asked to name pictures of common objects (e.g. “La Table”, the table). At the same time, they ignored distractor determiners printed on the pictures. We manipulated the semantic and syntactic features (e.g., number, gender, type of determiner) that were shared or that contrasted between the distractor determiners and the target determiner. The pattern of results is discussed in relation to current models of word selection. ','','','semrech');
INSERT INTO ling_event VALUES (165,'2007-09-12','Symposium IDP07 Interfaces Discours Prosodie','public','','http://idp07.unige.ch','','conf');
INSERT INTO ling_event VALUES (167,'2007-01-29','Groupe de lecture en pragmatique','public','18h15, salle L208<br>\r\nExposé d\'Anne Reboul<br>\r\nTitre : Le langage est-il un principe organisateur de la cognition humaine ?<br>\r\nChapitre 4 de l\'ouvrage Langage et cognition humaine.','','','');
INSERT INTO ling_event VALUES (168,'2007-03-26','Conférence de Tijana Asic (Université de Belgrade)','public','18h15-20h00, salle L208<br>\r\n<b>Titre : L’emploi des temps verbaux en français chez les gastarbeiters.</b>\r\n<br>Dans mon exposé je vais présenter et analyser les résultats des recherches  sur le terrain (que j’ai effectuées avec V. Stanojevic en 2006) concernant l’emploi des temps verbaux (TVs) en français parlé chez les gastarbeiters (un type d’immigrés économiques) serbes, valaques et tziganes de la première génération. Il s’agit des personnes qui ont appris le français non pas dans le cadre d’une méthode didactique, mais exclusivement de manière spontanée – grâce à l’interaction quotidienne avec leur nouvel environnement linguistique.\r\nJe vais tester si le processus d’acquisitions des TVs aboutit à un ensemble de formes rudimentaires ou peut-être à un vrai système indiquant une assez bonne maîtrise des temps verbaux, leurs formes, fonctions et valeurs. De plus, je constate que le discours des gasterbeiters est une source précieuse d\'informations pour la pragmatique en ce qu\'il montre sa puissance explicative. En effet, le processus d’interprétation des discours temporels des gastarbeiters dépend souvent non seulement de nos connaissance linguistiques mais aussi (voire plus) de nos capacité cognitives. ','','','semrech');
INSERT INTO ling_event VALUES (169,'2007-04-02','Conférence de Veran Stanojevi&#263; (Université de Belgrade)','public','18h15-20h00, salle L208<br>\r\n<b>Titre : Vers un modèle de description des temps du passé intégrant les paramètres temporel, aspectuel et discursif.</b>\r\n<br>Cette présentation a pour but de montrer la nécessité d’introduire trois paramètres dans la description des temps verbaux: le paramètre temporel, le paramètre aspectuel et le paramètre discursif. Ces trois paramètres s’avèrent particulièrement importants pour la description des temps verbaux du passé. J’essaierai de montrer qu’une redéfinition pragmatique du point référentiel reichenbachien peut permettre un traitement procédural de l’ordre temporel. Cette approche permet de traiter les temps verbaux comme donnant des instructions sur la localisation de l’éventualité introduite par un temps verbal, tout en évitant les pièges d’une approche procédurale (comme celle de Kamp et Rohrer, 1983) qui identifie automatiquement le point R à l’éventualité précédemment introduite.','','','semrech');
INSERT INTO ling_event VALUES (170,'2007-04-17','Conférence de Anna Roussou (Université de Patras)','public','<b>Title: Subjects I: Control.</b><br>\r\nIn the present talks I will discuss the relation between C and the subject, \r\nfocusing on control and subject extraction out of an embedded clause. In \r\nparticular, it is shown that we can gain a better understanding of these \r\nphenomena if we consider the lexicalization of C in each case. It is argued \r\nthat an analysis of \'to\' and also \'that\' as nominal elements can account for \r\nthe role they play in the realization and interpretation of the subject. \r\nWith respect to control, the main idea is that \'to\' can subsume the \r\nrealization of the embedded subject (thus satisfying the EPP) and \r\naccordingly mediate its interpretation. Obligatory control (exhaustive in \r\nLandau\'s 2004 terms) arises under those predicates that trigger clause-union \r\n(restructuring); this is further supported by control in finite clauses, as \r\nin the case of Modern Greek \'na\'-clauses, where due to the presence of overt \r\nagreement, disjoint reference is in principle available, but nevertheless \r\nblocked in typical restructuring environments. With respect to extraction, I \r\nwill focus on the well-known \'that\'-t effect, arguing that \'that\' requires a \r\nfull proposition as its complement. In this sense the lexicalization of the \r\nD/EPP position associated with I is necessary. Unlike \'to\' which subsumes \r\nthe EPP, \'that\' requires it. Once the subject is not present, as in the \r\ncases of extraction, \'that\' cannot be present either, thus triggering the \r\n\'that\'-t effect. The implications of this approach are tested on comparative \r\nevidence as well. Finally, the interaction between the various C-types \r\nelements and (non-)finiteness will be considered.','','','semrech');
INSERT INTO ling_event VALUES (171,'2007-04-24','Conférence de Adriana Belletti (Université de Sienne)','public','<b>Title: Pronouns and the <i>edge</i> of the clause.</b><br>\r\nAfter reviewing the similarities and differences between (Italian) Clitic Left Dislocation (CLLD) and Hanging Topic (Cinque (1977), (1990), Benincà (1988), Benincà e Poletto (2004)…), an analysis will be proposed in terms of a partly analogous computation crucially involving movement and doubling in both cases.\r\n<br>\r\nThe talk will then focus on the development of a proposal whose core is the hypothesis \r\nthat different instances of pronominalization could be analyzed as involving the \r\nTopic-Pronoun doubling relation, in the same way overtly realized in (Italian/Romance) \r\nCLLD and HT. In a nutshell: when a simple pronoun is present in the clause, a silent \r\ndoubled non-overt topic, typically a pronoun as well, can be assumed to be present at the \r\n<i>edge</i> of the clause. Hence, presence of a pronoun implies presence of a silent topic. <br>Some principle of non-pronounceability of the <i>edge</i> of the clause (as in Kayne (2005), Rizzi (2005)) \r\naccounts for the lack of the overt realization of the topic, along similar lines of what can be assumed to take place in cases of Topic drop (Ross (1982), Huang (1984), Cardinaletti (1990)). Various possible consequences of the proposed approach, couched within cartographic guidelines, will be discussed in detail.','','','semrech');
INSERT INTO ling_event VALUES (172,'2007-03-13','Conférence d\'Helene N. Andreassen (Université de Tromsø) La théorie de l’optimalité : Les mécanismes et son application à la longueur vocalique','public','L208 - 12h15\r\nLa théorie de l’optimalité (Prince & Smolensky 1993) a révolutionné la phonologie générative en mettant l’accent sur l’output (la surface) plutôt que sur les formes d’input. \r\n\r\nDans ce travail, je vais montrer les notions de base d’OT et voir comment cette théorie se distingue des théories dérivationnelles. Pour illustrer le fonctionnement des mécanismes de la grammaire, je me servirai de la durée vocalique contrastive que l’on peut observer dans le français suisse. Je donnerai une analyse de la longueur telle qu’elle se présente dans nos données, tout en indiquant la façon dont cette grammaire pourrait être acquise par l’enfant.\r\n\r\n','','','semrech');
INSERT INTO ling_event VALUES (174,'0000-00-00','Conelia Hamann (Institute for Foreign Philologies, University of Oldenburg): Unsucessful subordination in French speaking children and adolescents with SLI','public','','','','semrech');
INSERT INTO ling_event VALUES (175,'2007-03-16','Conférence de Cornelia Hamann (Institute for Foreign Philologies, University of Oldenburg): Unsuccessful subordination in French speaking children and adolescents with SLI ','public','Ce séminaire est organisé par le Laboratoire de psycholinguistique. Il a lieu à 14h15, salle 5189, UniMail. ','','','semrech');
INSERT INTO ling_event VALUES (176,'2007-04-03','Prof. Diane Litman, U. Pittsburgh, Discourse and dialogue processing in spoken intelligent tutoring systems.','public','Auditorium 6050, 6th floor, Uni-Mail\r\n10.15 a.m. - 11:15 a.m.<br>\r\n<b>Spoken Dialogue for Intelligent Tutoring Systems: Opportunities and Challenges</b><br>\r\nIn recent years, the development of intelligent tutoring dialogue\r\nsystems has become more prevalent, in an attempt to close the performance gap between human and computer tutors. Tutoring applications differ in many ways, however, from the types of applications for which\r\nspoken dialogue systems are typically developed. This talk will illustrate some of the opportunities and challenges in this area, focusing on issues such as affective reasoning, discourse and dialogue analysis, and performance evaluation.','','','semrech');
INSERT INTO ling_event VALUES (177,'2007-04-19','Conférence de Anna Roussou (Université de Patras)','public','<b>Title: On Subjects II: Extraction.</b><br>\r\nConférence donnée dans le cadre du cours de syntaxe avancée.<br>\r\n10h15-12h00, salle B104\r\n','','','conf');
INSERT INTO ling_event VALUES (178,'2007-06-04','Conférence de Frederick Newmeyer (University of Washington, Seattle)','public','18h15-20h00, salle L208<br>\r\n<b>Titre: Traits typologiques rares : doit-on punir les grammaires qui les légitiment ?</b><br>\r\nMon objectif est d\'explorer le traitement des phénomènes typologiques rares en syntaxe formelle. Je présenterai trois stratégies traditionnellement utilisées pour en rendre compte, en les illustrant par des exemples concrets. Je me tournerai ensuite vers une évaluation de ces stratégies. Les trois stratégies sont les suivantes :<br>\r\n(A) <b>Réductionniste</b>. Le phénomène rare peut être dérivé de l\'interaction entre des processus reconnus pour être largement répandus dans les langues du monde.<br>\r\n(B)<b> Stipulation sur la Grammaire Universelle</b>. La théorie est structurée de manière à ce que la rareté d\'un phénomène soit prédite.<br>\r\n(C) <b>Stipulation interne à la langue</b>. Les phénomènes rares sont en dehors du domaine des Principes et Paramètres de la GU et sont attribués à des règles propres à une ou plusieurs langues données.<br>\r\nL’option réductionniste (A) et la stipulation interne à la langue (C) apparaissent toutes deux comme des stratégies séduisantes, la stratégie réductionniste étant la plus désirable a priori et empiriquement.\r\n','','','semrech');
INSERT INTO ling_event VALUES (179,'2007-05-15','Conférence de Klaus Abels (Université de Tromsø)','public','<b> Title: How the a(nti)symmetric ordering of operations restricts the power of remnant \r\nmovement.</b><br>\r\nIn this talk, I take three assumptions for granted: (i) operations are a(nti)symmetrically ordered, (ii) that a(nti)symmetric ordering affects the sequencing of operations giving rise to remnant movement, and (iii) movement is always to the left. I argue that these three assumptions together make a correct prediction in the area of cross-serial dependencies: it appears to be a universal property of cross-serial dependencies that the scope relations within each of the subsequences goes from left to right never the other way around.\r\n\r\nI then show that existing remnant movement accounts of cross-serial dependencies (Nilsen 2003, Bentzen 2005) and of order preservation (Koopman and Szabolcsi 2000) fail to observe (i) and cannot predict the asymmetry in cross-serial dependencies actually found. This is not just a missing prediction which could be derived from independent principles under these accounts. Rather, it is systematically impossible for these accounts to derive the absence of inverse cross-serial dependencies.\r\n\r\nThis can be viewed as the first step towards restricting the power of remnant movement. Restricting remnant movement is necessary if we want to predict existing linear asymmetries in language. ','','','semrech');
INSERT INTO ling_event VALUES (180,'2007-04-30','Conférence de Anna Cardinaletti (Université de Venise)','public','18h15-20h00, salle L208<br>\r\n<b>Title: The acquisition of adjectival ordering in Italian.</b>','','','semrech');
INSERT INTO ling_event VALUES (181,'2007-05-14','Conférence de Klaus Abels (Université de Tromsø)','public','Conférence donnée dans le cadre du cours d\'introduction à la syntaxe.<br>\r\n16h15-18h00, salle A109<br>\r\n<b>Title: On improper movement and a(nti)symmetric ordering of operations in grammar.</b><br>\r\nGovernment and Binding theory distinguished at least three types of positions that an argument could be found in: theta-positions, Case positions, and operator positions. The architecture of the theory, specifically the assumption that deep structure represents theta relations, together with the projection principle ensured that movement into theta-positions was barred; binding theoretic assumptions about traces made sure that movement from an operator position into a Case position, that is, improper movement, was barred, too. Altogether this derived an order in which any given argument could occupy different positions, (1).\r\n\r\n(1) theta < Case < Op.\r\n\r\nAs has often been noted,  abolishing deep structure allows for movement into theta-positions. We cannot therefore take the first part of the hierarchy in (1) for granted in a Minimalist grammar. The copy theory of movement makes impossible the binding theoretic account of improper movement since all copies are created equal and explicit manipulation of indices is ruled out by inclusiveness.  The theory therefore no longer guarantees the second and third part of the hierarchy, either. Nevertheless, the facts motivating (1) are very robust.\r\n\r\nIn this talk I suggest that the ordering in (1) in fact generalizes in two respects. First a finer grained analysis of positional or operational types consistently shows that operations must be a(nti)symmetrically ordered. Second, whereas the standard view of improper movement applies only to the case of consecutive movements of the same phrase, ordering effects of operations also show up when different constituents move as long as they enter into inclusion relations: remnant movement and extraction from moved constituents.\r\n\r\nI claim on the basis of German and English that a hierarchy of operations as in (1) exists, the Universal Constraint on the Ordering of Operations -- UCOOL, and suggest a way of deploying it, the Generalized Prohibition of Improper Movement -- GenPIM, so as to constrain consecutive movements of the same constituent, remnant movement and extraction from moved constituents as well. The talks builds heavily on Williams (2002), translating some of his insights into a theory with bottom-up tree generation.','','','conf');
INSERT INTO ling_event VALUES (182,'2007-06-06','Colloque ‘Maîtrise du français’','public','6-7 juin 2007<br>\r\nThéories linguistiques et enseignement de la langue<br>\r\nMaison des Associations, Salle Gandhi, 15 rue des Savoises, Genève','http://mf07.unige.ch','','conf');
INSERT INTO ling_event VALUES (183,'2007-05-15','Pascal Singy:  \"Les Romands face à leur langue\"','public','Dans le cadre du module de BA intitulé \"Structures de la langue\", ELCF\r\nB111 de 14h15 à 16h','','','conf');
INSERT INTO ling_event VALUES (184,'2007-06-19','Colloque Saussure','public','et mercredi 20, jeudi 21 et vendredi 22','','http://www.unige.ch/lettres/linguistique/docs/colloque-saussure.pdf','conf');
INSERT INTO ling_event VALUES (185,'2007-06-23','Table ronde du Cercle Ferdinand de Saussure','public','<pre>\r\nTable ronde autour de la notion d’identité avec la participation de\r\nMonsieur François ANSERMET, psychanalyste\r\nMonsieur François FLAHAULT, philosophe \r\nMonsieur Olivier FLOURNOY, psychanalyste\r\n\r\nLe débat sera introduit par Madame Claudia MEJIA QUIJANO\r\nMonsieur Gabriel BERGOUNIOUX en sera le modérateur\r\n\r\nLe samedi 23 Juin 2007, à 10h\r\nSociété de Lecture\r\n11, Grand-rue – Genève\r\n</pre>','','http://www.unige.ch/lettres/linguistique/docs/cerclesaussure.pdf','conf');
INSERT INTO ling_event VALUES (186,'2007-10-02','Andrew McIntyre (Université de Neuchâtel)','public','\"Silent Possessive PPs in English\"\r\n','','','semrech');
INSERT INTO ling_event VALUES (187,'2007-10-09','Didier Maillat (Université de Fribourg): \"The linguistic structure of space: anaphoric relations in spatial reference frames\"','public','','','','semrech');
INSERT INTO ling_event VALUES (188,'2007-10-22','Mirjam Ernestus  \"Processing acoustically reduced forms in spontaneous speech\"','public','(University\r\nNijmegen & Max Planck Institute for Psycholinguistics)\r\n\r\nà 14h15, salle 4193(Unimail, Genève)\r\n\r\nIn spontaneous conversations, words are often pronounced with fewer\r\nsegments than their citation forms suggest. The word \"yesterday\", for\r\ninstance, may be realized as \"yesay\". In this talk I will discuss some\r\nof our studies investigating the production and comprehension of such\r\nreduced forms. These studies show that a word token\'s degree of\r\nreduction can be predicted to some extent on the basis of various types\r\nof phonetic, linguistic, and social information. Listeners appear to\r\nneed access to this same information in order to understand reduced\r\nforms. Furthermore, listeners are typically unaware of reduced forms, as\r\nthey, upon hearing a reduced form, immediately and unconsciously\r\nreconstruct the unreduced form. I will shortly discuss the consequences\r\nof these findings for psycholinguistic models of speech processing.','','','conf');
INSERT INTO ling_event VALUES (189,'2007-10-16','Martin Salzmann (Université de Zurich): \"The syntax of resumption in Swiss relatives - on oblique case and variation\"','public','','','','semrech');
INSERT INTO ling_event VALUES (190,'2007-10-23','Discours en boîte, 17h15-18h, B106','public','Projection de la vidéo \"Discours en boîte\", d\'Emmanuel \r\nGripon \r\n(avec la collaboration de linguistes du Département), \r\nvisionnée \r\nlors du Festival de la Bâtie.\r\nMontage audio-visuel de fragments de discours du 20e \r\nsiècle.','','','');
INSERT INTO ling_event VALUES (191,'2007-10-23','Jacques Moeschler (Université de Genève): 12h15-13h45, L208','public','Dans cette communication, nous montrons que la \r\nconjecture de Horn (\"aucune langue naturelle ne \r\nlexicalise les particuliers négatifs\"), basée sur la théorie \r\ndes implicatures scalaires, ne réussit que \r\npartiellement à expliquer l’absence de réalisations \r\nlinguistiques de particuliers négatifs du carré logique \r\naristotélicien. Nous montrerons que si la prédiction de \r\nla conjecture de Horn est correcte, son explication \r\nne l’est pas. Nous proposerons une version alternative, \r\nqui renonce à la théorie des implicatures scalaires, \r\net montrerons que la raison principale de l’absence de \r\nparticuliers négatifs n’est pas liée à l’absence de \r\nlexicalisation de valeurs complexes, mais à l’absence \r\nde lexicalisation de contenus non calculables. Nous \r\nmontrerons que les implicatures des particuliers \r\nnégatifs ne sont pas calculables et que ce faisant ne \r\npeuvent pas être lexicalisés. Nous tirerons enfin les \r\nconséquences d’une telle conclusion sur la relation entre lexique et pragmatique.\r\n<br>\r\n<a href=docs/moeschler_slides_part_neg.pdf>slides (45 pages, 1 par page)</a><br>\r\n<a href=docs/moeschler_slides_part_neg_version_imprimable.pdf>slides (6 pages, 4 par page)</a>','','http://www.unige.ch/lettres/linguistique/docs/moeschler_PartNeg.pdf','semrech');
INSERT INTO ling_event VALUES (192,'2007-10-29','Richard Ingham (Birmingham City University): \"Parallel Evolution of Medieval English and French Syntax?\"','public','18h-20h, salle L208','','http://www.unige.ch/lettres/linguistique/docs/InghamTalk.doc','semrech');
INSERT INTO ling_event VALUES (193,'2007-10-30','Josef Bayer (Université de Konstanz):\"On the nature of the [that trace] effect\"','public','','','http://www.unige.ch/lettres/linguistique/docs/BayerTalk.doc','semrech');
INSERT INTO ling_event VALUES (194,'2007-11-14','soutenance de la thèse de Sandrine Zufferey','public','14h15, salle A206,  Pragmatique \r\nlexicale et métareprésentation. Etude théorique et \r\nempirique de l’utilisation et de l’acquisition des \r\nconnecteurs pragmatiques\r\n\r\n\r\n\r\n','','','conf');
INSERT INTO ling_event VALUES (195,'2007-11-09','Lonneke van der Plas ( U. de Groeningen) Automatic Acquisition of Semantically Related Words.','public','Lonneke van der Plas\r\nUniversité de Groeningen\r\n9 novembre à 14 heures\r\nSalle L511\r\n\r\nAutomatic Acquisition of Semantically Related Words.\r\n\r\nThe way words are distributed over contexts tells us something about\r\ntheir semantic relatedness. For example, words that are found in the same syntactic\r\nrelation with the same word, such as words that appear in the object position of the verb \'to drink\', have something in common: liquidity.\r\n\r\nThe use of syntactic contexts for finding semantically related words is rather common and so is the proximity-based approach, which uses bag-of-words to\r\ndetermine the context of a word. We have used multilingual parallel corpora to define yet another type of context, that is, the translations a word receives in several languages acquired through automatic word alignment.\r\n\r\nIn this talk I will explain the idea of distributional similarity in general, describe the different methods we have used and I will give a characterization of the type of relations that result from the various methods.','','','semrech');
INSERT INTO ling_event VALUES (196,'2007-11-07','Anne Reboul, Langage et cognition humaine, Grenoble, PUG, 2007','public','Le premier chapitre de l\'ouvrage d\'Anne Reboul, Langage \r\net cognition humain, livre lu l\'année dernière dans le \r\nGroupe de lecture en pragmatique, est accessible en ligne \r\nà l\'adresse ci-dessous sous la rubrique Sommaire.','http://www.pug.fr/Titre.asp?Num=1008','','glecture');
INSERT INTO ling_event VALUES (197,'2007-11-13','Ted Sanders (Universiteit Utrecht): \"Causality in Connectives, Coherence relations and Cognition\"','public','','','http://www.unige.ch/lettres/linguistique/docs/sanders.doc','semrech');
INSERT INTO ling_event VALUES (198,'2007-11-20','ATTENTION _ SEMINAIRE ANNULE Philippe Langlais (RALI - Université de Montréal)','public','','','http://www.unige.ch/lettres/linguistique/docs/Langlais-Talkl.doc','semrech');
INSERT INTO ling_event VALUES (199,'2007-11-27','Paola Merlo (Université de Genève): \"Lexical and Structural Biases for Semantic Role Labelling\"','public','','','http://www.unige.ch/lettres/linguistique/docs/Merlo_Talk.pdf','semrech');
INSERT INTO ling_event VALUES (200,'2007-12-11','Daniele Gambarara (Università della Calabria)  \"Les oscillations de la théorie linguistique\"','public','Durant les 50 dernières années, on a assisté à une opposition entre une vision culturelle et une vision naturelle de la langue. Les deux ont leur fondement.','','','semrech');
INSERT INTO ling_event VALUES (201,'2007-12-04','Ted Gibson (MIT): \"Interactions between top-down and bottom-up information constraints in language comprehension\"','public','','','http://www.unige.ch/lettres/linguistique/docs/Gibson_Talk.pdf','semrech');
INSERT INTO ling_event VALUES (202,'2008-03-14','Les parenthèses en français','public','Journée CONSCILA organisée par Gilles Corminbœuf, \r\nFranziska Heyna & Mathieu Avanzi (Uni. Fribourg et \r\nNeuchâtel), Paris - ENS-Ulm','','http://www.unige.ch/lettres/linguistique/docs/Conscila_programme_mars2008.doc','reunion');
INSERT INTO ling_event VALUES (203,'2008-02-28','French WHorkshop','public','','conferences/2008FrenchWHorkshop','','conf');
INSERT INTO ling_event VALUES (204,'2008-03-18','Andrea Gualmini (Université d\'Utrecht):','public','','','http://www.unige.ch/lettres/linguistique/docs/GualminiAbstract.pdf','semrech');
INSERT INTO ling_event VALUES (205,'2008-04-01','Tijana Asic: ','public','','','http://www.unige.ch/lettres/linguistique/docs/AsicAbstract.doc','semrech');
INSERT INTO ling_event VALUES (206,'2008-04-08','ASPECTS DE LA SYNTAXE ET LA MORPHOLOGIE DU GREC','public','','','http://www.unige.ch/lettres/linguistique/docs/programme_sem_Greek_mod2.pdf','semrech');
INSERT INTO ling_event VALUES (207,'2008-04-15','Knud Lambrecht (University of Texas): Structure informationnelle  et typologie  des langues.','public','','','http://www.unige.ch/lettres/linguistique/docs/LambrechtAbstract.doc','semrech');
INSERT INTO ling_event VALUES (208,'2008-04-22','Andrea Cattaneo (NYU): ‘Gò da mangià (\'J\'ai à manger\') : Modalité et structure de la clause’','public','','','','semrech');
INSERT INTO ling_event VALUES (212,'2008-05-06','Mélanie Jouitteau (CNRS Paris): \"No Tense-First\"','public','','','','semrech');
INSERT INTO ling_event VALUES (211,'2008-04-29','Vidal Valmala (Université du Pays Basque): \"Do we always need a sentence?\"','public','','','','semrech');
INSERT INTO ling_event VALUES (213,'2008-05-13','Ur Shlonsky (Université de Genève). TBA','public','','','','semrech');
INSERT INTO ling_event VALUES (214,'2008-05-20','Christiane Fellbaum ((Princeton University): The Grammar of Idioms: A Tough Nut to Crack','public','We discuss the construction of a large lexical database of German VP-idioms based on a billion word corpus. The lexical, syntactic,semantic, and diachronic behavior of more than 800 idioms was recorded and analyzed. The data show that idioms are subject to all regular grammatical processes, independent of their compositionality.\r\nVariation is largely discourse-dependent and ad-hoc. While the database aims to comprehensively reflect speakers\' use of idioms, a full account of their lexical representation remains a challenge.','','','semrech');
INSERT INTO ling_event VALUES (215,'2008-05-27','Johan Rooryck (Leiden Universiteit): On the scalar nature of syntactic negation in French','public','','','','semrech');
INSERT INTO ling_event VALUES (216,'2008-09-16','Andrea Moro (Università San Raffaele, Milano) : Clause structure folding and the “wh-movement in situ effect”','public','Why can a coordinative head show up before a wh-phrase in situ in a cer­tain variety of Italian? In this talk I will explore this rather neglected fact showing that it reveals an otherwise hidden structure. More specifically, I will suggest that this head does not directly merge with the wh-phrase it precedes, rather it takes a full clausal complement inducing remnant movement and stranding of the highest wh-phrase. This configuration yields the observed word order and explains many properties of these constructions by means of independent locality conditions. I will suggest that it is a strategy lan­guages adopt to maintain some characteristic property of the left periphery and address some questions that the comparative perspective raises.','','','semrech');
INSERT INTO ling_event VALUES (217,'2008-09-23','Verner Egerland (Université de Lund): \"Tense in Gerunds\"','public','L208. 12h-14h. Premier d\'une série de présentations dans le cadre d\'un séjour Erasmus.','','','conf');
INSERT INTO ling_event VALUES (218,'2008-09-24','Verner Egerland (Université de Lund): \"On the grammar of indefinite expressions\"','public','L107, 16-18. Deuxième présentation Erasmus.','','','conf');
INSERT INTO ling_event VALUES (219,'2008-09-25','Verner Egerland (Université de Lund): \"On the grammar of indefinite expressions 2\"','public','L208. 16-18. Troisième présentation Erasmus.','','','conf');
INSERT INTO ling_event VALUES (220,'2008-10-14','Jacques Moeschler (Université de Genève): ','public','L208 - 12h15\r\nATTENTION: DEUX CONFERENCES LE MEME JOUR \r\n(même salle, l\'un après l\'autre).','','','semrech');
INSERT INTO ling_event VALUES (221,'2008-10-14','Cécile Grivaz (Université de Genève):','public','L208 - 12h15\r\nATTENTION: DEUX CONFERENCES LE MEME JOUR \r\n(même salle, l\'un après l\'autre).','','','semrech');
INSERT INTO ling_event VALUES (222,'2008-10-21','Chris Pinon (Université de Lille): What to do with manner adverbs','public','\r\n\r\n','','','semrech');
INSERT INTO ling_event VALUES (223,'2008-10-28','Paul Sabatier (CNRS, LIF): Constructions verbales simples du français exprimant des relations symétriques','public','L208 - 12h15\r\n Résumé : Nous formulerons les \r\ncaractéristiques syntaxiques et \r\nsémantiques de différentes constructions \r\nverbales simples du français exprimant une \r\nrelation symétrique au sens mathématique \r\ndu terme, comme par exemple celle associée \r\naux verbes cohabiter, être parallèle, \r\nfaire équipe. Nous exposerons les \r\npropriétés qui distinguent ces verbes \r\nentre eux et proposerons une \r\nreprésentation sémantique les \r\ncaractérisant. Nous monterons comment \r\nobtenir ces verbes à partir du Lexique des \r\nverbes du français de J. Dubois et F. \r\nDubois-Charlier.','','','semrech');
INSERT INTO ling_event VALUES (224,'2008-11-04','Greg Ellison (Université de Genève): Tense as Universal','public','It is generally held that in languages like English and French, a tense morpheme, which situates the eventuality of a finite clause relative to the time of speech, is required for grammaticality. In contrast, a Mandarin Chinese expression like “Ta hen meng” (gloss: he very busy) in isolation is ambiguously interpretable as holding in the past, present, or future. Such temporal indeterminacy along with a lack of tense morphemes in many of the world’s languages have led to speculation that tense as a functional category is not universal.\r\n    In this presentation, I will attempt to demonstrate that the universal availability of tense is masked by cross-linguistic diversity of its morphosyntactic manifestation, and furthermore that tense is part of an invariable cartographic structure.','','','semrech');
INSERT INTO ling_event VALUES (225,'2008-11-11','Jean Loewenstamm (Paris): \"Exponence multiple, réalisationalisme, projectivité (et bravitude)\".','public','Au cours des vingt dernières années, la morphologie a suivi une trajectoire intéressante, qui l’a replacée au cœur de la linguistique générale. D’une part, elle occupe aujourd’hui, de façon explicite, une position qu’elle n’avait jamais connue dans les préoccupations des phonologues et des syntacticiens. D’autre part, elle évolue selon des hypothèses proposées en dehors du milieu des spécialistes de la morphologie : soit par des syntacticiens, soit (plus marginalement) par des phonologues (un exemple, pour n’en citer qu’un, est l’introduction d’un nouvel objet de niveau X-1, la racine).\r\n\r\nDeux familles de positions, liées au statut du lexique, émergent :\r\n\r\nA.	La morphologie est « projective » (Williams)\r\nB.	La morphologie est « réalisationnelle » (Borer, DM)\r\n\r\nCes deux points de vue seront explicités, et évalués comme suit : \r\n\r\n1.	le yiddish marque le pluriel nominal d’une dizaine de façons différentes.\r\n2.	on peut montrer que chacun de ces pluriels occupe une position structurale différente, certains très haut, certains très bas.\r\n3.	comment cette analyse porte-t elle sur le choix entre A et B ci-dessus ?\r\n4.	quel statut en résulte-t il pour la racine ? il sera proposé que la racine est un objet complexe, pleinement articulé autour d’une tête.\r\n','','','semrech');
INSERT INTO ling_event VALUES (226,'2008-11-18','Nadège Foudon (L2C2, ISC): Acquisition du langage chez les enfants autistes: Etude longitudinale','public','Le processus d\'acquisition du langage chez les enfants autistes diffère de celui des enfants à développement typique (acquisition par immersion) dans le sens où ils ont besoin d\'un support orthophonique.\r\nLe but de notre recherche est de décrire l\'acquisition du langage chez les enfants autistes à travers la collecte et l\'analyse de corpus de neuf enfants autistes que nous avons suivi pendant  trois ans. Nous les avons comparé avec ceux d\'enfant à développement typique et d\'enfants SLI. Nous avons complété notre travail avec une reflexion sur la ToM qui est connue pour être déficitaire voir absente chez les autistes. Etant donné l\'échec des enfants aurtistes au test standard de ToM, nous avons privilégié le mécanisme d\'attention conjointe, décrit pour être un précurseur de la ToM et dont on sait qu\'il joue un rôle imoprtant dans l\'acquisition lexicale.','','','semrech');
INSERT INTO ling_event VALUES (227,'2008-12-08','Mathieu Avanzi (Neuchâtel, Paris Ouest-La Defense): Micro-syntaxe, macro-syntaxe et prosodie','public','Le rôle des indices prosodiques par rapport aux indices syntaxiques dans la délimitation des unités micro- et macro-syntaxiques en français est encore mal connu à l’heure actuelle [Sabio 1996 ; Blanche-Benveniste 2006 ; Martin 2007 ; Avanzi 2008 ; Avanzi & Lacheret-Dujour à par. ; Groupe de Fribourg à par.]. Nous avons entrepris de faire avancer la réflexion sur ce point dans notre thèse de doctorat [Avanzi en cours]. Nous présentons dans cet exposé les résultats de notre travail. De l’étude de différentes sortes d’asyndètes (greffes de constructions verbales : il est parti à la guerre de quatorze il avait pas dix-huit ans ; routines praxéologiques : vous faites un pas de plus vous tombez dans le fossé ; dispositifs introduits ou non : il y a mon frère qui/il s’est marié) et de détachements à gauche avec reprise anaphorique (doubles-marquages : et j\'ai le sentiment qu\'un enseignant il est quand même dans cette idée ; ou SN non strictement accordés : les jeunes qui apprendraient ce métier-là, il aura de l’avenir), il ressort que les dispositifs prosodiques du français n’échappent pas à la même ambivalence qui affecte certains morphèmes traditionnellement qualifiés de « subordonnants » (que) ou de « coordonnants » (et, ou). Ceux-ci comme ceux-là sont employés tantôt pour coder des relations micro-, tantôt pour coder des relations macro-syntaxiques [Berrendonner 2002, Corminboeuf 2007].','','','semrech');
INSERT INTO ling_event VALUES (228,'2008-12-02','Hugues Péters (Université de Sydney/Genève): L’acquisition de traits syntaxiques dans l’interlangue française d’apprenants jamaïcains en milieu guidé.','public','L’interlangue d’apprenants d’une langue seconde est un objet fascinant et paradoxal à étudier car il s’agit d’un système linguistique en développement, caractérisé à la fois par une variation inter et intra individuelle et néanmoins une systématicité de fonctionnement qui ne peut se réduire ni au mode d’organisation de la langue native, ni à celui de la langue cible. Le modèle « Full Access (to UG) / Full Transfer (from L1) » semble apte à rendre compte de ces caractéristiques, mais le problème de l’inhabilité, pour la plupart des apprenants adultes, à atteindre une compétence ultime équivalente à celle de locuteurs natifs ou d’enfants bilingues requiert des hypothèses additionnelles : soit (la famille de) celles qui supposent une période critique au-delà de laquelle certains traits paramétriques de la langue cible ne peuvent plus être acquis à moins qu’ils n’existent déjà au départ dans la langue maternelle (« Failed Functional Feature Hypothesis »), soit celles qui considèrent que le défaut ne se situe ni dans le module syntaxique, ni dans le module morphologique, mais bien à l’interface entre les deux (Missing Surface Inflection Hypothesis »). Dans cette présentation, située dans un cadre minimaliste, j’illustrerai ces questions par l’analyse de données orales spontanées d’apprenants jamaïcains de français langue étrangère, telles que l’emploi de la préposition « pour » et la syntaxe du DP, à différents moments de leur développement. Au cours de cet exposé, je décrirai brièvement le corpus longitudinal de productions orales d’apprenants, dont ces données sont extraites, je soulèverai la question des effets de la situation diglossique de ces apprenants sur leur acquisition d\'une langue étrangère, et je terminerai par certaines pistes de réflexions sur l’apport de ces recherches à la didactique des langues secondes.','','','semrech');
INSERT INTO ling_event VALUES (229,'2008-12-16','Hugues Péters et Christopher Laenzlinger (Universités de Sydney/Genève) : LexiGrammaIRE, une grammaire d\'enseignant explicative et linguistiquement motivée.','public','Cette présentation se propose, d’une part, de présenter le projet LexiGrammaIRE, un projet de recherche en cours d’élaboration à l’université de Genève, ayant pour objectif la création d’une plate-forme de ressources linguistiques et technologiques destinée à la formation des futurs enseignants de français, et d’autre part, d’illustrer sur des exemples concrets (l’accord du participe passé, l’interrogation directe et indirecte, pronoms enclitiques) la manière dont une approche solidement ancrée dans des théories linguistiques de pointe et prenant comme point de départ un lexique enrichi permet d’apporter un éclairage nouveau sur quelques problèmes de grammaire et d’interprétation au centre des préoccupations de l’enseignement du français. De manière générale, la description du lexique fera intervenir des propriétés à la fois linguistiques (internes) et encyclopédiques (externes), une distinction entre catégories fonctionnelles (D, C, etc.) et lexicales (N, V, etc.) dotées de propriétés distinctes, respectivement procédurales et conceptuelles, et intégrera également les rôles sémantiques ou thématiques ainsi que les diverses sélections (régime, fonctionnelle, sémantique) et valeurs informationnelles (topic, focus). Nous justifierons l’originalité pédagogique de notre approche en la replaçant dans l’histoire de la grammaire scolaire et en montrant comment l’articulation entre lexique, grammaire et interprétation permet de systématiser et de simplifier l’explication de problèmes récalcitrants, en accord avec notre objectif de fournir aux futurs maîtres des outils d’analyse et d’explication réutilisables en classe de français pour développer les capacités d’expression et de compréhension de leurs élèves.\r\n','','','semrech');
INSERT INTO ling_event VALUES (230,'2008-12-09','Julie Franck (Université de Genève): Escapade critique sur les travaux de Tomasello et coll. concernant l\'acquisition de l\'ordre des mots ','public','Une serie de recherches ont ete menees ces dix dernieres annees par l\'equipe de Tomasello sur l\'acquisition de l\'ordre des mots utilisant le paradigme de l\'ordre des mots bizarre (Weird Word Order paradigm). Les resultats ont significativement contribue a renforcer l\'hypothese constructiviste selon laquelle l\'ordre des mots est initialement represente par le jeune enfant non pas comme une propriete grammaticale de la langue mais comme une propriete lexicale, specifique a chacun des verbes connus par l\'enfant. Je presenterai une analyse critique de ces travaux qui met en evidence un grand nombre de faiblesses concernant a la fois les hypotheses, l\'analyse statistique des donnees et leur interpretation. Il ressort de cette analyse que ces travaux procurent en fait une serie d\'arguments empiriques en faveur de l\'hypothese opposee selon laquelle l\'enfant dispose tres tot d\'une representation abstraite de l\'ordre des mots de sa langue.\r\n','','','semrech');
INSERT INTO ling_event VALUES (231,'2009-02-17','Patrick Blackburn (INRIA Lorraine)','public','ATTENTION: CETTE PRESENTATION EST ANNULEE','','','semrech');
INSERT INTO ling_event VALUES (232,'2009-02-23','Richard Kayne (NYU):Toward a Syntactic Reinterpretation of Harris and Halle (2005)','public','ATTENTION: Conférence du LUNDI 23, de 18-\r\n20h, salle L208','','http://www.unige.ch/lettres/linguistique/docs/Kayne0209GenevaHarrisHalle.pdf','conf');
INSERT INTO ling_event VALUES (233,'2009-02-24','Richard Kayne (NYU):“Why is English is to as rare as it is?”','public','','','http://www.unige.ch/lettres/linguistique/docs/Kayne0209GenevaIsTo.pdf','semrech');
INSERT INTO ling_event VALUES (234,'2009-03-03','Julien Musolino (Rutgers): The resilience of language: evidence from Williams Syndrome','public','12:15 L208\r\nIn this talk, I will discuss knowledge of \r\nlanguage in individuals with Williams \r\nSyndrome (WS).  Over the past 20 years or \r\nso, WS has received considerable attention \r\nfrom scholars interested in the structure \r\nand development of the human mind. The \r\nmain reason is that this rare genetic \r\ndisorder represents a natural experiment \r\nwhich suggests a potential dissociation \r\nbetween language and other aspects of \r\ncognition. WS has thus been cited as \r\nevidence supporting the kind of modular \r\nview of mental architecture advocated most \r\nfamously by Jerry Fodor (1983) and Noam \r\nChomsky  (1965, 1986, 1995) (Anderson, \r\n1998; Bikerton, 1997; Piatelli-Palmarini, \r\n2001; Pinker 1994). Recently, however, the \r\nstatus of linguistic knowledge in \r\nindividuals with WS – and well as its \r\nbroader implications - has become a hotly \r\ndebated topic and has led to the emergence \r\nof strongly conflicting empirical claims \r\nand theoretical accounts (e.g., Karmiloff-\r\nSmith, 1997, 1998; Karmiloff and \r\nKarmiloff-Smith, 2001; Clahsen and \r\nAlmazan, 1998; Pinker, 1999; Tager-\r\nFlusberg, pleas-Skerer, Faja, and Joseph, \r\n2003; Mervis and Becerra, 2007; Brock, \r\n2007). In order to shed some light on \r\nthese important issues, I will present the \r\nresults of a set of interrelated \r\nexperiments designed to assess knowledge \r\nof core syntactic, semantic and pragmatic \r\nprinciples in individuals with WS. \r\nOverall, these results support the \r\nconclusion that linguistic knowledge in WS \r\nis governed by the same abstract \r\nprinciples that characterize typically \r\ndeveloping and mature systems, and thus \r\nthat knowledge of language is not atypical \r\nin WS (Tager-Flusberg, pleas-Skerer, Faja, \r\nand Joseph, 2003; Brock, 2007; Thomas, in \r\npress).  Broader implications of this \r\nconclusion for competing accounts of \r\nlanguage development in WS, as well as for \r\nthe relevance of WS to the study of \r\ncognitive architecture and development are \r\ndiscussed.\r\n\r\n\r\n','','','semrech');
INSERT INTO ling_event VALUES (235,'2009-03-10','Alice Ter Meulen : Aspectual adverbs in context ','public','Abstract\r\nThe dynamic semantics of aspectual adverbs is applied to dialogue, conditionals and interrogative contexts. The observed linguistic variety in gradual quantification is analyzed in terms of focus and information structure. The temporal meaning of aspectual adverbs blends into meta-linguistic uses where generic background constraints may support the current context to create coherence. The DRT semantics is claimed to provide adequate representational tools to account for the observed inferences, obviating the need for tailor-made default inference or externally characterized \'normal\' worlds. \r\n\r\n','','','semrech');
INSERT INTO ling_event VALUES (236,'2009-03-13','Yoshio Endo (Yokohama National University): Criterial Freezing Effects in Case Conversion: Implications for Rizzi and Shlonsky (2007).','public','ATTENTION: séminaire spécial le VENDREDI de 14-16, salle L208','','','');
INSERT INTO ling_event VALUES (237,'2009-02-25','Richard Kayne (NYU): Seance questions-réponses','public','Le professeur Kayne animera une séance de questions/réponses, notamment (mais pas exclusivement) à l\'intention des étudiants.\r\nMERCERDI 25 février, 12-14, B015.','','','semrech');
INSERT INTO ling_event VALUES (238,'2009-03-17','Despina Papadopoulou (Aristotle University of Thessaloniki): Sentence processing: Ambiguity resolution strategies in Greek','public','In this paper we investigate the ambiguity resolution strategies employed by Greek adults and children. In particular, we report on the findings from two studies: (a) the resolution of subject/object ambiguities and (b) the resolution of ambiguous overt and null pronouns.\r\nIt is well documented in the processing literature that English speakers experience a garden-path in sentences in which a DP following a subordinate verb has to be analyzed as the subject of the main verb rather than as the object of the subordinate verb (Frazier & Rayner 1982; Mitchell 1987; Pickering & Traxler 1998; Traxler 2005):\r\n\r\n(1)	When John hunted the rabbit escaped. \r\n\r\nWe conducted two word-by-word self-paced reading experiments in order to test how sentences such as (1) are processed by Greek adults and 10-11-year-old children. In one experiment the ambiguity was resolved via S-V agreement morphology (cf. 2), whereas in the other task, it was resolved via case morphology (cf. 3). The results show that in sentences such as (2), neither the adults nor the children are garden-pathed on the main verb contrary to the overwhelming evidence from English. However, the findings from sentences such as (3) indicate an initial preference for the object reading only in the adult data. \r\n\r\n(2)	Otan i Maria majireve ta makaronia epese/epesan sto patoma \r\n	when the Maria cooked-IMPERF.3S the- PL spaghetti-PL fell-PERF.3S/fell-PERF.3P…………\r\n(3) 	Otan i Maria majireve tus atsakus/i astaki epese/epesan sto patoma \r\n	when the Maria cooked-IMPERF.3S the-ACC-PL lobsters-ACC.PL the-NOM-PL lobsters-NOM.PL fell-PERF.3S/fell-PERF.3P…………\r\n\r\nWith respect to pronoun ambiguity resolution, we conducted a self-paced listening sentence-picture matching experiment (Marinis 2007) in order to examine how Greek adults and children interpret the subject pronouns in (4) and (5). Greek is a null subject language and, therefore, both the null pronoun in (4) and the overt pronoun in (5) can in principle refer to either the subject or the object of the main clause: \r\n\r\n(4) 	I ghramateas voithuse ti nosokoma otan pro eghrafe ena ghrama.\r\n(5) 	I ghramateas voithuse ti nosokoma otan afti eghrafe ena ghrama.\r\n	“The secretary-F helped the nurse-F when pro/she wrote a letter.”\r\n\r\nProcessing accounts of pronoun resolution predict that the null and the overt pronoun in sentences such as (4) and (5) will be preferably interpreted as referring to the subject of the matrix clause. According to Centering theory (Brennan et al. 1987; Grosz et al. 1995), this prediction is based on the preference of pronouns to have antecedents in subject positions. On the other hand, the Parallel Preference account (Chambers & Smyth 1998) makes the same prediction, because pronouns are assumed to prefer antecedents in a parallel position.       \r\nThe participants were first presented with a picture that depicted either the subject, the object of the matrix clause or another person performing the action described by the subordinate clause. Then they listened to the sentences segment-by-segment by pressing a button and at the end of each sentence they had to decide whether the sentence they heard matched the picture. We measured reaction times (RTs) of pressing the button for each segment, and also for the decision at the end of the sentence. Thirty monolingual adults and thirty monolingual 10-year-old children participated in the study, all native speakers of Greek. \r\nThe results show that:\r\n(a)	for overt pronouns, both adults and children preferred to interpret them as referring to the object of the main clause. This preference was evident in the matching data as well as in the RTs of the subordinate verb.\r\n(b)	for null pronouns, there was a difference between adults and children. Adults showed a preference for the subject reference, whereas children interpreted null pronouns as referring to either the subject or the object.\r\n\r\nThe findings from both studies will be discussed in relation to parsing theory as well as to developmental effects on ambiguity resolution.\r\n\r\n\r\n\r\n\r\n','','','semrech');
INSERT INTO ling_event VALUES (239,'2009-03-31','Boban Arsenijevic (Université d\'Amsterdam): \"Mediating Merge: Evidence from the Cantonese ge\"','public','Background: One moot point in minimalist syntax is the treatment of adjuncts, i.e. how non-mandatory elements like modifiers are built into the structure. The distinction between specifiers and adjuncts, hitherto, is nothing more than a labeling option (Adger et al. 1999). Chomsky (2001) proposes that adjuncts are introduced into the structure via pair-merge while regular structural building is done by set-merge. But, how does narrow syntax know when pair-merge is required? In many languages, there exist markers that link modifiers to the structure (e.g. the Mandarin de, the Tagalog ang). Rubin (2003) argues that such markers are the overt realization of Mod, a functional head that indicates pair-merge. However, if Mod is simply a marker indicating pair-merge, how does the system know where to merge the adjuncts? Cormack and Breheny (1994), alternatively, argue that if we assume every instance of structure building is selection, the merging of adjuncts is hard to motivate. They suggest that all structures are head-mediated. When combining a modifier with an NP, there is a semantically empty operator that takes two operands (the modifier and the NP) mediating the merge. This eliminates the notion of adjuncts. In this view, the marker in Rubin’s case can be taken as an overt realization of the operator. But again, how does the operator know which two operands to take? Regardless whether one treats such marker as Mod or an operator, the marker must have some features. In this paper, we look at Cantonese, a language that makes use of markers in modification. We show that the marker ge in Cantonese nominal modification is not semantically opaque, (1). It can be decomposed into a demonstrative component [Dem] and a division component [Div] (Borer 2005). The feature combo of ge determines where and how modifiers can be merged. Some properties of modifiers, such as iteration and free ordering, will also follow from the analysis.\r\nDecomposing ge: In Cantonese, the marker ge must be inserted between the modifier and the noun, (1). The term ‘modifier’ here spans across syntactic categories, it includes anything that denotes a property <e,t>, including adjectives, prepositional phrases, possessors, relative clauses, etc. Despite ge’s superficial opaqueness, it is decomposable: (i) The onset /g/ in ge is deictic (Sio & Tang 2007). /g/ also appears in the verbal modification marker gam which mediates between manner adverbials and the VP, (2a). It can be used purely deictically as well, (2b). /g/ also appears in the distal demonstrative go, (2c); (ii) In some southern dialects of Chinese, the counterpart of ge, in addition to having the marker function, is also used as a demonstrative and the most general classifier (e.g. the Chaozhou kai, the Wenzhou ki, etc.), a classifier that indicates countability but does not name the unit of counting. (iii) Ge patterns with a combination of a demonstrative and a classifier in that they both license NP-ellipsis, (3). We thus conclude that ge has both a [Dem] and a [Div] feature, a feature indicating division.\r\nAssumptions: We assume the following superstructure for a Cantonese noun phrase: [DP [NumeP [ ClP [DivP [NP ]]]]]. Following Borer (2005), we assume that the Div head imposes an infinite set of reticules onto the mass denoted by the NP, when countable. We differ from Borer in that we have a separate level to host the classifier. If the classifier is in Div, Borer predicts a generic reading for [Cl-N] phrases in Cantonese, but they generally have a singular reading. Thus, we propose that the classifier is base-generated higher in the Classifier Phrase, where one single unit is scooped out. ‘Division’ and ‘scooping out’ are done at different levels. Support for this structure comes from classifiers like deoi ‘pair’ and daai ‘dozen’, which imply a unit of division rather than name the unit of division.\r\nAnalysis: A modifier cannot merge with a noun phrase directly due to the lack of selection. The deep reason is that the modifier is usually a complete syntactic structure (phase, in the Phase Theory), which is spelled out and cannot be merged any more. An ‘opener’ is required to ‘reactivate’ it in syntax. We argue that such elements regularly operate in syntax, and lead to what is observed as adjunction. The merge of the modifier in the nominal domain is mediated by ge in Cantonese. On our view, ge is selecting both the modifier and the noun phrase. The selection can be modeled by feature valuation. The [Dem] and [Div] features of ge are both unvalued. The unvalued [Dem] feature needs to be valued by a property, any element of the <e,t> type. This triggers the merge of ge with a modifier and ge projects; The unvalued [Div] feature on ge needs to be valued by a valued [Div] feature. This motivates its merger with the Div head and Div projects.\r\nConsequences: Assuming valuation does not exhaust the valuating feature, it is expected that multiple ge-modifiers can be licensed by the Div head. Free ordering of ge-modifiers is also expected as it is external merge (not movement) (Chomsky 2001) to a functional projection, thus, no minimality issue should arise. No ordering should be imposed. Both predictions are borne out, (4). If this is right, we no longer need the notion of adjuncts. The merge of non-mandatory elements can be mediated by markers like ge (with the option of being covert in some languages). The free ordering of multiple modifiers comes from multiple evaluations via external merge. Having a selecting mediator also provides a way of restricting where modifiers can be merged. A similar marker for adverbials is also found in Cantonese (i.e. gam in (2a,b)), providing further support for the analysis.\r\nArgumenthood: We also discuss consequences of our analysis for the notion of arguments. We argue that grammar has two ways to merge in a complete structure. One is by mediation of elements like ge and gam, and the other is by lexical incorporation of a top part of the functional sequence of a complete structure into one of the heads of another line of projection. Arguments of the VP and those of the NP level are discussed in light of this view, showing that it explains some of the core properties of arguments and some particular syntactic properties that they display.\r\n\r\n\r\n\r\n\r\n(1)	Dem-Cl-modifier-*(ge)-N\r\n\r\n(2a) maai-maai gam 	sik 	(2b) gam  zou aa 		(2c) go       bun syu\r\n       slow-slow GAM	eat 	        GAM  do   SFP 	       DEM    CL   book\r\n      ‘eat slowly’                                       ‘do it this way’                   ‘that book’\r\n\r\n(3a) nei   ge   syu   bei 	   ngo ge  __ 	hou tai\r\n       2SG  GE book compare  1SG  GE 	good read\r\n       ‘Your books are more interesting than mine.’\r\n\r\n(3b) nei 	   bun syu   bei 	     ngo go     bun ___ hou   tai\r\n        2SG   CL book compare  1SG  DEM  CL          good read\r\n       ‘Your book is more interesting than mine.’\r\n\r\n(4) hung-sik  ge, jau    mo    ge saam / jau     mo    ge, hung-sik  ge saam\r\n      red-color GE have hood GE shirt /  have hood   GE red-color GE shirt\r\n      ‘A red shirt with a hood’\r\n\r\nReferences\r\nAdger, David, Susan Pintzuk, Bernadette Plunkett, and George. Tsoulas. 1999. Specifiers: Minimalist Approaches. Oxford University Press,UK. \r\nBorer, Hagit. 2005. In Name Only. Oxford University Press, UK. \r\nChomsky, Noam. 2001. Derivation by Phrase. In M. Kenstowicz (eds.), Ken Hale: A Life in Language, MIT Press, MA. \r\nCormack, Annabel and Richard Breheny. 1994. Projections for Functional Categories. In Working Papers in Linguistics 6: 35-61, Phonetics and Linguistics, University College London. \r\nRubin, Edward. 2003. Determining pair-merge. Linguistic Inquiry 34.4:660–668. \r\nSio, Joanna Ut-seong. and Sze-wing, Tang. 2007. The indexical expressions gam2 and gam3 in Cantonese. In J. Sio and S.-W. Tang (eds.) Studies in Cantonese linguistics 2, pp.55-73. Linguistics Society of Hong Kong Publications, Hong Kong.\r\n','','','semrech');
INSERT INTO ling_event VALUES (240,'2009-03-16','Despina Papadopoulou (U. Thessaloniki): The role of grammatical aspect in subject/object ambiguities: Evidence from an eye-tracking experiment with Greek learners of English','public','ATTENTION: CONFERENCE DONNEE A LA FAPSE (UNI-PIGNON) A 14.15 (SALLE A VERIFIER).\r\n\r\nIt is well documented in the processing literature that English speakers experience a garden-path in sentences in which a DP following a subordinate verb has to be analyzed as the subject of the main verb rather than as the object of the subordinate verb (Frazier & Rayner 1982; Mitchell 1987; Pickering & Traxler 1998; Traxler 2005):\r\n\r\n(1)	When John hunted the rabbit escaped. \r\n\r\nMore recently, Frazier et al. (2006) found that English speakers\' recovery from misanalysis in garden-path (early closure) sentences such as (1) is more costly with past simple (hunted) vs. past progressive (was hunting) subordinate verbs, arguably because readers take an external perspective when reading past simple verbs and so prefer an endpoint for the event as provided by a direct object (DO), whereas given the internal perspective taken with progressives a DO is less expected. \r\nRoberts & Liszka (2007) found similar results with L2 learners of English but only if the learners\' L1 encodes the +/-progressive aspect via grammatical (French) rather than via lexical means (German). However, the French L2s did not pattern exactly like the English: they appeared not to initially misanalyse the ambiguous NP in the progressive, whereas for the English the effect was caused by the comparative ease of recovery from misanalysis in the progressive vs simple condition. It is possible that this is caused by the difference between the French imparfait vs the English progressive or perhaps L2 learners are less deterministic when processing ambiguous material on-line because recovery from misanalysis is more problematic compared to native speakers. \r\nTo investigate this further we focus on Greek which like French encodes aspect morphologically ((im)perfective) but differs from English in that the imperfective encodes [duration] and [habitual]. In an earlier self-paced reading experiment with native speakers of Greek, Papadopoulou & Tsimpli (2005) found that the participants were not garden-pathed on the main verb in early closure sentences contrary to the overwhelming evidence from English. In this study, 20 Greek L2 learners of English read English (2) early/late closure sentences in an eye-tracking study:\r\n\r\n(2)	As Mary cooked/was cooking the spaghetti she fell/fell on the floor \r\n\r\nPreliminary results reveal that the subjects are only garden-pathed with perfective verbs. Reading times for the imperfective/progressive suggest that they do not initially misanalyse the ambiguous NP as DO when the verb is imperfective. \r\n','','','conf');
INSERT INTO ling_event VALUES (241,'2009-04-07','Isabelle Roy (U. Tromso): \"La nominalisation de-adjectivale et la structure de l\'adjectif\"','public','','','','semrech');
INSERT INTO ling_event VALUES (242,'2009-04-21','Gaetano Fiorin (Université de Vérone et d\'Utrecht): \"Grammatical aspect and scalar implicatures in developmental dyslexia\"','public','','','','semrech');
INSERT INTO ling_event VALUES (243,'2009-04-28','Nausicaa Pouscoulous (UCLondon): TBA','public','','','','semrech');
INSERT INTO ling_event VALUES (244,'2009-05-05','Agnes Tutin (U. Grenoble 3): \"Autour du projet Scientext : étude des marques linguistiques du positionnement de l\'auteur dans les écrits scientifiques\"','public','','','','semrech');
INSERT INTO ling_event VALUES (245,'0000-00-00','Michelangelo Falco (Scuola Normale Superiore Pisa/U. Genève)','public','Séminaire extraordinaire le LUNDI 4 mai, salle L208, de 18h à 20h.','','','semrech');
INSERT INTO ling_event VALUES (247,'2009-05-18','Léna Baunaz et Cédric Patin (U. de. Genève/U. de Paris 7): \"La prosodie des mots wh en question(s)\"','public','Attention: séminaire supplémentaire le LUNDI 18-20h, salle L208.\r\nDans Baunaz (2008), il a été démontré qu’en français les mots wh (‘qui’, ‘quoi’, etc.) pouvaient être associés à – au moins – trois statuts présuppositionnels distincts : non-présuppositionnel (l’ensemble auquel le restricteur appartient peut être vide – ‘rien’ ou ‘personne’ sont des réponses possibles à la question posée), partitif (la réponse consiste en un item extrait d’un groupe précédemment mentionné, ensemble fini d’alternatives – ‘rien’ ou ‘personne’ ne sont pas des réponses possibles – un choix est toujours possible) et spécifique (la réponse renvoie à un ‘individu’ caractérisé par une propriété connue du locuteur – une seule réponse est possible, qui ne peut être ‘rien’ ou ‘personne’).\r\n\r\nUne des hypothèses formulées dans ce travail était qu’à ces différents statuts, dont les propriétés syntaxiques et sémantiques distinctes avaient été identifiées dans Baunaz (2008), correspondaient des corrélats prosodiques particuliers. Afin de la vérifier, une expérience pilote a été menée. Il a été demandé à six locuteurs de prononcer des phrases interrogatives, dans le cadre de courts dialogues. Trente-deux phrases ont été testées, variant dans leur statut présuppositionnel, leur polarité (positive vs. négative), la forme du mot wh et sa position (In situ vs. ex situ).\r\n\r\nLes résultats démontrent que les locuteurs distinguent clairement les mots wh spécifiques, d’une part, des mots wh partitifs et non-présuppositionnels, de l’autre, quelle que soit leur position. Dans le premier cas, et non dans les autres, un accent est associé au mot wh. Cet accent se manifeste sous la forme d’un ton haut, parfois accompagné d’un pic d’intensité ou d’un allongement de la durée de l\'occlusion du [k].\r\n\r\nCes résultats confirment qu’une simple distinction présuppositionnel vs. non-présuppositionnel n’est pas suffisante et que, comme il a été proposé dans Baunaz (2008) sur la base de critères syntaxiques, une distinction spécifique vs. partitif doit également être considérée.\r\n\r\n','','','semrech');
INSERT INTO ling_event VALUES (250,'2009-05-14','Michelangelo Falco (S.N, Pisa/U. Genève):\" Weak Crossover as an intervetion effect and the syntax/semantics of LF chains\"','public','Séminaire extraordinaire le JEUDI 14 mai, 16-18, L107.     We present a preliminary account of Weak Crossover (WCO) as an intervention effect, based on the syntax and semantics of LF chains. In relation to the syntax, we refine Rizzi’s (2001) idea that specific vs. non-specific chains have different forms at LF. Concerning the interpretation of these chains, we develop Elbourne’s (2005) proposal that pronouns and converted traces are covert definite descriptions endowed with an index. Crucially, departing from Elbourne, we assume that depending on the form of the chain they belong to, converted traces can be either specified or non-specified for their index, whereas pronouns are always specified for their index. On the one hand, standard WCO is derived from the violation of an interface economy principle. The non-specified index on the tail of non-specific chains must get a value from the closest potential assigner, that is the intervening WCO pronoun. The same indexing is obtainable by predicate abstraction, thus a violation of economy arises (Defitto & Fiorin 2009). On the other hand, the observation that specific wh-elements can circumvent WCO effects (Falco 2007) is derived as a consequence of the nature of specific LF chains. They are endowed with an index in the tail position. For this reason, the intervening WCO pronoun does not count as a potential assigner and the interface economy principle which rules out the non-specific configurations is irrelevant in this case.','','','semrech');
INSERT INTO ling_event VALUES (248,'2009-05-12','Anne Reboul (ISC Lyon): \"Missing or ignoring the point: Tomasello’s solution to the ‘Gavagai’ puzzle\"','public','In 1960, Quine introduced the famous ‘Gavagai’ thought experiment, which led to the notion of indeterminacy of translation. Language acquisition scholars claim that infants are in a situation of radical translation and have generally converged on social-pragmatic ‘solutions’ to the difficulty. I will argue that social-pragmatic ‘solutions’ have nothing to say about indeterminacy of translation and that in particular Tomasello’s (2008) notion of shared common ground, presupposes the problem solved rather than is a solution to it.','','','semrech');
INSERT INTO ling_event VALUES (249,'2009-05-19','Bernard Fradin (CNRS &Paris 7): \"la lecture \'moyen\' des nominalisations\"','public','Le traitement des nominalisations, définies comme des noms dérivés déverbaux qui permettent de référer à l’action décrite par leur verbe-base e.g. DEMENAGEMENT < DEMENAGER, posent un double problème à la morphologie par le fait (i) qu’elles peuvent avoir plusieurs interprétations (événement, résultat, etc.) et (ii) qu’elles mettent en jeu de nombreux exposants ; en français, les suffixes  age,  ment,  ion, mais aussi parfois  ure,  ade,  ée, etc. La question générale qui se pose est la suivante : que doit dire la grammaire, notamment dans sa composante morphologique, pour rendre compte de cette situation, c’est-à-dire pour décrire correctement les interprétations possibles pour chaque nominalisation observée ? Je me propose de commencer à répondre à cette question en décrivant ce qui se passe pour l’interprétation dite ‘moyen’, que manifeste, par exemple, consolation dans Elle disait que vous étiez la consolation de sa vie (< TLF), qui s’interprète comme ‘ce qui console (sa vie)’.\r\n	Cet exposé présentera des travaux en cours, qui concernent des problèmes complexes pour lesquels je suis loin d’avoir des solutions. C’est dire que je compte sur les réactions et interactions qu’il pourra susciter.\r\n','','','semrech');
INSERT INTO ling_event VALUES (251,'2010-09-06','Soutenance de mémoire C. Hodoroaga','public','Cosmina Hodoroaga soutiendra son mémoire de Certificat de spécialisation intitulé \"Demonstrative Features of Quotation. A French Case Study\" le lundi 6 septembre 2010 à 16h, salle L 511.','','','conf');

--
-- Table structure for table `ling_people`
--

CREATE TABLE ling_people (
  givenname varchar(50) NOT NULL default '',
  sn varchar(50) NOT NULL default '',
  mail varchar(50) NOT NULL default '',
  title varchar(50) NOT NULL default '',
  telephonenumber varchar(50) NOT NULL default '',
  roomnumber varchar(50) NOT NULL default '',
  telephonenumber2 varchar(50) NOT NULL default '',
  roomnumber2 varchar(50) NOT NULL default '',
  cours1 varchar(255) NOT NULL default '',
  cours1lien varchar(255) NOT NULL default '',
  cours2 varchar(255) NOT NULL default '',
  cours2lien varchar(255) NOT NULL default '',
  cours3 varchar(255) NOT NULL default '',
  cours3lien varchar(255) NOT NULL default '',
  cours4 varchar(255) NOT NULL default '',
  cours4lien varchar(255) NOT NULL default '',
  cours5 varchar(255) NOT NULL default '',
  cours5lien varchar(255) NOT NULL default '',
  cours6 varchar(255) NOT NULL default '',
  cours6lien varchar(255) NOT NULL default '',
  rech1 varchar(255) NOT NULL default '',
  rech1lien varchar(255) NOT NULL default '',
  rech2 varchar(255) NOT NULL default '',
  rech2lien varchar(255) NOT NULL default '',
  rech3 varchar(255) NOT NULL default '',
  rech3lien varchar(255) NOT NULL default '',
  rech4 varchar(255) NOT NULL default '',
  rech4lien varchar(255) NOT NULL default '',
  reception varchar(50) NOT NULL default '',
  webperso varchar(100) NOT NULL default '',
  fax varchar(50) NOT NULL default '',
  actuel tinyint(1) NOT NULL default '1',
  photo varchar(100) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ling_people`
--

INSERT INTO ling_people VALUES ('Jean-Philippe','GOLDMAN','Jean-Philippe.Goldman@unige.ch','Chargé d\'enseign.suppl.','+41 22 37 97362','Land 706','','','Cours de <b>Informatique en Science Humaines (BA1) </b> Mardi 10h-12h en MS050','http://dokeos.unige.ch/courses/INFO1','Séminaire de <b>Cours de Informatique en Science Humaines (BA1)</b> Jeudi 13-16h en B319','http://dokeos.unige.ch/courses/INFO1','Cours de <b>Phonétique, phonologie, prosodie </b> Lundi 14h-16h M2180','http://dokeos.unige.ch/courses/PPP','','','','','','','Exercices de phonétique en ligne','http://latlcui.unige.ch/phonetique/moap','Claviers virtuels pour insérer des symboles phonétiques<br>Outils de segmentation automatique','http://latlcui.unige.ch/phonetique','','','','','Réception sur RDV','http://www.unige.ch/lettres/linguistique/goldman','',1,'jp.gif');
INSERT INTO ling_people VALUES ('Azzah','ASSALY','assaly8@etu.unige.ch','moniteur','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Antoine','AUCHLIN','Antoine.Auchlin@lettres.unige.ch','maître enseign./rech.','+41 22 37 97272','Land 702','','','Linguistique générale, DEA (SE 2); MA (SE2); La prosodie du discours et de l\'échange, Hiver, lundi 12h15-14h A 214','http://www.unige.ch/lettres/linguistique/Auchlin/enseignement.html#DEA-MA','Linguistique générale, BA5a, b; BA6 (SE8) Questions d\'analyse du discours: faces, places, identités         Eté, lundi 12h15-14h A 214','http://www.unige.ch/lettres/linguistique/Auchlin/BA5-6_Discours-strategie/index.html','Linguistique française, BA2 (2ème partie): Analyse du discours, mardi, B 105 (SE1: Hiver; SE4: Eté)','http://www.unige.ch/lettres/linguistique/Auchlin/enseignement.html#BA2-analyse_du_discours','Linguistique française, MA1 (SE2), La prosodie du discours et de l\'échange, Hiver, lundi 12h15-14h, A 214','http://www.unige.ch/lettres/linguistique/Auchlin/enseignement.html#DEA-MA','','','','','','','','','','','','','Mardi 14h15-15h L702,ou sur rendez-vous(courriel)','http://www.unige.ch/lettres/linguistique/Auchlin/','',1,'');
INSERT INTO ling_people VALUES ('Lonneke','VAN DER PLAS','Lonneke.VanDerPlas@lettres.unige.ch','assistante','+41 22 37 97325','Land 711','','','This year I am not teaching.','','','','','','','','','','','','Since March 2008 I am working on the CLASSiC project (http://www.classic-project.org/).','I am a member of the CLCLgroup  (http://clcl.unige.ch)','Before that I worked on automatic lexico-semantic acquisition in the Alfa-informatica group (University of Groningen).','http://www.let.rug.nl/alfa/','','','','','','http://sites.google.com/site/lonnekenlp/','',1,'lonneke.jpg');
INSERT INTO ling_people VALUES ('Annik Nora','BAUMGARTNER','Annik.Baumgartner@lettres.unige.ch','assistante','+41 22 37 91028','Land 205b','','','TP1 Sémantique formelle, cours en ligne, lundi 8-10h, B315, H','http://www.unige.ch/lettres/linguistique/moeschler/enseignements/semantique/index.php','TP2, Travaux pratiques de sémantique formelle, lundi 16-18, A303, H','http://www.unige.ch/lettres/linguistique/moeschler/enseignements/semantique/index.php','SE01-02, Linguistique française I, mercredi 16-17h et 17-18h, B302, H (janvier-février)','http://www.unige.ch/lettres/linguistique/moeschler/enseignements/LF1/index.php','','','','','','','','','','','','','','','mardi 11h00-12h00, L205B','http://www.unige.ch/lettres/linguistique/moeschler/annik.php','',1,'annik.jpg');
INSERT INTO ling_people VALUES ('Lena','BAUNAZ','Lena.Baunaz@lettres.unige.ch','assistante','+41 22 37 97306','Land 707','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Eva','CAPITAO','Eva.Capitao@lettres.unige.ch','secrétaire','+41 22 37 97030','Land 705a','','','','','','','','','','','','','','','','','','','','','','','','','',1,'eva.jpg');
INSERT INTO ling_people VALUES ('Marie-Claude','CAPT','Marie-Claude.Capt@lettres.unige.ch','charge de cours','+41 22 37 97030','Land 705a','','','Les grandes figures de rhétorique','','','','','','','','','','','','Théorie du signe','','Sémiologie de la parole','','','','','','Sur rendez-vous','','',1,'mc-capt.jpg');
INSERT INTO ling_people VALUES ('Louis','DE SAUSSURE','Louis.DeSaussure@lettres.unige.ch','charge de cours','+41 22 37 97275','Land 702','','','BA2, Histoire et épistémologie de la linguistique - H, LU 10-12 salle L 208','','BA5/6 Linguistique saussurienne: Saussure, le structuralisme et la question du sens - E, LU 10-12 salle L 208','','','','','','','','','','Détail de la recherche sur le site du groupe de recherche en sémantique et pragmatique de l\'université de Neuchâtel','http://www2.unine.ch/grsp','Ainsi que sur le site web personnel','http://www.louisdesaussure.tk','','','','','Lundi 14-15','http://www.louisdesaussure.tk','',1,'');
INSERT INTO ling_people VALUES ('Stephanie','DURRLEMAN-TAME','Stephanie.Durrleman@lettres.unige.ch','assistante','+41 22 37 97356','Land 708','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Laurent','GAJO','Laurent.Gajo@lettres.unige.ch','professeur adjoint','+41 22 37 97438','Bc 004b','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Anne','GROBET','Anne.Grobet@lettres.unige.ch','maitre assistante','+41 22 37 97433','Bc 004e','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Eric','HAEBERLI','Eric.Haeberli@lettres.unige.ch','professeur adjoint','+41 22 37 97358','Land 703','','','Introduction to English Linguistics (BA2 anglais)','https://dokeos.unige.ch/','Syntax I (BA3/7 anglais)','https://dokeos.unige.ch/','English Historical Syntax I: Old and Early Middle English','https://dokeos.unige.ch/','Syntaxe diachronique','https://dokeos.unige.ch','','','','','Research interests and publications','http://www.unige.ch/lettres/angle/collaborateurs/linguistics/haeberli.html','','','','','','','jeudi 15-17h, L703','','',1,'');
INSERT INTO ling_people VALUES ('Didier','Maillat','didier.maillat@unifr.ch','','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Tabea','IHSANE','Tabea.Ihsane@lettres.unige.ch','maitre-assistante','+41 22 37 97348','Land 704','','','Travaux pratiques: English Linguistics Lu 10-12 A/P Phil017','','The Syntax of the DP Ve 10-12 A Phil 015','https://dokeos.unige.ch/','Logical Form Ve 10-12 P Phil 015','','','','','','','','','','','','','','','','Lu 14-15','http://www.unige.ch/lettres/angle/collaborateurs/linguistics/ihsane.html','',1,'');
INSERT INTO ling_people VALUES ('Lorenza','Russo','Lorenza.Russo@lettres.unige.ch','assistante','+41 22 37 97306','L707','','','','','','','','','','','','','','','','','','','','','','','','','',1,'lorenza.jpg');
INSERT INTO ling_people VALUES ('Joelle','KRUMMENACHER','krummen2@etu.unige.ch','monitrice','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Christopher','LAENZLINGER','Christopher.Laenzlinger@lettres.unige.ch','charge de cours','+41 22 37 97306','Land 707','','','syntaxe du français Linguistique française 2ème année','http://www.unige.ch/lettres/linguistique/enseignement/cours-LF.htm','lexique Linguistique française 2ème année','http://www.unige.ch/lettres/linguistique/enseignement/cours-LF.htm','mise à niveau DEA','http://www.unige.ch/lettres/linguistique/enseignement/cours-DEA.htm','','','','','','','Projet personnel Fonds National 2003-6 \"Généricité et diversité: analyse multilingue\"','','','','','','','','mercredi 14-15','http://www.latl.unige.ch/personal/chr_f.html','',1,'christou.jpg');
INSERT INTO ling_people VALUES ('Jorge Antonio','LEONI DE LEON','Jorge.LeoniDeLeon@lettres.unige.ch','assistant','+41 22 37 97306','Land 707','','','TP : Traitement automatique du langage naturel (TALN)','','','','','','','','','','','','Développement d’un modèle plurilingue de traitement des langues','http://www.latl.unige.ch','Les expressions à mots multiples: structure lexicale, projection syntaxique et traitement automatique de l’espagnol','','','','','','sur rendez-vous','http://web.mac.com/a.leoni/','',1,'antonio.jpg');
INSERT INTO ling_people VALUES ('Paola','MERLO','Paola.Merlo@lettres.unige.ch','maitre enseign./rech.','+41 22 37 97325','Land 711','','','BA7  INFO Méthodes empiriques et langages de script Mecredi 12-14 L208','http://www.latl.unige.ch/mels/index.html','','','MA2 INFO Méthodes empiriques en linguistique informatique Mercredi 16-18 L208','http://dokeos.unige.ch/courses/3C124','MA3 INFO Lectures d\'articles scientifiques Lundi 16-18 A323','http://dokeos.unige.ch/courses/3C126','','','','','Learning of Verb Meaning with Hidden Grammars','','Automatic Verb Classification','','Computational Learning for Dialogue Systems','http://wcms.inf.ed.ac.uk/classic/','','','Mardi 14-15 L711','http://www.latl.unige.ch/personal/paola.html','',1,'paola.jpg');
INSERT INTO ling_people VALUES ('Athina','MICHOU','Athina.Michou@lettres.unige.ch','assistante','+41 22 37 97320','Land 701','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Jacques','MOESCHLER','Jacques.Moeschler@lettres.unige.ch','professeur ordinaire','+41 22 37 97276','Land 710','','','Cours Linguistique française I: Origines, structures et usages du français (BA2 français), mardi 14-17h,  B106 (H)','http://www.unige.ch/lettres/linguistique/moeschler/enseignements/LF1/index.php','Cours-séminaire Introduction à la sémantique et à la pragmatique: Sémantique formelle (BA4 linguistique), lundi 14-16h, L208 (H)','http://www.unige.ch/lettres/linguistique/moeschler/enseignements/semantique/index.php','Séminaire Pragmatique lexicale (MA2 linguistique/MA1 français/DEA), mercredi 8-10h, L208 (H)','http://www.unige.ch/lettres/linguistique/moeschler/enseignements/DEA/index.php','Groupe de lecture en pragmatique (DEA), lundi 18-10, L208 (H), toutes les 2-3 semaines','http://www.unige.ch/lettres/linguistique/moeschler/groupe-lecture/index.php','','','','','Groupe de lecture en pragmatique (DEA), lundi 18-10, L208 (H), toutes les 2-3 semaines','http://www.unige.ch/lettres/linguistique/moeschler/groupe-lecture/index.php','','','','','','','lundi 16-17h  L710','http://www.unige.ch/lettres/linguistique/moeschler/','',1,'jacques.jpg');
INSERT INTO ling_people VALUES ('Gabriele Antonio','MUSILLO','Gabriele.Musillo@lettres.unige.ch','assistant','+41 22 37 97325','Land 711','','','','','','','','','','','','','','','','','','','','','','','','http://www.latl.unige.ch/personal/gam/','',1,'');
INSERT INTO ling_people VALUES ('Mar','NDIAYE','Mar.Ndiaye@lettres.unige.ch','assistant','+41 22 37 97332','Land 706','','','','','','','','','','','','','','','','','','','','','','','','','',1,'mar.jpg');
INSERT INTO ling_people VALUES ('Luigi','RIZZI','Luigi.Rizzi@lettres.unige.ch','professeur associe','+41 22 37 97357','Land 709','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Corinne','ROSSARI','corinne.rossari@unifr.ch','chargée de cours suppl.','+41 22 37 97349','Land 205a','','','Modalité et évidentialité - cours de DEA','http://www.unifr.ch/llf/PROJETS/publications/SE3_Mod_%E9v.html','','','','','','','','','','','','','','','','','','','','http://www.unifr.ch/llf/PROJETS/publications/corinne.html','',0,'');
INSERT INTO ling_people VALUES ('Geraldine','SCHNEIDER','schneig2@etu.unige.ch','monitrice','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Maria-Violeta','SERETAN','Violeta.Seretan@lettres.unige.ch','assistante','+41 22 37 97362','L706','','','Travaux pratiques en relation avec SE8 - <b>Traitement automatique du langage naturel</b> Mardi 10h-12h, B315-Bastions','http://www.latl.unige.ch/taln/','','','','','','','','','','','','','','','','','','','Lu 14h-15h','http://www.latl.unige.ch/personal/vseretan/','',1,'violeta.jpg');
INSERT INTO ling_people VALUES ('Ur','SHLONSKY','Ur.Shlonsky@lettres.unige.ch','professeur adjoint','+41 22 37 97356','Land 708','','','Introduction aux sciences du langage (cours BA1)','http://www.unige.ch/lettres/linguistique/shlonsky/','Syntaxe avancée (séminaire MA, DEA)','http://www.unige.ch/lettres/linguistique/shlonsky/','Théorie syntaxique (séminaire BA5, 6)','http://www.unige.ch/lettres/linguistique/shlonsky/','','','','','','','','','','','','','','','lundi 17h-18h','http://www.unige.ch/lettres/linguistique/shlonsky/','',1,'ur.jpg');
INSERT INTO ling_people VALUES ('Gabriela','SOARE','Gabriela.Soare@lettres.unige.ch','assistante','+41 22 379 73 57','Land 709','','','TP - Introduction approfondie à la syntaxe; AN; Mardi, 9h-10h, A323','Séminaire - La syntaxe du roumain; P; Jeudi, 12h-14h, L208','','','','','','','','','','','Projet Fonds National \"Micro-Parameters in Romance Wh Movement\"','','','','','','','','mardi, 10-11h','','',1,'');
INSERT INTO ling_people VALUES ('Eric','WEHRLI','Eric.Wehrli@lettres.unige.ch','professeur ordinaire','+41 22 37 97300','Aj 212a','','','','','','','','','','','','','','','','','','','','','','','','','',1,'erw.gif');
INSERT INTO ling_people VALUES ('Sebastien','L\'HAIRE','Sebastien.Lhaire@lettres.unige.ch','assistant','+41 22 37 91101','Land 701','','','Nouvelles Technologies de l\'Information et de la Communication (NTIC)','http://latlcui.unige.ch/','','','','','','','','','','','Voir ma page personnelle','','','','','','','','mercredi 14h-15h','http://www.latl.unige.ch/personal/seb.html','',1,'seb.jpg');
INSERT INTO ling_people VALUES ('Luka','NERIMA','Luka.Nerima@cui.unige.ch','charge d\'enseignement','+41 22 37 97363','Land 705a','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Marc-Ariel','FRIEDEMANN','','coll scient. universitaire','+41 22 37 97333','Aj 314','','','Séminaire: Acquisition de langue seconde (BA5a), mardi 8-10h, A320 (H)','','TP: Introduction approfondie à la théorie de la syntaxe (BA3), mardi 10-11h, B104 (H)','','','','','','','','','','','','','','','','','','mardi, 11-12h','','',0,'');
INSERT INTO ling_people VALUES ('Sandrine','ZUFFEREY','Sandrine.Zufferey@lettres.unige.ch','assistante','+41 22 37 97323','Land 205b','','','Séminaire BA2a, Linguistique française I (BA2), mercredi 16-18h, B111','http://www.unige.ch/lettres/linguistique/moeschler/enseignements/LF1/index.php','Séminaire BA2b, Lexique, Linguistique française II (BA2), mardi 14-16h','http://www.unige.ch/lettres/linguistique/zufferey/Enseignement/index_lexique.php','Séminaire BA5/6, Pragmatique et acquisition du langage, Linguisitique générale, P, lundi 10-12h, L208','http://www.unige.ch/lettres/linguistique/zufferey/Enseignement/Index_acquisition.php','Groupe de lecture en pragmatique, A, lundi 18-20h, L208','http://www.unige.ch/lettres/linguistique/moeschler/groupe-lecture/index.php','','','','','Mes intérêts de recherche sont la pragmatique, les pathologies du langage et de la communication, l’acquisition du langage chez l’enfant et la pragmatique computationnelle.','','','','','','','','mercredi 10-11h, L205B','http://www.unige.ch/lettres/linguistique/zufferey','',1,'sandrine.jpg');
INSERT INTO ling_people VALUES ('Eszter','VARGA','Eszter.Varga@lettres.unige.ch','assistante','+41 22 37 97348','Land 704','','','','','Introduction to English Linguistics TP 5. Monday 12:00-14:00 Phil 015','','The TP is linked to the lecture on Introduction to English Linguistics','http://dokeos.unige.ch/courses/BA2/','','','','','','','','','','','','','','','Monday 10-11','http://www.unige.ch/lettres/angle/staff_pages/varga','',1,'');
INSERT INTO ling_people VALUES ('Gouldjikhan','KACHAEVA','kachaev4@etu.unige.ch','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Genoveva','PUSKAS','Genoveva.Puskas@lettres.unige.ch','maitre enseign./rech.','+41 22 37 97358','Land 703','','','','','','','','','','','','','','','','','','','','','','','Vendredii, 10h15-11h45','http://www.unige.ch/lettres/linguistique/puskas','',1,'');
INSERT INTO ling_people VALUES ('Claire','FOREL','Claire.Forel@lettres.unige.ch','charge d\'enseign.','+41 22 37 97348','Land 704','','','','','','','','','','','','','','','','','','','','','','','','','',1,'claire.jpg');
INSERT INTO ling_people VALUES ('Eva','WALTERMANN','walterm0@etu.unige.ch','moniteur','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Yves','SCHERRER','Yves.Scherrer@lettres.unige.ch','assistant','+41 22 37 97332','Land 706','','','Informatique pour les Sciences Humaines (Travaux pratiques)','http://dokeos.unige.ch/courses/INFO1','Traitement automatique du langage naturel (Travaux pratiques pour informaticiens)','https://dokeos.unige.ch/home/courses/CR017b2d/','','','','','','','','','','','','','','','','','sur rendez-vous','http://www.latl.unige.ch/personal/yvesscherrer','',1,'yves.jpg');
INSERT INTO ling_people VALUES ('Carmen Maria','MIRESAN','','auxiliaire','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Eddy','ROULET','Eddy.Roulet@lettres.unige.ch','professeur honoraire','','','','','','','','','','','','','','','','','','','','','','','','','','http://www.unige.ch/lettres/linge/dialogue/eroulet.html','',1,'');
INSERT INTO ling_people VALUES ('Aude','JACCARD','Aude.Jaccard@lettres.unige.ch','bibliothecaire-responsable','+41 22 37 97165','Bc 0103b','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Izumi','TAHARA','Izumi.Tahara@lettres.unige.ch','chargée d\'enseignement','+41 22 37 97285','Land 306','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Nina','ROJINA','ninarojina17@yahoo.com','doctorante','+41 22 37 97333','Aj 314','','','','','','','','','','','','','','','My main area if interest is Syntactic Theory. Mainly I am focusing on Slavic languages (Russian in particular) .I have done research on Russian prefixes and English particles under the supervision of Peter Svenonius at the University of Tromso.','','Currently I am doing comparative analysis of wh-movement in Russian, Bulgarian and Serbo-Croatian under the supervision of Ur Shlonsky and Luigi Rizzi.','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Thérèse','PEKBA','tppekba@hotmail.com','doctorante','+41 22 37 97882','Land 205a','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Ahmed','KHALLOUQI','khallou7@etu.unige.ch','doctorant','+41 22 37 97882','Land 205a','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Wolfgang','WECK','','coll scient. universitaire','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Stéphane','BOREL','Stephane.Borel@lettres.unige.ch','','+41 22 37 97474','Bc 319C','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Hélène','Nordgard-Andreassen','helene.nordgard.andreassen@hum.uit.no','','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Joanna','BLOCHOWIAK','joanna.blochowiak@lettres.unige.ch','assistante','++41 22 379 73 49','L205a','','','','','','','','','','','','','','','','','','','','','','','','','',1,'');
INSERT INTO ling_people VALUES ('Cecile','GRIVAZ','cecile@grivaz.net','assistante','+41 22 379 78 82','L205a','','','','','','','','','','','','','','','','','','','','','','','','http://cecile.grivaz.net','',1,'cecile.jpg');
INSERT INTO ling_people VALUES ('Irina','Kokochkina','irina.kokochkina@mailcity.com','','','L707','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Alexis','KAUFFMANN','Alexis.Kauffmann@lettres.unige.ch','assistant','++41 22 3797320','Land 701','','','','','','','','','','','','','','','','','','','','','','','','','',1,'alexis.jpg');
INSERT INTO ling_people VALUES ('Laura','Perret','Laura.Perret@lettres.unige.ch','','','L705','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Gregory','ELLISON','Gregory.Ellison@lettres.unige.ch','assistant','+41 22 37 97348','Land 704','','','','','','','','','','','','','','','','','','','','','','','sur rendez-vous','','',1,'');
INSERT INTO ling_people VALUES ('Paola','MINEN','Paola.Minen@lettres.unige.ch','','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'');
INSERT INTO ling_people VALUES ('Fabienne','REBOUL','Fabienne.Reboul@lettres.unige.ch','collaborateur scientifique','','A312','+41 22 37 97701','','','','','','','','','','','','','','Le moment Saussure','','','','','','','','','','',1,'');

--
-- Table structure for table `location`
--

CREATE TABLE location (
  id int(11) NOT NULL auto_increment,
  code varchar(6) default NULL,
  name varchar(27) default NULL,
  latitude decimal(13,11) default NULL,
  longitude decimal(14,12) default NULL,
  KEY id (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO location VALUES (1,'BELBRU','Brussels','50.83605638070','4.372253824740');
INSERT INTO location VALUES (2,'BELWBR','Brabant Wallon','50.66904811640','4.584157362830');
INSERT INTO location VALUES (3,'BELWHT','Hainaut','50.46939499610','3.960189454930');
INSERT INTO location VALUES (4,'BELWLG','Liège','50.52073347420','5.738373752330');
INSERT INTO location VALUES (5,'BELWLX','Luxembourg','49.96109599590','5.513541064330');
INSERT INTO location VALUES (6,'BELWNA','Namur','50.25497523780','4.852969096300');
INSERT INTO location VALUES (7,'CHEBE','Bern','47.20305635840','7.183819933230');
INSERT INTO location VALUES (8,'CHEFR','Fribourg','46.69383818370','7.019162725130');
INSERT INTO location VALUES (9,'CHEGE','Genève','46.22026439230','6.133017386590');
INSERT INTO location VALUES (10,'CHEJU','Jura','47.35079366820','7.156818016350');
INSERT INTO location VALUES (11,'CHENE','Neuchâtel','46.99537776840','6.780270264230');
INSERT INTO location VALUES (12,'CHEVD','Vaud','46.56955744530','6.656673760540');
INSERT INTO location VALUES (13,'CHEVS','Valais','46.13433395890','7.266013094180');
INSERT INTO location VALUES (14,'FRA01','Ain','46.09951475140','5.349048926010');
INSERT INTO location VALUES (15,'FRA02','Aisne','49.55929057650','3.558201945240');
INSERT INTO location VALUES (16,'FRA03','Allier','46.39373887490','3.187776270050');
INSERT INTO location VALUES (17,'FRA04','Alpes-de-Haute-Provence','44.10597606050','6.243784123290');
INSERT INTO location VALUES (18,'FRA05','Hautes-Alpes','44.66341822760','6.262604539260');
INSERT INTO location VALUES (19,'FRA06','Alpes-Maritimes','43.93705820480','7.115803456970');
INSERT INTO location VALUES (20,'FRA07','Ardèche','44.75202192020','4.425101114500');
INSERT INTO location VALUES (21,'FRA08','Ardennes','49.61570281950','4.640686491700');
INSERT INTO location VALUES (22,'FRA09','Ariège','42.92090579090','1.503734154670');
INSERT INTO location VALUES (23,'FRA10','Aube','48.30458780640','4.161501745460');
INSERT INTO location VALUES (24,'FRA11','Aude','43.10330548750','2.413688758250');
INSERT INTO location VALUES (25,'FRA12','Aveyron','44.28025817600','2.679956693180');
INSERT INTO location VALUES (26,'FRA13','Bouches-du-Rhône','43.54293723670','5.086322136030');
INSERT INTO location VALUES (27,'FRA14','Calvados','49.09970068810','-0.363389115927');
INSERT INTO location VALUES (28,'FRA15','Cantal','45.05103188210','2.668319237420');
INSERT INTO location VALUES (29,'FRA16','Charente','45.71789611300','0.201681456705');
INSERT INTO location VALUES (30,'FRA17','Charente-Maritime','45.78035592210','-0.674129825552');
INSERT INTO location VALUES (31,'FRA18','Cher','47.06456464500','2.490879830620');
INSERT INTO location VALUES (32,'FRA19','Corrèze','45.35692947640','1.877301936910');
INSERT INTO location VALUES (33,'FRA21','Côte-d\'Or','47.42482926070','4.772367562320');
INSERT INTO location VALUES (34,'FRA22','Côtes-d\'Armor','48.44169618580','-2.864312744870');
INSERT INTO location VALUES (35,'FRA23','Creuse','46.09019838260','2.018734627070');
INSERT INTO location VALUES (36,'FRA24','Dordogne','45.10398207290','0.741880772180');
INSERT INTO location VALUES (37,'FRA25','Doubs','47.16552256900','6.361772369850');
INSERT INTO location VALUES (38,'FRA26','Drôme','44.68396582180','5.168156927680');
INSERT INTO location VALUES (39,'FRA27','Eure','49.11326180180','0.996643324269');
INSERT INTO location VALUES (40,'FRA28','Eure-et-Loir','48.38737026200','1.369951861080');
INSERT INTO location VALUES (41,'FRA29','Finistère','48.26126454340','-4.060324599910');
INSERT INTO location VALUES (42,'FRA2A','Corse-du-Sud','41.86321372770','8.988352092640');
INSERT INTO location VALUES (43,'FRA2B','Haute-Corse','42.39429218530','9.206158594680');
INSERT INTO location VALUES (44,'FRA30','Gard','43.99372302600','4.179845127120');
INSERT INTO location VALUES (45,'FRA31','Haute-Garonne','43.35818290930','1.172103791560');
INSERT INTO location VALUES (46,'FRA32','Gers','43.69289701730','0.453282252172');
INSERT INTO location VALUES (47,'FRA33','Gironde','44.82268542480','-0.573711384416');
INSERT INTO location VALUES (48,'FRA34','Hérault','43.57978386280','3.367648972620');
INSERT INTO location VALUES (49,'FRA35','Ille-et-Vilaine','48.15484470250','-1.638094053360');
INSERT INTO location VALUES (50,'FRA36','Indre','46.77774849920','1.575608941600');
INSERT INTO location VALUES (51,'FRA37','Indre-et-Loire','47.25803231770','0.691530277576');
INSERT INTO location VALUES (52,'FRA38','Isère','45.26303028450','5.576142743900');
INSERT INTO location VALUES (53,'FRA39','Jura','46.72833994570','5.697278743410');
INSERT INTO location VALUES (54,'FRA40','Landes','43.96543808440','-0.782972988223');
INSERT INTO location VALUES (55,'FRA41','Loir-et-Cher','47.61669212650','1.429696582610');
INSERT INTO location VALUES (56,'FRA42','Loire','45.72712975710','4.166027716660');
INSERT INTO location VALUES (57,'FRA43','Haute-Loire','45.12824936860','3.806317518770');
INSERT INTO location VALUES (58,'FRA44','Loire-Atlantique','47.36093533770','-1.684528460940');
INSERT INTO location VALUES (59,'FRA45','Loiret','47.91192475430','2.344158360520');
INSERT INTO location VALUES (60,'FRA46','Lot','44.62353167980','1.605775538000');
INSERT INTO location VALUES (61,'FRA47','Lot-et-Garonne','44.36811006570','0.462710580398');
INSERT INTO location VALUES (62,'FRA48','Lozère','44.51722070400','3.500155556500');
INSERT INTO location VALUES (63,'FRA49','Maine-et-Loire','47.39097885690','-0.564072162855');
INSERT INTO location VALUES (64,'FRA50','Manche','49.07884874430','-1.328391621790');
INSERT INTO location VALUES (65,'FRA51','Marne','48.94912391050','4.238568280460');
INSERT INTO location VALUES (66,'FRA52','Haute-Marne','48.10958911990','5.226510675410');
INSERT INTO location VALUES (67,'FRA53','Mayenne','48.14671165890','-0.658159700121');
INSERT INTO location VALUES (68,'FRA54','Meurthe-et-Moselle','48.78714958540','6.165101264420');
INSERT INTO location VALUES (69,'FRA55','Meuse','48.99010276520','5.382193405710');
INSERT INTO location VALUES (70,'FRA56','Morbihan','47.84131065090','-2.812010530340');
INSERT INTO location VALUES (71,'FRA57','Moselle','49.03725265810','6.663517689980');
INSERT INTO location VALUES (72,'FRA58','Nièvre','47.11535637910','3.504350794240');
INSERT INTO location VALUES (73,'FRA59','Nord','50.44611831150','3.222417630080');
INSERT INTO location VALUES (74,'FRA60','Oise','49.40992672460','2.425420928980');
INSERT INTO location VALUES (75,'FRA61','Orne','48.62343230620','0.128792551144');
INSERT INTO location VALUES (76,'FRA62','Pas-de-Calais','50.49362722850','2.288181719510');
INSERT INTO location VALUES (77,'FRA63','Puy-de-Dôme','45.72573965620','3.141232460630');
INSERT INTO location VALUES (78,'FRA64','Pyrénées-Atlantiques','43.25645775640','-0.760880375856');
INSERT INTO location VALUES (79,'FRA65','Hautes-Pyrénées','43.05300149390','0.163466157536');
INSERT INTO location VALUES (80,'FRA66','Pyrénées-Orientales','42.59963714530','2.521296572580');
INSERT INTO location VALUES (81,'FRA67','Bas-Rhin','48.67066007790','7.551621592770');
INSERT INTO location VALUES (82,'FRA68','Haut-Rhin','47.85924144030','7.273529919730');
INSERT INTO location VALUES (83,'FRA69','Rhône','45.87033979530','4.641350583680');
INSERT INTO location VALUES (84,'FRA70','Haute-Saône','47.64127214900','6.085907340800');
INSERT INTO location VALUES (85,'FRA71','Saône-et-Loire','46.64465298500','4.541641050190');
INSERT INTO location VALUES (86,'FRA72','Sarthe','47.99430979190','0.222481502921');
INSERT INTO location VALUES (87,'FRA73','Savoie','45.47730857790','6.442954394470');
INSERT INTO location VALUES (88,'FRA74','Haute-Savoie','46.05167430890','6.432694393690');
INSERT INTO location VALUES (89,'FRA75','Paris','48.85604734580','2.343555879720');
INSERT INTO location VALUES (90,'FRA76','Seine-Maritime','49.65474270070','1.024588996930');
INSERT INTO location VALUES (91,'FRA77','Seine-et-Marne','48.62631736580','2.932800959260');
INSERT INTO location VALUES (92,'FRA78','Yvelines','48.81479104690','1.839614017910');
INSERT INTO location VALUES (93,'FRA79','Deux-Sèvres','46.55517307500','-0.317212237352');
INSERT INTO location VALUES (94,'FRA80','Somme','49.95809539680','2.277565632720');
INSERT INTO location VALUES (95,'FRA81','Tarn','43.78543705840','2.166263523280');
INSERT INTO location VALUES (96,'FRA82','Tarn-et-Garonne','44.08520239160','1.281745071290');
INSERT INTO location VALUES (97,'FRA83','Var','43.44143080480','6.244000344980');
INSERT INTO location VALUES (98,'FRA84','Vaucluse','44.00693447880','5.177975951810');
INSERT INTO location VALUES (99,'FRA85','Vendée','46.67503561990','-1.297248961440');
INSERT INTO location VALUES (100,'FRA86','Vienne','46.56403274140','0.459663512667');
INSERT INTO location VALUES (101,'FRA87','Haute-Vienne','45.89149641360','1.234972684600');
INSERT INTO location VALUES (102,'FRA88','Vosges','48.19678203160','6.380035246850');
INSERT INTO location VALUES (103,'FRA89','Yonne','47.84004100330','3.564295569070');
INSERT INTO location VALUES (104,'FRA90','Territoire-de-Belfort','47.63126627930','6.928581490950');
INSERT INTO location VALUES (105,'FRA91','Essonne','48.52254418050','2.243494683220');
INSERT INTO location VALUES (106,'FRA92','Hauts-de-Seine','48.84452146760','2.241635620120');
INSERT INTO location VALUES (107,'FRA93','Seine-St-Denis','48.91863185580','2.477001787480');
INSERT INTO location VALUES (108,'FRA94','Val-de-Marne','48.77934328710','2.466056680790');
INSERT INTO location VALUES (109,'FRA95','Val-d\'Oise','49.08264508620','2.130710098360');

--
-- Table structure for table `participant`
--

CREATE TABLE participant (
  id int(11) NOT NULL auto_increment,
  name text NOT NULL,
  mail text NOT NULL,
  age int(11) NOT NULL default '0',
  sexe int(11) NOT NULL default '0',
  location_id int(11) NOT NULL default '0',
  KEY id (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `participant`
--

INSERT INTO participant VALUES (1,'Jean-Philippe Goldman','jeanphilippegoldman@gmail.com',45,0,1);

--
-- Table structure for table `participation`
--

CREATE TABLE participation (
  id int(11) NOT NULL auto_increment,
  quizz_id int(11) NOT NULL default '0',
  participant_id int(11) NOT NULL default '0',
  UNIQUE KEY id (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `participation`
--

INSERT INTO participation VALUES (1,1,1);

--
-- Table structure for table `phones`
--

CREATE TABLE phones (
  idipa char(3) NOT NULL default '',
  `unicode` varchar(20) NOT NULL default '',
  xsampa varchar(10) NOT NULL default '',
  cv char(3) NOT NULL default '',
  PRIMARY KEY  (idipa)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phones`
--

INSERT INTO phones VALUES ('101','70','p','c');
INSERT INTO phones VALUES ('102','62','b','c');
INSERT INTO phones VALUES ('103','74','t','c');
INSERT INTO phones VALUES ('104','64','d','c');
INSERT INTO phones VALUES ('105','288','t`','c');
INSERT INTO phones VALUES ('106','256','d`','c');
INSERT INTO phones VALUES ('107','63','c','c');
INSERT INTO phones VALUES ('108','25F','J\\','c');
INSERT INTO phones VALUES ('109','6b','k','c');
INSERT INTO phones VALUES ('110','67','g','c');
INSERT INTO phones VALUES ('111','71','q','c');
INSERT INTO phones VALUES ('112','262','G\\','c');
INSERT INTO phones VALUES ('113','294','?','c');
INSERT INTO phones VALUES ('114','6d','m','c');
INSERT INTO phones VALUES ('115','271','F','c');
INSERT INTO phones VALUES ('116','6e','n','c');
INSERT INTO phones VALUES ('117','273','n`','c');
INSERT INTO phones VALUES ('118','272','J','c');
INSERT INTO phones VALUES ('119','14b','N','c');
INSERT INTO phones VALUES ('120','274','N\\','c');
INSERT INTO phones VALUES ('121','299','B\\','c');
INSERT INTO phones VALUES ('122','72','r','c');
INSERT INTO phones VALUES ('123','280','R\\','c');
INSERT INTO phones VALUES ('184','','','c');
INSERT INTO phones VALUES ('124','27E','4','c');
INSERT INTO phones VALUES ('125','27D','r`','c');
INSERT INTO phones VALUES ('126','278','p\\','c');
INSERT INTO phones VALUES ('127','3b2','B','c');
INSERT INTO phones VALUES ('128','66','f','c');
INSERT INTO phones VALUES ('129','76','v','c');
INSERT INTO phones VALUES ('130','3b8','T','c');
INSERT INTO phones VALUES ('131','f0','D','c');
INSERT INTO phones VALUES ('132','73','s','c');
INSERT INTO phones VALUES ('133','7a','z','c');
INSERT INTO phones VALUES ('134','283','S','c');
INSERT INTO phones VALUES ('135','292','Z','c');
INSERT INTO phones VALUES ('136','282','s`','c');
INSERT INTO phones VALUES ('137','290','z`','c');
INSERT INTO phones VALUES ('138','e7','C','c');
INSERT INTO phones VALUES ('139','29d','j\\','c');
INSERT INTO phones VALUES ('140','78','x','c');
INSERT INTO phones VALUES ('141','263','G','c');
INSERT INTO phones VALUES ('142','3c7','X','c');
INSERT INTO phones VALUES ('143','281','R','c');
INSERT INTO phones VALUES ('144','127','X\\','c');
INSERT INTO phones VALUES ('145','295','?','c');
INSERT INTO phones VALUES ('146','68','h','c');
INSERT INTO phones VALUES ('147','266','h\\','c');
INSERT INTO phones VALUES ('148','26c','K','c');
INSERT INTO phones VALUES ('149','26e','K\\','c');
INSERT INTO phones VALUES ('150','28b','P','c');
INSERT INTO phones VALUES ('151','279','r\\','c');
INSERT INTO phones VALUES ('152','27b','r\\`','c');
INSERT INTO phones VALUES ('153','6a','j','s');
INSERT INTO phones VALUES ('154','270','M\\','c');
INSERT INTO phones VALUES ('155','6c','l','c');
INSERT INTO phones VALUES ('156','26d','l`','c');
INSERT INTO phones VALUES ('157','28e','L','c');
INSERT INTO phones VALUES ('158','29f','L\\','c');
INSERT INTO phones VALUES ('301','69','i','v');
INSERT INTO phones VALUES ('309','79','y','v');
INSERT INTO phones VALUES ('317','268','1','v');
INSERT INTO phones VALUES ('318','289','}','v');
INSERT INTO phones VALUES ('316','26F','M','v');
INSERT INTO phones VALUES ('308','75','u','v');
INSERT INTO phones VALUES ('302','65','e','v');
INSERT INTO phones VALUES ('310','F8','2','v');
INSERT INTO phones VALUES ('397','258','@\\','v');
INSERT INTO phones VALUES ('170','77','w','s');
INSERT INTO phones VALUES ('323','275','8','v');
INSERT INTO phones VALUES ('315','264','7','v');
INSERT INTO phones VALUES ('307','6F','o','v');
INSERT INTO phones VALUES ('303','25B','E','v');
INSERT INTO phones VALUES ('311','153','9','v');
INSERT INTO phones VALUES ('326','25C','3','v');
INSERT INTO phones VALUES ('395','25E','3','v');
INSERT INTO phones VALUES ('314','28C','V','v');
INSERT INTO phones VALUES ('306','254','O','v');
INSERT INTO phones VALUES ('304','61','a','v');
INSERT INTO phones VALUES ('312','276','&','v');
INSERT INTO phones VALUES ('305','251','A','v');
INSERT INTO phones VALUES ('313','252','Q','v');
INSERT INTO phones VALUES ('319','26A','I','v');
INSERT INTO phones VALUES ('320','28F','Y','v');
INSERT INTO phones VALUES ('321','28A','U','v');
INSERT INTO phones VALUES ('322','259','@','v');
INSERT INTO phones VALUES ('325','E6','{','v');
INSERT INTO phones VALUES ('324','250','6','v');
INSERT INTO phones VALUES ('171','265','H','s');
INSERT INTO phones VALUES ('601','2a3','dz','a');
INSERT INTO phones VALUES ('602','2a4','dZ','a');
INSERT INTO phones VALUES ('604','2a6','ts','a');
INSERT INTO phones VALUES ('605','207','tS','a');
INSERT INTO phones VALUES ('606','','pf','a');

--
-- Table structure for table `phonlang`
--

CREATE TABLE phonlang (
  idipa varchar(10) NOT NULL default '',
  isolang varchar(10) NOT NULL default '',
  `comment` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonlang`
--

INSERT INTO phonlang VALUES ('101','fra','');
INSERT INTO phonlang VALUES ('102','fra','');
INSERT INTO phonlang VALUES ('103','fra','');
INSERT INTO phonlang VALUES ('104','fra','');
INSERT INTO phonlang VALUES ('128','fra','');
INSERT INTO phonlang VALUES ('129','fra','');
INSERT INTO phonlang VALUES ('132','fra','');
INSERT INTO phonlang VALUES ('133','fra','');
INSERT INTO phonlang VALUES ('134','fra','');
INSERT INTO phonlang VALUES ('135','fra','');
INSERT INTO phonlang VALUES ('114','fra','');
INSERT INTO phonlang VALUES ('116','fra','');
INSERT INTO phonlang VALUES ('118','fra','');
INSERT INTO phonlang VALUES ('119','fra','');
INSERT INTO phonlang VALUES ('143','fra','');
INSERT INTO phonlang VALUES ('153','fra','');
INSERT INTO phonlang VALUES ('155','fra','');
INSERT INTO phonlang VALUES ('301','fra','');
INSERT INTO phonlang VALUES ('309','fra','');
INSERT INTO phonlang VALUES ('308','fra','');
INSERT INTO phonlang VALUES ('302','fra','');
INSERT INTO phonlang VALUES ('310','fra','');
INSERT INTO phonlang VALUES ('303','fra','');
INSERT INTO phonlang VALUES ('311','fra','');
INSERT INTO phonlang VALUES ('306','fra','');
INSERT INTO phonlang VALUES ('307','fra','');
INSERT INTO phonlang VALUES ('305','fra','');
INSERT INTO phonlang VALUES ('322','fra','');
INSERT INTO phonlang VALUES ('304','fra','');
INSERT INTO phonlang VALUES ('101','eng','');
INSERT INTO phonlang VALUES ('102','eng','');
INSERT INTO phonlang VALUES ('103','eng','');
INSERT INTO phonlang VALUES ('104','eng','');
INSERT INTO phonlang VALUES ('109','eng','');
INSERT INTO phonlang VALUES ('110','eng','');
INSERT INTO phonlang VALUES ('128','eng','');
INSERT INTO phonlang VALUES ('129','eng','');
INSERT INTO phonlang VALUES ('130','eng','');
INSERT INTO phonlang VALUES ('131','eng','');
INSERT INTO phonlang VALUES ('132','eng','');
INSERT INTO phonlang VALUES ('133','eng','');
INSERT INTO phonlang VALUES ('134','eng','');
INSERT INTO phonlang VALUES ('135','eng','');
INSERT INTO phonlang VALUES ('146','eng','');
INSERT INTO phonlang VALUES ('114','eng','');
INSERT INTO phonlang VALUES ('116','eng','');
INSERT INTO phonlang VALUES ('151','eng','');
INSERT INTO phonlang VALUES ('119','eng','');
INSERT INTO phonlang VALUES ('155','eng','');
INSERT INTO phonlang VALUES ('153','eng','');
INSERT INTO phonlang VALUES ('319','eng','');
INSERT INTO phonlang VALUES ('302','eng','');
INSERT INTO phonlang VALUES ('325','eng','');
INSERT INTO phonlang VALUES ('313','eng','');
INSERT INTO phonlang VALUES ('314','eng','');
INSERT INTO phonlang VALUES ('321','eng','');
INSERT INTO phonlang VALUES ('322','eng','');
INSERT INTO phonlang VALUES ('140','eng','');
INSERT INTO phonlang VALUES ('113','eng','');
INSERT INTO phonlang VALUES ('170','fra','');
INSERT INTO phonlang VALUES ('171','fra','');
INSERT INTO phonlang VALUES ('170','eng','');
INSERT INTO phonlang VALUES ('602','eng','');
INSERT INTO phonlang VALUES ('605','eng','');
INSERT INTO phonlang VALUES ('326','eng','');
INSERT INTO phonlang VALUES ('305','eng','');
INSERT INTO phonlang VALUES ('306','eng','');
INSERT INTO phonlang VALUES ('308','eng','');
INSERT INTO phonlang VALUES ('301','eng','');
INSERT INTO phonlang VALUES ('102','spa','');
INSERT INTO phonlang VALUES ('101','spa','');
INSERT INTO phonlang VALUES ('103','spa','');
INSERT INTO phonlang VALUES ('104','spa','');
INSERT INTO phonlang VALUES ('109','spa','');
INSERT INTO phonlang VALUES ('110','spa','');
INSERT INTO phonlang VALUES ('605','spa','');
INSERT INTO phonlang VALUES ('128','spa','');
INSERT INTO phonlang VALUES ('114','jam','');
INSERT INTO phonlang VALUES ('131','spa','');
INSERT INTO phonlang VALUES ('132','spa','');
INSERT INTO phonlang VALUES ('140','spa','');
INSERT INTO phonlang VALUES ('141','spa','');
INSERT INTO phonlang VALUES ('127','spa','');
INSERT INTO phonlang VALUES ('155','spa','');
INSERT INTO phonlang VALUES ('122','spa','');
INSERT INTO phonlang VALUES ('157','spa','');
INSERT INTO phonlang VALUES ('153','spa','');
INSERT INTO phonlang VALUES ('170','spa','');
INSERT INTO phonlang VALUES ('301','spa','');
INSERT INTO phonlang VALUES ('302','spa','');
INSERT INTO phonlang VALUES ('304','spa','');
INSERT INTO phonlang VALUES ('307','spa','');
INSERT INTO phonlang VALUES ('308','spa','');
INSERT INTO phonlang VALUES ('139','spa','');
INSERT INTO phonlang VALUES ('101','ita','');
INSERT INTO phonlang VALUES ('102','ita','');
INSERT INTO phonlang VALUES ('103','ita','');
INSERT INTO phonlang VALUES ('104','ita','');
INSERT INTO phonlang VALUES ('109','ita','');
INSERT INTO phonlang VALUES ('110','ita','');
INSERT INTO phonlang VALUES ('118','ita','');
INSERT INTO phonlang VALUES ('116','ita','');
INSERT INTO phonlang VALUES ('114','ita','');
INSERT INTO phonlang VALUES ('128','ita','');
INSERT INTO phonlang VALUES ('129','ita','');
INSERT INTO phonlang VALUES ('132','ita','');
INSERT INTO phonlang VALUES ('134','ita','');
INSERT INTO phonlang VALUES ('133','ita','');
INSERT INTO phonlang VALUES ('135','ita','');
INSERT INTO phonlang VALUES ('605','ita','');
INSERT INTO phonlang VALUES ('602','ita','');
INSERT INTO phonlang VALUES ('122','ita','');
INSERT INTO phonlang VALUES ('155','ita','');
INSERT INTO phonlang VALUES ('153','ita','');
INSERT INTO phonlang VALUES ('170','ita','');
INSERT INTO phonlang VALUES ('157','ita','');
INSERT INTO phonlang VALUES ('604','ita','');
INSERT INTO phonlang VALUES ('601','ita','');
INSERT INTO phonlang VALUES ('101','deu','');
INSERT INTO phonlang VALUES ('102','deu','');
INSERT INTO phonlang VALUES ('103','deu','');
INSERT INTO phonlang VALUES ('104','deu','');
INSERT INTO phonlang VALUES ('109','deu','');
INSERT INTO phonlang VALUES ('110','deu','');
INSERT INTO phonlang VALUES ('113','deu','');
INSERT INTO phonlang VALUES ('604','deu','');
INSERT INTO phonlang VALUES ('605','deu','');
INSERT INTO phonlang VALUES ('602','deu','');
INSERT INTO phonlang VALUES ('128','deu','');
INSERT INTO phonlang VALUES ('129','deu','');
INSERT INTO phonlang VALUES ('132','deu','');
INSERT INTO phonlang VALUES ('133','deu','');
INSERT INTO phonlang VALUES ('134','deu','');
INSERT INTO phonlang VALUES ('135','deu','');
INSERT INTO phonlang VALUES ('138','deu','');
INSERT INTO phonlang VALUES ('153','deu','');
INSERT INTO phonlang VALUES ('140','deu','');
INSERT INTO phonlang VALUES ('146','deu','');
INSERT INTO phonlang VALUES ('301','ita','');
INSERT INTO phonlang VALUES ('116','deu','');
INSERT INTO phonlang VALUES ('120','deu','');
INSERT INTO phonlang VALUES ('155','deu','');
INSERT INTO phonlang VALUES ('143','deu','');
INSERT INTO phonlang VALUES ('301','deu','');
INSERT INTO phonlang VALUES ('302','deu','');
INSERT INTO phonlang VALUES ('303','deu','');
INSERT INTO phonlang VALUES ('304','deu','');
INSERT INTO phonlang VALUES ('307','deu','');
INSERT INTO phonlang VALUES ('308','deu','');
INSERT INTO phonlang VALUES ('309','deu','');
INSERT INTO phonlang VALUES ('310','deu','');
INSERT INTO phonlang VALUES ('324','deu','');
INSERT INTO phonlang VALUES ('105','fra','');
INSERT INTO phonlang VALUES ('606','deu','');
INSERT INTO phonlang VALUES ('302','ita','');
INSERT INTO phonlang VALUES ('303','ita','');
INSERT INTO phonlang VALUES ('304','ita','');
INSERT INTO phonlang VALUES ('306','ita','');
INSERT INTO phonlang VALUES ('307','ita','');
INSERT INTO phonlang VALUES ('308','ita','');
INSERT INTO phonlang VALUES ('101','ron','');
INSERT INTO phonlang VALUES ('102','ron','');
INSERT INTO phonlang VALUES ('103','ron','');
INSERT INTO phonlang VALUES ('104','ron','');
INSERT INTO phonlang VALUES ('109','ron','');
INSERT INTO phonlang VALUES ('110','ron','');
INSERT INTO phonlang VALUES ('114','ron','');
INSERT INTO phonlang VALUES ('116','ron','');
INSERT INTO phonlang VALUES ('122','ron','');
INSERT INTO phonlang VALUES ('604','ron','');
INSERT INTO phonlang VALUES ('134','ron','');
INSERT INTO phonlang VALUES ('132','ron','');
INSERT INTO phonlang VALUES ('133','ron','');
INSERT INTO phonlang VALUES ('128','ron','');
INSERT INTO phonlang VALUES ('129','ron','');
INSERT INTO phonlang VALUES ('155','ron','');
INSERT INTO phonlang VALUES ('301','ron','');
INSERT INTO phonlang VALUES ('302','ron','');
INSERT INTO phonlang VALUES ('304','ron','');
INSERT INTO phonlang VALUES ('307','ron','');
INSERT INTO phonlang VALUES ('308','ron','');
INSERT INTO phonlang VALUES ('322','ron','');
INSERT INTO phonlang VALUES ('317','ron','');
INSERT INTO phonlang VALUES ('153','ron','');
INSERT INTO phonlang VALUES ('170','ron','');
INSERT INTO phonlang VALUES ('605','ron','');
INSERT INTO phonlang VALUES ('135','ron','');
INSERT INTO phonlang VALUES ('602','ron','');
INSERT INTO phonlang VALUES ('146','ron','');
INSERT INTO phonlang VALUES ('109','fra','');
INSERT INTO phonlang VALUES ('110','fra','');
INSERT INTO phonlang VALUES ('101','jam','');
INSERT INTO phonlang VALUES ('102','jam','');
INSERT INTO phonlang VALUES ('103','jam','');
INSERT INTO phonlang VALUES ('104','jam','');
INSERT INTO phonlang VALUES ('109','jam','');
INSERT INTO phonlang VALUES ('110','jam','');
INSERT INTO phonlang VALUES ('602','jam','');
INSERT INTO phonlang VALUES ('605','jam','');
INSERT INTO phonlang VALUES ('130','jam','');
INSERT INTO phonlang VALUES ('132','jam','');

--
-- Table structure for table `prince_grp`
--

CREATE TABLE prince_grp (
  i mediumint(9) NOT NULL auto_increment,
  grp varchar(255) NOT NULL default '',
  PRIMARY KEY  (i)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_grp`
--

INSERT INTO prince_grp VALUES (1,'racine');
INSERT INTO prince_grp VALUES (2,'indo-européennes');
INSERT INTO prince_grp VALUES (21,'romanes');
INSERT INTO prince_grp VALUES (16,'indo-iraniennes');
INSERT INTO prince_grp VALUES (23,'germaniques');
INSERT INTO prince_grp VALUES (73,'à base anglaise');
INSERT INTO prince_grp VALUES (45,'iraniennes');
INSERT INTO prince_grp VALUES (46,'indo-aryennes');
INSERT INTO prince_grp VALUES (17,'arméniennes');
INSERT INTO prince_grp VALUES (18,'grecques');
INSERT INTO prince_grp VALUES (47,'ioniennes-attiques');
INSERT INTO prince_grp VALUES (19,'albanaises');
INSERT INTO prince_grp VALUES (20,'italiques');
INSERT INTO prince_grp VALUES (48,'ibéro-romanes');
INSERT INTO prince_grp VALUES (65,'espagnol et langues apparentées');
INSERT INTO prince_grp VALUES (66,'portugais et langues apparentées');
INSERT INTO prince_grp VALUES (49,'occitano-romanes');
INSERT INTO prince_grp VALUES (50,'gallo-romanes');
INSERT INTO prince_grp VALUES (51,'rhéto-romanes');
INSERT INTO prince_grp VALUES (52,'italo-romanes');
INSERT INTO prince_grp VALUES (53,'sardes');
INSERT INTO prince_grp VALUES (54,'orientales');
INSERT INTO prince_grp VALUES (22,'celtiques');
INSERT INTO prince_grp VALUES (55,'brittoniques');
INSERT INTO prince_grp VALUES (56,'branche occidentale');
INSERT INTO prince_grp VALUES (67,'anglo-frisonnes');
INSERT INTO prince_grp VALUES (68,'germano-néerlandaises (bas- et haut-allemand)');
INSERT INTO prince_grp VALUES (72,'allemand et langues apparentées');
INSERT INTO prince_grp VALUES (57,'branche Nordique, septentrionale ou scandinave');
INSERT INTO prince_grp VALUES (24,'balto-slaves');
INSERT INTO prince_grp VALUES (58,'baltes');
INSERT INTO prince_grp VALUES (59,'slaves');
INSERT INTO prince_grp VALUES (69,'branche occidentale');
INSERT INTO prince_grp VALUES (70,'branche méridionale');
INSERT INTO prince_grp VALUES (71,'branche orientale');
INSERT INTO prince_grp VALUES (3,'afro-asiatiques');
INSERT INTO prince_grp VALUES (25,'berbères');
INSERT INTO prince_grp VALUES (26,'égyptiennes');
INSERT INTO prince_grp VALUES (27,'sémitiques');
INSERT INTO prince_grp VALUES (60,'Nord-Est (langues éteintes)');
INSERT INTO prince_grp VALUES (61,'Nord-Ouest');
INSERT INTO prince_grp VALUES (62,'Sud');
INSERT INTO prince_grp VALUES (28,'couchitiques');
INSERT INTO prince_grp VALUES (4,'nilo-sahariennes');
INSERT INTO prince_grp VALUES (5,'nigério-congolaises');
INSERT INTO prince_grp VALUES (29,'bantoues');
INSERT INTO prince_grp VALUES (30,'kwa');
INSERT INTO prince_grp VALUES (31,'mandé');
INSERT INTO prince_grp VALUES (32,'de l\'Ouest-Atlantiques');
INSERT INTO prince_grp VALUES (33,'camerounaises');
INSERT INTO prince_grp VALUES (6,'caucasiennes');
INSERT INTO prince_grp VALUES (34,'du Sud (kartvéliennes)');
INSERT INTO prince_grp VALUES (7,'ouraliennes');
INSERT INTO prince_grp VALUES (35,'finno-ougriennes');
INSERT INTO prince_grp VALUES (63,'fenniques');
INSERT INTO prince_grp VALUES (64,'ougriennes');
INSERT INTO prince_grp VALUES (8,'altaïques');
INSERT INTO prince_grp VALUES (36,'turques');
INSERT INTO prince_grp VALUES (37,'mongoles');
INSERT INTO prince_grp VALUES (9,'sino-tibétaines');
INSERT INTO prince_grp VALUES (38,'chinois et langues apparentées');
INSERT INTO prince_grp VALUES (10,'austroasiatiques');
INSERT INTO prince_grp VALUES (39,'môn-khmer');
INSERT INTO prince_grp VALUES (11,'austronésiennes');
INSERT INTO prince_grp VALUES (40,'malayo-polynésiennes');
INSERT INTO prince_grp VALUES (12,'tupi-guarani');
INSERT INTO prince_grp VALUES (13,'créoles et pidgins');
INSERT INTO prince_grp VALUES (42,'à base française');
INSERT INTO prince_grp VALUES (14,'langues artificielles');
INSERT INTO prince_grp VALUES (15,'autres familles ou langues isolées');
INSERT INTO prince_grp VALUES (43,'japonais et langues apparentées');
INSERT INTO prince_grp VALUES (44,'langues des Amériques');
INSERT INTO prince_grp VALUES (74,'gaéliques');
INSERT INTO prince_grp VALUES (75,'tibéto-birmane');
INSERT INTO prince_grp VALUES (76,'chibchan');
INSERT INTO prince_grp VALUES (77,'tai-kadai');
INSERT INTO prince_grp VALUES (78,'à base portugaise');
INSERT INTO prince_grp VALUES (79,'latines');
INSERT INTO prince_grp VALUES (80,'italo-occidentales');
INSERT INTO prince_grp VALUES (81,'caucasiennes');

--
-- Table structure for table `prince_grp_rel`
--

CREATE TABLE prince_grp_rel (
  parent mediumint(9) NOT NULL default '0',
  child mediumint(9) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='parent is grp, child is grp or language';

--
-- Dumping data for table `prince_grp_rel`
--

INSERT INTO prince_grp_rel VALUES (2,17);
INSERT INTO prince_grp_rel VALUES (2,16);
INSERT INTO prince_grp_rel VALUES (20,21);
INSERT INTO prince_grp_rel VALUES (2,20);
INSERT INTO prince_grp_rel VALUES (2,19);
INSERT INTO prince_grp_rel VALUES (2,18);
INSERT INTO prince_grp_rel VALUES (1,2);
INSERT INTO prince_grp_rel VALUES (2,22);
INSERT INTO prince_grp_rel VALUES (2,23);
INSERT INTO prince_grp_rel VALUES (16,45);
INSERT INTO prince_grp_rel VALUES (16,46);
INSERT INTO prince_grp_rel VALUES (18,47);
INSERT INTO prince_grp_rel VALUES (21,48);
INSERT INTO prince_grp_rel VALUES (48,65);
INSERT INTO prince_grp_rel VALUES (48,66);
INSERT INTO prince_grp_rel VALUES (21,49);
INSERT INTO prince_grp_rel VALUES (21,50);
INSERT INTO prince_grp_rel VALUES (21,51);
INSERT INTO prince_grp_rel VALUES (21,52);
INSERT INTO prince_grp_rel VALUES (21,53);
INSERT INTO prince_grp_rel VALUES (21,54);
INSERT INTO prince_grp_rel VALUES (22,55);
INSERT INTO prince_grp_rel VALUES (23,56);
INSERT INTO prince_grp_rel VALUES (23,57);
INSERT INTO prince_grp_rel VALUES (56,67);
INSERT INTO prince_grp_rel VALUES (56,68);
INSERT INTO prince_grp_rel VALUES (68,72);
INSERT INTO prince_grp_rel VALUES (24,58);
INSERT INTO prince_grp_rel VALUES (24,59);
INSERT INTO prince_grp_rel VALUES (59,69);
INSERT INTO prince_grp_rel VALUES (59,70);
INSERT INTO prince_grp_rel VALUES (59,71);
INSERT INTO prince_grp_rel VALUES (3,25);
INSERT INTO prince_grp_rel VALUES (3,26);
INSERT INTO prince_grp_rel VALUES (3,27);
INSERT INTO prince_grp_rel VALUES (3,28);
INSERT INTO prince_grp_rel VALUES (27,60);
INSERT INTO prince_grp_rel VALUES (2,24);
INSERT INTO prince_grp_rel VALUES (27,61);
INSERT INTO prince_grp_rel VALUES (5,29);
INSERT INTO prince_grp_rel VALUES (5,30);
INSERT INTO prince_grp_rel VALUES (5,31);
INSERT INTO prince_grp_rel VALUES (5,32);
INSERT INTO prince_grp_rel VALUES (5,33);
INSERT INTO prince_grp_rel VALUES (6,34);
INSERT INTO prince_grp_rel VALUES (7,35);
INSERT INTO prince_grp_rel VALUES (35,63);
INSERT INTO prince_grp_rel VALUES (35,64);
INSERT INTO prince_grp_rel VALUES (8,36);
INSERT INTO prince_grp_rel VALUES (8,37);
INSERT INTO prince_grp_rel VALUES (9,38);
INSERT INTO prince_grp_rel VALUES (10,39);
INSERT INTO prince_grp_rel VALUES (11,40);
INSERT INTO prince_grp_rel VALUES (13,42);
INSERT INTO prince_grp_rel VALUES (15,43);
INSERT INTO prince_grp_rel VALUES (15,44);
INSERT INTO prince_grp_rel VALUES (1,3);
INSERT INTO prince_grp_rel VALUES (1,4);
INSERT INTO prince_grp_rel VALUES (1,5);
INSERT INTO prince_grp_rel VALUES (1,6);
INSERT INTO prince_grp_rel VALUES (1,7);
INSERT INTO prince_grp_rel VALUES (1,8);
INSERT INTO prince_grp_rel VALUES (1,9);
INSERT INTO prince_grp_rel VALUES (1,10);
INSERT INTO prince_grp_rel VALUES (1,11);
INSERT INTO prince_grp_rel VALUES (1,12);
INSERT INTO prince_grp_rel VALUES (1,13);
INSERT INTO prince_grp_rel VALUES (1,14);
INSERT INTO prince_grp_rel VALUES (1,15);
INSERT INTO prince_grp_rel VALUES (27,62);
INSERT INTO prince_grp_rel VALUES (13,73);
INSERT INTO prince_grp_rel VALUES (22,74);
INSERT INTO prince_grp_rel VALUES (9,75);
INSERT INTO prince_grp_rel VALUES (44,76);
INSERT INTO prince_grp_rel VALUES (11,77);
INSERT INTO prince_grp_rel VALUES (13,78);
INSERT INTO prince_grp_rel VALUES (20,79);
INSERT INTO prince_grp_rel VALUES (1,81);

--
-- Table structure for table `prince_language`
--

CREATE TABLE prince_language (
  iso tinytext NOT NULL,
  varpron tinyint(1) NOT NULL default '0',
  french tinytext NOT NULL,
  english tinytext NOT NULL,
  self tinytext NOT NULL,
  `text` text character set utf8 collate utf8_unicode_ci NOT NULL,
  imgtext varchar(255) NOT NULL default '',
  trad varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  actif tinyint(4) NOT NULL default '0',
  grp mediumint(9) NOT NULL default '1',
  geo varchar(50) NOT NULL default '',
  geolat float NOT NULL default '0',
  geolng float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_language`
--

INSERT INTO prince_language VALUES ('fra',0,'français','French','français','On ne connaît que les choses que l\'on apprivoise, dit le renard. Les hommes n\'ont plus le temps de rien connaître. Ils achètent des choses toutes faites chez les marchands. Mais comme il n\'existe point de marchands d\'amis, les hommes n\'ont plus d\'amis. Si tu veux un ami, apprivoise-moi!\r\n\r\nAdieu, dit le renard. Voici mon secret. Il est très simple: on ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.','','Antoine de Saint-Exupéry','A26 + àâçèéêôîûùëüï',1,50,'france',46.2276,2.21375);
INSERT INTO prince_language VALUES ('eng',0,'anglais','English','English','We only know the things that we tame, said the fox. People no longer have the time to know anything. They buy things already made for peddlers. But since there are no peddlers of friends, they no longer have friends. If you want a friend, tame me!\r\n\r\nGoodbye, said the fox. Here\'s my secret; it\'s very simple: we see well only with the heart. The essential is invisible to the eyes.\r\n','','Richard Waswo','A26+ ð  þ',1,67,'England, United Kingdom',52.019,-0.770427);
INSERT INTO prince_language VALUES ('deu',0,'allemand','German','Deutsch','Man kennt die Dinge, die man zähmt, sagte der Fuchs. Die Menschen haben keine Zeit mehr, etwas kennen zu lernen. Sie kaufen die Dinge fix und fertig bei den Händlern. Aber weil niemand mit Freunden handelt, haben die Menschen keine Freunde mehr. Wenn Du einen Freund willst, zähme mich!\r\n\r\nAdieu!, sagte der Fuchs. Dies ist mein Geheimnis. Es ist sehr einfach: man sieht nur mit dem Herzen gut. Das Wesentliche ist für die Augen unsichtbar.','','Carlos Alvar et Henriette Partzsch','A26 + ä, ö ü ß, eszet ou scharfes S',1,72,'germany',51.1657,10.4515);
INSERT INTO prince_language VALUES ('ita',0,'italien','Italian','italiano','Puoi conoscere solo quello che ti è familiare, che ti è domestico - disse la volpe. - Gli uomini non hanno più tempo di conoscere niente. Comprano nei negozi cose già pronte. Ma siccome non esistono negozianti di amici, gli uomini non hanno più amici. Tu, allora, se vuoi un amico, vedi di addomesticarmi.\r\n\r\nAddio, disse la volpe. Ed eccolo qui, il mio segreto - semplice semplice. Vedere è cosa del cuore. Agli occhi l\'essenziale resta sempre invisibile.','','Emilio Manzotti','A26 - jkwxy sont utilisés que dans les mots d’emprunt. On trouve toutefois le j (i lunga) ainsi que l’y (ipsilon ou i greca) et le w (doppia vu) dans certains toponymes et noms ou prénoms. + àòóìíùúéè',1,52,'italy',41.8719,12.5674);
INSERT INTO prince_language VALUES ('spa',0,'espagnol','Spanish','español','Sólo conocemos las cosas que domesticamos, dijo el zorro. Los hombres ya no tienen tiempo de conocer nada. Compran en las tiendas cosas hechas. Pero como no hay ninguna tienda donde vendan amigos, los hombres ya no tienen amigos. Si quieres un amigo, !domestícame!\r\n\r\nAdiós, dijo el zorro. Te diré un secreto. Es muy sencillo: sólo se ve bien con el corazón. Lo esencial les resulta invisible a los ojos.','','Jesús Munárriz','',1,65,'spain',40.4637,-3.74922);
INSERT INTO prince_language VALUES ('ron',0,'roumain','Romanian','român&#x103;','Cunoa&#x15f;tem doar ceea ce îmblînzim, spuse vulpea. Oamenii nu mai au timp s&#x103; cunoasc&#x103; nimic. Cump&#x103;r&#x103; de la negustori lucrurile de-a gata. Cum ”nsa nu exista negustori de prieteni, oamenii nu mai au prieteni. Dac&#x103; vrei un prieten, ”mbl”nze&#x15f;te-m&#x103;!\r\n...\r\nAdio, spuse vulpea. Iat&#x103; care e taina mea. E foarte simpl&#x103;: limpede vezi doar cu inima. Ochii un pot s&#x103; vad&#x103; esen&#x163;ialul.\r\n','','','&#x15f; &#x163f; &#x103; î',1,54,'romania',45.9432,24.9668);
INSERT INTO prince_language VALUES ('swe',0,'suédois','Swedish','svenska','Man lär bara känna det man tämjer, sa räven. Människorna har inte längre tid att riktigt bli bekanta med något. De köper färdiga saker i affärerna. Men eftersom det inte finns vänner att köpa i affärerna, har människorna inte längre några vänner. Om du vill ha en vän, så tämj mig!\r\n\r\nAdjö, sa räven. Nu ska du få höra min hemlighet. Den är mycket enkel: det är bara med hjärtat som man kan se ordentligt. Det viktigaste är osynligt för ögonen.','','','http://www.borderline.nu/nuke/modules.php?name=News&file=print&sid=31',1,57,'sweden',60.1282,18.6435);
INSERT INTO prince_language VALUES ('rus',0,'russe','Russian','&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;','-&#1059;&#1079;&#1085;&#1072;&#1090;&#1100; &#1084;&#1086;&#1078;&#1085;&#1086;  &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1090;&#1086;, &#1095;&#1090;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080;&#1096;&#1100;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083; &#1051;&#1080;&#1089;. &#1059; &#1083;&#1102;&#1076;&#1077;&#1081; &#1073;&#1086;&#1083;&#1100;&#1096;&#1077; &#1085;&#1077;&#1090; &#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1080; &#1095;&#1090;&#1086;-&#1083;&#1080;&#1073;&#1086;  &#1091;&#1079;&#1085;&#1072;&#1074;&#1072;&#1090;&#1100;. &#1054;&#1085;&#1080; &#1087;&#1086;&#1082;&#1091;&#1087;&#1072;&#1102;&#1090; &#1074;&#1077;&#1097;&#1080; &#1091;&#1078;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1099;&#1084;&#1080; &#1074; &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1077;. &#1053;&#1086; &#1074;&#1077;&#1076;&#1100; &#1085;&#1077;&#1090; &#1090;&#1072;&#1082;&#1086;&#1075;&#1086;  &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1072;, &#1075;&#1076;&#1077; &#1087;&#1088;&#1086;&#1076;&#1072;&#1102;&#1090;&#1089;&#1103; &#1076;&#1088;&#1091;&#1079;&#1100;&#1103;, &#1080; &#1091; &#1083;&#1102;&#1076;&#1077;&#1081; &#1085;&#1077; &#1089;&#1090;&#1072;&#1083;&#1086; &#1076;&#1088;&#1091;&#1079;&#1077;&#1081;. &#1045;&#1089;&#1083;&#1080; &#1090;&#1099; &#1093;&#1086;&#1095;&#1077;&#1096;&#1100;,  &#1095;&#1090;&#1086;&#1073;&#1099; &#1091; &#1090;&#1077;&#1073;&#1103; &#1073;&#1099;&#1083; &#1076;&#1088;&#1091;&#1075;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1103;&nbsp;!\r\n\r\n-&#1055;&#1088;&#1086;&#1097;&#1072;&#1081;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;  &#1051;&#1080;&#1089;. - &#1042;&#1086;&#1090; &#1084;&#1086;&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090;. &#1054;&#1085; &#1086;&#1095;&#1077;&#1085;&#1100; &#1087;&#1088;&#1086;&#1089;&#1090;&nbsp;: &#1087;&#1086;-&#1085;&#1072;&#1089;&#1090;&#1086;&#1103;&#1097;&#1077;&#1084;&#1091; &#1074;&#1080;&#1076;&#1080;&#1090; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1089;&#1077;&#1088;&#1076;&#1094;&#1077;.  &#1057;&#1072;&#1084;&#1086;&#1077; &#1075;&#1083;&#1072;&#1074;&#1085;&#1086;&#1077; &#1089;&#1086;&#1082;&#1088;&#1099;&#1090;&#1086; &#1086;&#1090; &#1075;&#1083;&#1072;&#1079;.','','Olga Inkova','',1,71,'russia',61.524,105.319);
INSERT INTO prince_language VALUES ('epo',0,'espéranto','Esperanto','esperanto','\"Nur ni konas tion, kion ni malsova&#x11d;igas\", diris la vulpo. \"La homoj ne plu havas tempon por io ajn koni. Ili a&#x109;etas tute pretajn objektojn &#x109;e vendistoj. Sed, &#x109;ar amikvendistoj ne ekzistas, homoj jam ne havas amikojn. Se vi volas amikojn, malsova&#x11d;igu min!\"\r\n\"Adiau\", diris la vulpo. \"Mi diros al vi unua sekreto. &#x11c;i estas tre simpla: Nur oni bone vidas per la nia koro. La esenco estas nevidebla perla okuloj.\"','','Emilio Gastón','&#x108; &#x109; &#x11d;  &#x11c;',1,14,'Universala Esperanto Asocio, Nieuwe Binnenweg 176,',51.9125,4.4644);
INSERT INTO prince_language VALUES ('hun',0,'hongrois','Hungarian','magyar','- Az ember csak azt ismeri meg igazán, amit megszelídít - mondta a róka.\r\n- Az emberek nem érnek rá, hogy bármit is megismerjenek.\r\nCsupa kész holmit vásárolnak a keresked&#x151;knél.\r\nDe mivel barátkeresked&#x151;k nem léteznek, az embereknek nincsenek is barátaik.\r\nHa azt akarod, hogy barátod legyen, szelídíts meg engem.\r\n\r\n- Isten veled - mondta a róka.\r\n- Tessék, itt a titkom. Nagyon egyszer&#x171;:\r\njól csak a szívével lát az ember.\r\nAmi igazán lényeges, az a szemnek láthatatlan.\r\n','','Rónay György','http://www.sztaki.hu/~smarton/vegtelen/kish/kish.htm',1,64,'hungary',47.1625,19.5033);
INSERT INTO prince_language VALUES ('gsw-app',2,'appenzellois','Appenzell Swiss German','Appezellertütsch','me kennt nu d sache wommer zäämt, hät de fux gseit. d lüüt händ ka zit\r\nmeh zum öppis kenne lèrne. si kaufed d sache fix fertig i de läde. aber\r\nwils ka läde für fründ git, händ d lüüt ka fründ meh. wennt du aso en\r\nfründ wötsch, denn zääm mi.\r\n\r\nadie, hät de fux gsait. i säg der no mis gheimnis. s isch ganz eifach!\r\nguet sieht mer nu mit em hèrz. di wichtige sache sind für d auge-n\r\nunsichtbar.','','Yves Scherrer','',1,72,'appenzell',47.3283,9.40883);
INSERT INTO prince_language VALUES ('lmo-tic',2,'tessinois','Ticinese','ticinese','A sa cognos dumá i rop che sa dumestiga, la dis la volp. I gent i g\'ha pü `l temp da cugnos nagota. I cumpra i rop già fai sü di mercant. Ma gh`è mia i mercant da amis, e alura i gent i g\'ha pü amis. Se te vöri un amis, te devi dumestigam.\r\n...\r\nAdiu, la dis la volp. Sculta`l mè segrett, l\'è facil: a sa ved ben dumá cul cör. I rop püsee impurtant, l\'è mia cui öcc ch\' i sa ved. ','','Laura Baranzini','bellinzona áüöè',1,52,'ticino',46.3317,8.80045);
INSERT INTO prince_language VALUES ('slv',0,'slovène','Slovenian','slovenšcina','Le tisto spozna&#x0161;, kar udoma&#x010D;i&#x0161;, je dejala lisica. Lujdje si ne vzamejo &#x010D;asa, da bi sploh spoznali. Pri trgovcih kupujuejo kar izgotovljene predmete. Ker pa ni trgovcev, ki bi prodajali prijatelje, ljudje nimajo ve&#x010D; prijateljev. &#X010D;e bi rad imel prijatelja, me udoma&#x010D;i!\r\n...\r\nZbogom, je rekla lisica. &#X010D;uj mojo skrivnost. Zelo preprosta je: Kdor ho&#x010D;e videti, mora gledati s screm. Bistvo je o&#x010D;em nevidno. \r\n','','Ivan Minatti','',1,70,'slovenia',46.1512,14.9955);
INSERT INTO prince_language VALUES ('srp',0,'serbe','Serbian','srpski','-Covek poznaje samo one stvari koje pripitomi, rece lisica. Ljudi nemaju vise vremena da bilo sta upoznaju. Oni kupuju gotove stvari kod trgovaca. A kako nema trgovaca koji prodaju prijatelje, ljudi vise nemaju prijatelja. Ako hoces prijatelja, pripitomi me!\r\n-Zbogom, odgovori lisica. Evo moje tajne. Sasvim je jednostavna: covek samo srcem dobro vidi. Sustina se ocima ne da sagledati.','','','',1,70,'serbia',44.0165,21.0059);
INSERT INTO prince_language VALUES ('jpn',0,'japonais','Japanese','nihongo &#26085;&#26412;&#35486;','','japonais.jpg','Masayuki Ninomiya','',1,43,'japan',36.2048,138.253);
INSERT INTO prince_language VALUES ('wol',0,'wolof','Wolof','wolof','Xamouñu lou doul lou ñou miin, (wakh  golo). Nit ñi amatouñu jootu xam. Dañuy jenda lou paré ba noppi ca jaykat ba. Waayé ndéguém amatoul jaykatou xarit, nit amatoul xarit. So beugué xarit, nékhalma!\r\n...\r\nTagounaléen (wakh golo). Li moy li ma doon neubeu. Dafa yonmbeu: ak xol la ñuy gisé bou bakh. Li am solo dafay laxou beuti.\r\n','','Yacine Diop Fonjallaz','ñ é',1,32,'senegal',14.4974,-14.4524);
INSERT INTO prince_language VALUES ('sqi',0,'albanais','Albanese','shqip','NJohim veçse gjerat qe i aprivuazojme, thote dhelpra. Njerezit s\'kane me kohe te njohin gje tjeter. Blejne gjera te gateshme tek tregetaret. Por meqe tregetaret miq nuk egsistojne me, atehere njerezit s\'kane me miq, Nese do nje mik, ja ku me ke mua!\r\n...\r\nLamtumire, thote dhelpra. Ja sekreti im. Eshte shume i thjeshte: Shohim mire veçse me zemer. Esencialja eshte e padukshme per syte.','','Lefteri Hasanaj','',1,19,'albania',41.1533,20.1683);
INSERT INTO prince_language VALUES ('heb',0,'hébreu','Hebrew','ivrit &#1506;&#1460;&#1489;&#1456;&#1512;&#1460;&#1497;&#1514;','','hebreu.jpg','','',1,61,'israel',31.0461,34.8516);
INSERT INTO prince_language VALUES ('lat',0,'latin','Latin','lingua latina','Haec tantum nota sunt quae paulatim domantur, dixit uulpes. Homines aliquid spatii ad cognoscendum subripere non iam possunt; sic apud mercatores res ad usum paratas emunt. Cum autem mercatores qui amicos uendant inueniri non possint, hominibus non iam sunt amici. Si amicum expetis, me doma!\r\n	 \r\n(...) Vale, dixit uulpes. Hoc est arcanum meum, et simplicissimum quidem : corde tantum perspici potest, nec summae rerum ipsae cernuntur oculo ullo.\r\n','','Yves Rütsche','',1,79,'',0,0);
INSERT INTO prince_language VALUES ('oci-pro',2,'provençal','Provençal','prouvençau ','Lo Ditz del Raynart\r\n\r\n\"Hom conois solamen \r\no que pot domesgar\".\r\nBos ditz es, e no men:\r\nbe puesc lo t\'explicar.\r\nHuey non a hom lezer\r\nde ren be conoisser,\r\ndoncs compra, e-lh es grazitz,\r\no que-lh estai aizitz,\r\nque-lh vendon mercadant:\r\nals no quier tant ni cant.\r\nPus atrobar no-s poc\r\nlunhz mercadantz d\'amics,\r\nde o cauza s\'esmoc\r\ncÕhuey regn\'om ses amics.\r\nS\'amic vols atrobar,\r\nbe×t caldra m domesgar.\r\nAiqui vuelh descobrir\r\nmo secret al fenir:\r\nab ton cor solamen\r\npotz vezer claramen.\r\n\"Ohlz no ve o que cal\r\nmais, ni qu\'es mais cabal\".','','Maurizio Perugi','',1,49,'',0,0);
INSERT INTO prince_language VALUES ('bre',0,'breton','Breton','brezhoneg','N\'eus nemet an traou a vez doñvaet a anevezer, eme al louarn. An dud n\'o deus ket amzer ken da anaout netra.  Prenañ a reont traou peurc\'hraet `ti ar varc\'hadourien. Met dre ma n\'eus ket a varc\'hadourien vignoned, n\'o deus an dud mignon ebet ken. Ma fell dit kaout ur mignon, doñva ac\'hanon!\r\n...\r\nKenavo, eme al louarn. Setu va sekred. Aes-kenañ ez eo:  gant ar galon nemetken e vez gwelet mat. Ar pep pouezushañ ne vez ket gwelet gant an daoulagad.','','Yvon Abiven','',1,55,'bretagne',48.202,-2.93264);
INSERT INTO prince_language VALUES ('por',0,'portugais','Portuguese','português','Só se conhece aquilo que se amestra, diz a raposa. Os homens já não têm tempo para conhecer nada. Compram tudo já feito nas lojas. Mas como não se podem comprar amigos nas lojas, os homens deixaram de ter amigos. Se queres um amigo, amestra-me!\r\n...\r\nAdeus, diz a raposa. Aqui tens o meu segredo. É muito simples: só se vê bem com o coração. O essencial é invisível para os olhos.\r\n','','Nuno Júdice','',1,66,'portugal',39.3999,-8.22445);
INSERT INTO prince_language VALUES ('roh-srs',2,'romanche sursilvan','Romance (sursilvan)','rumantsch sursilvan','Ins enconuscha mo las caussas ch\'ins ha fatg dumiastias, precisescha l\'uolp. Ils carstgauns han buca peda pli d\'emprender d\'enconuscher enzatgei. Els cumpran las caussas fatgas. Mo essend ch\'ei dat buca pli stizuns per amitgs, han ils carstgauns buc amitgs pli. Sche ti vul in amitg, lu fai ch\'jeu daventi dumiastia!\r\n...\r\nAdia, di l\'uolp. Mira tscheu miu misteri. El ei zun sempels: Mo cun il cor vesan ins bein. Igl essenzial ei buca veseivels per ils egls.\r\n','','Donat Cadruvi','',1,51,'ilanz, suisse',46.7743,9.20475);
INSERT INTO prince_language VALUES ('dut',0,'néerlandais','Dutch','vlaams','Men kent alleen die dingen waarmee men echt vertrouwd is, zegt de vos. De mensen hebben niet meer de tijd nog iets echt te kennen. Zij kopen dingen kant en klaar bij een handelaar. Maar verkopers van vrienden die bestaan niet, en dus hebben de mensen geen vrienden meer. Als je een vriend wilt moet je me temmen!\r\n...\r\nVaarwel, zegt de vos. Hier is mijn geheim. Het is zeer eenvoudig : Goed zien kan men alleen met zijn hart. Het wezenlijke is onzichtbaar voor je ogen.\r\n','','Yasmina Foehr-Janssens','',1,68,'netherlands',52.1326,5.29127);
INSERT INTO prince_language VALUES ('dan',0,'danois','Danish','dansk','Man kender kun de ting som man t&#xe6;mmer, siger r&#xe6;ven. Menneskene har ikke l&#xe6;ngere tid til at kende noget. De k&#xf8;ber f&#xe6;rdiglavede ting hos k&#xf8;bmanden. Men eftersom der ikke findes nogen k&#xe6;bm&#xe6;nd der s&#xe6;lger venner, har menneskene ikke l&#xe6;ngere nogen venner. Hvis du vil have en ven s&#xe5; t&#xe6;m mig! \r\n...\r\nFarvel, siger r&#xe6;ven. Her er min hemmelighed. Den er meget enkel: kun med hjertet kan man se klart. Det der virkeligt betyder noget er usynligt for &#xf8;jnene.\r\n','','Laura et Leonardo F.Lisi','',1,57,'denmark',56.2639,9.50179);
INSERT INTO prince_language VALUES ('nor',0,'norvégien','Norwegian','norsk','Vi kjenner bare de ting vi har gjort oss fortrolig med, sa reven. Menneskene har ikke lenger tid til &#xe5; bli kjent med noe. De kj&#xf8;per alt ferdig i butikken. Men siden det ikke finnes butikker som selger venner, har ikke menneskene venner lenger. Vil du ha en venn, s&#xe5; gj&#xf8;r deg fortrolig med meg!\r\n...\r\nAdj&#xf8;, sa reven. Jeg skal fortelle deg en hemmelighet. Den er veldig enkel. Man ser bare godt med hjertet. Det vesentlige er usynlig for &#xf8;yet.\r\n','','Kirsti Baggethun','',1,57,'norway',60.472,8.46895);
INSERT INTO prince_language VALUES ('ukr',0,'ukrainien','ukrainian','&#1091;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072; &#1084;&#1086;&#1074;&#1072; oukrayins\'ka mova','- &#1052;&#1080; &#1079;&#1085;&#1072;&#1108;&#1084;&#1086; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1090;&#1080;&#1093;, &#1082;&#1086;&#1075;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1072;&#1108;&#1084;&#1086;, &#1087;&#1088;&#1086;&#1084;&#1086;&#1083;&#1074;&#1080;&#1083;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1051;&#1102;&#1076;&#1080;  &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1095;&#1072;&#1089;&#1091; &#1076;&#1083;&#1103; &#1087;i&#1079;&#1085;&#1072;&#1085;&#1085;&#1103; i&#1085;&#1096;&#1086;&#1075;&#1086;. &#1042;&#1086;&#1085;&#1080; &#1082;&#1091;&#1087;&#1091;&#1102;&#1090;&#1100; &#1075;&#1086;&#1090;&#1086;&#1074;i &#1088;&#1077;&#1095;i &#1091; &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i&#1074;. &#1040;&#1083;&#1077;, &#1086;&#1089;&#1082;i&#1083;&#1100;&#1082;&#1080;, &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i &#1076;&#1088;&#1091;&#1079;&#1103;&#1084;&#1080; &#1085;&#1077; &#1073;&#1091;&#1074;&#1072;&#1102;&#1090;&#1100;, &#1083;&#1102;&#1076;&#1080; &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1076;&#1088;&#1091;&#1079;i&#1074;. &#1071;&#1082;&#1097;&#1086; &#1090;&#1080; &#1073;&#1072;&#1078;&#1072;&#1108;&#1096; &#1084;&#1072;&#1090;&#1080; &#1076;&#1088;&#1091;&#1075;&#1072;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1077;.\r\n\r\n- &#1041;&#1091;&#1074;&#1072;&#1081;, &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;&#1072;  &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1052;i&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090; &#1090;&#1072;&#1082;&#1080;&#1081;. &#1042;i&#1085; &#1076;&#1091;&#1078;&#1077; &#1087;&#1088;&#1086;&#1089;&#1090;&#1080;&#1081;&nbsp;: &#1084;&#1080; &#1073;&#1072;&#1095;&#1080;&#1084;&#1086; &#1082;&#1088;&#1072;&#1097;&#1077; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1089;&#1077;&#1088;&#1094;&#1077;&#1084;. &#1053;&#1072;&#1081;&#1089;&#1091;&#1090;&#1090;&#1108;&#1074;i&#1096;&#1077; &#1079;&#1072;&#1083;&#1080;&#1096;&#1072;&#1108;&#1090;&#1100;&#1089;&#1103; &#1085;&#1077;  &#1074;&#1080;&#1076;&#1080;&#1084;&#1077; &#1076;&#1083;&#1103; &#1086;&#1095;&#1077;&#1081;.','','Ekateryna Kondrattsova','',1,71,'ukraine',48.3794,31.1656);
INSERT INTO prince_language VALUES ('gsw-ber',2,'bernois','bern swiss german','Berndütsch','Me kennt nume d Sache wo eim vertraut si, seit der Fuchs. D Mönsche hei ke Zyt me öppis z kenne. Sie choufe alli Sache fix fertig bim Händler. U Gschäft für Fründe git es nid, drum hei d Mönsche keni Fründe meh. We du e Fründ wosch, so gwinn mys Vertraue!\r\n...\r\nAdiö, seit der Fuchs. Da isch mys Gheimnis. Es isch ganz eifach!: guet gseht me nume mit em Härz, ds Wichtigste isch für d Auge unsichtbar.\r\n','','Greti Kläy','',1,72,'berne, Switzerland',46.948,7.44815);
INSERT INTO prince_language VALUES ('gsw-bal',2,'bâlois','Basel Swiss German','Baseldytsch','Me kennt nur die Sache wo me zäämt, het der Fuggs gsait. D Mensche hän kai Zyt me, irgend ebbis kenne z leere. Sy kaufe alles feertyg in de Lääde. Aber wel\'s kainy Lääde git wo Frind verkaufe, hän d Mensche kainy Frind mee. Wenn du e Frind wottsch, denn zääm my!\r\n...\r\nAadie, het der Fuggs gsait. Doo isch no my Ghaimlis. S isch ganz aifach: me gseet numme mit em Häärz guet. S Wichtyge isch fir d Auge unsichtbaar.\r\n','','Tobias Brandenberger','',1,72,'basel, Switzerland',47.5596,7.58061);
INSERT INTO prince_language VALUES ('gsw-arg',2,'argovien','Aargau Swiss German','Aargauerdüütsch','Mer kännt nume die Sache wo mer zèèmt, hèd de Fuchs gsäit. D Mäntsche händ nümme der Zit zum öppis känneleere. Si chauffed alls fixfertig im Laade. Wils aber ekäni Lääde für Fründ gid, händ d Lüüt ekä Fründe me. Wennd en Fründ wotsch, so tue mi zèème.\r\n\r\nLäbwool, hèd de Fuchs gsäit. Ich säge der mis Ghäimnis. Es ist ganz äifach: guet gsee cha mer nume mit em Hèèrz. Di wichtige Sache sind für d Auge unsichtbar.','','Beatrice Schmid','',1,72,'aargau, Switzerland',47.3877,8.25543);
INSERT INTO prince_language VALUES ('lat-med',0,'latin médiéval','Medieval Latin','Latina mediaevalis','Vulpes inquit: Nullas causas nosse valemus praeter eas cum quibus familiarescimus. Homines vero quicquam cognoscendi spatium non iam sumunt; sibi autem causas iamdudum confectas apud venditores comparant. Sed quoniam nequaquam exsisitit amicorum venditor, homines nunc amicis frui nequeunt. Tu igitur, si amico quodam frui vis, familiarem tibi me fac.\r\n\r\n(...) Vale, ait vulpes. Ecce arcanum, quod est simplicissimum, tibi patefacio: tantum sunt perspicaces cordis oculi. Econtra, carnales oculi summas causas cernere non valent.','','Jean-Yves et Lorraine Tilliette','',1,79,'',0,0);
INSERT INTO prince_language VALUES ('fro',0,'français (ancien)','Old French','','Choses ne sont congneües fors celles dont en s\'aüse, dist li golpis. Li home n\'ont ja loisir d\'aucune rien enquerre. Si vont les choses que cil manuevrent as marcheanz achetant. Or ne sont mie marcheant qui amis vendent, et n\'i a mais celui ne ait amis. Se vuels ami, acointe toi a moi !\r\n...\r\nDieus te gart, dist li golpis. Mes secrez est tels. Si est a entendre legiers : en ne voit si bien qu\'as ielz del cuer. Forz choses ne sont as ielz del chief veües.','','Olivier Collet','',1,50,'',0,0);
INSERT INTO prince_language VALUES ('gsw-sol',2,'soleurois','Solothurn Swiss German','Soledurnerdütsch','Me könnt nume die Sache wo me zähmt, seit dr Fuchs. D Mönsche hei nüm Zit öppis lehre z könne. Si choufe s Züg fixfertig bim Händler. Aber wüus keni Händler für Fründe git, hei d Mönsche keni Fründe meh. Wen e Fründ wottsch, de due mi zähme.\r\n\r\nAdiö, seit dr Fuchs. Das isch auso mys Gheimnis. Es isch ganz eifach. Me gseht nume mit em Härz guet. S Wäsentleche isch für d Ouge unsichtbar.','','Simone Übelhart','2corrections par gina.reymond@geneva-link.ch',1,72,'solothurn, Switzerland',47.207,7.53331);
INSERT INTO prince_language VALUES ('gsw-zur',2,'zurichois','zurich swiss german','Züritüütsch','Mer känt nume d\'sache wo mer zäämt, hät de fuchs gsäit. D\'mänsche händ nüme ziit zum öppis käneleere. Si chaufed alles fixfertig im lade. Will\'s aber käi läde für fründ git, händ d\'lüüt käi fründ mee. Wänn d\'en fründ wotsch, dänn zääm mi.\r\n\r\nAdiö, hät de fuchs gsäit. Ich säge dir mis ghäimnis. Es isch ganz äifach: guet gsee cha mer nume mit em herz. Di wichtige sache sind für d\'auge unsichtbar.','','Juri Mengon','',1,72,'zurich, Switzerland',47.369,8.53803);
INSERT INTO prince_language VALUES ('ara',0,'arabe','Arabic','&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577; al ?arab?ya','','arabe.jpg','','',1,62,'alger',36.7312,3.14209);
INSERT INTO prince_language VALUES ('hye',0,'arménien','Armenian','&#1344;&#1377;&#1397;&#1381;&#1408;&#1381;&#1398;','','armenien.jpg','','',1,17,'armenia',40.0691,45.0382);
INSERT INTO prince_language VALUES ('sux',0,'sumérien','Sumerian','EME.?IR','','sumerien.jpg','Antoine Cavigneaux','',1,15,'',0,0);
INSERT INTO prince_language VALUES ('prs',0,'dari','Dari','','','dari.jpg','Mirwais Tayebi','',1,45,'jalalabad',34.43,70.46);
INSERT INTO prince_language VALUES ('egy',0,'égyptien ancien','Egyptian','','','egyptien.jpg','Michel Vallogia','',1,26,'egypt',26.8206,30.8025);
INSERT INTO prince_language VALUES ('ber',0,'tamazight','Berber','tamazight','','tamazight.jpg','Ekram Hamu Haddu','',1,25,'algeria',28.0339,1.65963);
INSERT INTO prince_language VALUES ('grc',0,'grec ancien','Ancient Greek','','','grecancien.jpg','Paul Schubert','',1,47,'',0,0);
INSERT INTO prince_language VALUES ('enm',0,'anglais (moyen)','Middle English','','Man moste tamen that he kenne lists, quoth the fox. To witen mankind hath no tide. Men praty thingys from sellours beyen. But there is of freondes no marchande, so that man freondless now stode. If a freonde thou list, tame me!\r\n\r\nFarewel, quoth the fox. This is my cownsell. Seli it is: man can only see well thurgh the hert. To the eien the essencial is invisibull.','','Guillemette Bolens','',1,67,'',0,0);
INSERT INTO prince_language VALUES ('ang',0,'anglais (vieil)','Old English','','Man nat butan Þe man atemað,cwæð se fox. Menn nabbað hwile nawiht to witanne. Hie bycgað gegarwodu Þing fram ciepemannum. Ac swa na freonda ciepemann nis, menn nabbað na freondas. Gif Þu anne freond wilt, mec atema!\r\n\r\nWes Þu hal, cwæð se fox. Her is min diegolnes. Seo is swiðe anfeald: man siehð wel nefne mid heorte. Seo aweosung nis fram eagum sewenlic.','','Fabienne Michelet','',1,67,'',0,0);
INSERT INTO prince_language VALUES ('pol',0,'polonais','Polish','polski','- Poznaje sie&#x0328; tylko to, co sie oswoi - powiedzia&#x0142; lis. - Ludzie maja&#x0328; zbyt ma&#x0142;o czasu, aby cokolwiek poznac&#x301;. Kupuja&#x0328; w sklepach rzeczy gotowe. A poniewaz&#x307; nie ma magazynów z przyjació&#x0142;mi, wie&#x0328;c ludzie nie maja&#x0328; przyjació&#x0142;. Jes&#x301;li chcesz miec&#x301; przyjaciela, oswój mnie!\r\n\r\n- Z&#x307;egnaj - odpowiedzia&#x0142; lis. - A oto mój sekret. Jest bardzo prosty: dobrze widzi sie&#x0328; tylko sercem. Najwaz&#x307;niejsze jest niewidoczne dla oczy.','','??','http://www.odaha.com/littleprince.php?f=MalyKsiaze',1,69,'polska',51.9194,19.1451);
INSERT INTO prince_language VALUES ('ita-tos',2,'toscan','Tuscan','toscano','Si conosce solo le cose che s\'addomestica disse la volpe. Gl\'omini un\'hanno piú tempo di conosce\'nulla. Comprano cose bell\'e fatte nei mercati. Ma siccome un\'esiste punti mercati d\'amici, gl\'omini un\'hanno piú amici. Se tu voi un amico, addomesticami! \r\n\r\nAddio disse la volpe. Ecco il mio segreto. È di molto facile: solo si vede bene con il cuore. L\'essenziale è invisibile agl\'occhi.\r\n\r\n\r\n','','Roberta Orlandi','',1,52,'Tuscany',43.5671,10.9807);
INSERT INTO prince_language VALUES ('mlt',0,'maltais','Maltese','Malti','Il-bniedem isir jaf biss bil-&#x0127;lejjaq li jimmansa hu, qal il-volpi. Il-bnedmin m’g&#x0127;ad g&#x0127;andhom &#x0127;in g&#x0127;al xejn. Jixtru kollox lest ming&#x0127;and tal-&#x0127;wienet. Izda billi ma jezistux bejjieg&#x0127;a tal-&#x0127;bieb, il-bnedmin ma baqg&#x0127;alhomx &#x0127;bieb. Jekk trid &#x0127;abib immansa lili!\r\n…\r\nSa&#x0127;&#x0127;iet, qal il-volpi. Is-sigriet tieg&#x0127;i huwa dan. Sigriet semplici &#x0127;afna: ma tistax tara sew jekk mhux bil-qalb. Dak li hu tassew ha’&#x0127;tiega ma tarahx be-g&#x0127;ajnejn. \r\n','','Toni Aquilina','',1,62,'malta',35.9375,14.3754);
INSERT INTO prince_language VALUES ('lav',0,'letton','Latvian','latvie&#x0161;u','M&#x0113; pasz&#x012B;stam tikai to, ko pieradin&#x0101;m, sac&#x012B;ja lapsa. Civ&#x0113;kiem vairs nav laika neko iepaz&#x012B;t. Vini nop&#x0113;rk pie tirgot&#x0101;ja jau visu gatavu. Bet, t&#x0101; k&#x0101; nav tirgot&#x0101;ju, kas p&#x0101;rdotu draugus, tad cilv&#x0113;kiem vairs nav draugu. Ja tu v&#x0113;lies draugu, pieradini mani! \r\n...\r\nArdievu, sac&#x012B;ja lapsa. L&#x016B;k, mans nosl&#x0113;pums, tas ir loti vienk&#x0101;r&#x0161;s: &#x012B;sti m&#x0113;s redzam tikai ar sirdi. B&#x016B;tiskais nav ac&#x012B;m saredzams. \r\n','','Ieva Lase','',1,58,'latvia',56.8796,24.6032);
INSERT INTO prince_language VALUES ('srd',0,'sarde','Sardinian','sardu','Non connoschimus atteru petzi chei sas cosas chi si addomestican, nait su mariane. Sos omines no an prus su tempus de connoscher. Dae sos bèndidores issos comporan sas cosas già fattas. Ma sicomente non s’accatana bèndidores de amicos, sos omines non an prus amicos. Si tue cheres unu amicu addomesticande unu!\r\n…\r\nAdiosu>>, nait su mariane. Ecco su secretu meu. Est meda fatzile: si biet bene petzi chin su coro. S’essentziale non si biet pompiandelu.\r\n','','Dino Manca','',1,53,'sardegna',40.1209,9.01289);
INSERT INTO prince_language VALUES ('pms',0,'piémontais','Piemontese Italian','piemontèis','Noi conossoma mach le c”se ch’a ‘n rendo bindisp”st, a dis la volp.  J’”mini  a l’han pï nen ël temp ëd con”sse d’autr.  A cato le c”se gia faite dai marcand.  Ma dal moment che ij marcand amis a esisto nen, j’”mini a l’han pì gnun amis. S’it veule n’amis, it deuve domëstieme.\r\n…\r\nAdieu, a dis la volp. Veui confidete mè segret. A l’è motobin sempi: noi riessima a vëdde bin mach con ‘l cheur. L”n ch’a l’è essensial a l’è invisìbil con j’euj.\r\n','','Lidia Rubio et Cristina Tango','',1,52,'Piedmont, Italy',45.0522,7.51539);
INSERT INTO prince_language VALUES ('ita-pis',2,'Pisan','Pisan Italian','','E si  ‘onosce sortanto le ‘ose che ci fanno diventà  docili, dice la vorpe. La gente un ha più  ‘r tempo  di ‘onosce artro. Compra le  ‘ose già fatte da’  bottegai. Ma siccome un ci sono bottegai amici, la gente amici un n’ha più. Se voi un’amio, mi devi addomestià.\r\n…\r\nTi saluto dice la vorpe.   Ir mi’ segreto è questo. E’ semprice:  si riesce a vede’ bene solo cor cuore.  Quer che conta di più con l’occhi un si vede.\r\n','','Roberto Sbrana','',1,52,'pisa, Italy',43.7161,10.3966);
INSERT INTO prince_language VALUES ('scn',0,'sicilien','Sicilian','sicilianu','Si canusciunu sulamenti ‘i cosi chi s’ammaistranu, dissi ‘a vurpi. L’omini nonhannu cchjù tempu di canusciri nenti. Ccattunu li cosi fatte sulamenti di mercanti. Ma siccomu non ci sunnu pi-nnenti mercanti d’amici, l’omini non hannu cchjù amici. Si tu voi n’amicu, ammaistrimi!\r\n…\r\nAddiu, dissi ‘a vurpi. Eccu u mè sigretu. E’ simplici-simplici: si vidi beni sulamenti cu cori. L’essenziali è nvisibili a-ll’occhj.\r\n','','Rossana Castano','',1,52,'sicilia',37.3979,14.6588);
INSERT INTO prince_language VALUES ('ita-vic',2,'vicentin','Vicentin Italian','vicentino','Te pui conóssare solo queo che xe de faméja, ga dito la volpe. I òmeni no i ga pì tempo de conóssare gnente. Tuto queo che i ga i lo compra dai botegari. Ma sicome no ghe xe botegari che vende amissi, i òmeni no i ga pì amissi. Se ti te vui n’amico, fame diventar de faméja.\r\n…\r\nAdìo, ga dito la volpe. Ècolo kì el me segreto. El xe tanto fàssile: te ghe vidi ben solo col core. Queo che conta no te lo vidi mia coi oci.\r\n','','Luciano Zampese','',1,52,'vicenza, Italy',45.5459,11.5403);
INSERT INTO prince_language VALUES ('ast',0,'bable/asturien','asturian','asturianu','Solu conocemos les coses que domesticamos, dixo el raposu. Los homes ya nun tien tiempu de domesticar nada. Mercan nes tiendes coses feches. Pero como nun hai nenguna tienda ónde vendan amigos, los homes ya nun tien amigos. Si quies un amigu, ¡domestícame! \r\n…\r\nAdiós, dixo el raposu. Direte un secreto. Ye muy sencillu: solu vese bien co’l corazón. Lo esencial resultayos invisible a los güeyos.\r\n','','Antonio D\'az Orejas','',1,48,'Asturias',43.2504,-5.98326);
INSERT INTO prince_language VALUES ('cas-cas',2,'castuó','Castúo','castuó','Namág tenemug cunucencia de lag cosag que dumamug, iju el zorru. Lug’ombrig no tienin tiempu ya pa dumal nâ. Mercan en lag tiendag lag cosag’echag. Peru comu no ay tienda que varga ondi vendan amigug, lug’ombrig no tienen amigug yâ. Si quiég’un amigu, ¡d”mami!\r\n…\r\nAdióg, iju la zorra. Vu’a icilti un secretinu. Eg mu facilinu: namág se ve bien con’el curazón. Er meoyu eg’invisibli pa lus’ojug.\r\n','','Pablo Muñoz Regadera','',1,65,'Extremadura',39.4937,-6.06792);
INSERT INTO prince_language VALUES ('arg-ben',0,'patois de Benasque','Benasquese','Benasqués','Sólo coneixem les coses que adomem, ba di el raboso. Els omes ya no tienen tems de coneixer res. Compren a les tiendes coses fetes. Pero coma no yey niuna tienda agon benguen amigos, els omes ya no tienen amigos. Si ques un amigo, ¡adómame!\r\n…\r\nAdeu, ba di el raboso. Te diré un secreto. Ye mol sensillo: sólo se bei bé dan el corasón. Lo més importán no se bei dan els güells.\r\n','','José Mar\'a Mur','',1,49,'Benasque, Spain',42.6051,0.523973);
INSERT INTO prince_language VALUES ('arg-che',2,'cheso','Cheso','','Solamen conocemos las cosas que domesticamos, dicié lo raboso. Los hombres ya no han tiempo de domesticar cosa. Mercan en los comercios cosas feitas. Pero como no bi-há boticas en do se vendan amigos, los hombres  s’han quedáu sin amigos. Si quies un amigo... ¡habrás a domesticarme!\r\n…\r\nAdiós, dicié lo raboso. Te’n diré uno  de los míos secretos. Ye muy simple: sólo se i-veye bien con lo corazón. Lo esencial ye invisible a los güellos.\r\n','','Emilio Gastón','',1,65,'aragon',41.5976,-0.905662);
INSERT INTO prince_language VALUES ('cat',0,'catalan ','Catalan','català','Només es coneixen les coses que es domestiquen -va dir la guineu. Els homes ja no tenen temps de conèixer res. Compren coses fetes als botiguers. Però com que no hi ha botiguers d’amics, els homes ja no tenen amics. Si vols un amic, domestica’m!\r\n…\r\nAdéu -va dir la guineu. Vet aquí el meu secret. És molt senzill: només s’hi veu bé amb el cor. L’essencial és invisible als ulls.\r\n','','Luis Puig et Jenaro Talens','',1,49,'Catalunya',41.5912,1.52086);
INSERT INTO prince_language VALUES ('glg',0,'galicien','Galician','gallego','Non se coñecen máis ca as cousas que se domestican, dixo o raposo. Os homes non teñen tempo para coñecer nada. Conseguen no mercado as cousas todas. Mais como non existe mercado de amigos, os homes non teñen amigos. Se ti queres un amigo, domestícame!\r\n…\r\nAdeus, dixo o raposo. Velaquí tes o meu segredo. Éche moi simple: só co corazón se mira ben. O esencial é invisíbel para os ollos.\r\n','','Antón Dobao et Chus Pato','',1,66,'Galicia',42.5751,-8.13386);
INSERT INTO prince_language VALUES ('eus',0,'basque','Basque','euskara','Hezten diren gauzak baino ez dira ezagutzen, esan zuen azeriak. Gizonek ez dute ezer ezagutzeko denborarik. Merkatarienean guztiz egindako gauzak erosten dituzte. Baina adiskide-merkataririk ez dagoenez, gizonek ez dute adiskiderik. Adiskide bat nahi baduzu, hez nazazu!\r\n.....\r\nAdio, esan zuen azeriak. Hona hemen nire sekretua. Oso erraza da: bihotzez baino ez da ondo ikusten. Funtsezkoa ikustezina da begientzako.\r\n','','Rikardo Arregi D\'az de Heredia','',1,15,'Basque Country, Spain',42.9896,-2.61893);
INSERT INTO prince_language VALUES ('frp-ann',0,'patois du Val d\'Anniviers','Val d\'Anniviers dialect','','Oung cognit què lè tzogè coung a adommécia, dèt lé rèingnar. Lé jhommo l’ann pa mé lo teng dè tzougea conirè. L’atzètonn dè tzogè totè prèchtè ou martchiann. Ma kommè la pa mè dè martchian d’amèk, lè jhommo l’ann pa mè d’amik. Ché tou vout oung amèk, dèt lè rèingnar, tou kountè l’affrarssiè !\r\n…\r\nAdiou, dèt lè rèingar. Tè dio mong sèkrèt. Lè frang cheingplo : oung vit bèing qu’avouè lo kour. Chènn què conntè frang nè pas péchiouc avouè lè jouèss.\r\n','','Jean-Jacques Zufferey','',1,50,'Anniviers, Switzerland',46.1671,7.60778);
INSERT INTO prince_language VALUES ('gsw-wal',2,'haut-valaisan','Wallis Swiss German','Wallisertiitsch','Mu chennt nummu d’Sache wa einum vertruwt sind, hett där Fugs gseit. D’Mänschu hennt kei Zit meh, eppis lehru z’chennu. Schi chöifunt ganz fertigi Sache in dä Gschäftu. Aber wills kei Gschäfti git wa mu cha Fräinda chäifu, hent d’Mänschu kei Fröinda meh. Wennt dü a Fröind willt, so tüö mich zähmu.\r\n…\r\nAde, hett där Fugs gseit. Hie isch mis Gheimnis. Äs isch ganz as eifachs: Mu gseht nummu mit dum Härz richtig. Z’wichtigschta chasch mit dä Öigu nit gseh.\r\n','','Christian Escher','',1,72,'brig-glis',46.3182,7.98458);
INSERT INTO prince_language VALUES ('fin',0,'finnois','Finnish','suomi','Me tunnemme vain ne, jotka kesytämme, kettu sanoi. Ihmisillä ei ole enää aikaa tuntea mitään. He ostavat tavarat valmiina kauppiailta. Mutta koska kauppiaat eivät myy ystäviä, ihmisillä ei ole enää ystäviä. Jos haluat ystävän, kesytä minut!\r\n…\r\n\r\nHyvästi, kettu sanoi. Kerron sinulle salaisuuteni, se on hyvin yksinkertainen: Vain sydämellä näkee hyvin. Tärkein on silmin näkymätöntä.\r\n','','Merja Torvinen','',1,63,'finland',61.9241,25.7482);
INSERT INTO prince_language VALUES ('scr',0,'croate','Croatian','hrvatski jezik','Poznamo samo stvari koje pripitomimo, re&#x010D;e lisica. &#X010C;ovjek nema vi&#x0161;e vremena da i&#x0161;ta upozna. Kupuje samo ve&#x0107; izra&#x0111;ene stvari kod trgovca. A kako vi&#x0161;e ne postoje trgovci koji su prijatelji, &#x010D;ovjek vi&#x0161;e nema prijatelja. Ako ho&#x0107;e&#x0161; prijatelja, pripitomi me!\r\n…\r\nZbogom, re&#x010D;e lisica. Evo moje tajne. Ona je vrlo jednostavna: vidi se dobro samo srcem. Najbitnije je o&#x010D;ima nevidljivo. \r\n','','Jasna Adler','',1,70,'croatia',45.1,15.2);
INSERT INTO prince_language VALUES ('rom',0,'Romani','Romani','romani ?hib','Nané d&#x017E;indlé vavír kolá, fénciu karík savé san prisyklynó- phendziá líso. Manu&#x0161;á, nané lénde kiédy te syklión várso nevó. Joné kinén saró kerdó biknypáske. A paldavá, so nané adáso biknypnári, ke savõ sa&#x0161;tý te kinés malén, to i manu&#x0161;énde nané butedýr malá. Jé&#x015B;li kamés, kaj te javél túte jek mal, to prisykliákir man ke pe. \r\n...\r\nDevlésa-phendziá líso. Óke mro sekréto. Jou sýle izbít prósto: dykh jilésa. So sy andré na&#x0161;tý te udykhés jakhénca. \r\n','','Lev Tcherenkov et Stéphane Laederich','',1,46,'macedonia',41.6086,21.7453);
INSERT INTO prince_language VALUES ('slk',0,'slovaque','Slovak','sloven&#x010D;ina','Spoznávame len to, ?o si skrotíme, povedala líška. ?udia už nemajú ?as nie?o spoznáva?. Kupujú si u obchodníkov celkom hotové veci. Niet však takých obchodníkov, ?o by predávali priate?ov, preto ?udia priate?ov už nemajú. Ak chceš ma? priate?a skro? si ma. \r\n…\r\nZbohom, riekla líška. Tu je moje tajomstvo. Je ve?mi jednoduché: dobre vidíme iba srdcom. To hlavné je o?iam nevidite?né.\r\n','','Mária Kovácová','corrigé par Vivien <ninien@zmail.sk>',1,69,'slovakia',48.669,19.699);
INSERT INTO prince_language VALUES ('cze',0,'tchèque','Czech','&#x010D;esky','Známe jen ty v&#x011B;ci, které si ocho&#x010D;íme, &#x0159;ekla li&#x0161;ka. Lidé u&#x017E; nemají &#x010D;as, aby n&#x011B;co poznávali. U obchodník&#x016F; nakupují v&#x011B;ci úlpn&#x011B; hotové. Ale proto&#x017E;e s p&#x0159;átelstvím se nekupc&#x010D;í, nemají p&#x0159;átel. Chce&#x0161;-lu p&#x0159;ítele, ocho&#x010D; si m&#x011B;!\r\n…\r\nSbohem, &#x0159;ekla li&#x0161;ka. Tady je mé tajemství, docela jednoduché: správn&#x011B; vidíme jen srdcem. To bytostné o&#x010D;i nespat&#x0159;í. \r\n','','Lubor Jílek','',1,69,'czech republic',49.8175,15.473);
INSERT INTO prince_language VALUES ('lit',0,'Lituanien','Lituanian','letuvi&#x0173 kalba','Susipa&#x017E;inti gali tik su tais dalykais, kuriuos prisijaukini, tarè lapè. &#X017E;mones neturi laiko ko nors pa&#x017E;inti. Jie nusiperka visk&#x0105; jau gatav&#x0105; i&#x0161; prekybinink&#x0173;. Bet kadangi nera prekybinink&#x0173; i&#x0161; kuri&#x0173; b&#x016B;t&#x0173; galima nusipirkti draug&#x0173;, tai draug&#x0173; &#x017E;mones ir neture. Jei nori tureti draug&#x0105;, prisijaukink mane! \r\n...\r\nLik sveikas, tare lape. &#X0161;tai kikia mano paslaptis. Ji labai paprasta: matyti galima tik &#x0161;irdimi. Tai, kas svarbiausia nematoma akimis. \r\n','','Vitautas Kauneckas','',1,58,'lithuania',55.1694,23.8813);
INSERT INTO prince_language VALUES ('wen',0,'sorabe','Sorbian','Serb&#353;&#263;ina','Zeznaje&#x0161; jeno&#x017E; w&#x011B;cy, ki&#x017E; sej sklud&#x017A;i&#x0161;, rjeknje li&#x0161;ka. Lud&#x017A;o nimaja hi&#x017E;o &#x010D;as, n&#x011B;&#x0161;to na w&#x011B;domje bra&#x0107;. Kupuja zhotowjene w&#x011B;cy w kupnicach. Ale dokel&#x017E; njeje kupnicow, hd&#x017A;e&#x017A; mó&#x017E;e&#x0161; sej prrre&#x0107;elstwo kupi&#x0107;, nimaja hi&#x017E;o prrre&#x0107;elow. Hdy&#x017E; chce&#x0161; prrre&#x0107;ela, sklud&#x017A; mje! \r\n...\r\nAdej, rjeknje li&#x0161;ka. Tule je moje potajnstwo. Je cyle jednore: Jasnke wid&#x017A;i&#x0161; jeno&#x017E; z wutrobu. To najwa&#x017E;ni&#x0161;e wostanje wo&#x010D;omaj. ','','Róza Domascyna','',1,69,'Gorlitz, Germany',51.1531,14.9753);
INSERT INTO prince_language VALUES ('tgl',0,'tagalog','Tagalog','tagalog','\"Maaari lang nating maunawaan ang mga bagay na ating inaamo”, sabi ng alamid. Ang mga tao ay wala ng panahon para matuto. Bumibili sila ng mga bagay na handang gawa sa tindahan. Ngunit, dahil wala namang tindahan ng kaibigan, ang mga tao ay wala ng kaibigan. Kung gusto mo ng kaibigan, amuin mo ako.\r\n…\r\n“Paalam”, sabi ng alamid. Pakinggan mo ang aking sekreto. Napakasimple niya: sa pamamagitan lang ng puso na maaari tayong makakita ng mahusay. Ang pinakamahalaga ay hindi nakikita ng mata.\r\n','','Marjorie Goetschy','',1,40,'philippines',12.8797,121.774);
INSERT INTO prince_language VALUES ('por-bra',0,'portugais brésilien','Brasilian','brasileiro','Só conhecemos as coisas que domesticamos, disse a raposa. Os homens já não têm tempo de domesticar nada. Compram nas lojas coisas feitas. Mas como não existe nenhuma loja onde se vendam amigos, os homens já não têm amigos. Se queres um amigo, domestica-me!\r\n…\r\nAdeus, disse a raposa. Dir-lhe-ei um segredo. É muito simples: só se enxerga bem com o coração. O essencial é invisível aos olhos.\r\n','','Prisca Agustoni','',1,66,'brazil',-14.235,-51.9253);
INSERT INTO prince_language VALUES ('cas-lun',2,'lunfardo','Lunfardo','','“Uno solo manya el fato que acamala, bate el zorro. A los chochamu’ ya no les da el cuero. Hoy la merca se compra solo en los almacenes. Pero como no existe el comerciante gomía, los tipos se quedan en banda. Si querés un gomía, yugála y dame bola\r\n…\r\n-Adiós, dijo el zorro. Y guarda con mi deschave: solo se juna bien con el bobo. Lo que es bien debute es invisible pa’ los faroles.”\r\n','','Fernanda Nussbaum','',1,65,'',0,0);
INSERT INTO prince_language VALUES ('que',0,'quechua','Quechua','runa simi / kichwa','‘Riqsillanchis uywallasqanchista’, atuqqa nispa niykun. Runaqa manaña atinñachu uywayta. Anchaqa ruwasqakunata rantipayan. Masikuna mana rantinakuq chayri, manaña tarikunñachu. Masi masayta munanki chayqa, uywakullaway.\r\n…\r\n ‘Ripusaq!’, atuq nin. Pakanataqa risqayki manan sasachus kayta. Anchachus rikukun sunqullawan. Chaninqa ñawinchiswan mana rikukunchu\r\n','','Gladys Achahuanco et Julio Calvo','',1,44,'peru',-9.18997,-75.0152);
INSERT INTO prince_language VALUES ('pua',0,'purepecha-tarasque','Purepecha-Tarascan','','“Imani ambek’uchisi mítek’a enkachi sesi p’interhek’a, isi uantaspti jiuatsi. K’uiripuecha nórekuksi antak’uarhesinti p’interheni ka p’arheni ampe, iámintu ampe piásintiksi. Kóruchka nónani ataranhatasinti pichakuecha (píchpiricha) jimposi k’uiripueha nóteru jatsiati píchpirichani. Ekari uékani jaka ma píchpirini, p’interhetakuarherini jínteni. \r\n…\r\nNipa-ia, arhispti jiuatsi. Arhintikuakakini ma ampe k’oru. Nómintu sani ts’unhapesti: mintsita jimpo kánekua sesi xarharasinti. Sánteru kéri ampakiti ampe no xarharasinti.” \r\n','','Pedro Márquez Joaquín','',1,44,'Michoacan, Mexique',19.5665,-101.707);
INSERT INTO prince_language VALUES ('cpf',0,'créole ','french creole (pidgin)','','Réna a di konsa sèl bagay ou moun kab donté sé sa ou konnin.Leszom pa gen tan anko pou yo apran anyin. Yo achté bagay tou fèt nan min komèsan yo. Min kom machan zanmi pa esisté, lézom pa gin zanmi anko. Si ou vlé youn zanmi, sé pou donté mwen.\r\n…\r\n\r\nAdié Réna a di. Min sékrè pam. Li trè simp: Sé avek kèou ou kab wè pi bien. Bagay pi impotan invisib pou gé.\r\n','','Carl et Yasmina Tippenhauer','',1,42,'antilles françaises',16.5,-62);
INSERT INTO prince_language VALUES ('roh',0,'romanche (Rumantsch Grischun)','Romansh (Grisun)','rumatsch grisun','„Ins conuscha mo quai ch’ins ha domestitgà“, ha ditg la vulp. Ils umans n’han betg pli temp d’emprender a conuscher insatge. Els cumpran las chaussas fatgas e finidas tar ils martgadants. Ma cunquai ch’i na dat nagins martgadants d’amis, n’han ils umans betg pli amis. Sche ti vuls in ami, alura domestitgescha mai!“\r\n…\r\n„Adia“, ha ditg la vulp. „E quai è mes misteri. El è fitg simpel: ins vesa bain mo cun il cor. L’essenzial na ves’ins betg cun ils egls.“\r\n','','Ursulina Monn','',1,51,'grisons, suisse',46.657,9.57733);
INSERT INTO prince_language VALUES ('roh-srm',2,'romanche surmiran','Romansh (surmiran)','rumantsch surmiran','Ins amprenda a canoscher angal las tgossas tg’ins dumestegia, ò cuntinuo la golp. Igls carstgangs n’on betg ple peda d’amprender a canoscher ensatge. Els compran tot las tgossas bel fatgas e fittadas tigls martgadants. Ma i dat nigns martgadants d’ameis. Parchegl on igls carstgangs er nigns ameis. Sch’te vot en amei… alloura stost am dumestager!\r\n…\r\nAdia, ò raspundia la golp. E chegl è igl mies misteri, el è fitg simpel: angal cugl cor ins pogl veir andretg. Igl essenzial n’è betg visibel pigls îgls.\r\n','','Peder Cadotsch','',1,51,'savognin, suisse',46.5979,9.5981);
INSERT INTO prince_language VALUES ('roh-val',2,'romanche vallader','Romansh (vallader)','rumantsch vallader','I’s cugnuoscha be quai chi s’ha domestichà, ha dit la vuolp. Ils umans nu’s piglian plü peida dad imprender a cognuoscher alch. I cumpran la roba bell’e fatta pro’ls marchadants. Ma cun quai chi nu dà ingüns marchadants dad amis, nun han ils umans plü ingüns amis. Scha tü voust ün ami,schi prouva da’m domestichar!\r\n…\r\nAdieu, ha dit la vuolp. Quist es meis misteri. El es fich simpel: i’s vezza bain be cul cour. L’essenzial nu’s vezza culs ögls.\r\n','','Jachen Curdin Arquint','',1,51,'scuol, suisse',46.7869,10.459);
INSERT INTO prince_language VALUES ('roh-put',2,'romanche puter','Romansh (puter)','rumantsch puter','Il pitschen prinz\r\n\r\nA’s cugnuoscha be que cha s’ho domesticho, ho dit la vuolp. Ils umauns nu’s piglian plü peida dad imprender a cognuoscher qualchosa. A cumpran la roba bell’e fatta tals marchadaunts. Ma cun que cha que nu do üngüns marchadanuts dad amihs, nun haun ils umauns plü üngüns amihs. Scha tü voust ün amih, schi prouva da’m domesticher!\r\n\r\nAdieu, ho dit la vuolp. Quist es mieu misteri. El es fich simpel: que’s vezza bain be cul cour. L’essenziel nu’s vezza culs ögls.\r\n','','','',1,51,'Samedan',46.5341,9.87053);
INSERT INTO prince_language VALUES ('gug',0,'guaraní','Guaraní','avañe\'r&#x1EBD; ','Jaikuaa ñamomba’évante, he’i Aguara. Ava nomopa’&#x0169;-véima hembiapo osaite’o hagua, mba’eve ha avavépe. Oñemu jejapopyre ha, ndaipórire mamove angir&#x0169; ojogua hagua, ava ndorekovéo iñir&#x0169;rã. Reipotárõ nde rayhupararã, nde chemomba’eva erã. \r\n...\r\nAháma, he’i Aguara. Che ñe’e ñemíta ndéve, ndahasýi ikuaapy: ñane ñe’ã guivénte jahechapaporã. Hekopetegua tesáèe ndojechaukái. \r\n','','Ruth Mariela Mello-Wolter','',1,12,'paraguay',-23.4425,-58.4438);
INSERT INTO prince_language VALUES ('yor',0,'yoruba','Yoruba','yorùbá','A kìí mò? ju ohun tí a bá fi kóni ni kò?lò?kò?lò? wí. Àwo?n èníyàn ò ní àsìkò láti waadi nkankan mo. Rírà ni wo?n ? ra ohun gbogbo tí wó?n ti sè pari ló?dò? àwo?n olówò. Sùgbó?n nígbàtí kòsí ìsò wò ò?ré?, awo?n èèyàn ò ní oré? mó?. Tí o bá ? wá òré?, ? jé? máa kó? mí! \r\n…\r\nÓ dìgbà, ni kò?lò?kò?lò? wí. Èyí ni às?írí mi. Èyí tí o ro?rùn jù. A ò le ríran àrídájú àyààfi pè?lú o?kan. N kan àtàtà o see fi ojú lásán rí.','corrected by Samuel Kayode Akinbo talktokay20042002@yahoo.ca','Taoufik Owodjobi','',1,30,'Oshogbo , nigeria',7.76581,4.56122);
INSERT INTO prince_language VALUES ('bam',0,'bambara','Bambara','bamanankan','M&#x254;g&#x254; t&#x25b; fosi d&#x254;n fo i ye min kolon, kungo-wulunin ko ten.\r\nKo k’a ñini ka ko d&#x254;n, hadamaden senna ka telin o ma.\r\nF&#x25b;n lab&#x25b;nnenw ka ban, a b&#x25b; o de san u feerey&#x254;r&#x254;.\r\nTerifeerey&#x254;r&#x254; dun t&#x25b; yen, teri t&#x25b; hadamaden na bilen.\r\nN’i b&#x25b; teri dø f&#x25b;, ne kolon!\r\n\r\nA ko K’an b&#x25b;n. Ne ka gundo fil&#x25b; nin ye,\r\nA ka n&#x254;g&#x254;n kojugu: F&#x25b;n b&#x25b; ye ka ñ&#x25b; ni dusukun de ye.\r\nA kolomay&#x254;r&#x254; t&#x25b; ye ni ñ&#x25b; ye. \r\n','','Amadou Tamba DOUMBIA','',1,31,'mali',17.5707,-3.99617);
INSERT INTO prince_language VALUES ('lad',0,'judéo-espagnol','Judeo-Spanish','','','lad.jpg','Beatrice Schmid et Angel Berenguer','',1,48,'',0,0);
INSERT INTO prince_language VALUES ('tat',0,'tatar','Tatar','tatarça','Kulga ijaläshkän äjberne genä belep bula,-dide tölke. \r\nKeshelärneng närsä dä bulsa belergä baskacha vakytlary juk. \r\nAlar kibettän äzer äjberlärne genä satyp alalar. \r\n\r\nä bit äzer duslar satylatyrgan kibetlär juk, shunga kürä keshelärneng duslary da bette.\r\nägär dä üzengä dus buldyrasyng kilsä, mine kulga ijaläshter.\r\n\r\n-Hush, - dide tölke. Menä minem sörem shul:ul bik gadyj:\r\n tik jöräk kenä tieshenchä kürä ala, chönki ing möhime küzdän jasherelgän.\r\n','','Gouldjikhan KACHAEVA','',1,36,'Tatarstan',55.6212,52.6011);
INSERT INTO prince_language VALUES ('akk',0,'akkadien','akkadian','akkadû','','','','',0,60,'',0,0);
INSERT INTO prince_language VALUES ('hbo',0,'hébreu ancien','old hebrew','','','','','',0,61,'',0,0);
INSERT INTO prince_language VALUES ('cym',0,'gallois','Welsh','cymraeg','','','','',0,55,'',0,0);
INSERT INTO prince_language VALUES ('uzb',0,'ouzbek','Uzbek','o?zbek tili','Inson nimani qo’lga o’rgatsa oshanigina biladi, dedi tulki. Hozir odamlarning o’rganishga vaqti yo’q. Ular hamma narsaning tayyorini do’kondan sotib olishadi. Lekin do’stlarni sotadigan do’kon yo’qligi uchun, endi odamlarning do’stlari ham yo’q. Agar do’sting\r\nbo’lishini hohlasang unda meni qo’lga o’rgat !\r\n\r\n- Hayr, dedi tulki. Mana mening sirim. U juda oddiy: inson yolg’iz yuragi ila to’g’ri ko’ra oladi. Zotan eng muhim narsalar ko’zdan berkitilgan.','','Narghiza Kuldashova','',1,36,'uzbekistan',41.3775,64.5853);
INSERT INTO prince_language VALUES ('kat',0,'géorgien','Georgian','kartuli ena','','','','',0,34,'georgia',0,0);
INSERT INTO prince_language VALUES ('bul',0,'bulgare','Bulgarian','','&#1057;&#1072;&#1084;&#1086; &#1085;&#1077;&#1097;&#1072;&#1090;&#1072;, &#1082;&#1086;&#1080;&#1090;&#1086; &#1089;&#1080; &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080;&#1083;, &#1084;&#1086;&#1078;&#1077;&#1096; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1077;&#1077;&#1096; -  &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1061;&#1086;&#1088;&#1072;&#1090;&#1072; &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1074;&#1088;&#1077;&#1084;&#1077; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1103;&#1074;&#1072;&#1090; &#1085;&#1080;&#1097;&#1086;. &#1058;&#1077; &#1082;&#1091;&#1087;&#1091;&#1074;&#1072;&#1090; &#1086;&#1090;  &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080;&#1090;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1080; &#1085;&#1077;&#1097;&#1072;. &#1053;&#1086; &#1090;&#1098;&#1081; &#1082;&#1072;&#1090;&#1086; &#1085;&#1103;&#1084;&#1072; &#1085;&#1080;&#1082;&#1072;&#1082;&#1074;&#1080; &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080; &#1085;&#1072; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;, &#1093;&#1086;&#1088;&#1072;&#1090;&#1072;  &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;. &#1040;&#1082;&#1086; &#1080;&#1089;&#1082;&#1072;&#1096; &#1076;&#1072; &#1089;&#1080; &#1080;&#1084;&#1072;&#1096; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083; - &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080; &#1084;&#1077;!</p>\r\n<p>- &#1057;&#1073;&#1086;&#1075;&#1086;&#1084; - &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1045;&#1090;&#1086; &#1084;&#1086;&#1103;&#1090;&#1072; &#1090;&#1072;&#1081;&#1085;&#1072;. &#1058;&#1103; &#1077;  &#1084;&#1085;&#1086;&#1075;&#1086; &#1087;&#1088;&#1086;&#1089;&#1090;&#1072;: &#1085;&#1072;&#1081;-&#1093;&#1091;&#1073;&#1072;&#1074;&#1086;&#1090;&#1086; &#1089;&#1077; &#1074;&#1080;&#1078;&#1076;&#1072; &#1089;&#1072;&#1084;&#1086; &#1089;&#1098;&#1089; &#1089;&#1098;&#1088;&#1094;&#1077;&#1090;&#1086;. &#1053;&#1072;&#1081;-&#1089;&#1098;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1086;&#1090;&#1086; &#1077;  &#1085;&#1077;&#1074;&#1080;&#1076;&#1080;&#1084;&#1086; &#1079;&#1072; &#1086;&#1095;&#1080;&#1090;&#1077;.','','','',1,70,'bulgaria',42.7339,25.4858);
INSERT INTO prince_language VALUES ('kur',0,'kurde','Kurdish','','','','','',0,45,'',0,0);
INSERT INTO prince_language VALUES ('mon',0,'mongol','Mongolian','','','mongol.jpg','Amgalan Munkhdorj','',1,37,'mongolia',46.8625,103.847);
INSERT INTO prince_language VALUES ('ewo',0,'ewondo','Ewondo','','','','','',0,33,'',0,0);
INSERT INTO prince_language VALUES ('lin',0,'lingala','Lingala','lingala','','','','',0,29,'',0,0);
INSERT INTO prince_language VALUES ('som',0,'somali','Somali','','','','','',0,28,'',0,0);
INSERT INTO prince_language VALUES ('bas',0,'bassa','Basaa','','','','','',0,33,'',0,0);
INSERT INTO prince_language VALUES ('ibo',0,'igbo','Igbo','igbo','','','','',0,30,'',0,0);
INSERT INTO prince_language VALUES ('fan',0,'fang','Fang','','','','','',0,33,'',0,0);
INSERT INTO prince_language VALUES ('swa',0,'swahili','Swahili','kiswahili','« Tunajua tu, vitu ambavyo tunaweza kunyanyasa », kasema mbwa mwitu. « Siku hizi, watu hawana wakati wa kujua chochote. Wao hununua bidhaa ambazo tayari zimeandaliwa wachukuzi. Na kwa vile hakuna wachukuzi wa urafiki, wao hawana marafiki. Kama kweli unataka rafiki, mimi hapa, nitupilie mbali upori wangu! \r\n\r\nKwaheri! » , kasema mbwa mwitu, « Siri yangu ni jambo rahisi sana. Ni roho zetu zinatuongoza kutafsiri mambo yale muhimu, ambayo hatuwezi kuona kwa macho yetu makavu. »\r\n','','Lilian Magonya','',1,29,'kenya',-0.023559,37.9062);
INSERT INTO prince_language VALUES ('amh',0,'amharic','Amharic','amharic','','','','',0,62,'',0,0);
INSERT INTO prince_language VALUES ('luo',0,'luo','Luo','dholuo','','','','',0,4,'',0,0);
INSERT INTO prince_language VALUES ('ceb',0,'cebuano','Cebuano','Sinugboanon','','','','',0,40,'',0,0);
INSERT INTO prince_language VALUES ('vie',0,'vietnamien','Vietnamese','','','vie.jpg','','',1,39,'vietnam',14.0583,108.277);
INSERT INTO prince_language VALUES ('cmn',0,'mandarin','Mandarin','','','chinois.jpg','','',1,38,'china',35.8617,104.195);
INSERT INTO prince_language VALUES ('bos',0,'bosniaque','bosnian','Bosanski','\"Poznavati se mogu samo pripitomljene stvari\", re&#x010D;e lisica. \"Ljudi vi&#x161;e nemaju vremena da upoznaju ne&#x161;to novo. Oni kupuju ve&#x107; napravljene stvari kod prodava&#x010D;a. Ali, po&#x161;to ne postoji osoba koja prodaje prijatelje, ljudi, zapravo, nemaju prijatelja. Ako ho&#x107;e&#x161; da ima&#x161; prijatelja onda pripitomi mene ! »\r\n„Zbogome“, re&#x010D;e lisica. „Evo je moja tajna. Jednostavna je: dobro se mo&#x017E;e vidjeti samo. Sa srcem. Ono najva&#x017E;nije je nevidlijivo za o&#x010D;i.”\r\n','','Selma Avdic','',1,70,'bosnia',43.9159,17.6791);
INSERT INTO prince_language VALUES ('jam',0,'créole jamaïcain','Jamaican Creole','','\"Wi ongle riili kyan nuo bout di ting-dem wa wi tek fi-wi han breik iin\", Faks se. \"Man no ha no taim agein fi nuo bout notn. Tidei, dem jos a bai wa di higla-dem a sel. Bot higla no sel fren, so dem no kiip fren agein. Ef yu waan waan fren, yu mos breik mi iin!\".\r\n\r\n\"Mi gaan\" Faks se \"An sii fi-mi siicrit ya... i wel simpl : wi ongl sii gud wid fi-wi haat. Wa riili mata, yu no tek aiy sii i\"','','Stéphanie Durrleman-Tame','',1,73,'jamaica',18.1096,-77.2975);
INSERT INTO prince_language VALUES ('cos',0,'corse','Corsican','','Cunnosce, si cunnoscenu e cose chì omu ammansa, disse a volpe. L\'omi ùn anu più tempu da cunnosce nulla. Compranu cose fatte è lestre ind\'è i marcanti. Ma ùn ci ne hè marcanti d\'amichi è elli amichi ùn ne anu più. S\'è tù voli un amicu, ammansa à mè.\r\n\r\nAddiu disse a volpe. Eccuti u me sicretu. Hè bellu semplice : vede si vede bè cù u core. I punti di primura l’ochji ùn li ponu vede.\r\n\r\n','','Santu Casta','',1,52,'corsica',42.0396,9.01289);
INSERT INTO prince_language VALUES ('bar',0,'bavarois','Bavarian','bayrisch','Du kennst ja nua dees, wo\'st amoi zaehmt host, hot da Fux gsogt.\r\nD\'Leit ham ja koa Zeit mea, dass wos kenna leana. De kaffa oiss scho\r\nfeate gmacht bei am Hendla. Awa wei hoit koana mid aam Freind handln\r\nwui, hoot koana an Freind mea. Wann\'st oiso aan Freind hom wuisst,\r\nmuasst mi hoit zaehma.\r\n\r\nPfiad di! hot da Fuchs gsogt. Und des is mei G\'hoamnis - s\'is awa recht\r\noafach: du koo\'st nua mid\'m Heazn guat seng. Oiss, wos wichtig is,\r\nis mid de Augn ned zum segn!\r\n','','Gabi Waltermann','',1,72,'bavière',48.7904,11.4979);
INSERT INTO prince_language VALUES ('hin',0,'hindi','Hindi','hindi','','hindi.jpg','D & K Mathur / K. Asthana','deepak.mathur@mageos.com',1,46,'india',20.5937,78.9629);
INSERT INTO prince_language VALUES ('tok',0,'toki pona','Toki Pona','','soweli loje li toki: \"jan li pona e ijo la jan li sona e ona taso. tenpo ni la jan li jo ala e tenpo li ken sona e ala. ona li kama jo e ijo pini kepeken mani lon tomo pi jan pana. taso jan li pana ala e jan pona tan mani la jan li jo ala e jan pona. sina wile jo e jan pona la o pona e mi!\"\r\n\r\nsoweli loje li toki e ni: \"tawa pona. ni li sona insa mi li pona mute. jan li lukin pona kepeken pilin taso. jan li ken ala lukin e ijo suli kepeken oko.\"','','','Mathieu Fraikin . was soweli li toki e ni: jan li sona taso e ijo pi pali pona. tenpo ala la jan li ken sona. jan li jo mani e ijo sama lon jan pana mani. jan pana mani pi jan pona li lon ala la jan pona. sina wile e jan pona la o pali pona e mi. soweli l',1,14,'',0,0);
INSERT INTO prince_language VALUES ('fur',0,'frioulan','Friulan','furlan','','frioule.PNG','Albino Manfredo','from JMP',1,51,'udine',46.0649,13.2307);
INSERT INTO prince_language VALUES ('oci-gascon',0,'occitan gascon','Gascon','gascu','','gascon.PNG','Eric Chaplain','from JMP 2013',1,49,'Auch',43.6465,0.5855);
INSERT INTO prince_language VALUES ('hat',0,'créole haïtien','Haitian Creole','kreyòl','','haitien.PNG','Frantz Gourdet','from JMP 2015',1,42,'Port-au-Prince',18.54,-72.3399);
INSERT INTO prince_language VALUES ('ind',0,'indonésien','Indonesian','Bahasa Indonesia','','indonesien.PNG','Kuncoro Wastuwibowo','from JMP 2014',1,40,'Jakarta',-6.16667,106.8);
INSERT INTO prince_language VALUES ('pap',0,'papiamento','Papiamento','Papiamento','','papiamentu.PNG','Edward de Jongh','from JMP 1982',1,78,'willemstad',12.1167,-68.9333);
INSERT INTO prince_language VALUES ('wln-namur',0,'wallon namurois','Walloon','walon','On ni conèt ki les sacwès k\' on atraite, dijha li rnåd. Les omes n\' ont pus pont d\' timps po rén conèche. Is achetenut des sacwès totès fwaites amon les mårtchands. Mins come gn\' a pont di mårtchands d\' amis, les omes n\' ont pus pont d\' amis. Si vos vloz on ami, atraitîz-mi !\r\n\r\nA Diè, dijha li rnåd. Voci mi sicret. Il est foirt simpe : on ni voet bén k\' avou si keur. Li principal est-invisibe po les îs.','','Maisse Arsouye','',1,50,'namur',50.4641,4.86043);
INSERT INTO prince_language VALUES ('avk',0,'kotava','Kotava','','Va tulegovitan plek yo anton grupet, bresitol kalir. Ayik ta kona grupera mea\r\nugaldir. Dene dolekik va ixam varon iayan plek yo luster. Vexe oye da me tir\r\ndolekik va nik acum ayik va nik mea dir. Ede va nik kuranil, va jin tulegovital\r\n!\r\n\r\nDone, bresitol kalir. Batse jinafa birga. Opelapafa : kan takra anton winhit.\r\nBenele kan iteem tir merowine.','','Philippe G.','',1,14,'',0,0);
INSERT INTO prince_language VALUES ('oci-oux',2,'occitan d\'Oulx','Occitan (Oulx)','','Nou couneison mac lâ choza quë nz\'avon aprivazà, à dí \'l reinâ. Louz omme i l\'on pâ mai \'l ton ëd couneissë ron. I l\'achëtton da lou marchan \'d choza jó feita. Ma, pisquë la lh\'à pâ \'d marchan d\'amisse, louz omme i l\'on pâ mai d\'amisse. S\'ou vouré in amiss, aprivazëmmë!\r\nAdieu, ou lh\'à dí \'l reinâ. Voualà moun sëcré. Ou l\'i fran sinplë: la s\'vé bion mac bou \'l ceur. L\'essansièl, ou l\'i invizibblë për louz iooû. ','','Giovanna Jayme','from nikura babel, Prince dans le patois occitan d\'Oulx (Italie, près de Briançon), écrit en graphie \"Escolo dóou Po\".',1,49,'oulx',45.0333,6.83363);
INSERT INTO prince_language VALUES ('oci-via',2,'occitan viaran','Occitan (Viaran)','','Nou counishën puè que la chòuza que nou z-avën aprivouazè, o di l\'rirar. Lou z-òme i z-an pa mai l\'tën d\'counètre pa ren. I z-achatan òu marchan dë chòuza jo touta facha. Mè, coumo ou l\'i o pa d\'marchan d\'ami, lou z-òme i z-an pa mai d\'ami. S\'tu voua z-un ami, aprivouaza-më!\r\nAr\'vèire, ou l\'o di l\'rirar. \'Co l\'i moun sëcrë. Ou l\'i bën simple: la s\'vèi bën qu\'ëmbë l\'cor. L\'eshënshiè, ou l\'i invizible pèr lou z-uòu. ','','Nikura','from babel, dans le patois occitan de mon village (patois viaran, langue en train de mourir), en Briançonnais, mais côté français, plus ou moins avec la même graphie mais allégée. (que occ-oul)',1,49,'',0,0);
INSERT INTO prince_language VALUES ('oci-gav',2,'occitan gavot','Occitan (Gavot)','','Òm coneisse que las chausas qu\'òm aprivèisa, dissèc lo reinart. Los òmes an mai lo temps de pas ren coneisser. Achaton de chausas totas fachas ves los marchands. Mas bòrd qu\'i a pas de marchands d\'amics, los òmes an pas mai d\'amics. Se vòles un amic, apri','','Nikura (Babel)','En occitan alpin (ou gavot) de la zone de Gap, cela donnerait ceci. La graphie choisie est celle de l\'occitan standard cette fois-ci, en essayant de retranscrire un langage soutenu.',1,49,'gap, france',44.5599,6.0759);
INSERT INTO prince_language VALUES ('kir',0,'kirghize','Kyrgyz','','<pre>&#1041;&#1080;&#1088;&#1257;&#1085;&#1199; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1089;&#1257;&#1187;, &#1086;&#1096;&#1086;&#1085;&#1091; &#1075;&#1072;&#1085;&#1072; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257; &#1084;&#1199;&#1084;&#1199;&#1082;&#1199;&#1085; - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;\r\n&#1040;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1072; &#1073;&#1080;&#1088;&#1085;&#1077;&#1088;&#1089;&#1077;&#1085;&#1080; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257;, &#1091;&#1073;&#1072;&#1082;&#1099;&#1090;&#1072;&#1088;&#1099; &#1078;&#1086;&#1082;. &#1040;&#1083;&#1072;&#1088; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1085; &#1076;&#1072;&#1103;&#1088;\r\n&#1073;&#1091;&#1102;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1099;&#1096;&#1072;&#1090;. &#1041;&#1080;&#1088;&#1086;&#1082;, &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1076;&#1091; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1091;&#1091;&#1075;&#1072; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1088;\r\n&#1078;&#1086;&#1082; &#1075;&#1086;, &#1072;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099;&#1085; &#1076;&#1072; &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1091; &#1078;&#1086;&#1082; &#1073;&#1086;&#1083;&#1091;&#1087; &#1082;&#1072;&#1083;&#1076;&#1099;. &#1069;&#1075;&#1077;&#1088;&#1076;&#1077; &#1089;&#1077;&#1085;&#1076;&#1077; &#1076;&#1086;&#1089;\r\n&#1073;&#1086;&#1083;&#1075;&#1086;&#1085;&#1076;&#1091; &#1082;&#1072;&#1072;&#1083;&#1072;&#1089;&#1072;&#1187;, &#1089;&#1077;&#1085; &#1084;&#1077;&#1085;&#1080; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1199;&#1087; &#1072;&#1083;!<br>\r\n- &#1050;&#1086;&#1096;, - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;. - &#1052;&#1099;&#1085;&#1072; &#1084;&#1077;&#1085;&#1080;&#1085; &#1089;&#1099;&#1088;&#1099;&#1084;. &#1040;&#1083; &#1072;&#1073;&#1076;&#1072;&#1085; &#1078;&#1257;&#1085;&#1257;&#1082;&#1257;&#1081;:\r\n&#1069;&#1187; &#1084;&#1072;&#1072;&#1085;&#1080;&#1083;&#1199;&#1199; &#1082;&#1257;&#1079;&#1076;&#1257;&#1085; &#1078;&#1199;&#1084;&#1199;&#1083;&#1199;&#1199;.','','','',1,36,'Kirghizistan',41.2044,74.7661);
INSERT INTO prince_language VALUES ('tur',0,'turc','Turkish','türkçe','&#X0130;nsan ancak evcille&#x015F;tirirse anlar, dedi tilki. &#X0130;nsanlar&#x0131;n art&#x0131;k anlamaya zamanlar&#x0131; yok. Dükkânlardan her istediklerini sat&#x0131;n al&#x0131;yorlar. Ama dostluk sta&#x0131;lan bir dükkân olmad&#x0131;&#x011F;&#x0131; i&#x00E7;in dostlar&#x0131; yok art&#x0131;k. E&#x011F;er dost istiyorsan, beni evcille&#x015F;tir !\r\n\r\nHos&#x00E7;akal, dedi tilki. &#X0130;&#x015F;te sana dir s&#x0131;r, &#x00E7;ok basit bir &#x015F;ey : &#x0130;nsan yaln&#x0131;z  yüre&#x011F;iyle do&#x011F;ruyu görebilir. As&#x0131;l görülmesi gerekeni gözler göremez.','','Gonca Celik','',1,36,'turkey',38.9637,35.2433);
INSERT INTO prince_language VALUES ('est',0,'estonien','Estonian','eesti','Väike prints\r\n\r\n\"Tuntakse ainult neid asju, mida taltsutatakse, \" ütles rebane.\r\nInimestel pole enam aega midagi tundma õppida. Nad ostavad kõiki asju valmis kujul kaupmeeste käest. Ja kuna ei ole kaupmehi, kes sõpru müüksid, siis polegi inimestel enam sõpru. Kui tahad endale sõpra, siis taltsuta mind !\r\n\r\n\" Jumalaga, \" ütles rebane. \" Siin on minu saladus. See on väga lihtne : ainult südamega näed hästi. Kõige tähtsam on silmale nähtamatu. \"\r\n','','Ott Ojamaa','',1,63,'estonia',58.5953,25.0136);
INSERT INTO prince_language VALUES ('ell',0,'grec','Greek','E&lambda;&lambda;&nu;&rho;&xi;&kappa;&alpha;','&Delta;&epsilon;  &gamma;&nu;&omega;&rho;&#943;&zeta;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf; &pi;&alpha;&rho;&#940; &#972;,&tau;&iota; &epsilon;&xi;&eta;&mu;&epsilon;&rho;&#974;&nu;&epsilon;&iota;, &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &epsilon;&upsilon;&kappa;&alpha;&iota;&rho;&omicron;&#973;&nu;  &pi;&iota;&alpha; &nu;&alpha; &mu;&#940;&theta;&omicron;&upsilon;&nu; &tau;&#943;&pi;&omicron;&tau;&epsilon;. &Tau;&rsquo;&alpha;&gamma;&omicron;&rho;&#940;&zeta;&omicron;&upsilon;&nu; &#972;&lambda;&alpha; &#941;&tau;&omicron;&iota;&mu;&alpha; &alpha;&pi;&#972; &tau;&omicron;&upsilon;&sigmaf; &epsilon;&mu;&pi;&#972;&rho;&omicron;&upsilon;&sigmaf;. &Kappa;&alpha;&theta;&#974;&sigmaf; &#972;&mu;&omega;&sigmaf; &delta;&epsilon;&nu;  &upsilon;&pi;&#940;&rho;&chi;&omicron;&upsilon;&nu; &delta;&iota;&#972;&lambda;&omicron;&upsilon; &#941;&mu;&pi;&omicron;&rho;&omicron;&iota; &phi;&#943;&lambda;&omega;&nu;, &omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &#941;&chi;&omicron;&upsilon;&nu; &pi;&iota;&alpha; &phi;&#943;&lambda;&omicron;&upsilon;&sigmaf;. &Alpha;&nu; &theta;&#941;&lambda;&epsilon;&iota;&sigmaf; &#941;&nu;&alpha;  &phi;&#943;&lambda;&omicron;, &epsilon;&xi;&eta;&mu;&#941;&rho;&omega;&sigma;&#941; &mu;&epsilon; !\r\n(...)\r\n&#904;&chi;&epsilon;  &gamma;&epsilon;&iota;&alpha;! &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&rho;&#943;&sigma;&tau;&epsilon; &tau;&omicron; &mu;&upsilon;&sigma;&tau;&iota;&kappa;&#972; &mu;&omicron;&upsilon;. &Epsilon;&#943;&nu;&alpha;&iota; &pi;&omicron;&lambda;&#973; &alpha;&pi;&lambda;&#972; : &delta;&epsilon; &beta;&lambda;&#941;&pi;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf;  &kappa;&alpha;&lambda;&#940; &pi;&alpha;&rho;&#940; &mu;&omicron;&nu;&#940;&chi;&alpha; &mu;&epsilon; &tau;&eta;&nu; &kappa;&alpha;&rho;&delta;&iota;&#940;. &Eta; &omicron;&upsilon;&sigma;&#943;&alpha; &epsilon;&#943;&nu;&alpha;&iota; &alpha;&#972;&rho;&alpha;&tau;&eta; &gamma;&iota;&alpha; &tau;&alpha; &mu;&#940;&tau;&iota;&alpha;.','','Michel Lassithiotakis et Anastasia Lazaridis','',1,47,'greece',39.0742,21.8243);
INSERT INTO prince_language VALUES ('vls',0,'flamand occidental','West Flemish','Vlaemsch/Vlaams','Ze kenn oljinne die dingn woamee da ze echt vertrouwd zin, zegt den vos. De minsn eyn gin tid mji om echt te zien. Ze kwopn dingn kant en kloar bi nen handeloare. Mo verkwopers van moaten, da bestoa nie, en dus eyn de minsn gin moaten mji. Aj ne moat wilt, moej mi temn!...\r\nSalu, zegt den vos, Ier is min geheim. T\'i vrji jinvoudig: Goe zien kundje oljinne me jen herte. Et weznlukke is onzichtboar vo jun wogn.\r\n\r\n','','Sam Huyzentruyt','vls=iso3 gem=iso',1,68,'gent',51.0536,3.72087);
INSERT INTO prince_language VALUES ('urd',0,'ourdou','Urdu','','','urdu.gif','Zainab Ahmed','',1,46,'pakistan',30.3753,69.3451);
INSERT INTO prince_language VALUES ('wuu-shg',0,'wuu de Shangaï','Shanghaines','zanhererau','','shangai.jpg','Enchao Lu','iso3=wuu iso2=chi / zho',1,38,'shangai',31.2307,121.473);
INSERT INTO prince_language VALUES ('lao',0,'laotien','Lao','','','laotien.gif','','V. Siriyasack siriyas0@etu.unige.ch',1,15,'laos',19.8563,102.495);
INSERT INTO prince_language VALUES ('kab',0,'kabyle','Kabyle','taqbaylit','Ye nnad izirthi, ne tsakey kan ayen swayes in wulef. Imdhanen ur san ara y wekth i thmusni. Tsarend kan ayen i hgan siheraren. Sgwaken n qethwan iheraren i znuzen thadukli, imdhanen ur san ara imdukwal. Ma the vgher amdakwel, alesiyé.\r\nYe nnad izirthi qim dhi le hna. Atsan serya inu, dhan i sehyen. Tha mughli nel kayen tseqed sgul. Ey ni lan dhe ssah its wafer af allen\r\n','','','khlifa ouidr houidir@hotmail.com de la région de Beni-Douala, Tizi Ouzou :',1,25,'Kabylie',36.817,4.3);
INSERT INTO prince_language VALUES ('nan',0,'min de Taiwan','Taiwan Min','','gun chi liau kai ho\' sun hok chi mih\r\nho\' li kong\r\nlin lui kin a lit i keng bo\' si kan khi liau kai saN mih a\r\nin an siong lin hia beh hoe hian seng phin\r\nm ko ki lian bo sun chai siau siu peng iu e siong jin\r\nlin lui toh\r\nbo peng iu a\r\nlu ko\' li beh kau chit e peng iu\r\nsun hok goa pa\r\neng piat a\r\nho\' li kong\r\nche toh si goa e pi bit\r\nchin kan tan\r\nchi u iong sim lai khoaN chiah e khoaN e chheng\r\nsiong ki pun e mih kiaN si bak chiu so\' khoaN be tioh e','','','',1,38,'taiwan',23.6978,120.961);
INSERT INTO prince_language VALUES ('khm',0,'khmer','Khmer','','','khmer.jpg','Zamin Saxer','',1,39,'Cambodge',12.5657,104.991);
INSERT INTO prince_language VALUES ('isl',0,'islandais','icelandic','','Maður þekkir ekki annað en það, sem maður temur, sagði refurinn. Mennirnir hafa ekki lengur tíma til að þekkja neitt. Þeir kaupa tilbúna hluti hjá kaupmanninum. En þar sem ekki eru til kaupmenn, sem versla með vini, eiga menn ekki lengur neina vini. Ef þú vilt eiga vin, Þá temdu mig!\r\n\r\nVertu sæll, sagði refurinn. Hér er leyndarmálið mitt. Það er mjög einfalt: maður sér ekki vel nema með hjartanu. Það mikilvægasta er ósýnilegt augunum.\r\n','','Þórarinn Björnsson','envoyé par cjorg@infomaniak.ch',1,57,'iceland',64.9631,-19.0208);
INSERT INTO prince_language VALUES ('aze',0,'azeri','Azerbaijani','Az?rbaycan','','azeri.jpg','','from patoche',1,36,'azerbaijan',40.1431,47.5769);
INSERT INTO prince_language VALUES ('spa-crc',1,'espagnol costaricain','','','','','','varpron: Costa Rica',1,65,'Costa Rica',9.74696,-83.7543);
INSERT INTO prince_language VALUES ('spa-arg',1,'espagnol argentin','','','','','','varpron : argentine',1,65,'Argentine',-38.4161,-63.6167);
INSERT INTO prince_language VALUES ('spa-and',1,'espagnol andalou','','','','','','varpron :  andalou',1,65,'andalousie',37.5443,-4.72775);
INSERT INTO prince_language VALUES ('fra-qbc',1,'français québécois','','','','','','varpron: québec',1,50,'Montréal, Canada',45.5454,-73.6391);
INSERT INTO prince_language VALUES ('lld-bad',2,'ladin de la val Badia','','','Le pice prinz\r\n\r\n\"An conësc mâ ées côsses ch\'an inzertiëia, \" â spo ajuntè la olp. \"Les porsones ne n\'á plü degun tëmp por imparè a conësce valgügn. Ares se cumpra scialdi döt tles botëghes. Mo deach\'al ne n\'é degünes botëghes che vënn amîsc, nen á les porsones plü gnanca degügn. Porchël inzertiëieme, sce t\'ôs avëi n amich!\"\r\n\r\n\"Adio,\" â respongnü la olp. \"Chilò áste &#x015b;ëgn spo in&#x0107;e mî socrët. Al é dër scëmpl: an vëiga mâ bun cun le cör, l\'essenzial ne vëigon nia cun i edli\"','','Giovanni Mischì','from micura de ru',1,51,'Val Badia',46.5966,11.7828);
INSERT INTO prince_language VALUES ('lld-gar',2,'ladin de la Val Gardena','','','L pitl prinz\r\n\r\n\"Mé cie che n zertiëia, cunëscen\", ova dit la bolp. \"La persones ne n\'á nia plu dl\'aurela de emparé a cunëscer zeche. Les se compra dut bele anjiniá tla butëighes. Ma daviá che l ne n\'ie nia butëighes che vënd cumpanies, nen n\'á la jënt nia plu. Sce te ues n cumpani, muesse me zertië!\"\r\n\r\n\"Adio\", ova dit la bolp. \"Tlo es mi sucrët. L ie drët scëmpl: cun l cuer vëijen l bën. Cie che ie plu empurtant ne vëijen nia cun i uedli\"','','Beatrix Prinoth','from micura de ru',1,51,'Val Gardena',46.5121,11.7293);
INSERT INTO prince_language VALUES ('roh-sut',2,'romanche sutsilvan','','','Igl pintg prenzi\r\n\r\n„Ign ancanuscha me quegl c’ign â domestitgieu”, â la gualp getg. “Igls carstgàns ân betga ple peada d’amprender d’ancanuscher anzatge. Els cumpran las tgossas fatgas a fitadas tar igls marcadànts. Mo parquegl c’igl dat nigns marcadànts d’amitgs, ân igls carstgàns betga ple amitgs. Scha tei vol egn amitg, alura domestitgescha me!”\r\n\r\n“Adia”, â la gualp getg. “A quegl e mieu misteri. El e fetg sempel: Ign veza bagn me cun igl cor. Igl essenzial vez’ign betg cun igls îls.\r\n','','','from clau soler 2010 01 22',1,51,'',0,0);
INSERT INTO prince_language VALUES ('gle',0,'gaélique irlandais','','Gaeilge','An prionsa beag\r\n\r\n-Ní chuireann tú aithne ach ar na nithe a chlónn tú, arsa an madra rua. Na \r\ndaoine anois, níl an t-am acuníos mó aithne a chur ar aon ní. Ceannaíonn \r\nsiad rudaí réamhdhéanta ó lucht díolta. Ach ó tharla nach bhfuil aon lucht \r\ndíolta cairde ann, níl cairde ar bith ag na daoine níos mó. Má tá cara de \r\ndhíth ort, déan mé a chló!\r\n\r\n-Slán leat, arsa an madra rua. Seo é mo rún duit. Tá sé ansimpli: is leis an \r\nchroí is fearr a tímid. Na rudaí is bunúsaí amuigh, ní féidir leis na súile \r\niad a fheiceáil.','','Breandán Ó Doibhlin','',1,74,'dublin',53.3441,-6.26749);
INSERT INTO prince_language VALUES ('nbf',0,'naxi','Naxi','naxi','','naxidongba.gif','Shuyuliu He','from isa',1,75,'Lijiang, china',24.687,102.964);
INSERT INTO prince_language VALUES ('per',0,'persan','Persian','','','persan.jpg','Arash Khosropanahi','',1,45,'téhéran',35.6908,51.4352);
INSERT INTO prince_language VALUES ('bzd',0,'bribri','bribri','','','bribri.jpg','Ali García, Département de linguistique de l\'Université du Costa Rica','from antonio',1,76,'Costa Rica bri bri',9.25,-83.25);
INSERT INTO prince_language VALUES ('jam-lim',2,'créole du Limón','Limonese creole','','We onle nuo de ting weh we kian tiem, de foks seh. Nou a die man na’a no taim to nuo nottin. Every thing them bai mek arredy. An sins you kiant fain a stoor we sel fren, man no hav no fren agen. If yu want a fren, ¡yu gwine hav fi tiem mi!\r\n\r\nA gan, de foks seh. But before mek mi tel u a secrit. It is very simpl: yu kian only si good with yu haat. What matta de most yu kianot si only with yu eye’them.','','Kinda Heron Edwards','Kinda Heron <kinyalex@gmail.com>',1,73,'Limón, Costa Rica',9.98,-83.03);
INSERT INTO prince_language VALUES ('pcd-ath',2,'picard d\'Ath','','','On n’ coun’wat qu’ lès afères qu’ on amadoûe qui dit l’ èrnârd. Lès omes n’ ont pus l’ tans de rieu coun’wate. I-z-acat’të dès aféres toutes aj’vées à lès marchands. Mès, vu qu’ i n’ a gneu d’ marchands d’ coumarâdes, lès omes n’ ont pus d’ coumarâdes. Si vos voleuz in coumarâde, amadoûèz-m’ !\r\n\r\nAdjeu qui dit l’ èrnârd. V’là chi m’ sëcreut. Il eùt fôrt simpe : on n’ vwat bieu qu’ aveu l’ keûr. Eùl prinjipâl n’ eùt gneu visîbe pou lès ieus.\r\n','','R.Huvelle','',1,50,'Ath',50.6403,3.77724);
INSERT INTO prince_language VALUES ('yid',0,'yiddish','Yiddish','','Men bakent zikh mit zakhn nor ven men shtubikt zey ayn, hot der fuks gezogt. Di mentshn hobn nisht keyn tsayt mit epes zikh bakenen. Zey koyfn fartike zakhn bay di sokhrim. Ober azoy vi keyn khaveyrim-sokhrim zenen nisht faran, hobn di mentshn nisht keyn khaveyrim. Oyb du vilst a khaver, shtubik mikh ayn...\r\n- Adye, hot gezogt der fuks. Ot iz mayn sod. Er iz zeyer poshet: men zet gut nor mitn hartsn. Dos vikhtikste iz farborgn fun di oygn.','','Shloyme Lerman','from CIC (alexia et arald)',1,68,'',0,0);
INSERT INTO prince_language VALUES ('frp',0,'francoprovençal (arpitan)','','arpitan','- In cognët maque le tsouse que se rendon atréte, l\'at repondu-lèi lo rèinar. Le s-ommo l\'an pamë lo ten de cognëtre ren. Atseton in tsë le martsan le tsouse dza féte. Më di moman que le martsan cognësson pa de s-ami, le s-ommo l\'an pamë de s-ami. Se te vou un ami, rend-mè euna bëtse atréta! \r\n\r\n- Adzeu, l\'at repondu lo rèinar. Voèlà mon secret. L\'est bramen simplo: se vèit maque bien avouë lo coeur. L\'essanciel l\'est invisiblo pe le je.\r\n','','Raymond Vautherin','',1,50,'',0,0);
INSERT INTO prince_language VALUES ('kor',0,'coréen','Korean','','?? ???? ? ?? ?? ? ??? ??, ??? ???? ?? ???? ?? ???. ??? ??? ?? ??? ??. ???? ???? ??? ?? ? ?? ??. ??? ????? ? ????......\r\n??! ?? ? ??? ????. ? ??? ? ? ??. ???? ?? ? ???? ??. ?? ??? ? ?? ??? ???.','coreen.png','','',1,15,'Séoul',37.55,127);
INSERT INTO prince_language VALUES ('aeb',0,'arabe tunisien','Tunisian arabic\r\n','','','arabetunisien.png','Hédi Balegh','from CIC (alexia et arald)',1,62,'Tunis',36.82,10.17);
INSERT INTO prince_language VALUES ('tha',0,'thaï','Thai','','','thai.JPG','','from CIC (alexia et arald)',1,77,'bangkok',13.84,100.66);
INSERT INTO prince_language VALUES ('mlg',0,'malgache','malagasy','','-Ny zavatra folahina ihany no mety ho fantatra, hoy ilay fosa. Tsy manam-potoana hahafantaran-javatra na inona na inona intsony ny olombelona. Zavatra raisim-potsiny no vidiny eny amin’ny mpivarotra. Koa satria tsy misy mpivarotra namana mihitsy, dia tsy mana-namana intsony ny olombelona. Raha te hana-namana ianao, dia folahy aho!\r\n\r\n- Veloma, hoy ilay fosa. Inty ilay tsiambarateloko. Tsotra dia tsotra ilay izy : amin’ny alalan’ny fo ihany no ahitan-javatra. Tsy mba hitan’ny maso ny tena zavatra.\r\n','','Rabenilaina Roger Bruno','from CIC (alexia et arald)',1,40,'Antananarivo',-18,47.53);
INSERT INTO prince_language VALUES ('alb-kos',1,'albanais du Kosovo','','','','','','',1,19,'Pristina',42.66,21.16);
INSERT INTO prince_language VALUES ('wln-liege',2,'wallon liégeois','Walloon (Liège)','','-On n\' kinohe bin qui çou qu\'on aprivwèzêye, dèrit li r\'nå. Lès-omes ni prindèt pus l\' tins dè rin k\'nohe. Il atchtèt tot, tot fêt, \'mon lès martchands. Mins come i-n-a nou martchand d\' camarådes, lès-omes n\'ont pus nou copleû. Si vos \'nnè volez onk, aprivwèzez-m\'.\r\n(...)\r\n- Adiè, dèrit li r\'nå. Vochal mi scrèt. Il èst fwért simpe : on n\' veût clér qu\'avou s\' coûr. Çou qui conte li pus\', on n\'èl pout vèy avou sès-oûy.','','Guy Fontaine','from Mathieu Fraikin mathieu.fraikin@student.kuleuven.be',1,50,'Liège',50.633,5.567);
INSERT INTO prince_language VALUES ('frp-bre',2,'francoprovençal bressan','','','On counya lamè le sh<u>eu</u>ze qu’on acoulache, di lou rena. Léj <u>ou</u>mou n’on pô mé lazi de rin couny<u>â</u>tre. L’ash<u>e</u>ton de sh<u>eu</u>ze dézhya féte vé lé marshè. Mé quemè é n’y a pô de marshè d’ami, léj <u>ou</u>mou n’on pô d’ami. Che te vu n’ami, acoul<u>a</u>cha-me!\r\nA reva, di lou rena. Vtya mon secré. I vra éja : on ne va byè qu’avoui lou quëur. Che que <u>con</u>tou lou mé ne che va pô avoui lé zu.','','Manuel Meune','',1,50,'Bourg-en-Bresse',46.2,5.2);
INSERT INTO prince_language VALUES ('kea',0,'créole du Cap-Vert','Cape Verdean Creole','Kabuverdianu','-Só kel ki mansádu ki ta konxedu. Algen dja ka teni ténpu pa konxi náda. Ês ta kunpra kusa tudu fetu. Komu amigu ka ta bendedu gó, algen dja fika sen amigu. S-u kré ten amigu, mansâ-m !\r\n\r\nRapoza fla-l:\r\n-Diós bá ku bo. Gósi gó N ta kontâ-u kel segrédu. É kusa sinplis: só ku korason k-u ta odja dretu. Kel ki ta konta, odju ka ta odja.\r\n','','Nicolas Quint & Aires Semedo','',1,78,'Praia',14.916,-23.5);
INSERT INTO prince_language VALUES ('run',0,'kirundi','Kirundi','','Ya mbwebwe iti :  ibintu bisa umuntu amenya neza, ni ivyo yemeye kwitungira. Abantu nta kanya bakironka ko kugira ico bamenya. Bagura ibintu bisanzwe bikozwe vyanzwe n’abadandaza. Ariko rero ko ata  badandaza b’ abagenzi babaho, abantu nta bagenzi bagifise. Niwaba  ushaka umugenzi,nunyitungire! \r\n\r\nYa mbwebwe iti turabonanye.Ng’aka akabanga kanje. Gaciriye hafi cane: umutima musa ni wo ufasha  kubona neza . Ibihambaye ntibishobora kuboneshwa amaso.','','','Domitien Nizigiyimana',1,29,'Bujumbura',-3.35,29.34);
INSERT INTO prince_language VALUES ('bod',0,'tibetain','Tibetan','peugué','','tibetain.JPG','','from JM Probst',1,75,'Lhassa',29.65,91.11);
INSERT INTO prince_language VALUES ('che',0,'tchéchène','Chechen','','– ??? ???I?????? ?I???? ??? ????? ??? ?? ?????,– ????? ????????. – ??????, ???? ? ?I??? ?????, ?I???? ??? ????? ?? ?????. ????? ???? ?I??? ???? ???????? ?????? ???????? ????????. ???? ??????I?? ?????? ?, ????? ? ??????? ?????? ?? ??, ??????? ?I???? ??????I?? ????? ?? ?????. ????? ??????I ???????? ?????, ?? ???I????????!\r\n\r\n– ????? ?I????, – ????? ????????. – ?? ????? ?????? ? ????? ?????? xIapa ? ?????, ????? ?, ?????? ????? ? ???? ????: ?I??? ??? ???? ???? ??? ??? ??? ?????. ????? ?????????, ?I???????? ???????, ??? ?? ?????.','','Letcha Abdoulaev','',1,81,'grozny',43.3217,45.636);
INSERT INTO prince_language VALUES ('cre-cas',0,'créole casamançais','','kriyol','Gatu-lagáriya falá-l : – Kusa?us so? ku bu bidantá ku bu ta konsé. Ma gó, pekador ka tené mas tempu di sebé nada. I ta kumprá kusa?us ki kompodu ja? nundi bendedor. Ma suma i ka tené ni? bendedor di amigu, pekador ka tené mas amigu. Si bu mesté amigu, bidantá-m !\r\n\r\n(…)\r\n\r\nGatu-lagáriya rispondé-l : – Pa galiña bra?ku pasá-bu diyanti ! I es k-i ña segredi. I pasá sabi sebé : i so? ku korso? ku bu ta wojá diritu. Kusa? di bardadi ka ta wojadu ku wuju.','','Joseph Jean François Nunez','',1,78,'Ziguinchor',12.5597,-16.2742);
INSERT INTO prince_language VALUES ('frp-savoyard',0,'francoprovençal (arpitan) savoyard','Savoyard dialect','arpetan','','savoyard.PNG','Roger Viret','from JMP 2015',1,50,'Rumilly',45.8758,5.94472);
INSERT INTO prince_language VALUES ('frp-valdotain',0,'francoprovençal (arpitan) valdôtain','Valdôtain dialect','arpetan','','valdotain.PNG','Raymond Vautherin','from JMP 2000',1,50,'Aoste',45.7333,7.31667);
INSERT INTO prince_language VALUES ('wln',0,'wallon','Walloon','walon','','walloon.PNG','Jean-Luc Fauconnier','from JMP 2008',1,50,'oteppe',50.567,5.117);
INSERT INTO prince_language VALUES ('cpf-gua',0,'créole guadeloupéen','Guadeloupean créole','','','cpf-gua.jpg','Robert Chilin','',1,42,'pointe-a-pitre',16.2411,-61.5331);

--
-- Table structure for table `prince_language2`
--

CREATE TABLE prince_language2 (
  iso tinytext NOT NULL,
  varpron tinyint(1) NOT NULL default '0',
  french tinytext NOT NULL,
  english tinytext NOT NULL,
  self tinytext NOT NULL,
  `text` text character set utf8 collate utf8_unicode_ci NOT NULL,
  imgtext varchar(255) NOT NULL default '',
  actif tinyint(4) NOT NULL default '0',
  grp mediumint(9) NOT NULL default '1',
  geo varchar(50) NOT NULL default '',
  geolat float NOT NULL default '0',
  geolng float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_language2`
--

INSERT INTO prince_language2 VALUES ('fra',0,'français','French','français','On ne connaît que les choses que l\'on apprivoise, dit le renard. Les hommes n\'ont plus le temps de rien connaître. Ils achètent des choses toutes faites chez les marchands. Mais comme il n\'existe point de marchands d\'amis, les hommes n\'ont plus d\'amis. Si tu veux un ami, apprivoise-moi!\r\n\r\nAdieu, dit le renard. Voici mon secret. Il est très simple: on ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.','',1,50,'france',46.2276,2.21375);
INSERT INTO prince_language2 VALUES ('eng',0,'anglais','English','English','We only know the things that we tame, said the fox. People no longer have the time to know anything. They buy things already made for peddlers. But since there are no peddlers of friends, they no longer have friends. If you want a friend, tame me!\r\n\r\nGoodbye, said the fox. Here\'s my secret; it\'s very simple: we see well only with the heart. The essential is invisible to the eyes.\r\n','',1,67,'England, United Kingdom',52.019,-0.770427);
INSERT INTO prince_language2 VALUES ('deu',0,'allemand','German','Deutsch','Man kennt die Dinge, die man zähmt, sagte der Fuchs. Die Menschen haben keine Zeit mehr, etwas kennen zu lernen. Sie kaufen die Dinge fix und fertig bei den Händlern. Aber weil niemand mit Freunden handelt, haben die Menschen keine Freunde mehr. Wenn Du einen Freund willst, zähme mich!\r\n\r\nAdieu!, sagte der Fuchs. Dies ist mein Geheimnis. Es ist sehr einfach: man sieht nur mit dem Herzen gut. Das Wesentliche ist für die Augen unsichtbar.','',1,72,'germany',51.1657,10.4515);
INSERT INTO prince_language2 VALUES ('ita',0,'italien','Italian','italiano','Puoi conoscere solo quello che ti è familiare, che ti è domestico - disse la volpe. - Gli uomini non hanno più tempo di conoscere niente. Comprano nei negozi cose già pronte. Ma siccome non esistono negozianti di amici, gli uomini non hanno più amici. Tu, allora, se vuoi un amico, vedi di addomesticarmi.\r\n\r\nAddio, disse la volpe. Ed eccolo qui, il mio segreto - semplice semplice. Vedere è cosa del cuore. Agli occhi l\'essenziale resta sempre invisibile.','',1,52,'italy',41.8719,12.5674);
INSERT INTO prince_language2 VALUES ('spa',0,'espagnol','Spanish','español','Sólo conocemos las cosas que domesticamos, dijo el zorro. Los hombres ya no tienen tiempo de conocer nada. Compran en las tiendas cosas hechas. Pero como no hay ninguna tienda donde vendan amigos, los hombres ya no tienen amigos. Si quieres un amigo, !domestícame!\r\n\r\nAdiós, dijo el zorro. Te diré un secreto. Es muy sencillo: sólo se ve bien con el corazón. Lo esencial les resulta invisible a los ojos.','',1,65,'spain',40.4637,-3.74922);
INSERT INTO prince_language2 VALUES ('ron',0,'roumain','Romanian','român&#x103;','Cunoa&#x15f;tem doar ceea ce îmblînzim, spuse vulpea. Oamenii nu mai au timp s&#x103; cunoasc&#x103; nimic. Cump&#x103;r&#x103; de la negustori lucrurile de-a gata. Cum ”nsa nu exista negustori de prieteni, oamenii nu mai au prieteni. Dac&#x103; vrei un prieten, ”mbl”nze&#x15f;te-m&#x103;!\r\n...\r\nAdio, spuse vulpea. Iat&#x103; care e taina mea. E foarte simpl&#x103;: limpede vezi doar cu inima. Ochii un pot s&#x103; vad&#x103; esen&#x163;ialul.\r\n','',1,54,'romania',45.9432,24.9668);
INSERT INTO prince_language2 VALUES ('swe',0,'suédois','Swedish','svenska','Man lär bara känna det man tämjer, sa räven. Människorna har inte längre tid att riktigt bli bekanta med något. De köper färdiga saker i affärerna. Men eftersom det inte finns vänner att köpa i affärerna, har människorna inte längre några vänner. Om du vill ha en vän, så tämj mig!\r\n\r\nAdjö, sa räven. Nu ska du få höra min hemlighet. Den är mycket enkel: det är bara med hjärtat som man kan se ordentligt. Det viktigaste är osynligt för ögonen.','',1,57,'sweden',60.1282,18.6435);
INSERT INTO prince_language2 VALUES ('rus',0,'russe','Russian','&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;','-&#1059;&#1079;&#1085;&#1072;&#1090;&#1100; &#1084;&#1086;&#1078;&#1085;&#1086;  &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1090;&#1086;, &#1095;&#1090;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080;&#1096;&#1100;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083; &#1051;&#1080;&#1089;. &#1059; &#1083;&#1102;&#1076;&#1077;&#1081; &#1073;&#1086;&#1083;&#1100;&#1096;&#1077; &#1085;&#1077;&#1090; &#1074;&#1088;&#1077;&#1084;&#1077;&#1085;&#1080; &#1095;&#1090;&#1086;-&#1083;&#1080;&#1073;&#1086;  &#1091;&#1079;&#1085;&#1072;&#1074;&#1072;&#1090;&#1100;. &#1054;&#1085;&#1080; &#1087;&#1086;&#1082;&#1091;&#1087;&#1072;&#1102;&#1090; &#1074;&#1077;&#1097;&#1080; &#1091;&#1078;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1099;&#1084;&#1080; &#1074; &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1077;. &#1053;&#1086; &#1074;&#1077;&#1076;&#1100; &#1085;&#1077;&#1090; &#1090;&#1072;&#1082;&#1086;&#1075;&#1086;  &#1084;&#1072;&#1075;&#1072;&#1079;&#1080;&#1085;&#1072;, &#1075;&#1076;&#1077; &#1087;&#1088;&#1086;&#1076;&#1072;&#1102;&#1090;&#1089;&#1103; &#1076;&#1088;&#1091;&#1079;&#1100;&#1103;, &#1080; &#1091; &#1083;&#1102;&#1076;&#1077;&#1081; &#1085;&#1077; &#1089;&#1090;&#1072;&#1083;&#1086; &#1076;&#1088;&#1091;&#1079;&#1077;&#1081;. &#1045;&#1089;&#1083;&#1080; &#1090;&#1099; &#1093;&#1086;&#1095;&#1077;&#1096;&#1100;,  &#1095;&#1090;&#1086;&#1073;&#1099; &#1091; &#1090;&#1077;&#1073;&#1103; &#1073;&#1099;&#1083; &#1076;&#1088;&#1091;&#1075;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1103;&nbsp;!\r\n\r\n-&#1055;&#1088;&#1086;&#1097;&#1072;&#1081;, - &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;  &#1051;&#1080;&#1089;. - &#1042;&#1086;&#1090; &#1084;&#1086;&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090;. &#1054;&#1085; &#1086;&#1095;&#1077;&#1085;&#1100; &#1087;&#1088;&#1086;&#1089;&#1090;&nbsp;: &#1087;&#1086;-&#1085;&#1072;&#1089;&#1090;&#1086;&#1103;&#1097;&#1077;&#1084;&#1091; &#1074;&#1080;&#1076;&#1080;&#1090; &#1090;&#1086;&#1083;&#1100;&#1082;&#1086; &#1089;&#1077;&#1088;&#1076;&#1094;&#1077;.  &#1057;&#1072;&#1084;&#1086;&#1077; &#1075;&#1083;&#1072;&#1074;&#1085;&#1086;&#1077; &#1089;&#1086;&#1082;&#1088;&#1099;&#1090;&#1086; &#1086;&#1090; &#1075;&#1083;&#1072;&#1079;.','',1,71,'russia',61.524,105.319);
INSERT INTO prince_language2 VALUES ('epo',0,'espéranto','Esperanto','esperanto','\"Nur ni konas tion, kion ni malsova&#x11d;igas\", diris la vulpo. \"La homoj ne plu havas tempon por io ajn koni. Ili a&#x109;etas tute pretajn objektojn &#x109;e vendistoj. Sed, &#x109;ar amikvendistoj ne ekzistas, homoj jam ne havas amikojn. Se vi volas amikojn, malsova&#x11d;igu min!\"\r\n\"Adiau\", diris la vulpo. \"Mi diros al vi unua sekreto. &#x11c;i estas tre simpla: Nur oni bone vidas per la nia koro. La esenco estas nevidebla perla okuloj.\"','',1,14,'Universala Esperanto Asocio, Nieuwe Binnenweg 176,',51.9125,4.4644);
INSERT INTO prince_language2 VALUES ('hun',0,'hongrois','Hungarian','magyar','- Az ember csak azt ismeri meg igazán, amit megszelídít - mondta a róka.\r\n- Az emberek nem érnek rá, hogy bármit is megismerjenek.\r\nCsupa kész holmit vásárolnak a keresked&#x151;knél.\r\nDe mivel barátkeresked&#x151;k nem léteznek, az embereknek nincsenek is barátaik.\r\nHa azt akarod, hogy barátod legyen, szelídíts meg engem.\r\n\r\n- Isten veled - mondta a róka.\r\n- Tessék, itt a titkom. Nagyon egyszer&#x171;:\r\njól csak a szívével lát az ember.\r\nAmi igazán lényeges, az a szemnek láthatatlan.\r\n','',1,64,'hungary',47.1625,19.5033);
INSERT INTO prince_language2 VALUES ('gsw-app',2,'appenzellois','Appenzell Swiss German','Appezellertütsch','me kennt nu d sache wommer zäämt, hät de fux gseit. d lüüt händ ka zit\r\nmeh zum öppis kenne lèrne. si kaufed d sache fix fertig i de läde. aber\r\nwils ka läde für fründ git, händ d lüüt ka fründ meh. wennt du aso en\r\nfründ wötsch, denn zääm mi.\r\n\r\nadie, hät de fux gsait. i säg der no mis gheimnis. s isch ganz eifach!\r\nguet sieht mer nu mit em hèrz. di wichtige sache sind für d auge-n\r\nunsichtbar.','',1,72,'appenzell',47.3283,9.40883);
INSERT INTO prince_language2 VALUES ('lmo-tic',2,'tessinois','Ticinese','ticinese','A sa cognos dumá i rop che sa dumestiga, la dis la volp. I gent i g\'ha pü `l temp da cugnos nagota. I cumpra i rop già fai sü di mercant. Ma gh`è mia i mercant da amis, e alura i gent i g\'ha pü amis. Se te vöri un amis, te devi dumestigam.\r\n...\r\nAdiu, la dis la volp. Sculta`l mè segrett, l\'è facil: a sa ved ben dumá cul cör. I rop püsee impurtant, l\'è mia cui öcc ch\' i sa ved. ','',1,52,'ticino',46.3317,8.80045);
INSERT INTO prince_language2 VALUES ('slv',0,'slovène','Slovenian','slovenšcina','Le tisto spozna&#x0161;, kar udoma&#x010D;i&#x0161;, je dejala lisica. Lujdje si ne vzamejo &#x010D;asa, da bi sploh spoznali. Pri trgovcih kupujuejo kar izgotovljene predmete. Ker pa ni trgovcev, ki bi prodajali prijatelje, ljudje nimajo ve&#x010D; prijateljev. &#X010D;e bi rad imel prijatelja, me udoma&#x010D;i!\r\n...\r\nZbogom, je rekla lisica. &#X010D;uj mojo skrivnost. Zelo preprosta je: Kdor ho&#x010D;e videti, mora gledati s screm. Bistvo je o&#x010D;em nevidno. \r\n','',1,70,'slovenia',46.1512,14.9955);
INSERT INTO prince_language2 VALUES ('srp',0,'serbe','Serbian','srpski','-Covek poznaje samo one stvari koje pripitomi, rece lisica. Ljudi nemaju vise vremena da bilo sta upoznaju. Oni kupuju gotove stvari kod trgovaca. A kako nema trgovaca koji prodaju prijatelje, ljudi vise nemaju prijatelja. Ako hoces prijatelja, pripitomi me!\r\n-Zbogom, odgovori lisica. Evo moje tajne. Sasvim je jednostavna: covek samo srcem dobro vidi. Sustina se ocima ne da sagledati.','',1,70,'serbia',44.0165,21.0059);
INSERT INTO prince_language2 VALUES ('jpn',0,'japonais','Japanese','nihongo &#26085;&#26412;&#35486;','','japonais.jpg',1,43,'japan',36.2048,138.253);
INSERT INTO prince_language2 VALUES ('wol',0,'wolof','Wolof','wolof','Xamouñu lou doul lou ñou miin, (wakh  golo). Nit ñi amatouñu jootu xam. Dañuy jenda lou paré ba noppi ca jaykat ba. Waayé ndéguém amatoul jaykatou xarit, nit amatoul xarit. So beugué xarit, nékhalma!\r\n...\r\nTagounaléen (wakh golo). Li moy li ma doon neubeu. Dafa yonmbeu: ak xol la ñuy gisé bou bakh. Li am solo dafay laxou beuti.\r\n','',1,32,'senegal',14.4974,-14.4524);
INSERT INTO prince_language2 VALUES ('sqi',0,'albanais','Albanese','shqip','NJohim veçse gjerat qe i aprivuazojme, thote dhelpra. Njerezit s\'kane me kohe te njohin gje tjeter. Blejne gjera te gateshme tek tregetaret. Por meqe tregetaret miq nuk egsistojne me, atehere njerezit s\'kane me miq, Nese do nje mik, ja ku me ke mua!\r\n...\r\nLamtumire, thote dhelpra. Ja sekreti im. Eshte shume i thjeshte: Shohim mire veçse me zemer. Esencialja eshte e padukshme per syte.','',1,19,'albania',41.1533,20.1683);
INSERT INTO prince_language2 VALUES ('heb',0,'hébreu','Hebrew','ivrit &#1506;&#1460;&#1489;&#1456;&#1512;&#1460;&#1497;&#1514;','','hebreu.jpg',1,61,'israel',31.0461,34.8516);
INSERT INTO prince_language2 VALUES ('lat',0,'latin','Latin','lingua latina','Haec tantum nota sunt quae paulatim domantur, dixit uulpes. Homines aliquid spatii ad cognoscendum subripere non iam possunt; sic apud mercatores res ad usum paratas emunt. Cum autem mercatores qui amicos uendant inueniri non possint, hominibus non iam sunt amici. Si amicum expetis, me doma!\r\n	 \r\n(...) Vale, dixit uulpes. Hoc est arcanum meum, et simplicissimum quidem : corde tantum perspici potest, nec summae rerum ipsae cernuntur oculo ullo.\r\n','',1,79,'',0,0);
INSERT INTO prince_language2 VALUES ('oci-pro',2,'provençal','Provençal','prouvençau ','Lo Ditz del Raynart\r\n\r\n\"Hom conois solamen \r\no que pot domesgar\".\r\nBos ditz es, e no men:\r\nbe puesc lo t\'explicar.\r\nHuey non a hom lezer\r\nde ren be conoisser,\r\ndoncs compra, e-lh es grazitz,\r\no que-lh estai aizitz,\r\nque-lh vendon mercadant:\r\nals no quier tant ni cant.\r\nPus atrobar no-s poc\r\nlunhz mercadantz d\'amics,\r\nde o cauza s\'esmoc\r\ncÕhuey regn\'om ses amics.\r\nS\'amic vols atrobar,\r\nbe×t caldra m domesgar.\r\nAiqui vuelh descobrir\r\nmo secret al fenir:\r\nab ton cor solamen\r\npotz vezer claramen.\r\n\"Ohlz no ve o que cal\r\nmais, ni qu\'es mais cabal\".','',1,49,'',0,0);
INSERT INTO prince_language2 VALUES ('bre',0,'breton','Breton','brezhoneg','N\'eus nemet an traou a vez doñvaet a anevezer, eme al louarn. An dud n\'o deus ket amzer ken da anaout netra.  Prenañ a reont traou peurc\'hraet `ti ar varc\'hadourien. Met dre ma n\'eus ket a varc\'hadourien vignoned, n\'o deus an dud mignon ebet ken. Ma fell dit kaout ur mignon, doñva ac\'hanon!\r\n...\r\nKenavo, eme al louarn. Setu va sekred. Aes-kenañ ez eo:  gant ar galon nemetken e vez gwelet mat. Ar pep pouezushañ ne vez ket gwelet gant an daoulagad.','',1,55,'bretagne',48.202,-2.93264);
INSERT INTO prince_language2 VALUES ('por',0,'portugais','Portuguese','português','Só se conhece aquilo que se amestra, diz a raposa. Os homens já não têm tempo para conhecer nada. Compram tudo já feito nas lojas. Mas como não se podem comprar amigos nas lojas, os homens deixaram de ter amigos. Se queres um amigo, amestra-me!\r\n...\r\nAdeus, diz a raposa. Aqui tens o meu segredo. É muito simples: só se vê bem com o coração. O essencial é invisível para os olhos.\r\n','',1,66,'portugal',39.3999,-8.22445);
INSERT INTO prince_language2 VALUES ('roh-srs',2,'romanche sursilvan','Romance (sursilvan)','rumantsch sursilvan','Ins enconuscha mo las caussas ch\'ins ha fatg dumiastias, precisescha l\'uolp. Ils carstgauns han buca peda pli d\'emprender d\'enconuscher enzatgei. Els cumpran las caussas fatgas. Mo essend ch\'ei dat buca pli stizuns per amitgs, han ils carstgauns buc amitgs pli. Sche ti vul in amitg, lu fai ch\'jeu daventi dumiastia!\r\n...\r\nAdia, di l\'uolp. Mira tscheu miu misteri. El ei zun sempels: Mo cun il cor vesan ins bein. Igl essenzial ei buca veseivels per ils egls.\r\n','',1,51,'ilanz, suisse',46.7743,9.20475);
INSERT INTO prince_language2 VALUES ('dut',0,'néerlandais','Dutch','vlaams','Men kent alleen die dingen waarmee men echt vertrouwd is, zegt de vos. De mensen hebben niet meer de tijd nog iets echt te kennen. Zij kopen dingen kant en klaar bij een handelaar. Maar verkopers van vrienden die bestaan niet, en dus hebben de mensen geen vrienden meer. Als je een vriend wilt moet je me temmen!\r\n...\r\nVaarwel, zegt de vos. Hier is mijn geheim. Het is zeer eenvoudig : Goed zien kan men alleen met zijn hart. Het wezenlijke is onzichtbaar voor je ogen.\r\n','',1,68,'netherlands',52.1326,5.29127);
INSERT INTO prince_language2 VALUES ('dan',0,'danois','Danish','dansk','Man kender kun de ting som man t&#xe6;mmer, siger r&#xe6;ven. Menneskene har ikke l&#xe6;ngere tid til at kende noget. De k&#xf8;ber f&#xe6;rdiglavede ting hos k&#xf8;bmanden. Men eftersom der ikke findes nogen k&#xe6;bm&#xe6;nd der s&#xe6;lger venner, har menneskene ikke l&#xe6;ngere nogen venner. Hvis du vil have en ven s&#xe5; t&#xe6;m mig! \r\n...\r\nFarvel, siger r&#xe6;ven. Her er min hemmelighed. Den er meget enkel: kun med hjertet kan man se klart. Det der virkeligt betyder noget er usynligt for &#xf8;jnene.\r\n','',1,57,'denmark',56.2639,9.50179);
INSERT INTO prince_language2 VALUES ('nor',0,'norvégien','Norwegian','norsk','Vi kjenner bare de ting vi har gjort oss fortrolig med, sa reven. Menneskene har ikke lenger tid til &#xe5; bli kjent med noe. De kj&#xf8;per alt ferdig i butikken. Men siden det ikke finnes butikker som selger venner, har ikke menneskene venner lenger. Vil du ha en venn, s&#xe5; gj&#xf8;r deg fortrolig med meg!\r\n...\r\nAdj&#xf8;, sa reven. Jeg skal fortelle deg en hemmelighet. Den er veldig enkel. Man ser bare godt med hjertet. Det vesentlige er usynlig for &#xf8;yet.\r\n','',1,57,'norway',60.472,8.46895);
INSERT INTO prince_language2 VALUES ('ukr',0,'ukrainien','ukrainian','&#1091;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072; &#1084;&#1086;&#1074;&#1072; oukrayins\'ka mova','- &#1052;&#1080; &#1079;&#1085;&#1072;&#1108;&#1084;&#1086; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1090;&#1080;&#1093;, &#1082;&#1086;&#1075;&#1086; &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1072;&#1108;&#1084;&#1086;, &#1087;&#1088;&#1086;&#1084;&#1086;&#1083;&#1074;&#1080;&#1083;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1051;&#1102;&#1076;&#1080;  &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1095;&#1072;&#1089;&#1091; &#1076;&#1083;&#1103; &#1087;i&#1079;&#1085;&#1072;&#1085;&#1085;&#1103; i&#1085;&#1096;&#1086;&#1075;&#1086;. &#1042;&#1086;&#1085;&#1080; &#1082;&#1091;&#1087;&#1091;&#1102;&#1090;&#1100; &#1075;&#1086;&#1090;&#1086;&#1074;i &#1088;&#1077;&#1095;i &#1091; &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i&#1074;. &#1040;&#1083;&#1077;, &#1086;&#1089;&#1082;i&#1083;&#1100;&#1082;&#1080;, &#1090;&#1086;&#1088;&#1075;i&#1074;&#1094;i &#1076;&#1088;&#1091;&#1079;&#1103;&#1084;&#1080; &#1085;&#1077; &#1073;&#1091;&#1074;&#1072;&#1102;&#1090;&#1100;, &#1083;&#1102;&#1076;&#1080; &#1073;i&#1083;&#1100;&#1096;&#1077; &#1085;&#1077; &#1084;&#1072;&#1102;&#1090;&#1100; &#1076;&#1088;&#1091;&#1079;i&#1074;. &#1071;&#1082;&#1097;&#1086; &#1090;&#1080; &#1073;&#1072;&#1078;&#1072;&#1108;&#1096; &#1084;&#1072;&#1090;&#1080; &#1076;&#1088;&#1091;&#1075;&#1072;, &#1087;&#1088;&#1080;&#1088;&#1091;&#1095;&#1080; &#1084;&#1077;&#1085;&#1077;.\r\n\r\n- &#1041;&#1091;&#1074;&#1072;&#1081;, &#1089;&#1082;&#1072;&#1079;&#1072;&#1083;&#1072;  &#1083;&#1080;&#1089;&#1080;&#1094;&#1103;. &#1052;i&#1081; &#1089;&#1077;&#1082;&#1088;&#1077;&#1090; &#1090;&#1072;&#1082;&#1080;&#1081;. &#1042;i&#1085; &#1076;&#1091;&#1078;&#1077; &#1087;&#1088;&#1086;&#1089;&#1090;&#1080;&#1081;&nbsp;: &#1084;&#1080; &#1073;&#1072;&#1095;&#1080;&#1084;&#1086; &#1082;&#1088;&#1072;&#1097;&#1077; &#1090;i&#1083;&#1100;&#1082;&#1080; &#1089;&#1077;&#1088;&#1094;&#1077;&#1084;. &#1053;&#1072;&#1081;&#1089;&#1091;&#1090;&#1090;&#1108;&#1074;i&#1096;&#1077; &#1079;&#1072;&#1083;&#1080;&#1096;&#1072;&#1108;&#1090;&#1100;&#1089;&#1103; &#1085;&#1077;  &#1074;&#1080;&#1076;&#1080;&#1084;&#1077; &#1076;&#1083;&#1103; &#1086;&#1095;&#1077;&#1081;.','',1,71,'ukraine',48.3794,31.1656);
INSERT INTO prince_language2 VALUES ('gsw-ber',2,'bernois','bern swiss german','Berndütsch','Me kennt nume d Sache wo eim vertraut si, seit der Fuchs. D Mönsche hei ke Zyt me öppis z kenne. Sie choufe alli Sache fix fertig bim Händler. U Gschäft für Fründe git es nid, drum hei d Mönsche keni Fründe meh. We du e Fründ wosch, so gwinn mys Vertraue!\r\n...\r\nAdiö, seit der Fuchs. Da isch mys Gheimnis. Es isch ganz eifach!: guet gseht me nume mit em Härz, ds Wichtigste isch für d Auge unsichtbar.\r\n','',1,72,'berne, Switzerland',46.948,7.44815);
INSERT INTO prince_language2 VALUES ('gsw-bal',2,'bâlois','Basel Swiss German','Baseldytsch','Me kennt nur die Sache wo me zäämt, het der Fuggs gsait. D Mensche hän kai Zyt me, irgend ebbis kenne z leere. Sy kaufe alles feertyg in de Lääde. Aber wel\'s kainy Lääde git wo Frind verkaufe, hän d Mensche kainy Frind mee. Wenn du e Frind wottsch, denn zääm my!\r\n...\r\nAadie, het der Fuggs gsait. Doo isch no my Ghaimlis. S isch ganz aifach: me gseet numme mit em Häärz guet. S Wichtyge isch fir d Auge unsichtbaar.\r\n','',1,72,'basel, Switzerland',47.5596,7.58061);
INSERT INTO prince_language2 VALUES ('gsw-arg',2,'argovien','Aargau Swiss German','Aargauerdüütsch','Mer kännt nume die Sache wo mer zèèmt, hèd de Fuchs gsäit. D Mäntsche händ nümme der Zit zum öppis känneleere. Si chauffed alls fixfertig im Laade. Wils aber ekäni Lääde für Fründ gid, händ d Lüüt ekä Fründe me. Wennd en Fründ wotsch, so tue mi zèème.\r\n\r\nLäbwool, hèd de Fuchs gsäit. Ich säge der mis Ghäimnis. Es ist ganz äifach: guet gsee cha mer nume mit em Hèèrz. Di wichtige Sache sind für d Auge unsichtbar.','',1,72,'aargau, Switzerland',47.3877,8.25543);
INSERT INTO prince_language2 VALUES ('lat-med',0,'latin médiéval','Medieval Latin','Latina mediaevalis','Vulpes inquit: Nullas causas nosse valemus praeter eas cum quibus familiarescimus. Homines vero quicquam cognoscendi spatium non iam sumunt; sibi autem causas iamdudum confectas apud venditores comparant. Sed quoniam nequaquam exsisitit amicorum venditor, homines nunc amicis frui nequeunt. Tu igitur, si amico quodam frui vis, familiarem tibi me fac.\r\n\r\n(...) Vale, ait vulpes. Ecce arcanum, quod est simplicissimum, tibi patefacio: tantum sunt perspicaces cordis oculi. Econtra, carnales oculi summas causas cernere non valent.','',1,79,'',0,0);
INSERT INTO prince_language2 VALUES ('fro',0,'français (ancien)','Old French','','Choses ne sont congneües fors celles dont en s\'aüse, dist li golpis. Li home n\'ont ja loisir d\'aucune rien enquerre. Si vont les choses que cil manuevrent as marcheanz achetant. Or ne sont mie marcheant qui amis vendent, et n\'i a mais celui ne ait amis. Se vuels ami, acointe toi a moi !\r\n...\r\nDieus te gart, dist li golpis. Mes secrez est tels. Si est a entendre legiers : en ne voit si bien qu\'as ielz del cuer. Forz choses ne sont as ielz del chief veües.','',1,50,'',0,0);
INSERT INTO prince_language2 VALUES ('gsw-sol',2,'soleurois','Solothurn Swiss German','Soledurnerdütsch','Me könnt nume die Sache wo me zähmt, seit dr Fuchs. D Mönsche hei nüm Zit öppis lehre z könne. Si choufe s Züg fixfertig bim Händler. Aber wüus keni Händler für Fründe git, hei d Mönsche keni Fründe meh. Wen e Fründ wottsch, de due mi zähme.\r\n\r\nAdiö, seit dr Fuchs. Das isch auso mys Gheimnis. Es isch ganz eifach. Me gseht nume mit em Härz guet. S Wäsentleche isch für d Ouge unsichtbar.','',1,72,'solothurn, Switzerland',47.207,7.53331);
INSERT INTO prince_language2 VALUES ('gsw-zur',2,'zurichois','zurich swiss german','Züritüütsch','Mer känt nume d\'sache wo mer zäämt, hät de fuchs gsäit. D\'mänsche händ nüme ziit zum öppis käneleere. Si chaufed alles fixfertig im lade. Will\'s aber käi läde für fründ git, händ d\'lüüt käi fründ mee. Wänn d\'en fründ wotsch, dänn zääm mi.\r\n\r\nAdiö, hät de fuchs gsäit. Ich säge dir mis ghäimnis. Es isch ganz äifach: guet gsee cha mer nume mit em herz. Di wichtige sache sind für d\'auge unsichtbar.','',1,72,'zurich, Switzerland',47.369,8.53803);
INSERT INTO prince_language2 VALUES ('ara',0,'arabe','Arabic','&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577; al ?arab?ya','','arabe.jpg',1,62,'alger',36.7312,3.14209);
INSERT INTO prince_language2 VALUES ('hye',0,'arménien','Armenian','&#1344;&#1377;&#1397;&#1381;&#1408;&#1381;&#1398;','','armenien.jpg',1,17,'armenia',40.0691,45.0382);
INSERT INTO prince_language2 VALUES ('sux',0,'sumérien','Sumerian','EME.?IR','','sumerien.jpg',1,15,'',0,0);
INSERT INTO prince_language2 VALUES ('prs',0,'dari','Dari','','','dari.jpg',1,45,'jalalabad',34.43,70.46);
INSERT INTO prince_language2 VALUES ('egy',0,'égyptien ancien','Egyptian','','','egyptien.jpg',1,26,'egypt',26.8206,30.8025);
INSERT INTO prince_language2 VALUES ('ber',0,'tamazight','Berber','tamazight','','tamazight.jpg',1,25,'algeria',28.0339,1.65963);
INSERT INTO prince_language2 VALUES ('grc',0,'grec ancien','Ancient Greek','','','grecancien.jpg',1,47,'',0,0);
INSERT INTO prince_language2 VALUES ('enm',0,'anglais (moyen)','Middle English','','Man moste tamen that he kenne lists, quoth the fox. To witen mankind hath no tide. Men praty thingys from sellours beyen. But there is of freondes no marchande, so that man freondless now stode. If a freonde thou list, tame me!\r\n\r\nFarewel, quoth the fox. This is my cownsell. Seli it is: man can only see well thurgh the hert. To the eien the essencial is invisibull.','',1,67,'',0,0);
INSERT INTO prince_language2 VALUES ('ang',0,'anglais (vieil)','Old English','','Man nat butan Þe man atemað,cwæð se fox. Menn nabbað hwile nawiht to witanne. Hie bycgað gegarwodu Þing fram ciepemannum. Ac swa na freonda ciepemann nis, menn nabbað na freondas. Gif Þu anne freond wilt, mec atema!\r\n\r\nWes Þu hal, cwæð se fox. Her is min diegolnes. Seo is swiðe anfeald: man siehð wel nefne mid heorte. Seo aweosung nis fram eagum sewenlic.','',1,67,'',0,0);
INSERT INTO prince_language2 VALUES ('pol',0,'polonais','Polish','polski','- Poznaje sie&#x0328; tylko to, co sie oswoi - powiedzia&#x0142; lis. - Ludzie maja&#x0328; zbyt ma&#x0142;o czasu, aby cokolwiek poznac&#x301;. Kupuja&#x0328; w sklepach rzeczy gotowe. A poniewaz&#x307; nie ma magazynów z przyjació&#x0142;mi, wie&#x0328;c ludzie nie maja&#x0328; przyjació&#x0142;. Jes&#x301;li chcesz miec&#x301; przyjaciela, oswój mnie!\r\n\r\n- Z&#x307;egnaj - odpowiedzia&#x0142; lis. - A oto mój sekret. Jest bardzo prosty: dobrze widzi sie&#x0328; tylko sercem. Najwaz&#x307;niejsze jest niewidoczne dla oczy.','',1,69,'polska',51.9194,19.1451);
INSERT INTO prince_language2 VALUES ('ita-tos',2,'toscan','Tuscan','toscano','Si conosce solo le cose che s\'addomestica disse la volpe. Gl\'omini un\'hanno piú tempo di conosce\'nulla. Comprano cose bell\'e fatte nei mercati. Ma siccome un\'esiste punti mercati d\'amici, gl\'omini un\'hanno piú amici. Se tu voi un amico, addomesticami! \r\n\r\nAddio disse la volpe. Ecco il mio segreto. È di molto facile: solo si vede bene con il cuore. L\'essenziale è invisibile agl\'occhi.\r\n\r\n\r\n','',1,52,'Tuscany',43.5671,10.9807);
INSERT INTO prince_language2 VALUES ('mlt',0,'maltais','Maltese','Malti','Il-bniedem isir jaf biss bil-&#x0127;lejjaq li jimmansa hu, qal il-volpi. Il-bnedmin m’g&#x0127;ad g&#x0127;andhom &#x0127;in g&#x0127;al xejn. Jixtru kollox lest ming&#x0127;and tal-&#x0127;wienet. Izda billi ma jezistux bejjieg&#x0127;a tal-&#x0127;bieb, il-bnedmin ma baqg&#x0127;alhomx &#x0127;bieb. Jekk trid &#x0127;abib immansa lili!\r\n…\r\nSa&#x0127;&#x0127;iet, qal il-volpi. Is-sigriet tieg&#x0127;i huwa dan. Sigriet semplici &#x0127;afna: ma tistax tara sew jekk mhux bil-qalb. Dak li hu tassew ha’&#x0127;tiega ma tarahx be-g&#x0127;ajnejn. \r\n','',1,62,'malta',35.9375,14.3754);
INSERT INTO prince_language2 VALUES ('lav',0,'letton','Latvian','latvie&#x0161;u','M&#x0113; pasz&#x012B;stam tikai to, ko pieradin&#x0101;m, sac&#x012B;ja lapsa. Civ&#x0113;kiem vairs nav laika neko iepaz&#x012B;t. Vini nop&#x0113;rk pie tirgot&#x0101;ja jau visu gatavu. Bet, t&#x0101; k&#x0101; nav tirgot&#x0101;ju, kas p&#x0101;rdotu draugus, tad cilv&#x0113;kiem vairs nav draugu. Ja tu v&#x0113;lies draugu, pieradini mani! \r\n...\r\nArdievu, sac&#x012B;ja lapsa. L&#x016B;k, mans nosl&#x0113;pums, tas ir loti vienk&#x0101;r&#x0161;s: &#x012B;sti m&#x0113;s redzam tikai ar sirdi. B&#x016B;tiskais nav ac&#x012B;m saredzams. \r\n','',1,58,'latvia',56.8796,24.6032);
INSERT INTO prince_language2 VALUES ('srd',0,'sarde','Sardinian','sardu','Non connoschimus atteru petzi chei sas cosas chi si addomestican, nait su mariane. Sos omines no an prus su tempus de connoscher. Dae sos bèndidores issos comporan sas cosas già fattas. Ma sicomente non s’accatana bèndidores de amicos, sos omines non an prus amicos. Si tue cheres unu amicu addomesticande unu!\r\n…\r\nAdiosu>>, nait su mariane. Ecco su secretu meu. Est meda fatzile: si biet bene petzi chin su coro. S’essentziale non si biet pompiandelu.\r\n','',1,53,'sardegna',40.1209,9.01289);
INSERT INTO prince_language2 VALUES ('pms',0,'piémontais','Piemontese Italian','piemontèis','Noi conossoma mach le c”se ch’a ‘n rendo bindisp”st, a dis la volp.  J’”mini  a l’han pï nen ël temp ëd con”sse d’autr.  A cato le c”se gia faite dai marcand.  Ma dal moment che ij marcand amis a esisto nen, j’”mini a l’han pì gnun amis. S’it veule n’amis, it deuve domëstieme.\r\n…\r\nAdieu, a dis la volp. Veui confidete mè segret. A l’è motobin sempi: noi riessima a vëdde bin mach con ‘l cheur. L”n ch’a l’è essensial a l’è invisìbil con j’euj.\r\n','',1,52,'Piedmont, Italy',45.0522,7.51539);
INSERT INTO prince_language2 VALUES ('ita-pis',2,'Pisan','Pisan Italian','','E si  ‘onosce sortanto le ‘ose che ci fanno diventà  docili, dice la vorpe. La gente un ha più  ‘r tempo  di ‘onosce artro. Compra le  ‘ose già fatte da’  bottegai. Ma siccome un ci sono bottegai amici, la gente amici un n’ha più. Se voi un’amio, mi devi addomestià.\r\n…\r\nTi saluto dice la vorpe.   Ir mi’ segreto è questo. E’ semprice:  si riesce a vede’ bene solo cor cuore.  Quer che conta di più con l’occhi un si vede.\r\n','',1,52,'pisa, Italy',43.7161,10.3966);
INSERT INTO prince_language2 VALUES ('scn',0,'sicilien','Sicilian','sicilianu','Si canusciunu sulamenti ‘i cosi chi s’ammaistranu, dissi ‘a vurpi. L’omini nonhannu cchjù tempu di canusciri nenti. Ccattunu li cosi fatte sulamenti di mercanti. Ma siccomu non ci sunnu pi-nnenti mercanti d’amici, l’omini non hannu cchjù amici. Si tu voi n’amicu, ammaistrimi!\r\n…\r\nAddiu, dissi ‘a vurpi. Eccu u mè sigretu. E’ simplici-simplici: si vidi beni sulamenti cu cori. L’essenziali è nvisibili a-ll’occhj.\r\n','',1,52,'sicilia',37.3979,14.6588);
INSERT INTO prince_language2 VALUES ('ita-vic',2,'vicentin','Vicentin Italian','vicentino','Te pui conóssare solo queo che xe de faméja, ga dito la volpe. I òmeni no i ga pì tempo de conóssare gnente. Tuto queo che i ga i lo compra dai botegari. Ma sicome no ghe xe botegari che vende amissi, i òmeni no i ga pì amissi. Se ti te vui n’amico, fame diventar de faméja.\r\n…\r\nAdìo, ga dito la volpe. Ècolo kì el me segreto. El xe tanto fàssile: te ghe vidi ben solo col core. Queo che conta no te lo vidi mia coi oci.\r\n','',1,52,'vicenza, Italy',45.5459,11.5403);
INSERT INTO prince_language2 VALUES ('ast',0,'bable/asturien','asturian','asturianu','Solu conocemos les coses que domesticamos, dixo el raposu. Los homes ya nun tien tiempu de domesticar nada. Mercan nes tiendes coses feches. Pero como nun hai nenguna tienda ónde vendan amigos, los homes ya nun tien amigos. Si quies un amigu, ¡domestícame! \r\n…\r\nAdiós, dixo el raposu. Direte un secreto. Ye muy sencillu: solu vese bien co’l corazón. Lo esencial resultayos invisible a los güeyos.\r\n','',1,48,'Asturias',43.2504,-5.98326);
INSERT INTO prince_language2 VALUES ('cas-cas',2,'castuó','Castúo','castuó','Namág tenemug cunucencia de lag cosag que dumamug, iju el zorru. Lug’ombrig no tienin tiempu ya pa dumal nâ. Mercan en lag tiendag lag cosag’echag. Peru comu no ay tienda que varga ondi vendan amigug, lug’ombrig no tienen amigug yâ. Si quiég’un amigu, ¡d”mami!\r\n…\r\nAdióg, iju la zorra. Vu’a icilti un secretinu. Eg mu facilinu: namág se ve bien con’el curazón. Er meoyu eg’invisibli pa lus’ojug.\r\n','',1,65,'Extremadura',39.4937,-6.06792);
INSERT INTO prince_language2 VALUES ('arg-ben',0,'patois de Benasque','Benasquese','Benasqués','Sólo coneixem les coses que adomem, ba di el raboso. Els omes ya no tienen tems de coneixer res. Compren a les tiendes coses fetes. Pero coma no yey niuna tienda agon benguen amigos, els omes ya no tienen amigos. Si ques un amigo, ¡adómame!\r\n…\r\nAdeu, ba di el raboso. Te diré un secreto. Ye mol sensillo: sólo se bei bé dan el corasón. Lo més importán no se bei dan els güells.\r\n','',1,49,'Benasque, Spain',42.6051,0.523973);
INSERT INTO prince_language2 VALUES ('arg-che',2,'cheso','Cheso','','Solamen conocemos las cosas que domesticamos, dicié lo raboso. Los hombres ya no han tiempo de domesticar cosa. Mercan en los comercios cosas feitas. Pero como no bi-há boticas en do se vendan amigos, los hombres  s’han quedáu sin amigos. Si quies un amigo... ¡habrás a domesticarme!\r\n…\r\nAdiós, dicié lo raboso. Te’n diré uno  de los míos secretos. Ye muy simple: sólo se i-veye bien con lo corazón. Lo esencial ye invisible a los güellos.\r\n','',1,65,'aragon',41.5976,-0.905662);
INSERT INTO prince_language2 VALUES ('cat',0,'catalan ','Catalan','català','Només es coneixen les coses que es domestiquen -va dir la guineu. Els homes ja no tenen temps de conèixer res. Compren coses fetes als botiguers. Però com que no hi ha botiguers d’amics, els homes ja no tenen amics. Si vols un amic, domestica’m!\r\n…\r\nAdéu -va dir la guineu. Vet aquí el meu secret. És molt senzill: només s’hi veu bé amb el cor. L’essencial és invisible als ulls.\r\n','',1,49,'Catalunya',41.5912,1.52086);
INSERT INTO prince_language2 VALUES ('glg',0,'galicien','Galician','gallego','Non se coñecen máis ca as cousas que se domestican, dixo o raposo. Os homes non teñen tempo para coñecer nada. Conseguen no mercado as cousas todas. Mais como non existe mercado de amigos, os homes non teñen amigos. Se ti queres un amigo, domestícame!\r\n…\r\nAdeus, dixo o raposo. Velaquí tes o meu segredo. Éche moi simple: só co corazón se mira ben. O esencial é invisíbel para os ollos.\r\n','',1,66,'Galicia',42.5751,-8.13386);
INSERT INTO prince_language2 VALUES ('eus',0,'basque','Basque','euskara','Hezten diren gauzak baino ez dira ezagutzen, esan zuen azeriak. Gizonek ez dute ezer ezagutzeko denborarik. Merkatarienean guztiz egindako gauzak erosten dituzte. Baina adiskide-merkataririk ez dagoenez, gizonek ez dute adiskiderik. Adiskide bat nahi baduzu, hez nazazu!\r\n.....\r\nAdio, esan zuen azeriak. Hona hemen nire sekretua. Oso erraza da: bihotzez baino ez da ondo ikusten. Funtsezkoa ikustezina da begientzako.\r\n','',1,15,'Basque Country, Spain',42.9896,-2.61893);
INSERT INTO prince_language2 VALUES ('frp-ann',0,'patois du Val d\'Anniviers','Val d\'Anniviers dialect','','Oung cognit què lè tzogè coung a adommécia, dèt lé rèingnar. Lé jhommo l’ann pa mé lo teng dè tzougea conirè. L’atzètonn dè tzogè totè prèchtè ou martchiann. Ma kommè la pa mè dè martchian d’amèk, lè jhommo l’ann pa mè d’amik. Ché tou vout oung amèk, dèt lè rèingnar, tou kountè l’affrarssiè !\r\n…\r\nAdiou, dèt lè rèingar. Tè dio mong sèkrèt. Lè frang cheingplo : oung vit bèing qu’avouè lo kour. Chènn què conntè frang nè pas péchiouc avouè lè jouèss.\r\n','',1,50,'Anniviers, Switzerland',46.1671,7.60778);
INSERT INTO prince_language2 VALUES ('gsw-wal',2,'haut-valaisan','Wallis Swiss German','Wallisertiitsch','Mu chennt nummu d’Sache wa einum vertruwt sind, hett där Fugs gseit. D’Mänschu hennt kei Zit meh, eppis lehru z’chennu. Schi chöifunt ganz fertigi Sache in dä Gschäftu. Aber wills kei Gschäfti git wa mu cha Fräinda chäifu, hent d’Mänschu kei Fröinda meh. Wennt dü a Fröind willt, so tüö mich zähmu.\r\n…\r\nAde, hett där Fugs gseit. Hie isch mis Gheimnis. Äs isch ganz as eifachs: Mu gseht nummu mit dum Härz richtig. Z’wichtigschta chasch mit dä Öigu nit gseh.\r\n','',1,72,'brig-glis',46.3182,7.98458);
INSERT INTO prince_language2 VALUES ('fin',0,'finnois','Finnish','suomi','Me tunnemme vain ne, jotka kesytämme, kettu sanoi. Ihmisillä ei ole enää aikaa tuntea mitään. He ostavat tavarat valmiina kauppiailta. Mutta koska kauppiaat eivät myy ystäviä, ihmisillä ei ole enää ystäviä. Jos haluat ystävän, kesytä minut!\r\n…\r\n\r\nHyvästi, kettu sanoi. Kerron sinulle salaisuuteni, se on hyvin yksinkertainen: Vain sydämellä näkee hyvin. Tärkein on silmin näkymätöntä.\r\n','',1,63,'finland',61.9241,25.7482);
INSERT INTO prince_language2 VALUES ('scr',0,'croate','Croatian','hrvatski jezik','Poznamo samo stvari koje pripitomimo, re&#x010D;e lisica. &#X010C;ovjek nema vi&#x0161;e vremena da i&#x0161;ta upozna. Kupuje samo ve&#x0107; izra&#x0111;ene stvari kod trgovca. A kako vi&#x0161;e ne postoje trgovci koji su prijatelji, &#x010D;ovjek vi&#x0161;e nema prijatelja. Ako ho&#x0107;e&#x0161; prijatelja, pripitomi me!\r\n…\r\nZbogom, re&#x010D;e lisica. Evo moje tajne. Ona je vrlo jednostavna: vidi se dobro samo srcem. Najbitnije je o&#x010D;ima nevidljivo. \r\n','',1,70,'croatia',45.1,15.2);
INSERT INTO prince_language2 VALUES ('rom',0,'Romani','Romani','romani ?hib','Nané d&#x017E;indlé vavír kolá, fénciu karík savé san prisyklynó- phendziá líso. Manu&#x0161;á, nané lénde kiédy te syklión várso nevó. Joné kinén saró kerdó biknypáske. A paldavá, so nané adáso biknypnári, ke savõ sa&#x0161;tý te kinés malén, to i manu&#x0161;énde nané butedýr malá. Jé&#x015B;li kamés, kaj te javél túte jek mal, to prisykliákir man ke pe. \r\n...\r\nDevlésa-phendziá líso. Óke mro sekréto. Jou sýle izbít prósto: dykh jilésa. So sy andré na&#x0161;tý te udykhés jakhénca. \r\n','',1,46,'macedonia',41.6086,21.7453);
INSERT INTO prince_language2 VALUES ('slk',0,'slovaque','Slovak','sloven&#x010D;ina','Spoznávame len to, ?o si skrotíme, povedala líška. ?udia už nemajú ?as nie?o spoznáva?. Kupujú si u obchodníkov celkom hotové veci. Niet však takých obchodníkov, ?o by predávali priate?ov, preto ?udia priate?ov už nemajú. Ak chceš ma? priate?a skro? si ma. \r\n…\r\nZbohom, riekla líška. Tu je moje tajomstvo. Je ve?mi jednoduché: dobre vidíme iba srdcom. To hlavné je o?iam nevidite?né.\r\n','',1,69,'slovakia',48.669,19.699);
INSERT INTO prince_language2 VALUES ('cze',0,'tchèque','Czech','&#x010D;esky','Známe jen ty v&#x011B;ci, které si ocho&#x010D;íme, &#x0159;ekla li&#x0161;ka. Lidé u&#x017E; nemají &#x010D;as, aby n&#x011B;co poznávali. U obchodník&#x016F; nakupují v&#x011B;ci úlpn&#x011B; hotové. Ale proto&#x017E;e s p&#x0159;átelstvím se nekupc&#x010D;í, nemají p&#x0159;átel. Chce&#x0161;-lu p&#x0159;ítele, ocho&#x010D; si m&#x011B;!\r\n…\r\nSbohem, &#x0159;ekla li&#x0161;ka. Tady je mé tajemství, docela jednoduché: správn&#x011B; vidíme jen srdcem. To bytostné o&#x010D;i nespat&#x0159;í. \r\n','',1,69,'czech republic',49.8175,15.473);
INSERT INTO prince_language2 VALUES ('lit',0,'Lituanien','Lituanian','letuvi&#x0173 kalba','Susipa&#x017E;inti gali tik su tais dalykais, kuriuos prisijaukini, tarè lapè. &#X017E;mones neturi laiko ko nors pa&#x017E;inti. Jie nusiperka visk&#x0105; jau gatav&#x0105; i&#x0161; prekybinink&#x0173;. Bet kadangi nera prekybinink&#x0173; i&#x0161; kuri&#x0173; b&#x016B;t&#x0173; galima nusipirkti draug&#x0173;, tai draug&#x0173; &#x017E;mones ir neture. Jei nori tureti draug&#x0105;, prisijaukink mane! \r\n...\r\nLik sveikas, tare lape. &#X0161;tai kikia mano paslaptis. Ji labai paprasta: matyti galima tik &#x0161;irdimi. Tai, kas svarbiausia nematoma akimis. \r\n','',1,58,'lithuania',55.1694,23.8813);
INSERT INTO prince_language2 VALUES ('wen',0,'sorabe','Sorbian','Serb&#353;&#263;ina','Zeznaje&#x0161; jeno&#x017E; w&#x011B;cy, ki&#x017E; sej sklud&#x017A;i&#x0161;, rjeknje li&#x0161;ka. Lud&#x017A;o nimaja hi&#x017E;o &#x010D;as, n&#x011B;&#x0161;to na w&#x011B;domje bra&#x0107;. Kupuja zhotowjene w&#x011B;cy w kupnicach. Ale dokel&#x017E; njeje kupnicow, hd&#x017A;e&#x017A; mó&#x017E;e&#x0161; sej prrre&#x0107;elstwo kupi&#x0107;, nimaja hi&#x017E;o prrre&#x0107;elow. Hdy&#x017E; chce&#x0161; prrre&#x0107;ela, sklud&#x017A; mje! \r\n...\r\nAdej, rjeknje li&#x0161;ka. Tule je moje potajnstwo. Je cyle jednore: Jasnke wid&#x017A;i&#x0161; jeno&#x017E; z wutrobu. To najwa&#x017E;ni&#x0161;e wostanje wo&#x010D;omaj. ','',1,69,'Gorlitz, Germany',51.1531,14.9753);
INSERT INTO prince_language2 VALUES ('tgl',0,'tagalog','Tagalog','tagalog','\"Maaari lang nating maunawaan ang mga bagay na ating inaamo”, sabi ng alamid. Ang mga tao ay wala ng panahon para matuto. Bumibili sila ng mga bagay na handang gawa sa tindahan. Ngunit, dahil wala namang tindahan ng kaibigan, ang mga tao ay wala ng kaibigan. Kung gusto mo ng kaibigan, amuin mo ako.\r\n…\r\n“Paalam”, sabi ng alamid. Pakinggan mo ang aking sekreto. Napakasimple niya: sa pamamagitan lang ng puso na maaari tayong makakita ng mahusay. Ang pinakamahalaga ay hindi nakikita ng mata.\r\n','',1,40,'philippines',12.8797,121.774);
INSERT INTO prince_language2 VALUES ('por-bra',0,'portugais brésilien','Brasilian','brasileiro','Só conhecemos as coisas que domesticamos, disse a raposa. Os homens já não têm tempo de domesticar nada. Compram nas lojas coisas feitas. Mas como não existe nenhuma loja onde se vendam amigos, os homens já não têm amigos. Se queres um amigo, domestica-me!\r\n…\r\nAdeus, disse a raposa. Dir-lhe-ei um segredo. É muito simples: só se enxerga bem com o coração. O essencial é invisível aos olhos.\r\n','',1,66,'brazil',-14.235,-51.9253);
INSERT INTO prince_language2 VALUES ('cas-lun',2,'lunfardo','Lunfardo','','“Uno solo manya el fato que acamala, bate el zorro. A los chochamu’ ya no les da el cuero. Hoy la merca se compra solo en los almacenes. Pero como no existe el comerciante gomía, los tipos se quedan en banda. Si querés un gomía, yugála y dame bola\r\n…\r\n-Adiós, dijo el zorro. Y guarda con mi deschave: solo se juna bien con el bobo. Lo que es bien debute es invisible pa’ los faroles.”\r\n','',1,65,'',0,0);
INSERT INTO prince_language2 VALUES ('que',0,'quechua','Quechua','runa simi / kichwa','‘Riqsillanchis uywallasqanchista’, atuqqa nispa niykun. Runaqa manaña atinñachu uywayta. Anchaqa ruwasqakunata rantipayan. Masikuna mana rantinakuq chayri, manaña tarikunñachu. Masi masayta munanki chayqa, uywakullaway.\r\n…\r\n ‘Ripusaq!’, atuq nin. Pakanataqa risqayki manan sasachus kayta. Anchachus rikukun sunqullawan. Chaninqa ñawinchiswan mana rikukunchu\r\n','',1,44,'peru',-9.18997,-75.0152);
INSERT INTO prince_language2 VALUES ('pua',0,'purepecha-tarasque','Purepecha-Tarascan','','“Imani ambek’uchisi mítek’a enkachi sesi p’interhek’a, isi uantaspti jiuatsi. K’uiripuecha nórekuksi antak’uarhesinti p’interheni ka p’arheni ampe, iámintu ampe piásintiksi. Kóruchka nónani ataranhatasinti pichakuecha (píchpiricha) jimposi k’uiripueha nóteru jatsiati píchpirichani. Ekari uékani jaka ma píchpirini, p’interhetakuarherini jínteni. \r\n…\r\nNipa-ia, arhispti jiuatsi. Arhintikuakakini ma ampe k’oru. Nómintu sani ts’unhapesti: mintsita jimpo kánekua sesi xarharasinti. Sánteru kéri ampakiti ampe no xarharasinti.” \r\n','',1,44,'Michoacan, Mexique',19.5665,-101.707);
INSERT INTO prince_language2 VALUES ('cpf',0,'créole ','french creole (pidgin)','','Réna a di konsa sèl bagay ou moun kab donté sé sa ou konnin.Leszom pa gen tan anko pou yo apran anyin. Yo achté bagay tou fèt nan min komèsan yo. Min kom machan zanmi pa esisté, lézom pa gin zanmi anko. Si ou vlé youn zanmi, sé pou donté mwen.\r\n…\r\n\r\nAdié Réna a di. Min sékrè pam. Li trè simp: Sé avek kèou ou kab wè pi bien. Bagay pi impotan invisib pou gé.\r\n','',1,42,'antilles françaises',16.5,-62);
INSERT INTO prince_language2 VALUES ('roh',0,'romanche (Rumantsch Grischun)','Romansh (Grisun)','rumatsch grisun','„Ins conuscha mo quai ch’ins ha domestitgà“, ha ditg la vulp. Ils umans n’han betg pli temp d’emprender a conuscher insatge. Els cumpran las chaussas fatgas e finidas tar ils martgadants. Ma cunquai ch’i na dat nagins martgadants d’amis, n’han ils umans betg pli amis. Sche ti vuls in ami, alura domestitgescha mai!“\r\n…\r\n„Adia“, ha ditg la vulp. „E quai è mes misteri. El è fitg simpel: ins vesa bain mo cun il cor. L’essenzial na ves’ins betg cun ils egls.“\r\n','',1,51,'grisons, suisse',46.657,9.57733);
INSERT INTO prince_language2 VALUES ('roh-srm',2,'romanche surmiran','Romansh (surmiran)','rumantsch surmiran','Ins amprenda a canoscher angal las tgossas tg’ins dumestegia, ò cuntinuo la golp. Igls carstgangs n’on betg ple peda d’amprender a canoscher ensatge. Els compran tot las tgossas bel fatgas e fittadas tigls martgadants. Ma i dat nigns martgadants d’ameis. Parchegl on igls carstgangs er nigns ameis. Sch’te vot en amei… alloura stost am dumestager!\r\n…\r\nAdia, ò raspundia la golp. E chegl è igl mies misteri, el è fitg simpel: angal cugl cor ins pogl veir andretg. Igl essenzial n’è betg visibel pigls îgls.\r\n','',1,51,'savognin, suisse',46.5979,9.5981);
INSERT INTO prince_language2 VALUES ('roh-val',2,'romanche vallader','Romansh (vallader)','rumantsch vallader','I’s cugnuoscha be quai chi s’ha domestichà, ha dit la vuolp. Ils umans nu’s piglian plü peida dad imprender a cognuoscher alch. I cumpran la roba bell’e fatta pro’ls marchadants. Ma cun quai chi nu dà ingüns marchadants dad amis, nun han ils umans plü ingüns amis. Scha tü voust ün ami,schi prouva da’m domestichar!\r\n…\r\nAdieu, ha dit la vuolp. Quist es meis misteri. El es fich simpel: i’s vezza bain be cul cour. L’essenzial nu’s vezza culs ögls.\r\n','',1,51,'scuol, suisse',46.7869,10.459);
INSERT INTO prince_language2 VALUES ('roh-put',2,'romanche puter','Romansh (puter)','rumantsch puter','Il pitschen prinz\r\n\r\nA’s cugnuoscha be que cha s’ho domesticho, ho dit la vuolp. Ils umauns nu’s piglian plü peida dad imprender a cognuoscher qualchosa. A cumpran la roba bell’e fatta tals marchadaunts. Ma cun que cha que nu do üngüns marchadanuts dad amihs, nun haun ils umauns plü üngüns amihs. Scha tü voust ün amih, schi prouva da’m domesticher!\r\n\r\nAdieu, ho dit la vuolp. Quist es mieu misteri. El es fich simpel: que’s vezza bain be cul cour. L’essenziel nu’s vezza culs ögls.\r\n','',1,51,'Samedan',46.5341,9.87053);
INSERT INTO prince_language2 VALUES ('gug',0,'guaraní','Guaraní','avañe\'r&#x1EBD; ','Jaikuaa ñamomba’évante, he’i Aguara. Ava nomopa’&#x0169;-véima hembiapo osaite’o hagua, mba’eve ha avavépe. Oñemu jejapopyre ha, ndaipórire mamove angir&#x0169; ojogua hagua, ava ndorekovéo iñir&#x0169;rã. Reipotárõ nde rayhupararã, nde chemomba’eva erã. \r\n...\r\nAháma, he’i Aguara. Che ñe’e ñemíta ndéve, ndahasýi ikuaapy: ñane ñe’ã guivénte jahechapaporã. Hekopetegua tesáèe ndojechaukái. \r\n','',1,12,'paraguay',-23.4425,-58.4438);
INSERT INTO prince_language2 VALUES ('yor',0,'yoruba','Yoruba','yorùbá','A kìí mò? ju ohun tí a bá fi kóni ni kò?lò?kò?lò? wí. Àwo?n èníyàn ò ní àsìkò láti waadi nkankan mo. Rírà ni wo?n ? ra ohun gbogbo tí wó?n ti sè pari ló?dò? àwo?n olówò. Sùgbó?n nígbàtí kòsí ìsò wò ò?ré?, awo?n èèyàn ò ní oré? mó?. Tí o bá ? wá òré?, ? jé? máa kó? mí! \r\n…\r\nÓ dìgbà, ni kò?lò?kò?lò? wí. Èyí ni às?írí mi. Èyí tí o ro?rùn jù. A ò le ríran àrídájú àyààfi pè?lú o?kan. N kan àtàtà o see fi ojú lásán rí.','corrected by Samuel Kayode Akinbo talktokay20042002@yahoo.ca',1,30,'Oshogbo , nigeria',7.76581,4.56122);
INSERT INTO prince_language2 VALUES ('bam',0,'bambara','Bambara','bamanankan','M&#x254;g&#x254; t&#x25b; fosi d&#x254;n fo i ye min kolon, kungo-wulunin ko ten.\r\nKo k’a ñini ka ko d&#x254;n, hadamaden senna ka telin o ma.\r\nF&#x25b;n lab&#x25b;nnenw ka ban, a b&#x25b; o de san u feerey&#x254;r&#x254;.\r\nTerifeerey&#x254;r&#x254; dun t&#x25b; yen, teri t&#x25b; hadamaden na bilen.\r\nN’i b&#x25b; teri dø f&#x25b;, ne kolon!\r\n\r\nA ko K’an b&#x25b;n. Ne ka gundo fil&#x25b; nin ye,\r\nA ka n&#x254;g&#x254;n kojugu: F&#x25b;n b&#x25b; ye ka ñ&#x25b; ni dusukun de ye.\r\nA kolomay&#x254;r&#x254; t&#x25b; ye ni ñ&#x25b; ye. \r\n','',1,31,'mali',17.5707,-3.99617);
INSERT INTO prince_language2 VALUES ('lad',0,'judéo-espagnol','Judeo-Spanish','','','lad.jpg',1,48,'',0,0);
INSERT INTO prince_language2 VALUES ('tat',0,'tatar','Tatar','tatarça','Kulga ijaläshkän äjberne genä belep bula,-dide tölke. \r\nKeshelärneng närsä dä bulsa belergä baskacha vakytlary juk. \r\nAlar kibettän äzer äjberlärne genä satyp alalar. \r\n\r\nä bit äzer duslar satylatyrgan kibetlär juk, shunga kürä keshelärneng duslary da bette.\r\nägär dä üzengä dus buldyrasyng kilsä, mine kulga ijaläshter.\r\n\r\n-Hush, - dide tölke. Menä minem sörem shul:ul bik gadyj:\r\n tik jöräk kenä tieshenchä kürä ala, chönki ing möhime küzdän jasherelgän.\r\n','',1,36,'Tatarstan',55.6212,52.6011);
INSERT INTO prince_language2 VALUES ('akk',0,'akkadien','akkadian','akkadû','','',0,60,'',0,0);
INSERT INTO prince_language2 VALUES ('hbo',0,'hébreu ancien','old hebrew','','','',0,61,'',0,0);
INSERT INTO prince_language2 VALUES ('cym',0,'gallois','Welsh','cymraeg','','',0,55,'',0,0);
INSERT INTO prince_language2 VALUES ('uzb',0,'ouzbek','Uzbek','o?zbek tili','Inson nimani qo’lga o’rgatsa oshanigina biladi, dedi tulki. Hozir odamlarning o’rganishga vaqti yo’q. Ular hamma narsaning tayyorini do’kondan sotib olishadi. Lekin do’stlarni sotadigan do’kon yo’qligi uchun, endi odamlarning do’stlari ham yo’q. Agar do’sting\r\nbo’lishini hohlasang unda meni qo’lga o’rgat !\r\n\r\n- Hayr, dedi tulki. Mana mening sirim. U juda oddiy: inson yolg’iz yuragi ila to’g’ri ko’ra oladi. Zotan eng muhim narsalar ko’zdan berkitilgan.','',1,36,'uzbekistan',41.3775,64.5853);
INSERT INTO prince_language2 VALUES ('kat',0,'géorgien','Georgian','kartuli ena','','',0,34,'georgia',0,0);
INSERT INTO prince_language2 VALUES ('bul',0,'bulgare','Bulgarian','','&#1057;&#1072;&#1084;&#1086; &#1085;&#1077;&#1097;&#1072;&#1090;&#1072;, &#1082;&#1086;&#1080;&#1090;&#1086; &#1089;&#1080; &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080;&#1083;, &#1084;&#1086;&#1078;&#1077;&#1096; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1077;&#1077;&#1096; -  &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1061;&#1086;&#1088;&#1072;&#1090;&#1072; &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1074;&#1088;&#1077;&#1084;&#1077; &#1076;&#1072; &#1087;&#1088;&#1086;&#1091;&#1084;&#1103;&#1074;&#1072;&#1090; &#1085;&#1080;&#1097;&#1086;. &#1058;&#1077; &#1082;&#1091;&#1087;&#1091;&#1074;&#1072;&#1090; &#1086;&#1090;  &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080;&#1090;&#1077; &#1075;&#1086;&#1090;&#1086;&#1074;&#1080; &#1085;&#1077;&#1097;&#1072;. &#1053;&#1086; &#1090;&#1098;&#1081; &#1082;&#1072;&#1090;&#1086; &#1085;&#1103;&#1084;&#1072; &#1085;&#1080;&#1082;&#1072;&#1082;&#1074;&#1080; &#1090;&#1098;&#1088;&#1075;&#1086;&#1074;&#1094;&#1080; &#1085;&#1072; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;, &#1093;&#1086;&#1088;&#1072;&#1090;&#1072;  &#1085;&#1103;&#1084;&#1072;&#1090; &#1074;&#1077;&#1095;&#1077; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083;&#1080;. &#1040;&#1082;&#1086; &#1080;&#1089;&#1082;&#1072;&#1096; &#1076;&#1072; &#1089;&#1080; &#1080;&#1084;&#1072;&#1096; &#1087;&#1088;&#1080;&#1103;&#1090;&#1077;&#1083; - &#1086;&#1087;&#1080;&#1090;&#1086;&#1084;&#1080; &#1084;&#1077;!</p>\r\n<p>- &#1057;&#1073;&#1086;&#1075;&#1086;&#1084; - &#1082;&#1072;&#1079;&#1072; &#1083;&#1080;&#1089;&#1080;&#1094;&#1072;&#1090;&#1072;. - &#1045;&#1090;&#1086; &#1084;&#1086;&#1103;&#1090;&#1072; &#1090;&#1072;&#1081;&#1085;&#1072;. &#1058;&#1103; &#1077;  &#1084;&#1085;&#1086;&#1075;&#1086; &#1087;&#1088;&#1086;&#1089;&#1090;&#1072;: &#1085;&#1072;&#1081;-&#1093;&#1091;&#1073;&#1072;&#1074;&#1086;&#1090;&#1086; &#1089;&#1077; &#1074;&#1080;&#1078;&#1076;&#1072; &#1089;&#1072;&#1084;&#1086; &#1089;&#1098;&#1089; &#1089;&#1098;&#1088;&#1094;&#1077;&#1090;&#1086;. &#1053;&#1072;&#1081;-&#1089;&#1098;&#1097;&#1077;&#1089;&#1090;&#1074;&#1077;&#1085;&#1086;&#1090;&#1086; &#1077;  &#1085;&#1077;&#1074;&#1080;&#1076;&#1080;&#1084;&#1086; &#1079;&#1072; &#1086;&#1095;&#1080;&#1090;&#1077;.','',1,70,'bulgaria',42.7339,25.4858);
INSERT INTO prince_language2 VALUES ('kur',0,'kurde','Kurdish','','','',0,45,'',0,0);
INSERT INTO prince_language2 VALUES ('mon',0,'mongol','Mongolian','','','mongol.jpg',1,37,'mongolia',46.8625,103.847);
INSERT INTO prince_language2 VALUES ('ewo',0,'ewondo','Ewondo','','','',0,33,'',0,0);
INSERT INTO prince_language2 VALUES ('lin',0,'lingala','Lingala','lingala','','',0,29,'',0,0);
INSERT INTO prince_language2 VALUES ('som',0,'somali','Somali','','','',0,28,'',0,0);
INSERT INTO prince_language2 VALUES ('bas',0,'bassa','Basaa','','','',0,33,'',0,0);
INSERT INTO prince_language2 VALUES ('ibo',0,'igbo','Igbo','igbo','','',0,30,'',0,0);
INSERT INTO prince_language2 VALUES ('fan',0,'fang','Fang','','','',0,33,'',0,0);
INSERT INTO prince_language2 VALUES ('swa',0,'swahili','Swahili','kiswahili','« Tunajua tu, vitu ambavyo tunaweza kunyanyasa », kasema mbwa mwitu. « Siku hizi, watu hawana wakati wa kujua chochote. Wao hununua bidhaa ambazo tayari zimeandaliwa wachukuzi. Na kwa vile hakuna wachukuzi wa urafiki, wao hawana marafiki. Kama kweli unataka rafiki, mimi hapa, nitupilie mbali upori wangu! \r\n\r\nKwaheri! » , kasema mbwa mwitu, « Siri yangu ni jambo rahisi sana. Ni roho zetu zinatuongoza kutafsiri mambo yale muhimu, ambayo hatuwezi kuona kwa macho yetu makavu. »\r\n','',1,29,'kenya',-0.023559,37.9062);
INSERT INTO prince_language2 VALUES ('amh',0,'amharic','Amharic','amharic','','',0,62,'',0,0);
INSERT INTO prince_language2 VALUES ('luo',0,'luo','Luo','dholuo','','',0,4,'',0,0);
INSERT INTO prince_language2 VALUES ('ceb',0,'cebuano','Cebuano','Sinugboanon','','',0,40,'',0,0);
INSERT INTO prince_language2 VALUES ('vie',0,'vietnamien','Vietnamese','','','vie.jpg',1,39,'vietnam',14.0583,108.277);
INSERT INTO prince_language2 VALUES ('cmn',0,'mandarin','Mandarin','','','chinois.jpg',1,38,'china',35.8617,104.195);
INSERT INTO prince_language2 VALUES ('bos',0,'bosniaque','bosnian','Bosanski','\"Poznavati se mogu samo pripitomljene stvari\", re&#x010D;e lisica. \"Ljudi vi&#x161;e nemaju vremena da upoznaju ne&#x161;to novo. Oni kupuju ve&#x107; napravljene stvari kod prodava&#x010D;a. Ali, po&#x161;to ne postoji osoba koja prodaje prijatelje, ljudi, zapravo, nemaju prijatelja. Ako ho&#x107;e&#x161; da ima&#x161; prijatelja onda pripitomi mene ! »\r\n„Zbogome“, re&#x010D;e lisica. „Evo je moja tajna. Jednostavna je: dobro se mo&#x017E;e vidjeti samo. Sa srcem. Ono najva&#x017E;nije je nevidlijivo za o&#x010D;i.”\r\n','',1,70,'bosnia',43.9159,17.6791);
INSERT INTO prince_language2 VALUES ('jam',0,'créole jamaïcain','Jamaican Creole','','\"Wi ongle riili kyan nuo bout di ting-dem wa wi tek fi-wi han breik iin\", Faks se. \"Man no ha no taim agein fi nuo bout notn. Tidei, dem jos a bai wa di higla-dem a sel. Bot higla no sel fren, so dem no kiip fren agein. Ef yu waan waan fren, yu mos breik mi iin!\".\r\n\r\n\"Mi gaan\" Faks se \"An sii fi-mi siicrit ya... i wel simpl : wi ongl sii gud wid fi-wi haat. Wa riili mata, yu no tek aiy sii i\"','',1,73,'jamaica',18.1096,-77.2975);
INSERT INTO prince_language2 VALUES ('cos',0,'corse','Corsican','','Cunnosce, si cunnoscenu e cose chì omu ammansa, disse a volpe. L\'omi ùn anu più tempu da cunnosce nulla. Compranu cose fatte è lestre ind\'è i marcanti. Ma ùn ci ne hè marcanti d\'amichi è elli amichi ùn ne anu più. S\'è tù voli un amicu, ammansa à mè.\r\n\r\nAddiu disse a volpe. Eccuti u me sicretu. Hè bellu semplice : vede si vede bè cù u core. I punti di primura l’ochji ùn li ponu vede.\r\n\r\n','',1,52,'corsica',42.0396,9.01289);
INSERT INTO prince_language2 VALUES ('bar',0,'bavarois','Bavarian','bayrisch','Du kennst ja nua dees, wo\'st amoi zaehmt host, hot da Fux gsogt.\r\nD\'Leit ham ja koa Zeit mea, dass wos kenna leana. De kaffa oiss scho\r\nfeate gmacht bei am Hendla. Awa wei hoit koana mid aam Freind handln\r\nwui, hoot koana an Freind mea. Wann\'st oiso aan Freind hom wuisst,\r\nmuasst mi hoit zaehma.\r\n\r\nPfiad di! hot da Fuchs gsogt. Und des is mei G\'hoamnis - s\'is awa recht\r\noafach: du koo\'st nua mid\'m Heazn guat seng. Oiss, wos wichtig is,\r\nis mid de Augn ned zum segn!\r\n','',1,72,'bavière',48.7904,11.4979);
INSERT INTO prince_language2 VALUES ('hin',0,'hindi','Hindi','hindi','','hindi.jpg',1,46,'india',20.5937,78.9629);
INSERT INTO prince_language2 VALUES ('tok',0,'toki pona','Toki Pona','','soweli loje li toki: \"jan li pona e ijo la jan li sona e ona taso. tenpo ni la jan li jo ala e tenpo li ken sona e ala. ona li kama jo e ijo pini kepeken mani lon tomo pi jan pana. taso jan li pana ala e jan pona tan mani la jan li jo ala e jan pona. sina wile jo e jan pona la o pona e mi!\"\r\n\r\nsoweli loje li toki e ni: \"tawa pona. ni li sona insa mi li pona mute. jan li lukin pona kepeken pilin taso. jan li ken ala lukin e ijo suli kepeken oko.\"','',1,14,'',0,0);
INSERT INTO prince_language2 VALUES ('fur',0,'frioulan','Friulan','furlan','\"A cognossin nome chel ch\'a àn dumiesteât\", e dîs la bolp. - I oms a no àn plui timp di cognossi nuie. A comprin tai negozis cjossis za prontis. Ma mediant che a no esistin marcjadants di amîs, i oms a no àn plui amîs. Se tu vuelis un amì, alore dumiesteimi.\r\n\r\n\"Cungjò\", e dîs la bolp. \"E ve ca il gno segret. Al è une vore sempliç: a viodin ben nome cul cûr. L\'essenziâl al è invisibil ai voi.\"','',1,51,'udine',46.0649,13.2307);
INSERT INTO prince_language2 VALUES ('wln-namur',0,'wallon namurois','Walloon','walon','On ni conèt ki les sacwès k\' on atraite, dijha li rnåd. Les omes n\' ont pus pont d\' timps po rén conèche. Is achetenut des sacwès totès fwaites amon les mårtchands. Mins come gn\' a pont di mårtchands d\' amis, les omes n\' ont pus pont d\' amis. Si vos vloz on ami, atraitîz-mi !\r\n\r\nA Diè, dijha li rnåd. Voci mi sicret. Il est foirt simpe : on ni voet bén k\' avou si keur. Li principal est-invisibe po les îs.','',1,50,'namur',50.4641,4.86043);
INSERT INTO prince_language2 VALUES ('avk',0,'kotava','Kotava','','Va tulegovitan plek yo anton grupet, bresitol kalir. Ayik ta kona grupera mea\r\nugaldir. Dene dolekik va ixam varon iayan plek yo luster. Vexe oye da me tir\r\ndolekik va nik acum ayik va nik mea dir. Ede va nik kuranil, va jin tulegovital\r\n!\r\n\r\nDone, bresitol kalir. Batse jinafa birga. Opelapafa : kan takra anton winhit.\r\nBenele kan iteem tir merowine.','',1,14,'',0,0);
INSERT INTO prince_language2 VALUES ('oci-oux',2,'occitan d\'Oulx','Occitan (Oulx)','','Nou couneison mac lâ choza quë nz\'avon aprivazà, à dí \'l reinâ. Louz omme i l\'on pâ mai \'l ton ëd couneissë ron. I l\'achëtton da lou marchan \'d choza jó feita. Ma, pisquë la lh\'à pâ \'d marchan d\'amisse, louz omme i l\'on pâ mai d\'amisse. S\'ou vouré in amiss, aprivazëmmë!\r\nAdieu, ou lh\'à dí \'l reinâ. Voualà moun sëcré. Ou l\'i fran sinplë: la s\'vé bion mac bou \'l ceur. L\'essansièl, ou l\'i invizibblë për louz iooû. ','',1,49,'oulx',45.0333,6.83363);
INSERT INTO prince_language2 VALUES ('oci-via',2,'occitan viaran','Occitan (Viaran)','','Nou counishën puè que la chòuza que nou z-avën aprivouazè, o di l\'rirar. Lou z-òme i z-an pa mai l\'tën d\'counètre pa ren. I z-achatan òu marchan dë chòuza jo touta facha. Mè, coumo ou l\'i o pa d\'marchan d\'ami, lou z-òme i z-an pa mai d\'ami. S\'tu voua z-un ami, aprivouaza-më!\r\nAr\'vèire, ou l\'o di l\'rirar. \'Co l\'i moun sëcrë. Ou l\'i bën simple: la s\'vèi bën qu\'ëmbë l\'cor. L\'eshënshiè, ou l\'i invizible pèr lou z-uòu. ','',1,49,'',0,0);
INSERT INTO prince_language2 VALUES ('oci-gav',2,'occitan gavot','Occitan (Gavot)','','Òm coneisse que las chausas qu\'òm aprivèisa, dissèc lo reinart. Los òmes an mai lo temps de pas ren coneisser. Achaton de chausas totas fachas ves los marchands. Mas bòrd qu\'i a pas de marchands d\'amics, los òmes an pas mai d\'amics. Se vòles un amic, apri','',1,49,'gap, france',44.5599,6.0759);
INSERT INTO prince_language2 VALUES ('kir',0,'kirghize','Kyrgyz','','<pre>&#1041;&#1080;&#1088;&#1257;&#1085;&#1199; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1089;&#1257;&#1187;, &#1086;&#1096;&#1086;&#1085;&#1091; &#1075;&#1072;&#1085;&#1072; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257; &#1084;&#1199;&#1084;&#1199;&#1082;&#1199;&#1085; - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;\r\n&#1040;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1072; &#1073;&#1080;&#1088;&#1085;&#1077;&#1088;&#1089;&#1077;&#1085;&#1080; &#1073;&#1080;&#1083;&#1199;&#1199;&#1075;&#1257;, &#1091;&#1073;&#1072;&#1082;&#1099;&#1090;&#1072;&#1088;&#1099; &#1078;&#1086;&#1082;. &#1040;&#1083;&#1072;&#1088; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1085; &#1076;&#1072;&#1103;&#1088;\r\n&#1073;&#1091;&#1102;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1099;&#1096;&#1072;&#1090;. &#1041;&#1080;&#1088;&#1086;&#1082;, &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1076;&#1091; &#1089;&#1072;&#1090;&#1099;&#1087; &#1072;&#1083;&#1091;&#1091;&#1075;&#1072; &#1076;&#1199;&#1082;&#1257;&#1085;&#1076;&#1257;&#1088;\r\n&#1078;&#1086;&#1082; &#1075;&#1086;, &#1072;&#1076;&#1072;&#1084;&#1076;&#1072;&#1088;&#1076;&#1099;&#1085; &#1076;&#1072; &#1076;&#1086;&#1089;&#1090;&#1086;&#1088;&#1091; &#1078;&#1086;&#1082; &#1073;&#1086;&#1083;&#1091;&#1087; &#1082;&#1072;&#1083;&#1076;&#1099;. &#1069;&#1075;&#1077;&#1088;&#1076;&#1077; &#1089;&#1077;&#1085;&#1076;&#1077; &#1076;&#1086;&#1089;\r\n&#1073;&#1086;&#1083;&#1075;&#1086;&#1085;&#1076;&#1091; &#1082;&#1072;&#1072;&#1083;&#1072;&#1089;&#1072;&#1187;, &#1089;&#1077;&#1085; &#1084;&#1077;&#1085;&#1080; &#1082;&#1086;&#1083;&#1075;&#1086; &#1082;&#1257;&#1085;&#1076;&#1199;&#1088;&#1199;&#1087; &#1072;&#1083;!<br>\r\n- &#1050;&#1086;&#1096;, - &#1076;&#1077;&#1076;&#1080; &#1058;&#1199;&#1083;&#1082;&#1199;. - &#1052;&#1099;&#1085;&#1072; &#1084;&#1077;&#1085;&#1080;&#1085; &#1089;&#1099;&#1088;&#1099;&#1084;. &#1040;&#1083; &#1072;&#1073;&#1076;&#1072;&#1085; &#1078;&#1257;&#1085;&#1257;&#1082;&#1257;&#1081;:\r\n&#1069;&#1187; &#1084;&#1072;&#1072;&#1085;&#1080;&#1083;&#1199;&#1199; &#1082;&#1257;&#1079;&#1076;&#1257;&#1085; &#1078;&#1199;&#1084;&#1199;&#1083;&#1199;&#1199;.','',1,36,'Kirghizistan',41.2044,74.7661);
INSERT INTO prince_language2 VALUES ('tur',0,'turc','Turkish','türkçe','&#X0130;nsan ancak evcille&#x015F;tirirse anlar, dedi tilki. &#X0130;nsanlar&#x0131;n art&#x0131;k anlamaya zamanlar&#x0131; yok. Dükkânlardan her istediklerini sat&#x0131;n al&#x0131;yorlar. Ama dostluk sta&#x0131;lan bir dükkân olmad&#x0131;&#x011F;&#x0131; i&#x00E7;in dostlar&#x0131; yok art&#x0131;k. E&#x011F;er dost istiyorsan, beni evcille&#x015F;tir !\r\n\r\nHos&#x00E7;akal, dedi tilki. &#X0130;&#x015F;te sana dir s&#x0131;r, &#x00E7;ok basit bir &#x015F;ey : &#x0130;nsan yaln&#x0131;z  yüre&#x011F;iyle do&#x011F;ruyu görebilir. As&#x0131;l görülmesi gerekeni gözler göremez.','',1,36,'turkey',38.9637,35.2433);
INSERT INTO prince_language2 VALUES ('est',0,'estonien','Estonian','eesti','Väike prints\r\n\r\n\"Tuntakse ainult neid asju, mida taltsutatakse, \" ütles rebane.\r\nInimestel pole enam aega midagi tundma õppida. Nad ostavad kõiki asju valmis kujul kaupmeeste käest. Ja kuna ei ole kaupmehi, kes sõpru müüksid, siis polegi inimestel enam sõpru. Kui tahad endale sõpra, siis taltsuta mind !\r\n\r\n\" Jumalaga, \" ütles rebane. \" Siin on minu saladus. See on väga lihtne : ainult südamega näed hästi. Kõige tähtsam on silmale nähtamatu. \"\r\n','',1,63,'estonia',58.5953,25.0136);
INSERT INTO prince_language2 VALUES ('ell',0,'grec','Greek','E&lambda;&lambda;&nu;&rho;&xi;&kappa;&alpha;','&Delta;&epsilon;  &gamma;&nu;&omega;&rho;&#943;&zeta;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf; &pi;&alpha;&rho;&#940; &#972;,&tau;&iota; &epsilon;&xi;&eta;&mu;&epsilon;&rho;&#974;&nu;&epsilon;&iota;, &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &epsilon;&upsilon;&kappa;&alpha;&iota;&rho;&omicron;&#973;&nu;  &pi;&iota;&alpha; &nu;&alpha; &mu;&#940;&theta;&omicron;&upsilon;&nu; &tau;&#943;&pi;&omicron;&tau;&epsilon;. &Tau;&rsquo;&alpha;&gamma;&omicron;&rho;&#940;&zeta;&omicron;&upsilon;&nu; &#972;&lambda;&alpha; &#941;&tau;&omicron;&iota;&mu;&alpha; &alpha;&pi;&#972; &tau;&omicron;&upsilon;&sigmaf; &epsilon;&mu;&pi;&#972;&rho;&omicron;&upsilon;&sigmaf;. &Kappa;&alpha;&theta;&#974;&sigmaf; &#972;&mu;&omega;&sigmaf; &delta;&epsilon;&nu;  &upsilon;&pi;&#940;&rho;&chi;&omicron;&upsilon;&nu; &delta;&iota;&#972;&lambda;&omicron;&upsilon; &#941;&mu;&pi;&omicron;&rho;&omicron;&iota; &phi;&#943;&lambda;&omega;&nu;, &omicron;&iota; &#940;&nu;&theta;&rho;&omega;&pi;&omicron;&iota; &delta;&epsilon;&nu; &#941;&chi;&omicron;&upsilon;&nu; &pi;&iota;&alpha; &phi;&#943;&lambda;&omicron;&upsilon;&sigmaf;. &Alpha;&nu; &theta;&#941;&lambda;&epsilon;&iota;&sigmaf; &#941;&nu;&alpha;  &phi;&#943;&lambda;&omicron;, &epsilon;&xi;&eta;&mu;&#941;&rho;&omega;&sigma;&#941; &mu;&epsilon; !\r\n(...)\r\n&#904;&chi;&epsilon;  &gamma;&epsilon;&iota;&alpha;! &epsilon;&#943;&pi;&epsilon; &eta; &alpha;&lambda;&epsilon;&pi;&omicron;&#973;. &Omicron;&rho;&#943;&sigma;&tau;&epsilon; &tau;&omicron; &mu;&upsilon;&sigma;&tau;&iota;&kappa;&#972; &mu;&omicron;&upsilon;. &Epsilon;&#943;&nu;&alpha;&iota; &pi;&omicron;&lambda;&#973; &alpha;&pi;&lambda;&#972; : &delta;&epsilon; &beta;&lambda;&#941;&pi;&epsilon;&iota; &kappa;&alpha;&nu;&epsilon;&#943;&sigmaf;  &kappa;&alpha;&lambda;&#940; &pi;&alpha;&rho;&#940; &mu;&omicron;&nu;&#940;&chi;&alpha; &mu;&epsilon; &tau;&eta;&nu; &kappa;&alpha;&rho;&delta;&iota;&#940;. &Eta; &omicron;&upsilon;&sigma;&#943;&alpha; &epsilon;&#943;&nu;&alpha;&iota; &alpha;&#972;&rho;&alpha;&tau;&eta; &gamma;&iota;&alpha; &tau;&alpha; &mu;&#940;&tau;&iota;&alpha;.','',1,47,'greece',39.0742,21.8243);
INSERT INTO prince_language2 VALUES ('vls',0,'flamand occidental','West Flemish','Vlaemsch/Vlaams','Ze kenn oljinne die dingn woamee da ze echt vertrouwd zin, zegt den vos. De minsn eyn gin tid mji om echt te zien. Ze kwopn dingn kant en kloar bi nen handeloare. Mo verkwopers van moaten, da bestoa nie, en dus eyn de minsn gin moaten mji. Aj ne moat wilt, moej mi temn!...\r\nSalu, zegt den vos, Ier is min geheim. T\'i vrji jinvoudig: Goe zien kundje oljinne me jen herte. Et weznlukke is onzichtboar vo jun wogn.\r\n\r\n','',1,68,'gent',51.0536,3.72087);
INSERT INTO prince_language2 VALUES ('urd',0,'ourdou','Urdu','','','urdu.gif',1,46,'pakistan',30.3753,69.3451);
INSERT INTO prince_language2 VALUES ('wuu-shg',0,'wuu de Shangaï','Shanghaines','zanhererau','','shangai.jpg',1,38,'shangai',31.2307,121.473);
INSERT INTO prince_language2 VALUES ('lao',0,'laotien','Lao','','','laotien.gif',1,15,'laos',19.8563,102.495);
INSERT INTO prince_language2 VALUES ('kab',0,'kabyle','Kabyle','taqbaylit','Ye nnad izirthi, ne tsakey kan ayen swayes in wulef. Imdhanen ur san ara y wekth i thmusni. Tsarend kan ayen i hgan siheraren. Sgwaken n qethwan iheraren i znuzen thadukli, imdhanen ur san ara imdukwal. Ma the vgher amdakwel, alesiyé.\r\nYe nnad izirthi qim dhi le hna. Atsan serya inu, dhan i sehyen. Tha mughli nel kayen tseqed sgul. Ey ni lan dhe ssah its wafer af allen\r\n','',1,25,'Kabylie',36.817,4.3);
INSERT INTO prince_language2 VALUES ('nan',0,'min de Taiwan','Taiwan Min','','gun chi liau kai ho\' sun hok chi mih\r\nho\' li kong\r\nlin lui kin a lit i keng bo\' si kan khi liau kai saN mih a\r\nin an siong lin hia beh hoe hian seng phin\r\nm ko ki lian bo sun chai siau siu peng iu e siong jin\r\nlin lui toh\r\nbo peng iu a\r\nlu ko\' li beh kau chit e peng iu\r\nsun hok goa pa\r\neng piat a\r\nho\' li kong\r\nche toh si goa e pi bit\r\nchin kan tan\r\nchi u iong sim lai khoaN chiah e khoaN e chheng\r\nsiong ki pun e mih kiaN si bak chiu so\' khoaN be tioh e','',1,38,'taiwan',23.6978,120.961);
INSERT INTO prince_language2 VALUES ('khm',0,'khmer','Khmer','','','khmer.jpg',1,39,'Cambodge',12.5657,104.991);
INSERT INTO prince_language2 VALUES ('isl',0,'islandais','icelandic','','Maður þekkir ekki annað en það, sem maður temur, sagði refurinn. Mennirnir hafa ekki lengur tíma til að þekkja neitt. Þeir kaupa tilbúna hluti hjá kaupmanninum. En þar sem ekki eru til kaupmenn, sem versla með vini, eiga menn ekki lengur neina vini. Ef þú vilt eiga vin, Þá temdu mig!\r\n\r\nVertu sæll, sagði refurinn. Hér er leyndarmálið mitt. Það er mjög einfalt: maður sér ekki vel nema með hjartanu. Það mikilvægasta er ósýnilegt augunum.\r\n','',1,57,'iceland',64.9631,-19.0208);
INSERT INTO prince_language2 VALUES ('aze',0,'azeri','Azerbaijani','Az?rbaycan','','azeri.jpg',1,36,'azerbaijan',40.1431,47.5769);
INSERT INTO prince_language2 VALUES ('spa-crc',1,'espagnol costaricain','','','','',1,65,'Costa Rica',9.74696,-83.7543);
INSERT INTO prince_language2 VALUES ('spa-arg',1,'espagnol argentin','','','','',1,65,'Argentine',-38.4161,-63.6167);
INSERT INTO prince_language2 VALUES ('spa-and',1,'espagnol andalou','','','','',1,65,'andalousie',37.5443,-4.72775);
INSERT INTO prince_language2 VALUES ('fra-qbc',1,'français québécois','','','','',1,50,'Montréal, Canada',45.5454,-73.6391);
INSERT INTO prince_language2 VALUES ('lld-bad',2,'ladin de la val Badia','','','Le pice prinz\r\n\r\n\"An conësc mâ ées côsses ch\'an inzertiëia, \" â spo ajuntè la olp. \"Les porsones ne n\'á plü degun tëmp por imparè a conësce valgügn. Ares se cumpra scialdi döt tles botëghes. Mo deach\'al ne n\'é degünes botëghes che vënn amîsc, nen á les porsones plü gnanca degügn. Porchël inzertiëieme, sce t\'ôs avëi n amich!\"\r\n\r\n\"Adio,\" â respongnü la olp. \"Chilò áste &#x015b;ëgn spo in&#x0107;e mî socrët. Al é dër scëmpl: an vëiga mâ bun cun le cör, l\'essenzial ne vëigon nia cun i edli\"','',1,51,'Val Badia',46.5966,11.7828);
INSERT INTO prince_language2 VALUES ('lld-gar',2,'ladin de la Val Gardena','','','L pitl prinz\r\n\r\n\"Mé cie che n zertiëia, cunëscen\", ova dit la bolp. \"La persones ne n\'á nia plu dl\'aurela de emparé a cunëscer zeche. Les se compra dut bele anjiniá tla butëighes. Ma daviá che l ne n\'ie nia butëighes che vënd cumpanies, nen n\'á la jënt nia plu. Sce te ues n cumpani, muesse me zertië!\"\r\n\r\n\"Adio\", ova dit la bolp. \"Tlo es mi sucrët. L ie drët scëmpl: cun l cuer vëijen l bën. Cie che ie plu empurtant ne vëijen nia cun i uedli\"','',1,51,'Val Gardena',46.5121,11.7293);
INSERT INTO prince_language2 VALUES ('roh-sut',2,'romanche sutsilvan','','','Igl pintg prenzi\r\n\r\n„Ign ancanuscha me quegl c’ign â domestitgieu”, â la gualp getg. “Igls carstgàns ân betga ple peada d’amprender d’ancanuscher anzatge. Els cumpran las tgossas fatgas a fitadas tar igls marcadànts. Mo parquegl c’igl dat nigns marcadànts d’amitgs, ân igls carstgàns betga ple amitgs. Scha tei vol egn amitg, alura domestitgescha me!”\r\n\r\n“Adia”, â la gualp getg. “A quegl e mieu misteri. El e fetg sempel: Ign veza bagn me cun igl cor. Igl essenzial vez’ign betg cun igls îls.\r\n','',1,51,'',0,0);
INSERT INTO prince_language2 VALUES ('gle',0,'gaélique irlandais','','Gaeilge','An prionsa beag\r\n\r\n-Ní chuireann tú aithne ach ar na nithe a chlónn tú, arsa an madra rua. Na \r\ndaoine anois, níl an t-am acuníos mó aithne a chur ar aon ní. Ceannaíonn \r\nsiad rudaí réamhdhéanta ó lucht díolta. Ach ó tharla nach bhfuil aon lucht \r\ndíolta cairde ann, níl cairde ar bith ag na daoine níos mó. Má tá cara de \r\ndhíth ort, déan mé a chló!\r\n\r\n-Slán leat, arsa an madra rua. Seo é mo rún duit. Tá sé ansimpli: is leis an \r\nchroí is fearr a tímid. Na rudaí is bunúsaí amuigh, ní féidir leis na súile \r\niad a fheiceáil.','',1,74,'dublin',53.3441,-6.26749);
INSERT INTO prince_language2 VALUES ('nbf',0,'naxi','Naxi','naxi','','naxidongba.gif',1,75,'Lijiang, china',24.687,102.964);
INSERT INTO prince_language2 VALUES ('per',0,'persan','Persian','','','persan.jpg',1,45,'téhéran',35.6908,51.4352);
INSERT INTO prince_language2 VALUES ('bzd',0,'bribri','bribri','','','bribri.jpg',1,76,'Costa Rica bri bri',9.25,-83.25);
INSERT INTO prince_language2 VALUES ('jam-lim',2,'créole du Limón','Limonese creole','','We onle nuo de ting weh we kian tiem, de foks seh. Nou a die man na’a no taim to nuo nottin. Every thing them bai mek arredy. An sins you kiant fain a stoor we sel fren, man no hav no fren agen. If yu want a fren, ¡yu gwine hav fi tiem mi!\r\n\r\nA gan, de foks seh. But before mek mi tel u a secrit. It is very simpl: yu kian only si good with yu haat. What matta de most yu kianot si only with yu eye’them.','',1,73,'Limón, Costa Rica',9.98,-83.03);
INSERT INTO prince_language2 VALUES ('pcd-ath',2,'picard d\'Ath','','','On n’ coun’wat qu’ lès afères qu’ on amadoûe qui dit l’ èrnârd. Lès omes n’ ont pus l’ tans de rieu coun’wate. I-z-acat’të dès aféres toutes aj’vées à lès marchands. Mès, vu qu’ i n’ a gneu d’ marchands d’ coumarâdes, lès omes n’ ont pus d’ coumarâdes. Si vos voleuz in coumarâde, amadoûèz-m’ !\r\n\r\nAdjeu qui dit l’ èrnârd. V’là chi m’ sëcreut. Il eùt fôrt simpe : on n’ vwat bieu qu’ aveu l’ keûr. Eùl prinjipâl n’ eùt gneu visîbe pou lès ieus.\r\n','',1,50,'Ath',50.6403,3.77724);
INSERT INTO prince_language2 VALUES ('yid',0,'yiddish','Yiddish','','Men bakent zikh mit zakhn nor ven men shtubikt zey ayn, hot der fuks gezogt. Di mentshn hobn nisht keyn tsayt mit epes zikh bakenen. Zey koyfn fartike zakhn bay di sokhrim. Ober azoy vi keyn khaveyrim-sokhrim zenen nisht faran, hobn di mentshn nisht keyn khaveyrim. Oyb du vilst a khaver, shtubik mikh ayn...\r\n- Adye, hot gezogt der fuks. Ot iz mayn sod. Er iz zeyer poshet: men zet gut nor mitn hartsn. Dos vikhtikste iz farborgn fun di oygn.','',1,68,'',0,0);
INSERT INTO prince_language2 VALUES ('frp',0,'francoprovençal (arpitan)','','arpitan','- In cognët maque le tsouse que se rendon atréte, l\'at repondu-lèi lo rèinar. Le s-ommo l\'an pamë lo ten de cognëtre ren. Atseton in tsë le martsan le tsouse dza féte. Më di moman que le martsan cognësson pa de s-ami, le s-ommo l\'an pamë de s-ami. Se te vou un ami, rend-mè euna bëtse atréta! \r\n\r\n- Adzeu, l\'at repondu lo rèinar. Voèlà mon secret. L\'est bramen simplo: se vèit maque bien avouë lo coeur. L\'essanciel l\'est invisiblo pe le je.\r\n','',1,50,'',0,0);
INSERT INTO prince_language2 VALUES ('kor',0,'coréen','Korean','','?? ???? ? ?? ?? ? ??? ??, ??? ???? ?? ???? ?? ???. ??? ??? ?? ??? ??. ???? ???? ??? ?? ? ?? ??. ??? ????? ? ????......\r\n??! ?? ? ??? ????. ? ??? ? ? ??. ???? ?? ? ???? ??. ?? ??? ? ?? ??? ???.','coreen.png',1,15,'Séoul',37.55,127);
INSERT INTO prince_language2 VALUES ('aeb',0,'arabe tunisien','Tunisian arabic\r\n','','','arabetunisien.png',1,62,'Tunis',36.82,10.17);
INSERT INTO prince_language2 VALUES ('tha',0,'thaï','Thai','','','thai.JPG',1,77,'bangkok',13.84,100.66);
INSERT INTO prince_language2 VALUES ('mlg',0,'malgache','malagasy','','-Ny zavatra folahina ihany no mety ho fantatra, hoy ilay fosa. Tsy manam-potoana hahafantaran-javatra na inona na inona intsony ny olombelona. Zavatra raisim-potsiny no vidiny eny amin’ny mpivarotra. Koa satria tsy misy mpivarotra namana mihitsy, dia tsy mana-namana intsony ny olombelona. Raha te hana-namana ianao, dia folahy aho!\r\n\r\n- Veloma, hoy ilay fosa. Inty ilay tsiambarateloko. Tsotra dia tsotra ilay izy : amin’ny alalan’ny fo ihany no ahitan-javatra. Tsy mba hitan’ny maso ny tena zavatra.\r\n','',1,40,'Antananarivo',-18,47.53);
INSERT INTO prince_language2 VALUES ('alb-kos',1,'albanais du Kosovo','','','','',1,19,'Pristina',42.66,21.16);
INSERT INTO prince_language2 VALUES ('wln-liege',2,'wallon liégeois','Walloon (Liège)','','-On n\' kinohe bin qui çou qu\'on aprivwèzêye, dèrit li r\'nå. Lès-omes ni prindèt pus l\' tins dè rin k\'nohe. Il atchtèt tot, tot fêt, \'mon lès martchands. Mins come i-n-a nou martchand d\' camarådes, lès-omes n\'ont pus nou copleû. Si vos \'nnè volez onk, aprivwèzez-m\'.\r\n(...)\r\n- Adiè, dèrit li r\'nå. Vochal mi scrèt. Il èst fwért simpe : on n\' veût clér qu\'avou s\' coûr. Çou qui conte li pus\', on n\'èl pout vèy avou sès-oûy.','',1,50,'Liège',50.633,5.567);
INSERT INTO prince_language2 VALUES ('frp-bre',2,'francoprovençal bressan','','','On counya lamè le sh<u>eu</u>ze qu’on acoulache, di lou rena. Léj <u>ou</u>mou n’on pô mé lazi de rin couny<u>â</u>tre. L’ash<u>e</u>ton de sh<u>eu</u>ze dézhya féte vé lé marshè. Mé quemè é n’y a pô de marshè d’ami, léj <u>ou</u>mou n’on pô d’ami. Che te vu n’ami, acoul<u>a</u>cha-me!\r\nA reva, di lou rena. Vtya mon secré. I vra éja : on ne va byè qu’avoui lou quëur. Che que <u>con</u>tou lou mé ne che va pô avoui lé zu.','',1,50,'Bourg-en-Bresse',46.2,5.2);
INSERT INTO prince_language2 VALUES ('kea',0,'créole du Cap-Vert','Cape Verdean Creole','Kabuverdianu','-Só kel ki mansádu ki ta konxedu. Algen dja ka teni ténpu pas konxi náda. Ês ta kunpra kusa tudu fetu. Komu amigu ka ta bendedu gó, algen dja fika sen amigu. S-u kré ten amigu, mansâ-m !\r\n\r\nRapoza fla-l:\r\n-Diós bá ku bo. Gósi gó N ta kontâ-u kel segrédu. É kusa sinplis: só ku korason k-u ta odja dretu. Kel ki ta konta, odju ka ta odja.\r\n','',1,78,'Praia',14.916,-23.5);
INSERT INTO prince_language2 VALUES ('run',0,'kirundi','Kirundi','','Ya mbwebwe iti :  ibintu bisa umuntu amenya neza, ni ivyo yemeye kwitungira. Abantu nta kanya bakironka ko kugira ico bamenya. Bagura ibintu bisanzwe bikozwe vyanzwe n’abadandaza. Ariko rero ko ata  badandaza b’ abagenzi babaho, abantu nta bagenzi bagifise. Niwaba  ushaka umugenzi,nunyitungire! \r\n\r\nYa mbwebwe iti turabonanye.Ng’aka akabanga kanje. Gaciriye hafi cane: umutima musa ni wo ufasha  kubona neza . Ibihambaye ntibishobora kuboneshwa amaso.','',1,29,'Bujumbura',-3.35,29.34);
INSERT INTO prince_language2 VALUES ('bod',0,'tibetain','Tibetan','peugué','','',1,75,'Lhassa',29.65,91.11);

--
-- Table structure for table `prince_sound`
--

CREATE TABLE prince_sound (
  filename varchar(255) NOT NULL default '',
  `date` date NOT NULL default '0000-00-00',
  speaker varchar(255) NOT NULL default '',
  language varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  private varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_sound`
--

INSERT INTO prince_sound VALUES ('vs.rum.mp3','2006-05-19','vs','ron','','');
INSERT INTO prince_sound VALUES ('jpg.fra.mp3','2006-05-19','jpg','fra','','');
INSERT INTO prince_sound VALUES ('gk.rus.mp3','2006-05-19','gk','rus','','');
INSERT INTO prince_sound VALUES ('am.gre.mp3','2006-05-19','am','ell','','');
INSERT INTO prince_sound VALUES ('al.spa.mp3','2006-05-22','al','spa-crc','costa rica','');
INSERT INTO prince_sound VALUES ('al.epo.mp3','2006-05-22','al','epo','','');
INSERT INTO prince_sound VALUES ('aa.fra.mp3','2006-05-22','aa','fra','','');
INSERT INTO prince_sound VALUES ('cc.fra.mp3','2006-05-22','cc','fra','','');
INSERT INTO prince_sound VALUES ('hna.nor.mp3','2006-05-22','hna','nor','','');
INSERT INTO prince_sound VALUES ('ys.gsw-app.mp3','2006-05-22','ys','gsw-app','','');
INSERT INTO prince_sound VALUES ('ng.fra.mp3','2006-05-22','ng','fra','','');
INSERT INTO prince_sound VALUES ('ta.scc.mp3','2006-05-30','ta','srp','','');
INSERT INTO prince_sound VALUES ('vst.scc.mp3','2006-05-30','vst','srp','','');
INSERT INTO prince_sound VALUES ('lb.ita-tic.mp3','2006-05-30','lb','lmo-tic','','');
INSERT INTO prince_sound VALUES ('lb.ita.mp3','2006-05-30','lb','ita','','');
INSERT INTO prince_sound VALUES ('gs.rum.mp3','2006-05-30','gs','ron','','');
INSERT INTO prince_sound VALUES ('ln.slv.mp3','2006-05-30','ln','slv','','');
INSERT INTO prince_sound VALUES ('ec.hun.mp3','2006-05-31','ec','hun','','');
INSERT INTO prince_sound VALUES ('ta2.scc.mp3','2006-05-30','ta','srp','','');
INSERT INTO prince_sound VALUES ('it.jpn.mp3','2006-06-01','it','jpn','','');
INSERT INTO prince_sound VALUES ('mg.wol.mp3','2006-06-02','mg','wol','','');
INSERT INTO prince_sound VALUES ('dl.alb.mp3','2006-06-07','dl','sqi','','');
INSERT INTO prince_sound VALUES ('mp.rum.mp3','2006-06-07','mp','ron','','');
INSERT INTO prince_sound VALUES ('ru.rus.mp3','2006-06-08','ru','rus','','');
INSERT INTO prince_sound VALUES ('us.heb.mp3','2006-06-08','us','heb','','');
INSERT INTO prince_sound VALUES ('mn.wol.mp3','2006-06-08','mn','wol','','');
INSERT INTO prince_sound VALUES ('su.gsw-sol.mp3','2006-06-20','su','gsw-sol','','');
INSERT INTO prince_sound VALUES ('ne.deu.mp3','2006-06-20','ne','deu','','');
INSERT INTO prince_sound VALUES ('mc.gre.mp3','2006-06-21','mc','ell','','');
INSERT INTO prince_sound VALUES ('cl.fra.mp3','2006-06-21','cl','fra','','');
INSERT INTO prince_sound VALUES ('alm.spa.mp3','2006-07-03','alm','spa','','');
INSERT INTO prince_sound VALUES ('mt.dar.mp3','2006-07-03','mt','prs','','');
INSERT INTO prince_sound VALUES ('ec.fra.mp3','2006-10-28','ec','fra','','');
INSERT INTO prince_sound VALUES ('ech.fra.mp3','2006-10-28','ech','fra','','');
INSERT INTO prince_sound VALUES ('at.fra.mp3','2006-10-28','at','fra-qbc','québec','');
INSERT INTO prince_sound VALUES ('ej.fra.mp3','2006-11-06','ej','fra-qbc','québec','');
INSERT INTO prince_sound VALUES ('cs.roh.mp3','2006-11-01','cs','roh-srs','','');
INSERT INTO prince_sound VALUES ('nr.rus.mp3','2006-10-16','nr','rus','','');
INSERT INTO prince_sound VALUES ('ov.pol.mp3','2006-11-08','ov','pol','','');
INSERT INTO prince_sound VALUES ('ov.rus.mp3','2006-11-08','ov','rus','','');
INSERT INTO prince_sound VALUES ('gb.eng.mp3','2006-11-14','gb','eng','','');
INSERT INTO prince_sound VALUES ('gb.enm.mp3','2006-11-14','gb','enm','','');
INSERT INTO prince_sound VALUES ('gb.ang.mp3','2006-11-14','gb','ang','','');
INSERT INTO prince_sound VALUES ('xx.roh-val.mp3','2006-11-15','xx','roh-val','','');
INSERT INTO prince_sound VALUES ('xx.roh-srm.mp3','2006-11-29','xf','roh-srm','','');
INSERT INTO prince_sound VALUES ('te.fra.mp3','2006-11-28','te','fra','','');
INSERT INTO prince_sound VALUES ('te.spa.mp3','2006-11-28','te','spa','','');
INSERT INTO prince_sound VALUES ('xx.roh-gri.mp3','2006-11-29','xx','roh','','');
INSERT INTO prince_sound VALUES ('xx.bam.mp3','2006-12-01','xx','bam','','');
INSERT INTO prince_sound VALUES ('xx.nor-levanger.mp3','2006-12-14','xf','nor','','');
INSERT INTO prince_sound VALUES ('xx.nor-nordhordaland','2006-12-14','xf','nor','','');
INSERT INTO prince_sound VALUES ('xx.nor-vadso.mp3','2006-12-14','xx','nor','','');
INSERT INTO prince_sound VALUES ('xx3.tgl.mp3','2006-12-20','xx3','tgl','','');
INSERT INTO prince_sound VALUES ('xx2.bos.mp3','2006-12-20','xx2','bos','','');
INSERT INTO prince_sound VALUES ('xx2.deu.mp3','2006-12-20','xx2','deu','','');
INSERT INTO prince_sound VALUES ('xx2.scc.mp3','2006-12-20','xx2','srp','','');
INSERT INTO prince_sound VALUES ('h.vie.mp3','2007-01-18','h','vie','','');
INSERT INTO prince_sound VALUES ('f.vie.mp3','2007-01-18','f','vie','','');
INSERT INTO prince_sound VALUES ('f.vie.2.mp3','2007-01-18','f','vie','','');
INSERT INTO prince_sound VALUES ('amu.rus.mp3','2007-01-24','amu','rus','','');
INSERT INTO prince_sound VALUES ('amu.mon.mp3','2007-01-24','amu','mon','','');
INSERT INTO prince_sound VALUES ('kcs.hun.mp3','2007-01-24','kcs','hun','','');
INSERT INTO prince_sound VALUES ('lao.1.mp3','2009-04-30','female','lao','','');
INSERT INTO prince_sound VALUES ('sdt.eng.mp3','2007-01-24','sdt','eng','','');
INSERT INTO prince_sound VALUES ('sdt.jam.mp3','2007-01-24','sdt','jam','','');
INSERT INTO prince_sound VALUES ('pmi.ita.mp3','2007-01-26','pmi','ita','','');
INSERT INTO prince_sound VALUES ('dm.hin.mp3','2007-02-14','dm','hin','','');
INSERT INTO prince_sound VALUES ('ka.hin.mp3','2007-02-18','ka','hin','','');
INSERT INTO prince_sound VALUES ('xx.kot.mp3','2007-02-21','xx','avk','','');
INSERT INTO prince_sound VALUES ('ma.wln.mp3','2007-02-21','ma','wln-namur','','');
INSERT INTO prince_sound VALUES ('lm.swa.mp3','2007-02-27','lm','swa','','');
INSERT INTO prince_sound VALUES ('cv.bul.mp3','2007-03-12','cv','bul','','');
INSERT INTO prince_sound VALUES ('54.jpn.mp3','2007-03-16','54','jpn','','');
INSERT INTO prince_sound VALUES ('55.scn.mp3','2007-03-16','55','scn','','');
INSERT INTO prince_sound VALUES ('55.ita.mp3','2007-03-16','55','ita','','');
INSERT INTO prince_sound VALUES ('57.kir.mp3','2007-03-16','57','kir','','');
INSERT INTO prince_sound VALUES ('58.rus.mp3','2007-03-16','58','rus','','');
INSERT INTO prince_sound VALUES ('58.ukr.mp3','2007-03-16','58','ukr','','');
INSERT INTO prince_sound VALUES ('59.rus.mp3','2007-03-16','59','rus','','');
INSERT INTO prince_sound VALUES ('59.ukr.mp3','2007-03-16','59','ukr','','');
INSERT INTO prince_sound VALUES ('60.pol.mp3','2007-03-16','60','pol','','');
INSERT INTO prince_sound VALUES ('56.bra.mp3','2007-03-16','56','por-bra','nordestino','');
INSERT INTO prince_sound VALUES ('61.chi.mp3','2007-03-15','61','cmn','','');
INSERT INTO prince_sound VALUES ('63.chi.mp3','2007-03-23','63','cmn','','');
INSERT INTO prince_sound VALUES ('62.tur.mp3','2007-03-23','62','tur','','');
INSERT INTO prince_sound VALUES ('64.alb.mp3','2007-03-23','64','sqi','','');
INSERT INTO prince_sound VALUES ('65.spa.mp3','2007-03-28','65','spa-arg','argentine','laura, étudiant de isa');
INSERT INTO prince_sound VALUES ('66.bul.mp3','2007-04-04','66','bul','','');
INSERT INTO prince_sound VALUES ('67.uzb.mp3','2007-05-02','67','uzb','','');
INSERT INTO prince_sound VALUES ('68.scr.mp3','2007-05-02','68','scr','','');
INSERT INTO prince_sound VALUES ('69.deu.mp3','2007-05-02','68','deu','','');
INSERT INTO prince_sound VALUES ('69.deu.sax.mp3','2007-05-02','68','deu','','');
INSERT INTO prince_sound VALUES ('68.swe.mp3','2007-09-27','68','swe','','');
INSERT INTO prince_sound VALUES ('69.swe.mp3','2007-09-27','69','swe','','');
INSERT INTO prince_sound VALUES ('kaisa.est.mp3','2008-10-31','kaisa','est','','');
INSERT INTO prince_sound VALUES ('ines.vls.mp3','2008-10-31','ines','vls','','');
INSERT INTO prince_sound VALUES ('juri.gsw-zur.mp3','2008-10-31','juri','gsw-zur','','');
INSERT INTO prince_sound VALUES ('ines.dut-bel.mp3','2008-10-31','ines','dut','','');
INSERT INTO prince_sound VALUES ('enchao.wuu-shangai.mp3','2008-10-31','enchao','wuu-shg','','');
INSERT INTO prince_sound VALUES ('zeinab.urd.mp3','2008-10-31','zeinab','urd','','');
INSERT INTO prince_sound VALUES ('kab.mp3','2009-06-26','1','kab','','');
INSERT INTO prince_sound VALUES ('kab2.mp3','2009-06-26','1','kab','','');
INSERT INTO prince_sound VALUES ('nan1-f.mp3','2009-09-17','female','nan','','');
INSERT INTO prince_sound VALUES ('nan2-f.mp3','2009-09-17','female','nan','','');
INSERT INTO prince_sound VALUES ('por.f1.mp3','2009-10-25','','por','','');
INSERT INTO prince_sound VALUES ('khm.1.mp3','2009-11-16','female','khm','','');
INSERT INTO prince_sound VALUES ('cat.1.mp3','2009-11-16','1','cat','','');
INSERT INTO prince_sound VALUES ('glg.1.mp3','2009-11-16','1','glg','','');
INSERT INTO prince_sound VALUES ('dut.f1.mp3','2009-12-09','female - lonneke','dut','','');
INSERT INTO prince_sound VALUES ('dut.m1.mp3','2009-12-09','1','dut','','');
INSERT INTO prince_sound VALUES ('spa.1.mp3','2009-12-15','1','spa','','ibnamzer@yahoo.es');
INSERT INTO prince_sound VALUES ('spa.1.and.mp3','2009-12-15','1','spa-and','andalou','ibnamzer@yahoo.es');
INSERT INTO prince_sound VALUES ('wol.mp3','2009-12-15','1','wol','','from antoine,  M A Coly');
INSERT INTO prince_sound VALUES ('vie.4.mp3','2009-12-15','','vie','','recorded by AAuchlin, TRAN_Phung_Kim');
INSERT INTO prince_sound VALUES ('esp.and.2.mp3','2009-12-17','1','spa-and','andalou','rafael mesa jimenez from isa');
INSERT INTO prince_sound VALUES ('eus.1.mp3','2009-12-17','','eus','espagnol','ane tolosa from isa');
INSERT INTO prince_sound VALUES ('aze.1.mp3','2009-12-17','','aze','','leila_ahmadova from isa');
INSERT INTO prince_sound VALUES ('heb.2.f.mp3','2010-01-11','female','heb','','vered silber');
INSERT INTO prince_sound VALUES ('por-bra-car.mp3','2010-01-12','male','por-bra','carioca','antonio.prates@forship.com.br, ami de vered silber');
INSERT INTO prince_sound VALUES ('roh-put.mp3','2010-01-25','1','roh-put','','from clau soler 2010 01 25');
INSERT INTO prince_sound VALUES ('roh-sut.mp3','2010-01-25','1','roh-sut','','from clau soler 2010 01 25');
INSERT INTO prince_sound VALUES ('isl.1.mp3','2010-01-28','2','isl','','cjorg');
INSERT INTO prince_sound VALUES ('arm.1.mp3','2010-03-11','2','hye','oriental','');
INSERT INTO prince_sound VALUES ('arm.2.mp3','2010-03-11','2','hye','oriental','');
INSERT INTO prince_sound VALUES ('ara.1.mp3','2010-03-11','1','ara','alger','');
INSERT INTO prince_sound VALUES ('ara.2.mp3','2010-03-11','1','ara','alger','');
INSERT INTO prince_sound VALUES ('arm.occ.1.mp3','2010-03-11','1','hye','occidental','');
INSERT INTO prince_sound VALUES ('arm.occ.2.mp3','2010-03-11','2','hye','occidental','');
INSERT INTO prince_sound VALUES ('deu.wuppertal.2.mp3','2010-03-11','2','deu','Wuppertal','');
INSERT INTO prince_sound VALUES ('nbf.1.mp3','2010-03-24','2','nbf','','from isa');
INSERT INTO prince_sound VALUES ('per.1.mp3','2010-03-30','1','per','','from isa');
INSERT INTO prince_sound VALUES ('bzd.mp3','2010-10-23','1','bzd','','');
INSERT INTO prince_sound VALUES ('jam-lim.mp3','2010-10-23','2','jam-lim','','');
INSERT INTO prince_sound VALUES ('picard-ath.mp3','2011-02-15','1','pcd-ath','','R.Huvelle remath@skynet.be');
INSERT INTO prince_sound VALUES ('slo.m.1.mp3','2011-03-20','1','slk','','');
INSERT INTO prince_sound VALUES ('slo.m.2.mp3','2011-03-20','1','slk','','');
INSERT INTO prince_sound VALUES ('slo.f.1.mp3','2011-03-20','2','slk','','');
INSERT INTO prince_sound VALUES ('slo.f.2.mp3','2011-03-20','2','slk','','');
INSERT INTO prince_sound VALUES ('ron-as.mp3','2012-02-16','h','ron','','arald sale');
INSERT INTO prince_sound VALUES ('spa-and.mp3','2012-02-16','f','spa-and','','from alexia hoffman');
INSERT INTO prince_sound VALUES ('kor.mp3','2012-03-19','2','kor','','Kwi-hee Bin');
INSERT INTO prince_sound VALUES ('cze.ag.mp3','2012-03-20','2','cze','','alena GOETZOVA');
INSERT INTO prince_sound VALUES ('catalan.eef.mp3','2012-05-16','2','cat','','from eva esteve ferrer');
INSERT INTO prince_sound VALUES ('gal.fer.mp3','2012-05-29','1','glg','','from eva esteve ferrer');
INSERT INTO prince_sound VALUES ('cat.lid.mp3','2012-05-29','2','cat','','from eva esteve ferrer');
INSERT INTO prince_sound VALUES ('alb.eri.mp3','2012-06-04','1','sqi','','from ulza ferizi');
INSERT INTO prince_sound VALUES ('alb.alban.mp3','2012-06-04','1','alb-kos','','from ulza ferizi');
INSERT INTO prince_sound VALUES ('alb.moza.mp3','2012-06-04','2','sqi','','from ulza ferizi');
INSERT INTO prince_sound VALUES ('alb.bes.mp3','2012-06-04','1','alb-kos','','from ulza ferizi');
INSERT INTO prince_sound VALUES ('frp-bressan.mp3','2013-07-30','1','frp-bre','','');
INSERT INTO prince_sound VALUES ('fr.pd.h','2014-01-13','1','fra','','pierredelosme@wanadoo.fr');
INSERT INTO prince_sound VALUES ('bod.1.mp3','2014-02-28','2','bod','','');
INSERT INTO prince_sound VALUES ('bod.2.mp3','2014-02-28','1','bod','','');
INSERT INTO prince_sound VALUES ('che.mp3','2015-05-01','1','che','','from isa');
INSERT INTO prince_sound VALUES ('cre-cas.mp3','2015-05-01','1','cre-cas','','from nicolas quint');
INSERT INTO prince_sound VALUES ('kea.mp3','2015-06-02','1','kea','','Aires Semedo, from Nicolas Quint');
INSERT INTO prince_sound VALUES ('cpf-gua.mp3','2016-05-31','1','cpf-gua','','from sandrine galtier sa.galtier@gmail.com');

--
-- Table structure for table `prince_sound2`
--

CREATE TABLE prince_sound2 (
  filename varchar(255) NOT NULL default '',
  `date` date NOT NULL default '0000-00-00',
  language varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_sound2`
--

INSERT INTO prince_sound2 VALUES ('vs.rum.mp3','2006-05-19','ron');
INSERT INTO prince_sound2 VALUES ('jpg.fra.mp3','2006-05-19','fra');
INSERT INTO prince_sound2 VALUES ('gk.rus.mp3','2006-05-19','rus');
INSERT INTO prince_sound2 VALUES ('am.gre.mp3','2006-05-19','ell');
INSERT INTO prince_sound2 VALUES ('al.spa.mp3','2006-05-22','spa-crc');
INSERT INTO prince_sound2 VALUES ('al.epo.mp3','2006-05-22','epo');
INSERT INTO prince_sound2 VALUES ('aa.fra.mp3','2006-05-22','fra');
INSERT INTO prince_sound2 VALUES ('cc.fra.mp3','2006-05-22','fra');
INSERT INTO prince_sound2 VALUES ('hna.nor.mp3','2006-05-22','nor');
INSERT INTO prince_sound2 VALUES ('ys.gsw-app.mp3','2006-05-22','gsw-app');
INSERT INTO prince_sound2 VALUES ('ng.fra.mp3','2006-05-22','fra');
INSERT INTO prince_sound2 VALUES ('ta.scc.mp3','2006-05-30','srp');
INSERT INTO prince_sound2 VALUES ('vst.scc.mp3','2006-05-30','srp');
INSERT INTO prince_sound2 VALUES ('lb.ita-tic.mp3','2006-05-30','lmo-tic');
INSERT INTO prince_sound2 VALUES ('lb.ita.mp3','2006-05-30','ita');
INSERT INTO prince_sound2 VALUES ('gs.rum.mp3','2006-05-30','ron');
INSERT INTO prince_sound2 VALUES ('ln.slv.mp3','2006-05-30','slv');
INSERT INTO prince_sound2 VALUES ('ec.hun.mp3','2006-05-31','hun');
INSERT INTO prince_sound2 VALUES ('ta2.scc.mp3','2006-05-30','srp');
INSERT INTO prince_sound2 VALUES ('it.jpn.mp3','2006-06-01','jpn');
INSERT INTO prince_sound2 VALUES ('mg.wol.mp3','2006-06-02','wol');
INSERT INTO prince_sound2 VALUES ('dl.alb.mp3','2006-06-07','sqi');
INSERT INTO prince_sound2 VALUES ('mp.rum.mp3','2006-06-07','ron');
INSERT INTO prince_sound2 VALUES ('ru.rus.mp3','2006-06-08','rus');
INSERT INTO prince_sound2 VALUES ('us.heb.mp3','2006-06-08','heb');
INSERT INTO prince_sound2 VALUES ('mn.wol.mp3','2006-06-08','wol');
INSERT INTO prince_sound2 VALUES ('su.gsw-sol.mp3','2006-06-20','gsw-sol');
INSERT INTO prince_sound2 VALUES ('ne.deu.mp3','2006-06-20','deu');
INSERT INTO prince_sound2 VALUES ('mc.gre.mp3','2006-06-21','ell');
INSERT INTO prince_sound2 VALUES ('cl.fra.mp3','2006-06-21','fra');
INSERT INTO prince_sound2 VALUES ('alm.spa.mp3','2006-07-03','spa');
INSERT INTO prince_sound2 VALUES ('mt.dar.mp3','2006-07-03','prs');
INSERT INTO prince_sound2 VALUES ('ec.fra.mp3','2006-10-28','fra');
INSERT INTO prince_sound2 VALUES ('ech.fra.mp3','2006-10-28','fra');
INSERT INTO prince_sound2 VALUES ('at.fra.mp3','2006-10-28','fra-qbc');
INSERT INTO prince_sound2 VALUES ('ej.fra.mp3','2006-11-06','fra-qbc');
INSERT INTO prince_sound2 VALUES ('cs.roh.mp3','2006-11-01','roh-srs');
INSERT INTO prince_sound2 VALUES ('nr.rus.mp3','2006-10-16','rus');
INSERT INTO prince_sound2 VALUES ('ov.pol.mp3','2006-11-08','pol');
INSERT INTO prince_sound2 VALUES ('ov.rus.mp3','2006-11-08','rus');
INSERT INTO prince_sound2 VALUES ('gb.eng.mp3','2006-11-14','eng');
INSERT INTO prince_sound2 VALUES ('gb.enm.mp3','2006-11-14','enm');
INSERT INTO prince_sound2 VALUES ('gb.ang.mp3','2006-11-14','ang');
INSERT INTO prince_sound2 VALUES ('xx.roh-val.mp3','2006-11-15','roh-val');
INSERT INTO prince_sound2 VALUES ('xx.roh-srm.mp3','2006-11-29','roh-srm');
INSERT INTO prince_sound2 VALUES ('te.fra.mp3','2006-11-28','fra');
INSERT INTO prince_sound2 VALUES ('te.spa.mp3','2006-11-28','spa');
INSERT INTO prince_sound2 VALUES ('xx.roh-gri.mp3','2006-11-29','roh');
INSERT INTO prince_sound2 VALUES ('xx.bam.mp3','2006-12-01','bam');
INSERT INTO prince_sound2 VALUES ('xx.nor-levanger.mp3','2006-12-14','nor');
INSERT INTO prince_sound2 VALUES ('xx.nor-nordhordaland','2006-12-14','nor');
INSERT INTO prince_sound2 VALUES ('xx.nor-vadso.mp3','2006-12-14','nor');
INSERT INTO prince_sound2 VALUES ('xx3.tgl.mp3','2006-12-20','tgl');
INSERT INTO prince_sound2 VALUES ('xx2.bos.mp3','2006-12-20','bos');
INSERT INTO prince_sound2 VALUES ('xx2.deu.mp3','2006-12-20','deu');
INSERT INTO prince_sound2 VALUES ('xx2.scc.mp3','2006-12-20','srp');
INSERT INTO prince_sound2 VALUES ('h.vie.mp3','2007-01-18','vie');
INSERT INTO prince_sound2 VALUES ('f.vie.mp3','2007-01-18','vie');
INSERT INTO prince_sound2 VALUES ('f.vie.2.mp3','2007-01-18','vie');
INSERT INTO prince_sound2 VALUES ('amu.rus.mp3','2007-01-24','rus');
INSERT INTO prince_sound2 VALUES ('amu.mon.mp3','2007-01-24','mon');
INSERT INTO prince_sound2 VALUES ('kcs.hun.mp3','2007-01-24','hun');
INSERT INTO prince_sound2 VALUES ('lao.1.mp3','2009-04-30','lao');
INSERT INTO prince_sound2 VALUES ('sdt.eng.mp3','2007-01-24','eng');
INSERT INTO prince_sound2 VALUES ('sdt.jam.mp3','2007-01-24','jam');
INSERT INTO prince_sound2 VALUES ('pmi.ita.mp3','2007-01-26','ita');
INSERT INTO prince_sound2 VALUES ('dm.hin.mp3','2007-02-14','hin');
INSERT INTO prince_sound2 VALUES ('ka.hin.mp3','2007-02-18','hin');
INSERT INTO prince_sound2 VALUES ('xx.kot.mp3','2007-02-21','avk');
INSERT INTO prince_sound2 VALUES ('ma.wln.mp3','2007-02-21','wln-namur');
INSERT INTO prince_sound2 VALUES ('lm.swa.mp3','2007-02-27','swa');
INSERT INTO prince_sound2 VALUES ('cv.bul.mp3','2007-03-12','bul');
INSERT INTO prince_sound2 VALUES ('54.jpn.mp3','2007-03-16','jpn');
INSERT INTO prince_sound2 VALUES ('55.scn.mp3','2007-03-16','scn');
INSERT INTO prince_sound2 VALUES ('55.ita.mp3','2007-03-16','ita');
INSERT INTO prince_sound2 VALUES ('57.kir.mp3','2007-03-16','kir');
INSERT INTO prince_sound2 VALUES ('58.rus.mp3','2007-03-16','rus');
INSERT INTO prince_sound2 VALUES ('58.ukr.mp3','2007-03-16','ukr');
INSERT INTO prince_sound2 VALUES ('59.rus.mp3','2007-03-16','rus');
INSERT INTO prince_sound2 VALUES ('59.ukr.mp3','2007-03-16','ukr');
INSERT INTO prince_sound2 VALUES ('60.pol.mp3','2007-03-16','pol');
INSERT INTO prince_sound2 VALUES ('56.bra.mp3','2007-03-16','por-bra');
INSERT INTO prince_sound2 VALUES ('61.chi.mp3','2007-03-15','cmn');
INSERT INTO prince_sound2 VALUES ('63.chi.mp3','2007-03-23','cmn');
INSERT INTO prince_sound2 VALUES ('62.tur.mp3','2007-03-23','tur');
INSERT INTO prince_sound2 VALUES ('64.alb.mp3','2007-03-23','sqi');
INSERT INTO prince_sound2 VALUES ('65.spa.mp3','2007-03-28','spa-arg');
INSERT INTO prince_sound2 VALUES ('66.bul.mp3','2007-04-04','bul');
INSERT INTO prince_sound2 VALUES ('67.uzb.mp3','2007-05-02','uzb');
INSERT INTO prince_sound2 VALUES ('68.scr.mp3','2007-05-02','scr');
INSERT INTO prince_sound2 VALUES ('69.deu.mp3','2007-05-02','deu');
INSERT INTO prince_sound2 VALUES ('69.deu.sax.mp3','2007-05-02','deu');
INSERT INTO prince_sound2 VALUES ('68.swe.mp3','2007-09-27','swe');
INSERT INTO prince_sound2 VALUES ('69.swe.mp3','2007-09-27','swe');
INSERT INTO prince_sound2 VALUES ('kaisa.est.mp3','2008-10-31','est');
INSERT INTO prince_sound2 VALUES ('ines.vls.mp3','2008-10-31','vls');
INSERT INTO prince_sound2 VALUES ('juri.gsw-zur.mp3','2008-10-31','gsw-zur');
INSERT INTO prince_sound2 VALUES ('ines.dut-bel.mp3','2008-10-31','dut');
INSERT INTO prince_sound2 VALUES ('enchao.wuu-shangai.mp3','2008-10-31','wuu-shg');
INSERT INTO prince_sound2 VALUES ('zeinab.urd.mp3','2008-10-31','urd');
INSERT INTO prince_sound2 VALUES ('kab.mp3','2009-06-26','kab');
INSERT INTO prince_sound2 VALUES ('kab2.mp3','2009-06-26','kab');
INSERT INTO prince_sound2 VALUES ('nan1-f.mp3','2009-09-17','nan');
INSERT INTO prince_sound2 VALUES ('nan2-f.mp3','2009-09-17','nan');
INSERT INTO prince_sound2 VALUES ('por.f1.mp3','2009-10-25','por');
INSERT INTO prince_sound2 VALUES ('khm.1.mp3','2009-11-16','khm');
INSERT INTO prince_sound2 VALUES ('cat.1.mp3','2009-11-16','cat');
INSERT INTO prince_sound2 VALUES ('glg.1.mp3','2009-11-16','glg');
INSERT INTO prince_sound2 VALUES ('dut.f1.mp3','2009-12-09','dut');
INSERT INTO prince_sound2 VALUES ('dut.m1.mp3','2009-12-09','dut');
INSERT INTO prince_sound2 VALUES ('spa.1.mp3','2009-12-15','spa');
INSERT INTO prince_sound2 VALUES ('spa.1.and.mp3','2009-12-15','spa-and');
INSERT INTO prince_sound2 VALUES ('wol.mp3','2009-12-15','wol');
INSERT INTO prince_sound2 VALUES ('vie.4.mp3','2009-12-15','vie');
INSERT INTO prince_sound2 VALUES ('esp.and.2.mp3','2009-12-17','spa-and');
INSERT INTO prince_sound2 VALUES ('eus.1.mp3','2009-12-17','eus');
INSERT INTO prince_sound2 VALUES ('aze.1.mp3','2009-12-17','aze');
INSERT INTO prince_sound2 VALUES ('heb.2.f.mp3','2010-01-11','heb');
INSERT INTO prince_sound2 VALUES ('por-bra-car.mp3','2010-01-12','por-bra');
INSERT INTO prince_sound2 VALUES ('roh-put.mp3','2010-01-25','roh-put');
INSERT INTO prince_sound2 VALUES ('roh-sut.mp3','2010-01-25','roh-sut');
INSERT INTO prince_sound2 VALUES ('isl.1.mp3','2010-01-28','isl');
INSERT INTO prince_sound2 VALUES ('arm.1.mp3','2010-03-11','hye');
INSERT INTO prince_sound2 VALUES ('arm.2.mp3','2010-03-11','hye');
INSERT INTO prince_sound2 VALUES ('ara.1.mp3','2010-03-11','ara');
INSERT INTO prince_sound2 VALUES ('ara.2.mp3','2010-03-11','ara');
INSERT INTO prince_sound2 VALUES ('arm.occ.1.mp3','2010-03-11','hye');
INSERT INTO prince_sound2 VALUES ('arm.occ.2.mp3','2010-03-11','hye');
INSERT INTO prince_sound2 VALUES ('deu.wuppertal.2.mp3','2010-03-11','deu');
INSERT INTO prince_sound2 VALUES ('nbf.1.mp3','2010-03-24','nbf');
INSERT INTO prince_sound2 VALUES ('per.1.mp3','2010-03-30','per');
INSERT INTO prince_sound2 VALUES ('bzd.mp3','2010-10-23','bzd');
INSERT INTO prince_sound2 VALUES ('jam-lim.mp3','2010-10-23','jam-lim');
INSERT INTO prince_sound2 VALUES ('picard-ath.mp3','2011-02-15','pcd-ath');
INSERT INTO prince_sound2 VALUES ('slo.m.1.mp3','2011-03-20','slk');
INSERT INTO prince_sound2 VALUES ('slo.m.2.mp3','2011-03-20','slk');
INSERT INTO prince_sound2 VALUES ('slo.f.1.mp3','2011-03-20','slk');
INSERT INTO prince_sound2 VALUES ('slo.f.2.mp3','2011-03-20','slk');
INSERT INTO prince_sound2 VALUES ('ron-as.mp3','2012-02-16','ron');
INSERT INTO prince_sound2 VALUES ('spa-and.mp3','2012-02-16','spa-and');
INSERT INTO prince_sound2 VALUES ('kor.mp3','2012-03-19','kor');
INSERT INTO prince_sound2 VALUES ('cze.ag.mp3','2012-03-20','cze');
INSERT INTO prince_sound2 VALUES ('catalan.eef.mp3','2012-05-16','cat');
INSERT INTO prince_sound2 VALUES ('gal.fer.mp3','2012-05-29','glg');
INSERT INTO prince_sound2 VALUES ('cat.lid.mp3','2012-05-29','cat');
INSERT INTO prince_sound2 VALUES ('alb.eri.mp3','2012-06-04','sqi');
INSERT INTO prince_sound2 VALUES ('alb.alban.mp3','2012-06-04','alb-kos');
INSERT INTO prince_sound2 VALUES ('alb.moza.mp3','2012-06-04','sqi');
INSERT INTO prince_sound2 VALUES ('alb.bes.mp3','2012-06-04','alb-kos');
INSERT INTO prince_sound2 VALUES ('frp-bressan.mp3','2013-07-30','frp-bre');
INSERT INTO prince_sound2 VALUES ('fr.pd.h','2014-01-13','fra');
INSERT INTO prince_sound2 VALUES ('bod.1.mp3','2014-02-28','bod');
INSERT INTO prince_sound2 VALUES ('bod.2.mp3','2014-02-28','bod');

--
-- Table structure for table `prince_speaker`
--

CREATE TABLE prince_speaker (
  n mediumint(9) NOT NULL auto_increment,
  id varchar(255) NOT NULL default '',
  gender enum('male','female') NOT NULL default 'male',
  age tinyint(30) NOT NULL default '0',
  L1 varchar(255) NOT NULL default '',
  L1_comments varchar(255) NOT NULL default '',
  L2 varchar(255) NOT NULL default '',
  L2_comments varchar(255) NOT NULL default '',
  L3 varchar(255) NOT NULL default '',
  L3_comments varchar(255) NOT NULL default '',
  born varchar(255) NOT NULL default '',
  live varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  PRIMARY KEY  (n)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_speaker`
--

INSERT INTO prince_speaker VALUES (1,'jpg','male',35,'fr','native','en','1school, 1yrs at Edinburgh, 2yrs in NJ','de','school only','Paris, France','Geneva, Switzerland','0-36 fr -  21+33+34 en');
INSERT INTO prince_speaker VALUES (2,'vs','female',30,'ro','native','fr','school','it','6 last yrs','Romania','Geneva, Switzerland','0-24 ro 24-30 fr(+it)');
INSERT INTO prince_speaker VALUES (3,'am','female',0,'ru','','tatar','','','fr','','Geneva, Switzerland','');
INSERT INTO prince_speaker VALUES (4,'am','female',0,'gr','','fr','','','','Greece','Geneva,Switzerland','');
INSERT INTO prince_speaker VALUES (5,'aa','male',0,'français','','','','','','','','antoine auchlin');
INSERT INTO prince_speaker VALUES (6,'al','male',0,'espagnol','','','','','','','','antonio');
INSERT INTO prince_speaker VALUES (7,'cc','female',36,'fr','','de','','en','','Paris, France','Genève, Switzerland','céline courtin');
INSERT INTO prince_speaker VALUES (8,'hna','female',0,'nor','','','','','','','','Hélène Nordgard-Andreassen');
INSERT INTO prince_speaker VALUES (9,'ys','male',0,'','','','','','','','','yves scherrer');
INSERT INTO prince_speaker VALUES (10,'vst','male',0,'','','','','','','','','Veran Stanojevic (Belgrade)');
INSERT INTO prince_speaker VALUES (11,'ta','female',0,'','','','','','','','','tijana Asic (Belgrade)');
INSERT INTO prince_speaker VALUES (12,'gs','female',0,'','','','','','','','','gabriela soare');
INSERT INTO prince_speaker VALUES (13,'ln','male',0,'','','','','','','','','nerima');
INSERT INTO prince_speaker VALUES (14,'lb','female',0,'','','','','','','','','');
INSERT INTO prince_speaker VALUES (15,'ng','female',0,'','','','','','','','','nalou');
INSERT INTO prince_speaker VALUES (16,'ec','female',0,'','','','','','','','','eva capitao');
INSERT INTO prince_speaker VALUES (17,'it','female',0,'jp','','','','','','','','izumi tahara');
INSERT INTO prince_speaker VALUES (18,'mg','male',0,'','','','','','','','','ms gom @gmail.com');
INSERT INTO prince_speaker VALUES (19,'dl','female',0,'alb','','','','','','','','Lekaj	Dorentina kossovo ?');
INSERT INTO prince_speaker VALUES (20,'mp','female',0,'ro','','','','','','','','mikhaela popa');
INSERT INTO prince_speaker VALUES (21,'mn','male',0,'','','','','','','','','mar ndiaye');
INSERT INTO prince_speaker VALUES (22,'us','male',0,'','','','','','','','','ur shlonsky');
INSERT INTO prince_speaker VALUES (23,'ru','female',0,'','','','','','','','','stagiaire russe de paris');
INSERT INTO prince_speaker VALUES (24,'cl','male',0,'fr','','','','','','','','christopher laenzlinger');
INSERT INTO prince_speaker VALUES (25,'mc','female',0,'el','','','','','','','','maria campagnolo');
INSERT INTO prince_speaker VALUES (26,'su','female',0,'gsw-sol','','','','','','','','Simone Uebelhart');
INSERT INTO prince_speaker VALUES (27,'ne','female',0,'deu','','','','','','','','natalia egger');
INSERT INTO prince_speaker VALUES (28,'alm','male',0,'es','','','','','','','','');
INSERT INTO prince_speaker VALUES (29,'mt','male',0,'dar','','','','','','','','');
INSERT INTO prince_speaker VALUES (30,'ec','female',25,'fr','','','','','','','','emilie courtin');
INSERT INTO prince_speaker VALUES (31,'ech','female',25,'','','','','','','','','elodie chra');
INSERT INTO prince_speaker VALUES (32,'at','male',40,'','','','','','','','','alain theriaut');
INSERT INTO prince_speaker VALUES (33,'ej','male',0,'','','','','','','','','eric joanis');
INSERT INTO prince_speaker VALUES (34,'cs','male',0,'','','','','','','','','clau soler');
INSERT INTO prince_speaker VALUES (35,'nr','female',0,'','','','','','','','','nina rojina');
INSERT INTO prince_speaker VALUES (36,'ov','female',0,'','','','','','','','','olga vassiltchouk');
INSERT INTO prince_speaker VALUES (37,'gb','female',0,'','','','','','','','','guillemette bolens');
INSERT INTO prince_speaker VALUES (38,'xx','male',0,'','','','','','','','','');
INSERT INTO prince_speaker VALUES (39,'te','male',35,'','','','','','','','','thierry etchegoyhen');
INSERT INTO prince_speaker VALUES (40,'xf','female',0,'','','','','','','','','');
INSERT INTO prince_speaker VALUES (41,'xx3','male',20,'tgl','','','','','','','','');
INSERT INTO prince_speaker VALUES (42,'xx2','female',20,'bos','','scc','','deu','','','','');
INSERT INTO prince_speaker VALUES (43,'h','male',0,'','','','','','','','','');
INSERT INTO prince_speaker VALUES (44,'f','female',0,'','','','','','','','','');
INSERT INTO prince_speaker VALUES (45,'kcs','female',0,'hun','','','','','','','','Kitti Cseffan');
INSERT INTO prince_speaker VALUES (46,'sdt','female',0,'','','','','','','','','Stephanie Durlemman-Tame');
INSERT INTO prince_speaker VALUES (47,'amu','female',0,'','','','','','','','','Amgalan Munkhdorj');
INSERT INTO prince_speaker VALUES (48,'pmi','female',0,'','','','','','','','','paola minen');
INSERT INTO prince_speaker VALUES (49,'dm','male',0,'hin','','','','','','','','deepak');
INSERT INTO prince_speaker VALUES (50,'ka','female',0,'hin','','','','','','','','Kiran Asthana  deepak.mathur@mageos.com');
INSERT INTO prince_speaker VALUES (51,'ma','male',0,'wln','','','','','','','','maisse arsoyue on babel');
INSERT INTO prince_speaker VALUES (52,'lm','female',0,'swa','','','','','','','','Lilian Magonya');
INSERT INTO prince_speaker VALUES (53,'cv','female',0,'bulgare','','francais','','','','','','Voukovska Christine');
INSERT INTO prince_speaker VALUES (54,'','female',0,'japonais','','','','','','','','Kaoru Banno');
INSERT INTO prince_speaker VALUES (55,'','female',0,'scn','','ita','','','','','','Rosalia Graziano');
INSERT INTO prince_speaker VALUES (56,'','female',0,'por-bre','','','','','','','','Perla Sousa da Silva');
INSERT INTO prince_speaker VALUES (57,'','female',0,'kir','','','','','','','','Olga Katanaeva');
INSERT INTO prince_speaker VALUES (58,'','female',0,'rus','','ukr','','','','','','Lyubov Velykoivanenko');
INSERT INTO prince_speaker VALUES (59,'','female',0,'rus -ukr','','','','','','','','Olga Moldavanova');
INSERT INTO prince_speaker VALUES (60,'','female',0,'pol','','','','','','','','Wioletta Barszcz');
INSERT INTO prince_speaker VALUES (61,'','male',0,'chi','','','','','','','','jeff xin fan');
INSERT INTO prince_speaker VALUES (62,'','female',0,'tur','','','','','','','','gonca celik elcf');
INSERT INTO prince_speaker VALUES (63,'','female',0,'chi','','','','','','','','shan wang elcf');
INSERT INTO prince_speaker VALUES (64,'','female',0,'alb','','','','','','','','silva bozo elcf');
INSERT INTO prince_speaker VALUES (65,'','female',0,'spa','argentin','','','','','','','laura elcf');
INSERT INTO prince_speaker VALUES (66,'','male',0,'bul','','','','','','','','vercislav pepurov elcf');
INSERT INTO prince_speaker VALUES (67,'','female',0,'','','','','','','','','narghiza kuldashova  elcf');
INSERT INTO prince_speaker VALUES (68,'','female',0,'croate','','','','','','','','tea psrir');
INSERT INTO prince_speaker VALUES (69,'','female',0,'allemand','','','','','','','','romy lassota ppp06-07');
INSERT INTO prince_speaker VALUES (70,'68','female',0,'swe','','','','','','','','collegue de jonas lindh loc69');
INSERT INTO prince_speaker VALUES (71,'69','male',0,'swe','','','','','','','','jonas lindh');
INSERT INTO prince_speaker VALUES (72,'juri','male',0,'','','','','','','','','');

--
-- Table structure for table `prince_speaker_20070319`
--

CREATE TABLE prince_speaker_20070319 (
  id varchar(255) NOT NULL default '',
  gender enum('male','female') NOT NULL default 'male',
  age tinyint(30) NOT NULL default '0',
  L1 varchar(255) NOT NULL default '',
  L1_comments varchar(255) NOT NULL default '',
  L2 varchar(255) NOT NULL default '',
  L2_comments varchar(255) NOT NULL default '',
  L3 varchar(255) NOT NULL default '',
  L3_comments varchar(255) NOT NULL default '',
  born varchar(255) NOT NULL default '',
  live varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prince_speaker_20070319`
--

INSERT INTO prince_speaker_20070319 VALUES ('jpg','male',35,'fr','native','en','school, 1yrs at Edinburgh, 2yrs in NJ','de','school only','Paris, France','Geneva, Switzerland','0-36 fr -  21+33+34 en');
INSERT INTO prince_speaker_20070319 VALUES ('vs','female',30,'ro','native','fr','school','it','6 last yrs','Romania','Geneva, Switzerland','0-24 ro 24-30 fr(+it)');
INSERT INTO prince_speaker_20070319 VALUES ('am','female',0,'ru','','tatar','','','fr','','Geneva, Switzerland','');
INSERT INTO prince_speaker_20070319 VALUES ('am','female',0,'gr','','fr','','','','Greece','Geneva,Switzerland','');
INSERT INTO prince_speaker_20070319 VALUES ('aa','male',0,'français','','','','','','','','antoine auchlin');
INSERT INTO prince_speaker_20070319 VALUES ('al','male',0,'espagnol','','','','','','','','antonio');
INSERT INTO prince_speaker_20070319 VALUES ('cc','female',36,'fr','','de','','en','','Paris, France','Genève, Switzerland','céline courtin');
INSERT INTO prince_speaker_20070319 VALUES ('hna','female',0,'nor','','','','','','','','Hélène Nordgard-Andreassen');
INSERT INTO prince_speaker_20070319 VALUES ('ys','male',0,'','','','','','','','','yves scherrer');
INSERT INTO prince_speaker_20070319 VALUES ('vst','male',0,'','','','','','','','','Veran Stanojevic (Belgrade)');
INSERT INTO prince_speaker_20070319 VALUES ('ta','female',0,'','','','','','','','','tijana Asic (Belgrade)');
INSERT INTO prince_speaker_20070319 VALUES ('gs','female',0,'','','','','','','','','gabriela soare');
INSERT INTO prince_speaker_20070319 VALUES ('ln','male',0,'','','','','','','','','nerima');
INSERT INTO prince_speaker_20070319 VALUES ('lb','female',0,'','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('ng','female',0,'','','','','','','','','nalou');
INSERT INTO prince_speaker_20070319 VALUES ('ec','female',0,'','','','','','','','','eva capitao');
INSERT INTO prince_speaker_20070319 VALUES ('it','female',0,'jp','','','','','','','','izumi tahara');
INSERT INTO prince_speaker_20070319 VALUES ('mg','male',0,'','','','','','','','','ms gom @gmail.com');
INSERT INTO prince_speaker_20070319 VALUES ('dl','female',0,'alb','','','','','','','','Lekaj	Dorentina');
INSERT INTO prince_speaker_20070319 VALUES ('mp','female',0,'ro','','','','','','','','mikhaela popa');
INSERT INTO prince_speaker_20070319 VALUES ('mn','male',0,'','','','','','','','','mar ndiaye');
INSERT INTO prince_speaker_20070319 VALUES ('us','male',0,'','','','','','','','','ur shlonsky');
INSERT INTO prince_speaker_20070319 VALUES ('ru','female',0,'','','','','','','','','stagiaire russe de paris');
INSERT INTO prince_speaker_20070319 VALUES ('cl','male',0,'fr','','','','','','','','christopher laenzlinger');
INSERT INTO prince_speaker_20070319 VALUES ('mc','female',0,'el','','','','','','','','maria campagnolo');
INSERT INTO prince_speaker_20070319 VALUES ('su','female',0,'gsw-sol','','','','','','','','Simone Uebelhart');
INSERT INTO prince_speaker_20070319 VALUES ('ne','female',0,'deu','','','','','','','','natalia egger');
INSERT INTO prince_speaker_20070319 VALUES ('alm','male',0,'es','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('mt','male',0,'dar','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('ec','female',25,'fr','','','','','','','','emilie courtin');
INSERT INTO prince_speaker_20070319 VALUES ('ech','female',25,'','','','','','','','','elodie chra');
INSERT INTO prince_speaker_20070319 VALUES ('at','male',40,'','','','','','','','','alain theriaut');
INSERT INTO prince_speaker_20070319 VALUES ('ej','male',0,'','','','','','','','','eric joanis');
INSERT INTO prince_speaker_20070319 VALUES ('cs','male',0,'','','','','','','','','clau soler');
INSERT INTO prince_speaker_20070319 VALUES ('nr','female',0,'','','','','','','','','nina rojina');
INSERT INTO prince_speaker_20070319 VALUES ('ov','female',0,'','','','','','','','','olga vassiltchouk');
INSERT INTO prince_speaker_20070319 VALUES ('gb','female',0,'','','','','','','','','guillemette bolens');
INSERT INTO prince_speaker_20070319 VALUES ('xx','male',0,'','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('te','male',35,'','','','','','','','','thierry etchegoyhen');
INSERT INTO prince_speaker_20070319 VALUES ('xf','female',0,'','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('xx3','male',20,'tgl','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('xx2','female',20,'bos','','scc','','deu','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('h','male',0,'','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('f','female',0,'','','','','','','','','');
INSERT INTO prince_speaker_20070319 VALUES ('kcs','female',0,'hun','','','','','','','','Kitti Cseffan');
INSERT INTO prince_speaker_20070319 VALUES ('sdt','female',0,'','','','','','','','','Stephanie Durlemman-Tame');
INSERT INTO prince_speaker_20070319 VALUES ('amu','female',0,'','','','','','','','','Amgalan Munkhdorj');
INSERT INTO prince_speaker_20070319 VALUES ('pmi','female',0,'','','','','','','','','paola minen');
INSERT INTO prince_speaker_20070319 VALUES ('dm','male',0,'hin','','','','','','','','deepak');
INSERT INTO prince_speaker_20070319 VALUES ('ka','female',0,'hin','','','','','','','','Kiran Asthana  deepak.mathur@mageos.com');
INSERT INTO prince_speaker_20070319 VALUES ('ma','male',0,'wln','','','','','','','','maisse arsoyue on babel');
INSERT INTO prince_speaker_20070319 VALUES ('lm','female',0,'swa','','','','','','','','Lilian Magonya');
INSERT INTO prince_speaker_20070319 VALUES ('cv','female',0,'bulgare','','francais','','','','','','Voukovska Christine');

--
-- Table structure for table `question`
--

CREATE TABLE question (
  id int(11) NOT NULL auto_increment,
  quizz_id int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `type` set('yn','mult','','') NOT NULL default 'mult',
  UNIQUE KEY id_2 (id),
  KEY id (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO question VALUES (1,1,'adieu','yn');
INSERT INTO question VALUES (2,1,'dîner','yn');
INSERT INTO question VALUES (3,1,'pain_au_chocolat','mult');
INSERT INTO question VALUES (4,1,'pain_au_raisin','mult');
INSERT INTO question VALUES (5,1,'papier_ménage','mult');
INSERT INTO question VALUES (6,1,'sac','mult');
INSERT INTO question VALUES (7,1,'savoir','yn');
INSERT INTO question VALUES (8,1,'serpillère','mult');
INSERT INTO question VALUES (9,3,'adieu','yn');
INSERT INTO question VALUES (10,3,'dîner','yn');
INSERT INTO question VALUES (11,3,'pain_au_chocolat','mult');
INSERT INTO question VALUES (12,3,'pain_au_raisin','mult');
INSERT INTO question VALUES (13,3,'papier_ménage','mult');
INSERT INTO question VALUES (14,3,'sac','mult');
INSERT INTO question VALUES (15,3,'savoir','yn');
INSERT INTO question VALUES (16,3,'serpillère','mult');

--
-- Table structure for table `quizz`
--

CREATE TABLE quizz (
  id int(11) NOT NULL auto_increment,
  name text NOT NULL,
  active tinyint(1) NOT NULL default '0',
  KEY id (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quizz`
--

INSERT INTO quizz VALUES (1,'euro1reduced',1);
INSERT INTO quizz VALUES (2,'euro1reduced',1);
INSERT INTO quizz VALUES (3,'euro1reduced2',1);

--
-- Table structure for table `variant`
--

CREATE TABLE variant (
  id int(11) NOT NULL auto_increment,
  `text` text NOT NULL,
  question_id int(11) NOT NULL default '0',
  KEY id (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variant`
--

INSERT INTO variant VALUES (1,'non',1);
INSERT INTO variant VALUES (2,'oui',1);
INSERT INTO variant VALUES (3,'non',2);
INSERT INTO variant VALUES (4,'oui',2);
INSERT INTO variant VALUES (5,'choc_ine',3);
INSERT INTO variant VALUES (6,'couque',3);
INSERT INTO variant VALUES (7,'croissant',3);
INSERT INTO variant VALUES (8,'pain_c',3);
INSERT INTO variant VALUES (9,'pt_pain',3);
INSERT INTO variant VALUES (10,'pt_pain_c',3);
INSERT INTO variant VALUES (11,'alsac',4);
INSERT INTO variant VALUES (12,'cagouille',4);
INSERT INTO variant VALUES (13,'escargot',4);
INSERT INTO variant VALUES (14,'pain_rai',4);
INSERT INTO variant VALUES (15,'pain_rus',4);
INSERT INTO variant VALUES (16,'schnäcke',4);
INSERT INTO variant VALUES (17,'essuie_t',5);
INSERT INTO variant VALUES (18,'p_absorb',5);
INSERT INTO variant VALUES (19,'p_ménage',5);
INSERT INTO variant VALUES (20,'sopalin',5);
INSERT INTO variant VALUES (21,'cornet',6);
INSERT INTO variant VALUES (22,'poche',6);
INSERT INTO variant VALUES (23,'poche_p',6);
INSERT INTO variant VALUES (24,'pochon',6);
INSERT INTO variant VALUES (25,'sac',6);
INSERT INTO variant VALUES (26,'sac_p',6);
INSERT INTO variant VALUES (27,'sachet',6);
INSERT INTO variant VALUES (28,'sachet_n',6);
INSERT INTO variant VALUES (29,'non',7);
INSERT INTO variant VALUES (30,'oui',7);
INSERT INTO variant VALUES (31,'chiffon',8);
INSERT INTO variant VALUES (32,'cinse',8);
INSERT INTO variant VALUES (33,'lave_pont',8);
INSERT INTO variant VALUES (34,'loque',8);
INSERT INTO variant VALUES (35,'panosse',8);
INSERT INTO variant VALUES (36,'patte',8);
INSERT INTO variant VALUES (37,'pièce',8);
INSERT INTO variant VALUES (38,'serpill',8);
INSERT INTO variant VALUES (39,'toile',8);
INSERT INTO variant VALUES (40,'torchon',8);
INSERT INTO variant VALUES (41,'wassingue',8);
INSERT INTO variant VALUES (42,'non',9);
INSERT INTO variant VALUES (43,'oui',9);
INSERT INTO variant VALUES (44,'non',10);
INSERT INTO variant VALUES (45,'oui',10);
INSERT INTO variant VALUES (46,'choc_ine',11);
INSERT INTO variant VALUES (47,'couque',11);
INSERT INTO variant VALUES (48,'croissant',11);
INSERT INTO variant VALUES (49,'pain_c',11);
INSERT INTO variant VALUES (50,'pt_pain',11);
INSERT INTO variant VALUES (51,'pt_pain_c',11);
INSERT INTO variant VALUES (52,'alsac',12);
INSERT INTO variant VALUES (53,'cagouille',12);
INSERT INTO variant VALUES (54,'escargot',12);
INSERT INTO variant VALUES (55,'pain_rai',12);
INSERT INTO variant VALUES (56,'pain_rus',12);
INSERT INTO variant VALUES (57,'schnäcke',12);
INSERT INTO variant VALUES (58,'essuie_t',13);
INSERT INTO variant VALUES (59,'p_absorb',13);
INSERT INTO variant VALUES (60,'p_ménage',13);
INSERT INTO variant VALUES (61,'sopalin',13);
INSERT INTO variant VALUES (62,'cornet',14);
INSERT INTO variant VALUES (63,'poche',14);
INSERT INTO variant VALUES (64,'poche_p',14);
INSERT INTO variant VALUES (65,'pochon',14);
INSERT INTO variant VALUES (66,'sac',14);
INSERT INTO variant VALUES (67,'sac_p',14);
INSERT INTO variant VALUES (68,'sachet',14);
INSERT INTO variant VALUES (69,'sachet_n',14);
INSERT INTO variant VALUES (70,'non',15);
INSERT INTO variant VALUES (71,'oui',15);
INSERT INTO variant VALUES (72,'chiffon',16);
INSERT INTO variant VALUES (73,'cinse',16);
INSERT INTO variant VALUES (74,'lave_pont',16);
INSERT INTO variant VALUES (75,'loque',16);
INSERT INTO variant VALUES (76,'panosse',16);
INSERT INTO variant VALUES (77,'patte',16);
INSERT INTO variant VALUES (78,'pièce',16);
INSERT INTO variant VALUES (79,'serpill',16);
INSERT INTO variant VALUES (80,'toile',16);
INSERT INTO variant VALUES (81,'torchon',16);
INSERT INTO variant VALUES (82,'wassingue',16);

