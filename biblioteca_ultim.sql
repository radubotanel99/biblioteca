-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: iun. 20, 2022 la 12:33 PM
-- Versiune server: 10.4.20-MariaDB
-- Versiune PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `book`
--

CREATE TABLE `book` (
  `id_book` int(6) UNSIGNED NOT NULL,
  `titlu` text NOT NULL,
  `autor` text NOT NULL,
  `nr_carte` int(50) NOT NULL,
  `editura` text NOT NULL,
  `categorie` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `book`
--

INSERT INTO `book` (`id_book`, `titlu`, `autor`, `nr_carte`, `editura`, `categorie`) VALUES
(31, 'Ancora Speranței ', 'Romaine Stauffer ', 253, 'Christian Aid Ministries', 10),
(32, 'Pentru Un Mare Preț ', 'Kristina Roy', 711, 'Agape', 10),
(33, 'Marcio vreau să trăiesc', 'Damaris Kofmehl', 395, 'Little Lamb', 10),
(34, 'Maria ', 'Evelyn Hege', 263, 'Christian Aid Ministries', 10),
(35, 'William Carey', 'Robert Farelly ', 687, 'Agape', 10),
(36, 'Refugiul ', 'Corrie ten Boom cu John și Elizabeth Sherrill ', 698, 'Samuel', 10),
(37, 'Adu singur răscumpărarea', 'Verda J. Glick', 254, 'Christian Aid Ministries', 10),
(38, 'Adu singur răscumpărarea', 'Verda J. Glick', 368, 'Christian Aid Ministries', 10),
(39, 'Din popas în popas', 'Ioan Mihalaș', 1132, 'Cornel Print', 10),
(40, 'Mary Jones și Biblia ei ', 'Mark Hamby', 752, 'Little Lamb', 10),
(41, 'Calea pe care și-a ales-o', 'Mary Miller', 269, 'Christian Aid Ministries', 10),
(42, 'Scutul credinței', ' Gabi Gheorghiaș', 229, 'Living Truth Publishing', 10),
(43, 'Scutul credinței', 'Gabi Gheorghiaș', 570, 'Living Truth Publishing', 10),
(44, 'În Așteptarea Zorilor', 'Dorcas Hoover', 272, 'Christian light Publication', 10),
(45, 'În Așteptarea Zorilor', 'Dorcas Hoover', 595, 'Christian light Publication', 10),
(46, 'În Așteptarea Zorilor', 'Dorcas Hoover', 353, 'Christian light Publication', 10),
(47, 'Prețul cununii', 'Claudia Esh', 273, 'Christian Aid Publication', 10),
(48, 'Eoi Ai Credinței ', 'Gene Fedele', 437, 'Casa Cărții', 10),
(49, 'Istorisiri din Oglinda Martirilor', 'John S. Oyer și Robert S. Kreider ', 276, 'Christian Aid Mnistries', 10),
(50, 'Torturat Pentru Credință', 'Haralan Popov', 797, 'Agape', 10),
(51, 'Doroteea', 'Marjorie Buckingham ', 755, 'Agape', 10),
(52, 'Iertat de două ori', 'Harold Morris & Dianne Barker', 250, 'Noua Speranță', 10),
(53, 'Argatul', 'Kristina Roy', 1135, 'Agape', 10),
(54, 'În sfârșit acasă', 'Kristina Roy', 692, 'Agape', 10),
(55, 'Argatul', 'Kristina Roy', 688, 'Agape', 10),
(56, 'Cu Domnul de mână', 'Cecilia Moloce', 764, 'Fundația Poarta Speranței', 10),
(57, 'Rugăciunea Credinței', 'Johanna Lorch', 787, 'Agape', 10),
(58, 'Eliberată pe viață', 'Rita Nightingale', 770, 'Samuel', 10),
(59, 'Întâmplări din viața misionarilor', 'Mildred A. Martin', 256, 'Christian Aid Mnistries', 10),
(60, 'Râuri de apă vie', 'Fratele Yun', 467, 'Casa Cărții', 10),
(61, 'Strada pelerinului', 'Hesba Stretton', 1072, 'Făclia', 10),
(62, 'Felinarul lui Lewis', 'Pansy', 266, 'Christian Aid Mnistries', 10),
(63, '18...și nu e timp de pierdut', 'Margaret Johnson', 759, 'Agape', 10),
(64, 'Chinurile dragostei', 'Edih Witmer', 300, 'Christian Aid Mnistries', 10),
(65, 'Evadări palpitante în noapte', 'Albert Lee', 270, 'Christian Aid Mnistries', 10),
(66, 'Trei camarazi', 'Kristina Roy', 707, 'Agape', 10),
(67, 'Ereticii din Dumbravă', 'Kristina Roy', 708, 'Agape ', 10),
(68, 'În exil', 'Kristina Roy', 709, 'Agape', 10),
(69, 'Primii Creștini ', 'Richard Alderson', 1095, 'Făclia', 10),
(70, 'În vale', 'Lily A. Bear', 259, 'Christian Aid Mnistries', 10),
(71, 'Soția Toboșarului', 'Joseph Stoll', 255, 'Christian Aid Mnistries', 10),
(73, 'Scorpionul Roșu', 'Rami Kivisalo și Marko Joensuu', 538, 'Casa Cărții', 10),
(74, 'Prizonierul cu un picior de lemn', 'Joseph Stoll', 265, 'Christian Aid Mnistries', 10),
(75, 'Adevărata fericire', 'Kristina Roy', 689, 'Agape', 10),
(76, 'O săptămână în Corintul Antic', 'ben Witherington III', 469, 'Casa Cărții', 10),
(77, 'Iertat de două ori', 'Harold Morris', 382, 'Noua Speranță', 10),
(78, 'O ușă pururi deschisă', 'Reema Goode', 844, 'Casa Cărții', 10),
(79, 'La capătul drumului', 'Lily A. Bear', 260, 'Christian Aid Mnistries', 10),
(80, 'A doua soție', 'Kristina Roy', 754, 'Agape', 10),
(81, 'Când a început viața', 'Kristina Roy', 710, 'Agape', 10),
(82, 'Trădare', 'Stan Telchin', 757, 'Samuel', 10),
(83, 'Zvi un destin extraordinar', 'Elwood McQuaid', 740, 'Agape', 10),
(84, 'Am îndrăznit să-I spun: TATĂ', 'Bilquis Sheikh & Richard Schneider', 738, 'Samuel', 10),
(85, 'Din închisoare la amvon', 'Dyck\\Buhne', 237, 'Agape', 10),
(86, 'Oameni Curajoși ', 'Christine Leonard', 238, 'Biblia pentru toți', 10),
(87, 'Willie Îl cunoaște pe Hristos', 'N.I. Saloff-Astakhoff', 290, 'Christian Aid Mnistries', 10),
(88, 'Apostolul credinței Smith Wigg', 'Stanley Howard Frodsham', 111, 'Societatea Biblică din România', 10),
(89, 'Iudita ', 'N.I. Saloff-Astaktoff', 242, 'Christian Aid Mnistries', 10),
(90, 'Cetatea Blestemată', 'John ', 243, 'Cartea universală', 10),
(91, 'La \"Cuibul de Bufniță\"', 'W. Schippers', 1134, 'Agape', 10),
(92, 'La \"Cuibul de Bufniță\"', 'W. Schippers', 1133, 'Agape', 10),
(93, 'Funiile dragostei', 'Ligia Seman', 729, 'Casa Cărții', 10),
(94, 'Trandafirul', 'Amy Carmichael', 697, 'Lampadul de Aur', 10),
(95, 'Ucenicia lui Enoh Roden', 'Hesba Stretton', 956, 'Făclia', 10),
(96, 'Și lămpile lor se sting...', 'J.F. Lovgren ', 762, 'Agape', 10),
(97, 'Ușa deschisă', 'Eileen heming', 690, 'Agape', 10),
(98, 'Aventura credinței', 'Dr. și d-na Howard Taylor', 751, 'Agape', 10),
(99, 'Rahela', 'Agnes Scott-Kent', 726, 'Agape', 10),
(100, 'Suzana- Ei vor fi ai mei', 'Morjorie Buckingham', 725, 'Agape', 10),
(101, 'Cavalerii Crucii II', 'Henryk Sienkiewicz', 244, 'Anaith', 10),
(102, 'Perechea potrivită', 'Lynn Austin ', 486, 'Casa Cărții', 1),
(103, 'Răsărit de Soare', 'karen Kingbury', 643, 'Kerigma', 1),
(104, 'Călătoria contra curentului', 'Myrna Grant', 741, 'Samuel', 10),
(105, 'Apus ', 'Karen Kingsbury', 645, 'Kerigma', 1),
(106, 'Ben-Hur', 'Lewis Wallace', 539, 'Casa Cărții', 1),
(107, 'În sfârșit acasă', 'Randy Alcorn', 743, 'Hypogrammos', 1),
(108, 'Răscumpărată prin iubire', 'Francine Rivers', 669, 'Hypogrammos', 1),
(109, 'Ultimul Devorator de păcate', 'Francine Rivers', 668, 'Hypogrammos', 1),
(110, 'În vâltoarea apelor ', 'Lynn Austin ', 545, 'Casa Cărții', 1),
(111, 'Martorul', 'Josh McDowell', 626, 'Scriptum', 1),
(112, 'Cămașa lui Cristos', 'Lloyd C. Douglas', 897, 'Casa Cărții', 1),
(113, 'Cămașa lui Cristos', 'Lloyd C. Douglas', 540, 'Casa Cărții', 1),
(114, 'Quo Vadis', 'Henryk Sienkiewicz', 536, 'Casa Cărții', 1),
(115, 'Tărâmuri ascunse', 'Lynn Austin', 528, 'Casa Cărții', 1),
(116, 'Stâlpul de foc', 'Lynn Austin', 630, 'Casa Cărții', 1),
(117, 'O lumină pe cărarea mea', 'Lynn Austin', 529, 'Casa Cărții', 1),
(118, 'Secretul mulțumirii I', 'Harriet Lummis Smith', 730, 'Stephanus', 1),
(119, 'Secretul mulțumirii II', 'Harriet Lummis Smith', 731, 'Stephanus', 1),
(120, 'Secretul Mulțumirii III', 'Harriet Lummis Smith', 732, 'Stephanus', 1),
(121, 'Tragedie și triumf', 'Ligia Seman', 728, 'Casa Carții', 1),
(122, 'Handicapul conștiinței', 'Ligia Seman', 705, 'Casa Cărții', 1),
(123, 'Doroteea', 'Marjorie Buckingham', 1136, 'Agape', 1),
(124, 'O perlă în nisip ', 'Tessa Afshar', 534, 'Casa Cărții', 1),
(125, 'Cetetea Blestemată', 'John R. Carling', 540, 'Casa Cărții', 1),
(126, 'Căminul mult visat', 'Lynn Austin', 546, 'Casa Cărții', 1),
(127, 'Promisiunea unei noi primăveri', 'Janette Oke ', 509, 'Casa Cărții', 1),
(128, 'Iarna nu ține o veșnicie', 'Janette Oke', 508, 'Casa Cărții', 1),
(129, 'Vânturi tomnatice', 'Janette Oke', 507, 'Casa Cărții', 1),
(130, 'A fost odată într-o vară', 'Janette Oke', 506, 'Casa Cărții', 1),
(131, 'O voință de neclintit', 'Janette Oke', 512, 'Casa Cărții', 1),
(132, 'Curată ca aurul ', 'Janette Oke ', 513, 'Casa Cărții', 1),
(133, 'Căutările inimiii', 'Janette Oke', 511, 'Casa Cărții', 1),
(134, 'Anii Frământărilor', 'Janette Oke', 510, 'Casa Cărții', 1),
(135, 'Învăluiți de iubire', 'Janette Oke ', 514, 'Casa Cărții', 1),
(136, 'Promisiunea neclintită a iubirii', 'Janette Oke', 515, 'Casa Cărții', 1),
(137, 'Drumul lung al iubirii', 'Janette Oke', 516, 'Casa Cărții', 1),
(138, 'Bucuria nepieritoare a iubirii', 'Janette Oke', 517, 'Casa Cărții', 1),
(139, 'Moștenirea veșnică a iubirii', 'Janette Oke', 518, 'Casa Cărții', 1),
(140, 'Visul împlinit al iubirii', 'Janette Oke', 519, 'Casa Cărții', 1),
(141, 'Zborul îndepărtat al iubirii', 'Janette Oke', 520, 'Casa Cărții', 1),
(142, 'Căminul regăsit al iubirii', 'Janette Oke', 521, 'Casa Cărții', 1),
(143, 'Soția Centurionului', 'Davis Bunn & janette Oke', 522, 'Casa Cărții', 1),
(144, 'Flacăra ascunsă', 'Davis Bunn & Janette Oke', 523, 'Casa Cărții', 1),
(145, 'Drumul spre Damasc', 'Davis Bunn & Janette Oke', 524, 'Casa Cărții', 1),
(146, 'Zei și regi', 'Lynn Austin', 460, 'Casa Cărții', 1),
(147, 'Cântecul izbăvirii', 'Lynn Austin', 496, 'Casa Cărții', 1),
(148, 'Tăria brațului Său', 'Lynn Austin ', 497, 'Casa Cărții', 1),
(149, 'Credința părinților mei', 'Lynn Austin', 498, 'Casa Cărții', 1),
(150, 'Printre zei', 'Lynn Austin ', 499, 'Casa Cărții', 1),
(151, 'Venirea primăverii ', 'Janette Oke', 501, 'Casa Cărții', 1),
(152, 'La ivirea zorilor', 'Janette Oke', 502, 'Casa Cărții', 1),
(153, 'Când reînvie speranța', 'Janette Oke', 503, 'Casa Cărții', 1),
(154, 'Dincolo de apropiata furtună', 'Janette Oke', 504, 'Casa Cărții', 1),
(155, 'În așteptarea zilei de mâine', 'Janette Oke', 505, 'Casa Cărții', 1),
(156, 'Limanul mult dorit', 'Janette Oke & Davis Bunn', 494, 'Casa Cărții', 1),
(157, 'Un far călăuzitor', 'Janette Oke & Davis Bunn', 495, 'Casa Cărții', 1),
(158, 'Moștenirea', 'Janette Oke & Davis Bunn', 491, 'Casa Cărții', 1),
(159, 'Binecuvântatul țărâm', 'Janette Oke & David Bunn', 492, 'Casa Cărții', 1),
(160, 'Locul de întâlnire', 'Janette Oke & Davis Bunn', 493, 'Casa Cărții', 1),
(161, 'Fiicele Evei', 'Lynn Austin', 531, 'Casa Cărții', 1),
(162, 'Mândrie și prejudecată', 'Jane Austen ', 544, 'Casa Cărții', 1),
(163, 'Cunună în ceruri ', 'Kacy Barnett-Gramckow ', 527, 'Casa Cărții', 1),
(164, 'Cel ce ține cerurile pe umeri', 'Kacy barnett-Gramckow', 526, 'Casa Cărții', 1),
(165, 'Cerurile de odinioară', 'Kacy Bernett-Gramckow', 525, 'Casa Cărții', 1),
(166, 'Învierea lui Isus', 'B. A. Ramsbottom', 951, 'Făclia', 4),
(167, 'Oamenii care s-au întâlnit cu Isus', 'B. A. Ramsbottom', 948, 'Făclia', 4),
(168, 'Învierea lui Isus ', 'B. A. Ramsbottom', 947, 'Făclia', 4),
(169, 'Biblia mea cu ilustrații', 'V. Gilbert Beers ', 1142, 'The Bible League', 4),
(170, 'Biblia ilustrată pentru copii', 'Sorin Berchez', 829, 'The Bible League', 4),
(171, 'Biblia clasică pentru copii', 'Rhona Davies', 556, 'Casa Cărții', 4),
(172, 'Raze de soare în furtună', 'Rhoda Bontrager', 318, 'Christian Aid Ministries', 4),
(173, 'Carmi din Iedeea ', 'Naomi Rosenberry', 317, 'Christian Aid Ministries', 4),
(174, 'Carmi din Iudeea ', 'Naomi Rosenberry', 387, 'Christian Aid Ministries', 4),
(175, 'Dumnezeu ține în control furtuna', 'Carey Bauman', 315, 'Christian Aid Ministries', 4),
(176, 'Dumnezeu a creat malul mării', 'Sharon M. See', 316, 'Christian Aid Ministries', 4),
(177, 'Aventura lui Iustin în junglă', 'mary Curier', 314, 'Christian Aid Ministries', 4),
(178, 'Să învățăm de la moș Tichilici', 'Ely Henteș', 302, 'Metanoia', 4),
(179, 'Mario un băiat din Belize', 'Elizabeth Wagler', 308, 'Christian Aid Ministries', 4),
(180, 'Mario și prietenii lui', 'Elizabeth Wagler', 307, 'Christian Aid Ministries', 4),
(181, 'Castelul de nisip', 'Kari Vinje', 322, 'Agape', 4),
(182, 'Un frate special pentru Filip', 'Rhoda Bontrager', 304, 'Christian Aid Ministries', 4),
(183, '101 Întâmplări preferate din Biblie', 'Ura Miller', 299, 'Christian Aid Ministries', 4),
(184, 'Copiii bețivanului', 'Mrs. M. J. P. S.', 298, 'Christian Aid Ministries', 4),
(185, 'Nordul îndepărtat', 'Lola Kamalova ', 309, 'Christian Aid Ministries', 4),
(186, 'Să învățăm de la Bobiță', 'Ely Henteș', 303, 'Metanoia', 4),
(187, 'Un strop de ploaie-minunea lui Dumnezeu', 'Rebecca Newswanger', 312, 'Christian Aid Ministries', 4),
(188, 'Bucuria cu nume rău ', 'Lidia Moga ', 1073, 'Făclia', 4),
(189, 'Cavalerii crucii I ', 'Henryk Sienkiewicz', 246, 'Anaith', 10),
(190, 'Chemarea Norodului', 'Virgina Crider', 252, 'Cry of the Northland', 10),
(191, 'Săptămâna patimilor', 'Jeni Roșian ', 703, 'Samuel', 4),
(192, 'Din pildele Domnului Isus', 'Lucia Popa', 778, 'Samuel', 4),
(193, 'Țiganul Alb', 'Annette Lyster', 646, 'Little Lamb', 10),
(194, 'Vară', 'Karen Kingsbury', 644, 'Keringma', 1),
(195, 'Genoveva', 'Margorie Buckingham', 825, 'GBV', 1),
(196, 'Crucea și pumnalul', 'David Wilkerson', 134, 'Vida', 10),
(197, 'Crucea și pumnalul', 'David Wilkerson', 135, 'Vida', 10),
(198, 'Crucea și pumnalul', 'David Wilkerson', 367, 'Vida', 10),
(199, 'Argatul', 'Kristina Roy', 390, 'Christliche Literatur-Verbreitung', 10),
(200, 'De tine este vorba', 'Friedhelm Konig', 706, 'GBV', 10),
(201, 'Dar, tati, de ce m-a durut?', 'Susan Schlabach', 301, 'Christian Aid Ministries', 4),
(202, 'Și a fost Isus copil', 'Jeni Roșian, Eva Scheau', 923, 'Samuel', 4),
(203, 'Cântarea îngerașilor', 'Jeni Roșian', 704, 'Samuel', 4),
(204, 'Fetița din parc', 'Victoria Ilie', 593, 'Agape', 4),
(205, 'Cântarea îngerașilor', 'Jeni Roșian', 777, 'Samuel', 4),
(206, 'Pisicuța, în fântână', 'Marla Martin', 292, 'Christian Aid Ministries', 4),
(207, 'Un stup de albinuțe harnice', 'Effie M. Williams', 294, 'Christian Aid Ministries', 4),
(208, 'Versete de la A la Z', 'Fivi Taban', 702, 'Samuel', 4),
(209, 'Câteva clipe sub steluța din fereastră', 'Elisabeth Mittelstadt', 742, 'Scriptum', 4),
(210, 'Vânturi din cohuni', 'Elisabeth Wagler', 257, 'Christian Aid Ministries', 4),
(211, 'Paula ', 'Eva Lecomte', 970, 'Făclia', 4),
(212, 'Povestea Sarei Whitcher', 'Elisabeth Yates', 311, 'Christian Aid Ministries', 4),
(213, 'Născut în grajd', 'Gerda von Kries', 423, 'Agape', 4),
(214, 'Născut în grajd', 'Gerda von Kries', 422, 'Agape', 4),
(215, 'Născut în grajd', 'Gerda von Kries', 424, 'Agape', 4),
(216, 'De Paști ', 'Fivi taban', 788, 'Samuel', 4),
(217, 'În Țara Soarelui', 'Kristina Roy', 411, 'Agape', 4),
(218, 'În Țara Soarelui ', 'Kristina Roy', 1141, 'Agape', 4),
(219, 'Elena, fetița oarbă', 'Gh. Spulber', 753, 'Agape', 4),
(220, 'Fără Dumnezeu în lume', 'Kristina Roy', 1139, 'Agape', 4),
(221, 'Fără Dumnezeu în lume', 'Kristina Roy', 1140, 'Agape', 4),
(222, 'Păstorașul Miguel', 'Edith Witmer ', 293, 'Christian Aid Ministries', 4),
(223, 'Primele impresii ale unui copil despre Dumnezeu', 'Ann Wells', 935, 'Făclia', 4),
(224, 'Prima rugăciune a Jessicăi & Mamei ei', 'Hesba Sretton', 971, 'Făclia', 4),
(225, 'Cântarea îngerașilor', 'Jeni Roșian ', 803, 'Samuel', 4),
(226, 'Goliatul Ucigaș', 'A.L.O.E.', 648, 'Little Lamb', 4),
(227, 'Prieteniii bunicii Ioana', 'Victoria Ilie', 724, 'Agape', 4),
(228, 'Și îngerii se pregătesc de Crăciun', 'Eugen Drăgoiu & Alina Birgean', 750, 'Agape', 4),
(229, 'Adevăruri mari pe înțelesul celor mici', 'Lidia Moga', 938, 'Făclia', 4),
(230, 'O bucată de asfalt', 'Lola Kamalova', 288, 'Christian Aid Ministries', 4),
(231, 'Lumina lui Robbie', 'S. Annie Frost', 289, 'Christian Aid Ministries', 4),
(232, 'Salvați din furtuna mării', 'O.F. Walton', 933, 'Făclia', 4),
(233, 'Micul olog Iosif', 'N.I. saloff-Astakhoff', 291, 'Christian Aid Ministries', 4),
(234, '101 întâmplări preferate din Biblie', 'Ura Miller', 733, 'TGS', 4),
(235, 'Secretul pietrei din deșert', 'Frank E. Peretti', 345, 'Life', 4),
(236, 'Cuvântul celor care nu cuvântă', 'Moise Șipa', 808, 'Micul Samaritean', 4),
(237, 'Iubește pe aproapele tău', 'Erich Maria Remaque', 247, 'Romhelion', 4),
(238, 'Viața lui Moise', 'Rut Overholtzer', 1125, 'Evanghelia Semănătorul ', 4),
(239, 'Felinarul lui Trică', 'Helene Sehauf ', 589, 'Lumina Lumii', 4),
(240, 'Misiunea unei fete', 'Hans Kphl', 418, 'GBV', 4),
(241, 'Aventuri în Amazonia ', 'Horace Banner', 554, 'Casa Cărții', 4),
(242, 'Aventuri în Himalaya', 'Penny Reeve', 562, 'Casa Cărții', 4),
(243, 'Aventuri în Cambodgia', 'Donna Vann', 553, 'Casa Cărții', 4),
(244, 'Oameni fericiți', 'Kristina Roy', 775, 'Lumina lumii', 4),
(245, 'Zece băieți care au schimbat lumea', 'Irene Howat', 558, 'Casa Cărții', 4),
(246, 'Fascinata aventură a dragostei', 'Dr. Ed Wheat', 163, 'Romanian Aid Fund', 5),
(247, 'Cum să crești o fiică creștină într-o lume a MTV-ului', 'Mary Ruth Murdoch', 1103, 'Făclia', 5),
(248, 'Tiparul divin pentru viața de familie', 'Ray Wenger', 371, 'Christian Aid Ministries', 5),
(249, 'Tiparul divin pentru viața de familie', 'Ray Wenger', 164, 'Christian Aid Ministries', 5),
(250, 'Familii rodnice', 'Howard Bean', 166, 'Christian Aid Ministries', 5),
(251, 'Familia - o perspectivă creștină', 'Jack O. Balswick & Judith K. Balswick', 489, 'Casa cărții', 5),
(252, 'Cuvinte pe care trebuie să le audă copiii', 'David Staal', 479, 'Casa Cărții', 5),
(253, 'În așteptarea fiului risipitor', 'H. Norman Wright', 158, 'Noua Speranță', 5),
(254, 'Cu mult mai bine, cu mult mai rău', 'Norma Fields', 1097, 'Făclia', 5),
(255, 'Eu, femeia', 'John și Stasi Eldredge', 785, 'AQUA FORTE', 5),
(256, 'Nu este bine ca omul să fie singur', 'Paul Negruț', 1099, 'Făclia', 5),
(257, 'Temelia familiei', 'Travis Plumlee', 1088, 'Făclia', 5),
(258, '\"Și voi, părinților\"', 'David G. Burkholder', 381, 'Christian Aid Ministries', 5),
(259, '\"Și voi, părinților\"', 'David G. Burkholder', 162, 'Christian Aid Ministries', 5),
(260, 'Armonia în familie', 'James Dobson', 372, 'Noua Speranță', 5),
(261, 'Geneza relației intime dintre bărbat și femeie', 'O. Palmer Robertson', 1022, 'Făclia', 5),
(262, 'Căminul credinței sau familia', 'Ion Socoteanu', 348, 'GBV', 5),
(263, 'Viața de familie ', 'Elisabeta și Iosif Țon', 375, 'Cartea Creștină', 5),
(264, 'Copilul îndărădnic', 'Dr. James Dobson', 150, 'Noua Speranță', 5),
(265, 'Plictisit de Dumnezeu', 'Sean Dunn', 195, 'Noua Speranță', 5),
(266, 'Cele zece porunci ale întâlnirilor', 'Ben Young & Dr. Samuel Adams', 174, 'Noua Speranță', 11),
(267, 'Trăirea creștină în familie', 'Jay E. Adams', 393, 'Cartea Creștină', 5),
(268, 'Căsătoria: împlinire sau frust', 'Dr. James Dobson', 154, 'Noua Speranță', 5),
(269, 'Înainte de a-ți rosti promisiunile pentru căsătorie', 'John Coblentz', 176, 'Christian Aid Ministries', 11),
(270, 'Influența sacră', 'Gary Thomas', 159, 'Noua Speranță', 5),
(271, 'Cele 10 porunci pentru părinți', 'Ed Young', 485, 'Casa Cărții', 5),
(272, 'Voia lui Dumnezeu în familie', 'Nelu Mureșan', 148, 'Societatea Biblică din România', 5),
(273, 'Cum să ne creștem copiii', 'Michael și Debi Pearl', 795, 'Agape', 5),
(274, 'Cele 10 porunci ale căsătoriei', 'Ed Young', 482, 'Casa Cărții', 5),
(275, 'Familia sub asediu', 'Constantin Ghioancă', 1023, 'Făclia', 5),
(276, 'Cum să fii fericit în căsnicie', 'Tim LaHaye', 749, 'Agape', 5),
(277, 'Lucrarea cu tinerii scopuri și temelie', 'Doug Fields', 196, 'Noua Speranță', 5),
(278, 'Tu, familia ta și internetul', 'David Clarck', 1080, 'Făclia', 5),
(279, 'Ce nume i-ai da copilului nenăscut?', 'Ioan Ciobotă', 665, 'Impact Media', 5),
(280, 'Părintele încrezător', 'Jim Burns', 152, 'Noua Speranță', 5),
(281, 'Lupta fiecărei femei', 'Shannon Ethridge', 161, 'Societatea Bilblică din România', 5),
(282, 'Lupta fiecărui bărbat', 'Stephen Arterburn, Fred Stoeker & Mike Yorkey', 160, 'Societatea Biblică din România', 5),
(283, 'Căsătorie sfântă', 'Gary Thomas', 798, 'Kerigma', 5),
(284, 'Când începe viața umană?', 'John R. Ling', 1087, 'Făclia', 5),
(285, 'Chemarea sacră de a fi părinte', 'Gary Thomas', 157, 'Noua Speranță', 5),
(286, 'Căsnicia pe care ți-ai dorit-o', 'Gary Champan', 153, 'Noua Speranță', 5),
(287, 'Conducerea aparține bărbaților', 'David Pawson', 146, 'Societatea Biblică din România', 5),
(288, 'Mânie-te, dar nu strica totul!', 'Lisa Bevere', 107, 'Societatea Biblică din România', 5),
(289, 'M-am căsătorit cu tine', 'Walter Trobisch', 360, 'Logos', 5),
(290, 'Căminul creștin ', 'R. K. Campbell', 379, 'GBV', 5),
(291, 'Căminul creștin', 'R. K. Campbell', 378, 'GBV', 5),
(292, 'Căminul creștin', 'R. K. Campbell', 377, 'GBV', 5),
(293, 'Cum să te pregătești pentru a fi ajutorul potrivit', 'Debi Pearl', 172, 'Societatea Biblică din România', 11),
(294, 'Cum să te rogi pentru copiii tăi', 'Towns & Early', 147, 'Societatea Biblică din România', 5),
(295, '12 minciuni pe care soții le spun soțiilor', 'Tim & Sheila Riter', 800, 'Discipolul', 5),
(296, 'Căminul credinței sau familia', 'Ion Socoteanu', 347, 'GBV', 5),
(297, 'Căminul credinței sau familia', 'Ion Socoteanu', 374, 'GBV', 5),
(298, 'Începe să trăiești', 'Lucian Cristescu', 1145, 'Viață și Sănătate', 5),
(299, 'Voia lui Dumnezeu în familie', 'Nelu Mureșan', 761, 'Societatea Biblică din România', 5),
(300, 'Niciun loc unde să plângi', 'Doris VanStone și Erwin W. Lutzer', 446, 'Casa Cărții', 11),
(301, 'Este dragostea îndeajuns?', 'Glenda Haynes', 1024, 'Făclia', 11),
(302, 'Creștin într-o lume A .Com-ului', 'Gene Edward Veith, Jr & Christopher L. Stamper', 937, 'Făclia', 11),
(303, 'Recâștiga-ți mărturia, povestea și credința', 'R. Lamar Vest & Steven J. Land', 271, 'Societatea Biblică din România', 11),
(304, 'Sexualitatea din perspectiva Bibliei', 'Kay Arthur', 389, 'Lugoj', 11),
(305, 'Sexualitatea din perspectiva Bibliei', 'Kay Arthur', 183, 'Lugoj', 11),
(306, 'Gata cu scuzele', 'Tony Evans', 447, 'casa Cărții', 11),
(307, 'Voia lui Dumnezeu pentru trupul meu', 'John Coblentz', 184, 'Christian Aid Ministries', 11),
(308, 'Pornografia și dependența de internet', 'Ioan Ciobotă', 627, 'WorldTeach', 11),
(309, 'Pornografia și dependența de internet', 'Ioan Ciobotă', 132, 'WorldTeach', 11),
(310, 'Ce are de făcut o fată?', 'Pat Queesenbury', 1085, 'Făclia', 11),
(311, 'Femeia care știe să aștepte', 'Debby Jones & Jackie Kendall', 1026, 'Emanuel', 11),
(312, 'Puterea unui adolescent pozitiv', 'Karol Ladd, Grace și Joy Ladd', 169, 'Noua Speranță', 11),
(313, 'Alegeri morale', 'Scott B. Rae', 1107, 'Făclia', 11),
(314, 'Dormind peste împrejurările vieții', 'Ligia Seman', 1143, 'Cetate', 11),
(315, 'Relațiile: satisfacție și dezamăgire', 'H. Norman Wright', 171, 'Noua Speranță', 11),
(316, 'Ce înseamnă să fii femeie', 'Elisabeth Elliot ', 694, 'Cartea Creștină', 11),
(317, 'Deci, te căsătorești', 'H. Norman Wright', 796, 'Noua Speranță', 11),
(318, 'Viața pe marginea prăpastiei', 'Dr. James Dobson', 182, 'Noua Speranță', 11),
(319, 'Celibatul', 'John Coblentz', 177, 'Christian Aid Ministries', 11),
(320, 'O poveste de dragoste', 'Tim Stafford', 799, 'Agape', 11),
(321, 'Poate fi dragostea păcat?', 'Wolfgang Buhne', 756, 'Agape', 11),
(322, 'Pregătirea pentru adolescență', 'James Dobson', 168, 'Noua Speranță', 11),
(323, 'Lupta fiecărui tânăr', 'Stephen Arterburn, Fred Stoeker cu Mike Yorkey', 628, 'Impact Media', 11),
(324, 'Cărarea singurătății', 'Elisabeth Elliot', 771, 'Scriptum', 11),
(325, 'Când visele se împlinesc', 'Eric & Leslie Ludy', 824, 'Kerigma', 11),
(326, 'Adevărata dragoste', 'Dr. Chris Richards & Dr. Liz Jones', 1025, 'Făclia', 11),
(327, 'Limite în curtare', 'Dr. Henry Cloud & Dr. John Townsend', 1104, 'Făclia', 11),
(328, 'Cele două fețe ale dragostei', 'Gary Smally, John Trent', 772, 'Noua Speranță', 11),
(329, 'Rebeluția', 'Alex & Brett Harris', 170, 'Noua Speranță', 11),
(330, 'Tinerii și sexualitatea', 'Luis Palau', 839, 'Agape', 11),
(331, 'Cum strigă un bărbat după ajutor', 'Jerry Smith', 1098, 'Făclia', 11),
(332, 'Căsătorie garantată pe viață', 'Nelu Mureșan ', 760, 'Societatea Biblică din România', 11),
(333, 'De știut înainte de căsătorie', 'Gary D. Chapman', 889, 'Casa Cărții', 11),
(334, 'Și a trăit fericită', 'Skeip McDonald', 181, 'Noua Speranță', 11),
(335, 'Un tânăr după inima lui Dumnezeu', 'Jim George', 907, 'Life', 11),
(336, 'Un gram de prevenire', 'Don Schmiere', 175, 'Noua Speranță', 11),
(337, 'Privind la mine însumi înainte de a iubi pe altcineva', 'John Coblentz', 178, 'Christian Aid Ministries', 11),
(338, 'Teme fierbinți ', 'Norbert Lieth', 1130, 'Strigătul de la Miezul Nopții', 11),
(339, 'Femeia plăcută lui Dumnezeu', 'Dorothy Kelley Patterson', 1027, 'Făclia', 11),
(340, 'Supraviețuind Adolescenței', 'Jim Burns', 297, 'Noua Speranță', 11),
(341, 'Cum să ajungi să spui NU', 'Erwin W. Lutzer', 448, 'Casa Cărții', 11),
(342, 'Scrisori către tineri', 'Henk L. Hejkoop', 587, 'GBV', 11),
(343, 'Scrisori către tineri', 'Henk L. Heijkoop', 714, 'G.B.V.', 11),
(344, 'Căsătorie, divorț și recăsătorie', 'John Coblentz', 143, 'Christian Aid Ministries', 11),
(345, 'Scrisori către tineri', 'H.L. Heijkoop', 616, 'G.B.V.', 11),
(346, 'Să te iubești pe tine însuți?', 'Wolfgang Buhne', 898, 'CLV', 11),
(347, 'Acum vorbim aceeași limbă', 'Gary Chapman', 149, 'Societatea Biblică din România', 11),
(348, 'Cele cinci limbaje ale iubirii', 'Gary Chapman', 363, 'Curtea veche', 11),
(349, 'Comunicare plus', 'Marita Littauer, Florence Littauer', 197, 'Societatea Biblică din România', 11),
(350, 'Adevărata dragoste așteaptă', 'Nelu Mureșan', 173, 'Societatea Biblică din România', 11),
(351, 'Lupta dragostei', 'J.B. Donovan', 736, 'Agape', 11),
(352, 'Încurajare pentru femei ', 'Viorel Iuga', 661, 'Ramira', 11),
(353, 'Frumusețe în loc de cenușă', 'John Coblentz', 361, 'Christian Light Publication', 11),
(354, 'Frumusețe în loc de cenușă', 'John Coblentz', 370, 'Christian Light Publication', 11),
(355, 'Frumusețe în loc de cenușă', 'John Coblentz', 151, 'Christian Light Publication', 11),
(356, 'Adevărul despre căsătoria între persoanele de același sex', 'Erwin W. Lutzer', 450, 'Casa Cărții', 11),
(357, 'Căutându-l pe Allah, L-am găsit pe Isus', 'nabeel Qureshi', 892, 'Casa Cărții', 12),
(358, 'Căutându-l pe Allah, L-am găsit pe Isus', 'Nabeel Qureshi', 890, 'Casa Cărții', 12),
(359, 'Viața și lucraera lui Johann Gerhard Oncken', 'John Hunt Cooke', 1071, 'Făclia', 12),
(360, 'Neînfricat', 'Josh McDowell cu Cristobal Krusen', 865, 'Scriptum', 12),
(361, 'Viața și corespondența lui Henry Martyn', 'John Sargent', 1060, 'Făclia', 12),
(362, 'Cetate tare este Dumnezeul nostru', 'Jim Cromarty', 936, 'Făclia', 12),
(363, 'Credința care duce la credință', 'Elizabeth Grunick', 980, 'Făclia', 12),
(364, 'Cornilescu', 'Emanuel Conțac', 871, 'Logos', 12),
(365, 'Schuțe din viața mea', 'Ellen G. White', 213, 'Păzitorul adevărului', 12),
(366, 'Călătorie pentru Domnul', 'Corrie Ten Boom', 1147, 'Casa Literaturii Creștine', 12),
(367, 'Călătorie pentru Domnul ', 'Corrie Ten Boom', 1153, 'Casa Literaturii Creștine', 12),
(368, 'Călătorie pentru Domnul', 'Corrie Ten Boom', 1156, 'Casa Literaturii Creștine', 12),
(369, 'Omul ceresc', 'Fratele Yun și Paul Hattaway', 428, 'Casa Cărții', 12),
(370, 'În fața potrivnicilor mei', 'Gracia Burnham și Dean Merrill', 851, 'Casa Cărții', 12),
(371, 'În fața potrivnicilor mei', 'Gracia Burnham și Dean Merrill', 896, 'Casa Cărții', 12),
(372, 'Captive în Iran ', 'Maryam Rostampuor, Marzieh Amirizadeh și John Perr', 888, 'Casa Cărții', 12),
(373, 'Captive în Iran', 'Maryam Rostampuor, Marzieh Amirizadeh și John Perr', 845, 'Casa Cărții', 12),
(374, 'Eram orb și acum văd', 'Vasile Tofan ', 365, 'Emanuel', 12),
(375, 'Eram orb și acum văd', 'Vasile Tofan', 758, 'Emanuel', 12),
(376, 'Crede în soția ta și încurajeaz-o', 'H. Norman Wright', 155, 'Noua Speranță', 5),
(377, 'Dicționarul Noului Testament', 'Daniel G. Reid ', 430, 'Casa Cărții', 2),
(378, 'Noua Enciclopedie a Bibilei', 'Mike Beaumont', 852, 'Casa Cărții', 2),
(379, 'Enciclopedie despre Isus', 'Lois Rock', 444, 'Casa Cărții', 2),
(380, 'Enciclopedia Bibliei', 'Peter Atknson', 442, 'Casa Cărții', 2),
(381, 'Ghid de artă creșitină', 'Michelle P. Brown ', 441, 'Caas Cărții', 2),
(382, 'Ghid de artă creștină ', 'Michelle P. Brown', 853, 'Casa Cărții', 2),
(383, 'Dicționarul Noului Testament', 'Daniel G. Reid', 854, 'Casa Cărții', 2),
(384, 'Dicționar de imagini și simboluri biblice', 'Leland Ryken, James C. Wilhoit & Tremper Longman I', 859, 'Casa Cărții', 2),
(385, 'Copilul Păcii', 'Don Richardson', 537, 'Casa Cărții', 10),
(386, 'Autobiografia lui George Muller', 'George Muller', 341, 'Perla Suferinței', 12),
(387, 'Lupta fiecărui băiat', 'Stephen Arterburn ', 179, 'Societatea biblică din România', 11),
(388, 'Manual biblic', 'Pat și David Alexander', 435, 'Casa Cărții', 2),
(389, 'Interpretarea Scripturii', 'Gerhard Pfandl ', 349, 'Viață și sănătate', 2),
(390, 'Dicționar enciclopedic de personaje biblice', 'Richard R. Losch', 858, 'Casa Cărții ', 2),
(391, 'Introducere în Biblie', 'Philip Johnston', 990, 'Făclia', 2),
(392, 'Arheologia Bibliei', 'James k. Hoffmeier', 855, 'Casa Cărții', 2),
(393, 'Introducere în teologie', 'J.C. Wenger', 26, 'Christian Aid Ministries', 2),
(394, 'Prelegeri de teologie Sistematcă', 'Henry Clarence Theissen ', 30, 'Societatea misionară română', 2),
(395, 'Contururi ale teologiei pauline', 'Tom Holland', 992, 'Făclia', 2),
(396, 'Doctrinele biblice', 'Ionel Truța', 655, 'Candela', 2),
(397, 'Doctrinele Bibliei', 'Daniel Kauffman', 25, 'Christian Aid Ministries', 2),
(398, 'Doctrine fundamentale ale credinței creștine', 'Roger Weil ', 1034, 'Făclia', 2),
(399, 'Doctrine fundamentale ale credinței creștine', 'Paul Mackrell', 996, 'Făclia', 2),
(400, 'Teme ale teologiei Vechiului Testament', 'William Dyrness', 864, 'Făclia', 2),
(401, 'Interpretarea Vechiului Testament', 'Tremper Longman III', 867, 'LOGOS', 2),
(402, 'Documentele care stau la baza Vechiului Testament', 'Walter Kaiser Jr.', 879, 'LOGOS', 2),
(403, 'Comentariu cultural-istoric al Vechiului Testament', 'John H. Walton, Victor H. Matthews & Mark W. Chava', 856, 'Casa Cărții ', 2),
(404, 'Teologie Sistematică', 'Wayne Grudem ', 1090, 'Făclia', 2),
(405, 'Comentariul lui Warren Wiersbe pe Noul Testament', 'Warren W. Wiersbe', 17, 'Societatea Biblică din România', 2),
(406, 'Teologia Noului Testament', 'Thomas R. Schreiner', 1035, 'Făclia', 2),
(407, 'Introducere în Noul Testament ', 'D.A. Carson & Douglas J. Moo', 1091, 'Faclia', 2),
(408, 'Vechiul Testament explicat și aplicat', 'Gareth Crossley', 1092, 'Făclia', 2),
(409, 'Exegeza Vechiului Testament', 'Douglas Stuart', 881, 'LOGOS', 2),
(410, 'Exegeza Noului Testament', 'Gardon Fee', 874, 'LOGOS', 2),
(411, 'Interpretarea Noului Testament', 'Craig L. Blomberg', 875, 'LOGOS', 2),
(412, 'Hermeneutică', 'Moises Silva & Walter C. Kaiser Jr. ', 868, 'LOGOS', 2),
(413, 'Spre teologia Vechiului Testament', 'Walter C. Kaiser Jr. ', 1043, 'Făclia', 2),
(414, 'Spre redescoperirea Vechiului Testament', 'Walter C. Kaiser Jr. ', 1042, 'Făclia', 2),
(415, 'Semnificația Miei de ani ', 'George Eldon Ladd, Herman A. Hoyt, lotraine Boette', 877, 'LOGOS', 2),
(416, 'Ce se întâmplă cu cei care n-au auzit', 'John Sanders, Gabriel Fackre & Ranald H. Nash', 876, 'LOGOS', 2),
(417, 'Evanghelizarea și suveranitate', 'James I. Packer', 863, 'LOGOS', 2),
(418, 'Doctrina întrupării', 'Alister McGrath', 872, 'LOGOS', 2),
(419, 'Doctrina justificării', 'Alister McGrath', 873, 'LOGOS', 2),
(420, 'Doctrina creștină', 'Alister McGrath', 882, 'LOGOS', 2),
(421, 'Mesajul Vechiului Testament', 'Mark Dever', 1094, 'Făclia', 2),
(422, 'Mesajul Noului Testament', 'Mark Dever', 1093, 'Făclia', 2),
(423, 'Comentariul biblic al credinciosului', 'William MacDonald', 22, 'Agape', 2),
(424, 'Dicționar de termeni teologici', 'Stanley J. Grenz, Davod Gueretzki & Cherith Fee No', 870, 'LOGOS', 2),
(425, 'Dicționar pentru studiul limbii grecești', 'Matthew S. DeMoss', 869, 'LOGOS', 2),
(426, '1, 2 Tesaloniceni', 'John Stott', 886, 'LOGOS', 2),
(427, 'Galateni', 'John Stott', 885, 'LOGOS', 8),
(428, 'Romani', 'Jean Calvin', 880, 'LOGOS', 8),
(429, 'Frumusețea sfințeniei', 'Philip H. Eveson', 1123, 'Făclia', 8),
(430, 'Deuteronomul', 'Peter C. Craigie', 884, 'LOGOS', 8),
(431, 'Taina lui Hristos în Apocalipsa', 'Ted Byler', 24, 'Christian Aid Ministries', 8),
(432, 'Cugetări asupra Evangheliei după Matei', 'John C. Ryle ', 964, 'Făclia', 8),
(433, 'Cugetări asupra Evangheliei după Marcu', 'John C. Ryle', 1045, 'Făclia', 8),
(434, 'Galateni și romani', 'Paul Pomerville', 350, 'E. B. E. România', 8),
(435, 'Daniel I', 'Dumitru S. Popa', 18, 'București', 8),
(436, 'Daniel II', 'Dumitru S. Popa', 19, 'București', 8),
(437, 'Romanin VIII', 'D. Martyn Lloyd-Jones', 1070, 'Făclia', 8),
(438, 'Romani VI', 'D. Martyn Lloyd-Jones', 1068, 'Făclia', 8),
(439, 'Romani V', 'D. Martyn Lloyd-Jones', 1077, 'Făclia', 8),
(440, 'Romani IV', 'D. Martyn Lloyd-Jones', 1067, 'Făclia', 8),
(441, 'Romani III', 'D. Martyn Lloyd-Jones', 1066, 'Făclia', 8),
(442, 'Romani II', 'D. Martyn Lloyd-Jones', 1076, 'Făclia', 8),
(443, 'Romani I', 'D. Martyn Lloyd-Jones', 1065, 'Făclia', 8),
(444, 'Creștinismul autentic I', 'D. Martyn Lloyd-Jones', 927, 'Făclia', 8),
(445, 'Creștinismul autentic II', 'D. Martyn Lloyd-Jones', 1075, 'Făclia', 8),
(446, 'Creștinismul autentic III', 'D. Martyn Lloyd-Jones', 1063, 'Făclia ', 8),
(447, 'Domnia lui Cristos în viața credinciosului', 'Bebe Ciaușu', 659, 'Societatea Biblică din România', 8),
(448, 'Tâlcuri la psalmi', 'Sfântul Vasile cel Mare', 52, 'Biserica Ortodoxă', 8),
(449, 'Învățături din Faptele Aopstol', 'David Cook', 1052, 'Făclia', 8),
(450, 'Tezaurul înțelepciunii biblice', 'Stephen Voorwinde', 1057, 'Făclia', 8),
(451, 'Cartea originilor - Geneza', 'Philip Eveson ', 1017, 'Făclia', 8),
(452, 'Comentariu asupra cărții Exodul', 'John D. Currid', 1015, 'Făclia', 8),
(453, 'Comentariu asupra cărții Exodul', 'John D. Corrid', 1016, 'Făclia', 8),
(454, 'Viața în Cristos', 'Martyn Lloyd-Jones', 1062, 'Făclia', 8),
(455, 'Estera ', 'Charles R. Swindoll', 62, 'Societatea Biblică din România', 8),
(456, 'Iov', 'Charles R. Swindoll', 66, 'Societatea Biblică din România', 8),
(457, 'Moise', 'Charles R. Swindoll', 64, 'Societatea Biblică din România', 8),
(458, 'Ilie', 'Charles R. Swindoll', 65, 'Societatea Biblică din România', 8),
(459, 'Iosif ', 'Charles R. Swindoll', 63, 'Societatea Biblică din România', 8),
(460, 'Isus ', 'Charles R. Swindoll', 61, 'Societatea Biblică din România', 8),
(461, 'Isus', 'Charles R. Swindoll', 60, 'Societatea Biblică din România', 8),
(462, 'Pavel', 'Charles R. Swindoll', 59, 'Societatea Biblică din România', 8),
(463, 'Pavel', 'Charles R. Swindoll', 58, 'Societatea Biblică din România', 8),
(464, 'Relatări fascinante din viața unor personaje uitate', 'Charles R. Swindoll', 57, 'Societatea Biblică din România', 8),
(465, 'Relatări fascinante din viața unor personaje uitate', 'Charles R. Swindoll', 56, 'Societatea Biblică din România', 8),
(466, 'Ghid pentru studiu biblic ', 'Dr. E. Donges & Otto Kunze', 277, 'G B V', 7),
(467, 'Ghid pentru studiul biblic', 'Dr. E. Donges & Otto Kunze', 280, 'G B V', 7),
(468, 'Ghid pentru studiul biblic', 'Dr. E. Donges & Otto Kunze', 279, 'G B V', 7),
(469, 'Ghid pentru studiul biblic', 'Dr. E. Donges & Otto Kunze', 278, 'G B V', 7),
(470, 'Predicarea cristocentică', 'Bryan Chapell', 1044, 'Făclia', 7),
(471, 'Unică între cărți', 'Peter Masters', 979, 'Făclia', 7),
(472, 'Chemare la slujire', 'Jonh Stott', 1100, 'Făclia', 7),
(473, 'Să înțelegem Biblia', 'John Stott', 408, 'Romanian Aid Fund', 7),
(474, 'Predicarea pendicostală', 'Ray H. Hughes', 44, 'Metanoia', 7),
(475, 'Idolii din prejma amvonului', 'Derek Tidball', 478, 'Casa Carții', 7),
(476, 'Strop de rouă divină', 'Lazăr Ometiță', 39, 'Societatea Biblică din România', 7),
(477, 'Pagina predicatorului', 'Hozan Vasile ', 715, 'Cuvânt de învățătură', 7),
(478, 'Simplitate in vorbire', 'David Bercot', 87, 'Christian Aid Ministries', 7),
(479, 'Cum se studiază Biblia', 'Ja,es Braga', 108, 'Life', 7),
(480, 'Pregătiți pentru a predica', 'Greg Scharf', 1051, 'Făclia', 7),
(481, 'Istoria gândirii creștine ', 'Jonathan Hill', 436, 'Casa Cărții', 6),
(482, 'Istoria bisericii', 'James North', 993, 'Făclia', 6),
(483, 'Ghid al istoriei crestinismului', 'Jonathan Hill', 438, 'Casa Cărții', 6),
(484, 'Ghid al istoriei ctrștinismului', 'Jonathan Hill', 857, 'Casa Cărții', 6),
(485, 'Atlas de istorie biblică', 'Paul Lawrence', 443, 'Casa Cărții', 6),
(486, 'Biserică sau adunare I', 'Adrien Ladrierre', 46, 'G B V ', 6),
(487, 'Biserică sau adunare II', 'Adrien Ladrierre', 47, 'G B V', 6),
(488, 'Biserică sau adunare III', 'Eduard Recordon și Philippe Tepernoux', 48, 'G B V', 6),
(489, 'Crâmpeie de istorie din propovăduirea Evangheliei', 'Ioan Bunaciu ', 1040, 'Făclia', 6),
(490, 'Istoria bisericilor baptiste din România', 'Ioan Bunaciu', 1033, 'Făclia', 6),
(491, 'Cine sunt puritanii? ', 'Erroll Hulse', 1058, 'Făclia', 6),
(492, 'Istoria anabaptiștilor din România', 'Alexa Popovici', 1006, 'Făclia', 6),
(493, 'Istoria baptiștilor calviniști', 'Robert W. Oliver', 1041, 'Făclia', 6),
(494, 'Istoria baptiștilor din România', 'Alexa Popovici', 991, 'Făclia', 6),
(495, 'O expunere asupra mărturisirii de credință baptiste', 'Samuel E. Waldron', 995, 'Făclia ', 6),
(496, 'Cine este Duhul Sfânt', 'Derek Prince', 117, 'Neemia', 3),
(497, 'Viața de rugăcuine', 'A. Dollman', 113, 'Melanoia', 3),
(498, 'Duhul Sfânt', 'H.L. Heijkoop', 615, 'G. B. V.', 3),
(499, 'Zi de zi în rugăciune', 'Ivan Steeds', 283, 'Sămânța de preț', 3),
(500, 'Puterea postului și rugăciunii', 'Ronnie Floyd', 101, 'Societatea Biblică din România', 3),
(501, 'Rugăciunea - experiența vieții', 'Arhimandritul Sofronie', 95, 'Deisis', 3),
(502, 'Principiile rugăciunii', 'David Pawson', 102, 'Societatea Biblică din România', 3),
(503, 'Despre Duhul Sfânt', 'Didim din Alexandria', 54, 'Sophia', 3),
(504, 'Rugăciunea lui Isus', 'Ghiță Mocan', 653, 'Societatea Biblică din România', 3),
(505, 'Parteneri în rugăciune', 'John Maxwell', 623, 'Life', 3),
(506, 'Prea ocupat pentru a nu mă ruga', 'bill Hybels', 472, 'Casa Cărții', 3),
(507, 'Cum să fii umplut cu Duhul Sfânt', 'A.W. Tozer', 637, 'Perla Suferinței', 3),
(508, 'Cum să fii umplut cu Duhul Sfânt', 'A. W. Tozer', 407, 'Perla Suferinței', 3),
(509, 'Despre Rugăciune', 'Fericitul Arhimandrit Sofronie', 90, 'Schitul Lacu Sfântul Munte Athos', 3),
(510, 'Rugăciunea - de la datorie la încântare', 'J. I. Packer, Carolyn Nystrom', 88, 'Noua Speranță', 3),
(511, 'Prezența Duhului Sfânt', 'R. A. Torrey', 477, 'Casa Cărții', 3),
(512, 'Postul - aspecte biblice, istorice și contemporane', 'Gabriel L. Floruț', 89, 'Societatea Biblică din România', 3),
(513, 'Botezul cu Duhul Sfânt', 'Ronnie Trice', 413, 'Societatea Penticostală de Misiune Cerștină din România', 3),
(514, 'Bucurie negrăită', 'Dr. Martyn Lloyd-Jones', 635, 'Perla Suferinței', 3),
(515, 'Duhul Sfânt', 'Nelu Mureșan', 657, 'Risoprint', 3),
(516, 'Duhul Sfânt', 'John F. Tipei', 27, 'Metanoia', 3),
(517, 'Duhul adevărului', ' David Jackman', 1009, 'Făclia', 3),
(518, 'Muzica, din perspectivă biblică', 'John Coblentz', 226, 'Christian Aid Ministries', 3),
(519, 'De ce am părăsit mișcarea muzicii creștine contemporane', 'Dan Lucarini', 1109, 'Făclia', 3),
(520, 'Viața-un cântec de laudă', 'Toni Berbece', 218, 'Socieatatea Biblică din România', 3),
(521, 'Evanghelia pe muzică rock?', 'John Blanchard, Dan Lucarini', 1064, 'Făclia', 3),
(522, 'Etică creștină', 'John F. MacArthur, jr.', 91, 'Agape', 3),
(523, 'Puterea laudei și a închinării', 'Terry Law și Jim Gilbert', 849, 'Casa Cărții', 3),
(524, 'Manual de consiliere a tinerilor', 'Josh McDowell & Bob Hostetler', 191, 'Noua Speranță', 9),
(525, 'Schițe de iscuție', 'David Lynn', 190, 'Noua Speranță', 9),
(526, 'Suflet', 'Dinu Moga', 1118, 'Făclia', 9),
(527, 'Suflet', 'Dinu Moga', 1117, 'Făclia', 9),
(528, 'Explorări în creștinism', 'Dinu Moga', 1116, 'Făclia', 9),
(529, 'Explorări în creștinism', 'Dinu Moga', 1115, 'Făclia', 9),
(530, 'Explorări în ucenicie', 'Dinu Moga', 1114, 'Făclia', 9),
(531, 'Explorări în ucenicie', 'Dinu Moga', 1113, 'Făclia', 3),
(532, 'Manualul profesorului', 'David M. Robinson, Gabor Gresz', 903, 'New Life Eastern Europe', 9),
(533, 'Creșterea spirituală a copilului', 'John Trent, Ph.D. Rick Osborne & Kurt Bruner', 167, 'Noua Speranță', 9),
(534, 'Cârmuiți ca Isus', 'Ken Blanchard & Ohil Hodges ', 977, 'Făclia', 9),
(535, 'Consiliere și phihoterapie pastorală', 'Sorin Săndulache', 860, 'Casa Cărții', 9),
(536, 'Consiliere și psihoterapie pastorală', 'Sorin Săndulache', 439, 'Casa Cărții', 9),
(537, 'Concordanță biblică și dicționar de nume biblice', '', 21, 'Metanoia', 2),
(538, 'Fapte-credincioși adevărului', 'David Gooding', 878, 'LOGOS', 2),
(539, 'Școala duminicală', 'Samuel Muică', 583, 'Noua Speranță', 9),
(540, 'Concursul biblic Talantul în Negoț', 'Samuel Cristian Muică', 571, 'Speranța', 9),
(541, 'Concursul biblic Talantul în Negoț', 'Samuel Cristian Muică', 1158, 'Speranța', 9),
(542, 'Unul din o mie', 'Weeoll Hulse', 972, 'Făclia', 9),
(543, 'Curajul de a conduce', 'Bill Hybels', 388, 'Noua Speranță', 9),
(544, 'Adevăratul Păstor', 'Oliver McMahan', 75, 'Societatea Biblică din România', 9),
(545, 'Cuvânt pentru înțelepți', 'Henry Brandt & Henry L. Skinner', 941, 'Făclia', 9),
(546, 'Conducerea spirituală ', 'J. Oswald Sanders', 74, 'Societatea Biblică din România', 9),
(547, 'Esența consilierii', 'Michael Dieterich', 192, 'Societatea Biblică din România', 9),
(548, 'Salvează generația următoare', 'Dan Brewster', 625, 'One Way Romania', 9),
(549, 'Spre etica Vechiului Testament', 'Walter C. Kaiser, Jr,', 1038, 'Făclia', 9),
(550, 'Etica creștină', 'Narman L. Geisler', 77, 'Societatea Biblică din România', 9),
(551, 'Pledoarie pentru viață', 'Scott Klusendorf', 1008, 'Făclia', 9),
(552, 'După cum fierul ascute fierul', 'Howard șo William Hendricks', 454, 'Casa Cărții', 9),
(553, 'Redescoperirea uceniciei', 'Ioan Rusu', 1030, 'Făclia', 9),
(554, 'Chemarea ceerască', 'John Coblentz', 86, 'Christian Light Publication', 9),
(555, 'Chemarea ceerască', 'John Coblentz', 366, 'Christian Light Publication', 9),
(556, 'Ucenicii se fac nu se nasc', 'Walter A. henrichsen', 629, 'LOGOS', 9),
(557, 'Cunoașterea copilului preșcolar', 'Julieta Alexandru', 594, 'Lyceum', 9),
(558, 'Teodoret episcolul Cirului II', 'Vasile Sibiescu', 16, 'Institutului Biblic și de Misiune al Bisericii Ortodoxe Române', 3),
(559, 'Didahii și preidici', 'Preot Prof. Dr. Dumitru Fecioru', 20, 'Buna Vestire', 3),
(560, 'Sfântul Ieronim', 'Eugenia Petre', 275, 'PAIDEIA', 3),
(561, 'Lucrarea marelui nostru preot ', 'Dinu Moga', 1037, 'Făclia', 3),
(562, 'Viața în trinitate', 'Donald Fairbairn', 994, 'Făclia', 3),
(563, 'Chemare la reformare spirituală', 'D. A. Carson', 939, 'Făclia', 3),
(564, 'Martori fără grai', 'Garry J. Williams', 1036, 'Făclia', 3),
(565, 'Lucrarea lui Cristos', 'Robert Letham', 1121, 'Făclia', 3),
(566, 'Cuvânt străvechi, lumi schimbătoare', 'Stephen J. Nichols și Eirc T. Brandt', 1056, 'Făclia', 3),
(567, 'Misiunea bisericii ortodoxe Ruse printre aleuți', 'Dr. Paul E. Barkey', 1002, 'Făclia', 3),
(568, 'Sub privirea apusului', 'Robert Letham', 928, 'Făclia', 3),
(569, 'Ortodoxia răsăriteană', 'Donald Fairbairn', 962, 'Făclia', 3),
(570, 'O apărare a sinonismului creștin', 'David Pawson', 105, 'Societatea Biblică din România', 3),
(571, 'Dumnezeu Tatăl, Dumnezeu Fiul', 'Martyn Lloyd-Jones', 999, 'Făclia', 3),
(572, 'Dumnezeu Duhul Sfânt', 'Martyn Lloyd-Jones', 1000, 'Făclia', 3),
(573, 'Biserica și lucrurile de pe urmă', 'Martyn Lloyd-Jones', 1001, 'Făclia', 3),
(574, 'Viața bisericii conform metaforelor pauline', 'Ciprian-Flavius Terinte', 32, 'Societatea Biblică din România', 3),
(575, 'Flacăra nestinsă', 'Michael Reeves', 965, 'Făclia', 3),
(576, 'Domnul a dat cuvântul', 'Malcolm H. Watts', 926, 'Făclia', 3),
(577, 'Jihadul global ', 'Patrick Sookhdeo', 981, 'Făclia', 3),
(578, 'Să ințelegem terorismul islamic', 'Patrick Sookhdeo', 1106, 'Făclia', 3),
(579, 'Provocarea islamului', 'Patrick Sookhdeo', 1021, 'Făclia', 3),
(580, 'Dragostea lui Dmunzeu pentru musulmani', 'Ibrahim Ag Mohamed', 1105, 'Făclia', 3),
(581, 'Liberateta de a crede', 'Patrick Sookhdeo', 1019, 'Făclia', 3),
(582, 'Biserica lui Hristos', 'Petru Vidu', 1039, 'Făclia', 3),
(583, 'Nouă semne ale unei biserici sănătoase', 'Mark Dever', 1108, 'Făclia', 3),
(584, 'Acolo eu sînt în mijlocul lor', 'Christian Briem', 416, 'GBV', 3),
(585, 'Biserica-frustrare și împlinire', 'Philip Yancey', 81, 'Noua Speranță', 3),
(586, 'Doctorime biblice ale bisericii', 'Trandafir Șandru', 51, 'Societatea Biblică din România', 3),
(587, 'Biserica intențională', 'Mark Dever, Paul Alexander', 1084, 'Făclia', 3),
(588, 'Adunarea lui Dumnezeu', 'H. L. Heijkoop', 417, 'GBV', 3),
(589, 'Ce este o biserică sănătoasă?', 'Mark Dever', 943, 'Făclia', 3),
(590, 'Fenomenul carismatic', 'Peter Masters și John C. Whitcomb', 963, 'Făclia', 3),
(591, 'Drumul spre Iad', 'David Pawson', 106, 'Societatea Biblică din România', 3),
(592, 'Evanghelii false', 'Trevin Wax', 93, 'Societatea Biblică din România', 3),
(593, 'Dezvăluirea tainei', 'Edmund P. Clowney', 940, 'Făclia', 3),
(594, 'Intoxicat de Babilon', 'Steve Gallagher', 654, 'Societatea Biblică din România', 3),
(595, 'Cuvântul și Duhul împreună', 'David Pawson', 100, 'Societatea Biblică din România', 3),
(596, 'Jocul cu focul', 'Wolfgang Buhne', 338, 'Agape', 3),
(597, 'Disciplina-capitulare cu bucurie', 'Elisabeth Elliot', 745, 'Scriptum', 3),
(598, 'Fii liniștit, suflete', 'Elisabeth Elliot', 693, 'Scriptum', 3),
(599, 'Cinci concepții despre cina Domnului', 'Gordon T. Smith', 463, 'Casa Cărții', 3),
(600, 'Vreau cu adevărat să mă schimb', 'James MacDonald', 696, 'Majesty Press', 3),
(601, 'Care este învățătura Bibliei despre trinitate', 'Stuart Olyott', 1096, 'Făclia', 3),
(602, 'Provocări doctrinale contemporane', 'Gabriel L. Floruț', 36, 'Societatea Biblică din România', 3),
(603, 'Evanghelizare prin foc', 'Reinhard Bonnke', 434, 'Casa Cărții', 3),
(604, 'Vindecare de o viață banală', 'Max Lucado', 550, 'Casa Cărții', 3),
(605, 'Rugăciune pentru trezire', 'Leonard Ravenhill', 633, 'Perla Suferinței', 3),
(606, 'Epidemia vindecărilor', 'Peter Masters', 1013, 'Făclia', 3),
(607, 'Discursuri pentru creștini', 'O. Hallesby, Steward A. James, Roy Hession, E. M. ', 231, 'Metanoia', 3),
(608, 'Este Ioan 3:16 nucleul Evangheliei?', 'David Pawson', 45, 'Societatea Biblică din România', 3),
(609, 'Viața personală de credință', 'Peter Nasters', 997, 'Făclia', 3),
(610, 'O schimbare de loialitate', 'Dean Taylor', 264, 'Christian Aid Ministries', 3),
(611, 'Botezul în calitate de membru ', 'Erroll Hulse', 1081, 'Făclia', 3),
(612, 'Mărturia publică a botezului', 'Erroll Hulse', 1005, 'Făclia', 3),
(613, 'Bine sau dumnezeiesc?', 'John Bevere', 1129, 'Messengers International', 3),
(614, 'Subminarea în sfințenie', 'Trevin Wax', 1059, 'Făclia', 3),
(615, 'Ce se va întâmpla cu lumea aceasta?', 'Joachim Langhammer', 364, 'Misiunea Evanghelică', 3),
(616, 'Ce se va întâmpla cu viața aceasta', 'Joachim Langhammer', 31, 'Misiunea Evanghelică', 3),
(617, 'Tot ce ne este necesar', 'Karen Mitchell', 1083, 'Făclia', 3),
(618, 'Împlinitori sau călcători ai juruințelor', 'Simon Schrock', 70, 'Christian Aid Ministries', 3),
(619, 'Cele 7 legi ale succesului spiritual', 'Selwyn Hughes', 1101, 'Făclia', 3),
(620, 'Credința adevărată', 'Iosif Țon', 346, 'Societatea Misionară din România', 3),
(621, 'Trăirea prin puterea lui Cristos', 'Selwyn Hughes', 1089, 'Făclia', 3),
(622, 'Reconcilierea bazată pe credință', 'Brian Cox', 1102, 'Făclia', 3),
(623, 'Reconcilierea bazată pe credință', 'Brian Cox', 1120, 'Făclia', 3),
(624, 'Rivalii lui Dumnezeu', 'Gerald R. McDermott', 978, 'Făclia', 3),
(625, 'Regului date de Dumnezeu pentru sfințenie', 'Peter Masters', 1122, 'Făclia', 3),
(626, 'Viața predată', 'Wayne A. Barber', 233, 'Lugoj', 3),
(627, 'Lupta frumoasă', 'Gary Thomas', 215, 'Noua Speranță', 3),
(628, 'Faptele firii pământești', 'Iosif Anca', 83, 'Studio Media Art', 3),
(629, 'Alergarea după Dumnezeu', 'Tommy Tenneey', 445, 'Shalom', 3),
(630, 'Adu-ți aminte de ziua Domnului', 'Peter Masters', 1055, 'Făclia', 3),
(631, 'Timpul este pe sfârșit', 'Reinhard Bonnke', 549, 'Casa Cărții', 3),
(632, 'În fiecare zi cu Isus', 'selyn Hughes', 998, 'Făclia', 3),
(633, '10 trepte de cunoaștere a Domnului Isus Cristos', 'Ioan Rusu', 1082, 'Făclia', 3),
(634, 'Puterea lui Dumnezeu și comuninitatea noii creații', 'Beniamin Poduț', 548, 'Casa Cărții', 3),
(635, 'Raiul începe de pe pământ', 'Paul Bassett', 1054, 'Făclia', 3),
(636, 'Calea lui Dumnezeu în evanghelizare', 'Paul Bessett', 1086, 'Făclia', 3),
(637, 'Răscumpărarea - realizată și aplicată', 'john Murray', 1053, 'Făclia', 3),
(638, 'Biserica plină de Duhul Sfânt', 'Terry Virgo', 406, 'Casa Literaturii Creștine', 3),
(639, 'Cine suntem în Cristos', 'Neil T. Anderson', 848, 'Casa Cărții', 3),
(640, 'Veniți cei însetați', 'Max Lucado', 476, 'Casa Cărții', 3),
(641, 'Chemarea la bucurie și durere', 'Ajith Fernando', 432, 'Casa Cărții', 3),
(642, 'Tiparul adevărului lui Dumnezeu', 'Frank E. Gaebelein', 383, 'Societatea Misionară Română', 3),
(643, 'Credința adevărată', 'Gary Thomas', 73, 'Noua Speranță', 3),
(644, 'Când Dumenzeu s-a apropiat', ' Max Lucado', 459, 'Caas Cărții', 3),
(645, 'Păcate impresionante', 'John Piper ', 1003, 'Făclia', 3),
(646, 'Dacă știi cine ești... știi ce ai de făcut', 'Ronald J. Greer', 97, 'Metanoia', 3),
(647, 'Unde a dispărut integritatea?', 'Simon Schrock', 221, 'Christian Aid Ministries', 3),
(648, 'Banii, posesiunile și veșnicia', 'Randy Alcorn', 220, 'Societatea Biblică din România', 3),
(649, 'Dumnezeul care urmărește', 'Cecil Murphey', 94, 'Societatea Biblică din România', 3),
(650, 'Predarea totală lui Isus Hristos', 'Barry St. Clair', 357, 'Societatea Misionară Română', 3),
(651, 'Strigăte de pe cruce', 'Erwin W. Lutzer', 452, 'Casa Cărții', 3),
(652, 'Prima ta clipă după moarte', 'Erwin W. Lutzer', 488, 'Casa Cărții', 3),
(653, 'Răstignirea ta eternă', 'Erwin W. Lutzer', 483, 'Casa Cărții', 3),
(654, 'Cum poți fi sigur că-ți vei petrece veșnicia cu Dumnezeu', 'Erwin W. Lutzer', 484, 'Casa Cărții', 3),
(655, 'În căutarea adevărului', 'John Blanchard', 1028, 'Făclia', 3),
(656, 'Armura lui Dumnezeu', 'E. A. Bremicker', 621, 'G B V', 3),
(657, 'De ce sunt un pacifist convins', 'John M. Dreschek', 352, 'Christian Aid Ministries', 3),
(658, 'În lucrare cu Dumnezeu', 'Avery T. Willis, Jr & Henry T. Blackaby', 660, 'Noua Speranță', 3),
(659, 'Doctrinele Biblice ale Bisericii', 'Trandafir Sandru', 658, 'Metanoia ', 2),
(660, 'Manual de Predici', '', 33, 'Metanoia Oradea', 7),
(661, 'Delia', '', 236, 'GBV', 10),
(662, 'Prima Întâlnire', 'Scott Kirby', 358, 'Easy Print', 11),
(663, 'Arta Conducerii', 'Ioan Ceuță', 624, 'Asociatia Centrul Crestin Bucuresti', 9),
(664, 'Dragoste, Curte, Căsătorie', '', 392, 'The Little Samaritean Mission', 11),
(665, 'Dragoste, Curte, Căsătorie', '', 649, 'The Little Samaritean Mission', 11),
(666, 'Cum să conduci un grup mic de studiu biblic', '', 351, 'Polsib', 9),
(667, 'Viața Familiei Creștine', 'John Coblentz', 165, 'Chrisitan Aid Ministries', 5),
(668, 'Misterul din pădure', 'Patricia St. John', 400, 'Scripture Union Publishing', 10),
(669, 'Broscuța verde', 'Beth Coombe Harris', 727, 'Agape', 4),
(670, 'Hudson Taylor', '', 734, 'GBV', 10),
(671, 'Hudson Taylor', '', 576, 'GBV', 10),
(672, 'Am trăit atâtea minuni', '', 580, 'Editura Lumina Lumii', 10),
(673, 'Petru pescarul', '', 1126, 'GBV', 4),
(674, 'Festivalul Paștelui', 'Genovieva Sfatcu Beattie', 598, 'Eastern Europe Aid Association', 4),
(675, 'Minunile lui Isus', 'B. A. Ramsbottom', 320, 'The RoundWood Trust', 4),
(676, 'Minunile lui Isus', 'B. A. Ramsbottom', 950, 'The Roundwood Trust', 4),
(677, 'Pildele lui Isus', 'B. A. Ramsbottom', 949, 'The Roundwood Trust', 4),
(678, 'Romanța Răscumpărării', 'Bebe Ciaușu', 461, 'Casa Cărții', 8),
(679, 'Dumnezeu a vorbit în vechime prin profeți', 'Silviu Tatu', 38, 'Romanian Bible Society', 8);
INSERT INTO `book` (`id_book`, `titlu`, `autor`, `nr_carte`, `editura`, `categorie`) VALUES
(680, 'Neprihănirea prin credință', 'Adolf Novak', 685, 'Korntal', 8),
(681, 'Cum să umblăm în Casa Domnului', 'Adolf Novak', 686, 'Korntal', 8),
(682, 'Să studiem Marcu', 'Sinclar B. Ferguson', 1032, 'Făclia', 8),
(683, 'Să studiem Filipeni', 'Sinclair B. Ferguson', 1048, 'Făclia', 8),
(684, 'Să studiem 2 Corinteni', 'Derek Prime', 1047, 'Făclia', 8),
(685, 'Să studiem 1 și 2 Tesaloniceni', 'Andrew W. Young', 1031, 'Făclia', 8),
(686, 'Vrednic este Mielul să primească Slava', 'Richard Brooks', 944, 'Făclia', 8),
(687, 'Oameni cu totul deosebiți', 'Petru Popovici', 69, 'Christian Aid Ministries', 8),
(688, 'Geneza', 'Andy Mclntosh', 929, 'Făclia', 8),
(689, 'Revendicarea moștenirii', 'Silviu Tatu', 28, 'Romanian Biblie Society', 8),
(690, 'Suveranitatea lui Dumnezeu și sensul vieții sub soare', 'Paul Negruț', 1119, 'Făclia', 8),
(691, 'Iată că El vine pe nori', 'Filip A. Dincă', 976, 'Făclia', 8),
(692, 'Veniți să studiem Marcu și Faptele Apostolilor', '', 632, 'RomFlair Press', 8),
(693, 'Veniți să studiem Marcu și Faptele Apostolilor', '', 631, 'Romflair Press', 8),
(694, 'Cartea Rut', 'H. L. Heijkoop', 617, 'GBV', 8),
(695, 'Umbre și Lumină', 'Ion Socoteanu', 55, 'GBV', 8),
(696, 'Evanghelia după Ioan', 'Hamilton Smith', 620, 'GBV', 8),
(697, 'Pace cu Dumnezeu', 'Max Billeter', 619, 'GBV', 8),
(698, 'Exil și Întoarcere', 'Trevin Wax', 1049, 'Făclia', 8),
(699, 'Hristos în noim speranța gloriei', 'Max Billeter', 618, 'GBV', 8),
(700, 'O incursiune în Apocalipsa', 'David Pawson', 49, 'Metanoia Oradea', 8),
(701, 'Învățături din Amos', 'Bob Fyall', 945, 'Făclia', 8),
(702, 'Epistonla către Romani', 'Emil Brunner', 906, 'Lumina Lumii', 8),
(703, 'O incursiune în Evanghelia după Marcu', 'David Pawson', 50, 'Metanoia Oradea', 8),
(704, 'Ieșit din furtună', 'Christopher Ash', 1014, 'Făclia', 8),
(705, 'Cugetări asupra cărții profetului Zaharia', 'James L. Goforth', 1050, 'Făclia', 8),
(706, 'Învățături din 1 Petru', 'Angus Macleay', 1029, 'Făclia', 8),
(707, 'Pildele Domnului Isus', 'Simon J. Kistemaker', 37, 'Romanian Bible Society', 8),
(708, 'Leul din Sion', 'Silviu Tatu', 475, 'Casa Cărții', 8),
(709, 'Atributele lui Dumnezeu', 'A. W. Tozer', 614, 'Perla Suferintei', 3),
(710, 'Urmărirea lui Dumnezeu', 'A. W. Tozer', 609, 'Perla Suferintei', 3),
(711, 'Ecouri din Eden', 'A. W. Tozer', 641, 'Perla Suferintei', 3),
(712, 'Prețul Neglijenței', 'A. W. Tozer', 606, 'Perla Suferintei', 3),
(713, 'Crestinul acela incredibil', 'A. W. Tozer', 602, 'Perla Suferintei', 3),
(714, 'Eu îi spun erezie', 'A. W. Tozer', 640, 'Perla Suferintei', 3),
(715, 'Credința dincolo de rațiune', 'A. W. Tozer', 600, 'Perla Suferintei', 3),
(716, 'Ce s-a întâmplat cu închinarea?', 'A. W. Tozer', 601, 'Perla Suferintei', 3),
(717, 'Succesul și creștinul', 'A. W. Tozer', 608, 'Perla Suferintei', 3),
(718, 'Dimensiunea sufletului', 'A. W. Tozer', 642, 'Perla Suferintei', 3),
(719, 'Născut după miezul nopții', 'A. W. Tozer', 611, 'Perla Suferintei', 3),
(720, 'Următorul capitol după ultimul', 'A. W. Tozer', 607, 'Perla Suferintei', 3),
(721, 'OMUL sălașul lui Dumnezeu', 'A. W. Tozer', 612, 'Perla Suferintei', 3),
(722, 'Ridicarea pânzelor', 'A. W. Tozer', 639, 'Perla Suferintei', 3),
(723, 'Hristos, Fiul etern', 'A. W. Tozer', 613, 'Perla Suferintei', 3),
(724, 'Tragedie în Biserică', 'A. W. Tozer', 599, 'Perla Suferintei', 3),
(725, 'Isus este biruitor!', 'A. W. Tozer', 603, 'Perla Suferintei', 3),
(726, 'Isus, Căpetenia credinței noastre', 'A. W. Tozer', 605, 'Perla Suferintei', 3),
(727, 'Isus, Omul nostru în slavă', 'A. W. Tozer', 604, 'Perla Suferintei', 3),
(728, 'Căi spre putere', 'A. W. Tozer', 691, 'Agape', 3),
(729, 'Rădăcina celor drepți', 'A. W. Tozer', 769, 'Agape', 3),
(730, 'A. W. Tozer', 'Thomas Haire', 636, 'Perla Suferintei', 3),
(731, 'Acei metodiști uimitori', 'A. W. Tozer', 638, 'Perla Suferintei', 3),
(732, 'Rădăcina celor drepți', 'A. W. Tozer', 911, 'Agape', 3),
(733, 'Umpleți vidul!', 'Richard Wumbrand', 114, 'C. M. C. W.', 3),
(734, 'Mai mult decât un simplu tâmplar', 'Josh McDowell', 590, 'Mnhck Picorp', 3),
(735, 'E cineva acolo?', 'David Watson', 384, 'RomAF EELAC', 3),
(736, 'El a umblat printre noi', 'Josh McDowell & Bill Wilson', 214, 'Here\'s Life', 3),
(737, 'Dacă există Dumnezeu, de ce există rău?', 'Norman Giesler', 82, 'Metanoia Oradea', 3),
(738, 'Darwin și darwinismul', 'Ian McNaughton și Paul Taylor', 1110, 'Făclia', 3),
(739, 'Și Dumnezeu a zis...', 'Farid Abou-Rahme', 396, 'Mușatinii', 3),
(740, 'De ce continui să cred', 'Joe Boot', 217, 'Metanoia Oradea', 3),
(741, 'Mai mult decât un simplu tâmplar', 'Josh McDowell', 664, 'Scriptum', 3),
(742, 'Mai mult decât un simplu tâmplar', 'Josh McDowell', 622, 'Scriptum', 3),
(743, 'Omul e creat de Dumnezeu, nu produsul evoluției ', 'petru Popovici', 662, 'Carmen-Print', 3),
(744, 'Unde este Dumnezeu când sufăr?', 'Philip Yancey', 223, 'Noua Speranta', 3),
(745, 'Dacă i-ai putea pune lui Dumnezeu o întrebare', 'Paul Williams & Barry Cooper', 1111, 'Făclia', 3),
(746, 'De ce îngăduie Dumnezeu dezastrele naturale?', 'David Pawson', 227, 'Romanian Society Bible', 3),
(747, 'Ce fel de Dumnezeu?', 'Michael ots', 942, 'Făclia', 3),
(748, 'Amprente ale inteligenței creatoare', 'Stuart Burgess', 1007, 'Făclia', 3),
(749, 'Lumea imaginară a lui Richard Dawkins', 'Robin Compston', 967, 'Făclia', 3),
(750, 'Ești sigur?', 'Petru Popovici', 592, 'Liga Bibliei', 3),
(751, '7 argumente pentru a crede Biblia', 'Erwin W. Lutzer', 453, 'Casa Cartii', 3),
(752, 'Unde este Dumnezeu într-o lume tulbure?', 'Roger Carswell', 1004, 'Făclia', 3),
(753, 'Evoluția, o minciună', 'Ken Ham', 72, 'Christian Aid Ministries', 3),
(754, 'Noi mărturii supuse dreptei judecăți', 'Josh McDowell', 902, 'Josh McDowell Ministry', 3),
(755, 'Calea spre vindecare', 'Dan Allender', 887, 'Peregrinul', 3),
(756, 'Esența problemei', 'Henry Brandt & Kerry L. Skinner', 989, 'Făclia', 3),
(757, 'Depresia', 'Samuel Pfeifer', 843, 'Casa Cărții', 3),
(758, 'Anii răzvrătirilor', 'Peter Masters', 968, 'Făclia', 3),
(759, 'Drum prin doliu', 'Anda Mogoș', 193, '', 3),
(760, 'Drum prin doliu', 'Anda Mogoș', 194, '', 3),
(761, 'Cum să-ți depășești trecutul', 'Erwin W. Lutzer', 449, 'Casa Cartii', 3),
(762, 'Aprofundarea Credinței', 'peter masters', 1012, 'Făclia', 3),
(763, 'Țepușa din carne', 'Pablo Martinez', 847, 'Casa Cartii', 3),
(764, 'Binecuvântarea din încercare', 'Barry C. Black', 219, 'Metanoia Oradea', 3),
(765, 'Sprijinitorul tău personal', 'Selwyn Hughes', 974, 'Făclia', 3),
(766, 'Eliberat din robia păcatului', 'Henry Brandt și Kerry L. Skinner', 1010, 'Făclia', 3),
(767, 'Eliberează-te de mânie', 'John Coblentz', 354, 'Christian Aid Ministries', 3),
(768, 'Eliberează-te de mânie', 'Johyn Coblentz', 99, 'Christian Aid Ministries', 3),
(769, 'Mânia', 'Gary Chapman', 96, 'Metanoia Oradea', 3),
(770, '70x7 Puterea de a ierta', 'Johann Cristoph Arnold', 230, 'Christian Aid Ministries', 3),
(771, 'Rănit de frați, vindecat de Dumnezeu', 'Chris Jackson', 431, 'Casa Cartii', 3),
(772, 'Vinovăție și iertare', 'Heinz Bohm', 776, 'Agape', 3),
(773, 'Creștinul împăciuitor', 'Ken Sande', 468, 'Casa Cartii', 3),
(774, 'Când ți s-a greșit', 'Erwin W. Lutzer', 474, 'Casa Cartii', 3),
(775, 'Alege să ierți', 'Nancy Leigh DeMoss', 103, 'Societatea Biblică din România', 3),
(776, 'O atitudine ca a Mariei', 'Joanna Weaver', 222, 'Christian Aid Ministries', 3),
(777, 'Războiul Invizibil', 'Chip Ingram', 85, 'Noua Speranta', 3),
(778, 'Doamne, arată-ne slava Ta!', 'Ray H. Hughes', 225, 'Christian Aid Ministries', 3),
(779, 'Să cunoaștem creștinismul', 'J. I. Packer', 464, 'Casa Cartii', 3),
(780, 'Credința', 'Peter masters', 1011, 'Făclia', 3),
(781, 'Evanghelia lui Dumnezeu', 'Watchman Nee', 343, 'Livin Stream Ministry', 3),
(782, 'Evanghelia lui Dumnezeu', 'Watchman Nee', 342, 'Living Stream Ministry', 3),
(783, 'O viață de victorie!', 'Dennis McCallum', 412, 'Cartea Crestina', 3),
(784, 'Mesajul piredut al lui Isus', 'Steve Chalke & Alan mann', 414, 'Scriptum', 3),
(785, 'În căutarea Dumnezeului nevăzut', 'Philip Yancey', 228, 'Noua Speranta', 3),
(786, 'Cine mântuiește, Dumnezeu sau omul?', 'Errol Hulse', 1046, 'Făclia', 3),
(787, 'Apostolul Pavel', 'Luca Sezonov', 35, 'Societatea Misionara Romana', 3),
(788, 'Mântuiți prin har', 'John Bunyan', 68, 'Cristianus', 3),
(789, 'O singură credință', 'J. I. Packer & Thomas C. Oden', 456, 'Casa Cartii', 3),
(790, 'Instructiuni pentru noii crestini', 'Ernest Strubhar', 71, 'Lamp and Light Publishers', 3),
(791, 'Ce se întâmplă când femeile se roagă?', 'evelyn Christenson', 806, 'Casa Literaturii Crestine', 3),
(792, 'Gloria lui Isus', 'John Owen', 924, 'Făclia', 3),
(793, 'Împărăția care a răsturnat lumea', 'David Bercot', 67, 'Christian Aid Ministries', 3),
(794, 'Grijă de frați', 'Simon Schrock', 232, 'Christian Aid Ministries', 3),
(795, 'Grijă de frați', 'Simon Schrock', 369, 'Christian Aid Ministries', 3),
(796, 'Femeile Bibliei, prin ochii lui Dumnezeu', 'Jerram Barrs', 473, 'Casa Cartii', 3),
(797, 'Ce pretinde Isus de la lume', 'John Piper', 547, 'Casa Cartii', 3),
(798, 'De la obișnuit la extraordinar', 'John MacArthur', 203, 'Christian Aid Ministries', 3),
(799, 'Nevinovat', 'James Buchanan', 112, 'Romflair Press', 3),
(800, 'Nevinovat', 'James Buchanan', 969, 'Romflair Press', 3),
(801, 'Împărăția secretă', 'Pat Robertson', 115, '', 3),
(802, 'Despre harul lui Dumnezeu', 'Fritz Berger', 579, '', 3),
(803, 'Fundamente ale credinței creștine', '', 419, 'GBV', 3),
(804, 'Dumnezeul neprihănirii și Evanghelia neprihănirii', 'David Pawson', 110, 'Christian Aid Ministries', 3),
(805, 'Frații', 'A. Miller', 581, 'GBV', 3),
(806, 'O singură Scriptură - de ce atâtea religii?', 'Constantin Petcu', 109, 'Cuvantul Evangheliei', 3),
(807, 'Cartea vieții', '', 212, 'VIDA', 3),
(808, 'Așa vorbește Dumnezeu', '', 569, 'Serviciul Umanitar pentru Penitenciare', 3),
(809, 'Maturitate spirituală', 'Samuel Costiuc', 211, 'Editura Fundatiei', 3),
(810, 'Calvarul meu împodobit cu pietre', 'Varadi iosif', 249, '', 3),
(811, 'Armura lui Dumnezeu', 'E. A. Bremicker', 420, 'GBV', 3),
(812, 'Dumnezeu este Evanghelia', 'John Piper', 1020, 'Făclia', 3),
(813, 'Alege să fi mulțumitor', 'Nancy Leight DeMoss', 104, 'Christian Aid Ministries', 3),
(814, 'Creștinismul pe înțelesul tuturor', 'David Pawson', 216, 'Societatea Biblica din Romania', 3),
(815, 'În lucrare cu Dumnezeu', 'Avery T. Willis, JR. Henry T. Blackaby', 224, 'Noua Speranta', 3),
(816, 'Umblând cu Dumnezeu', 'J.C.Ryle', 1079, 'Făclia', 3),
(817, 'Isus destinul nostru', 'Wilhelm Busch', 1146, 'Agape', 3),
(818, 'Gândire spirituală', 'John Owen', 1078, 'Făclia', 3),
(819, 'Doamne schimbă-mi atitudinea', 'James MacDonald', 768, 'MajestyPress', 3),
(820, 'Străpuns pentru fărădelegile noastre', 'Steve jeffery, Mike Ovey, Andrew Sach', 1018, 'Făclia', 3),
(821, 'Cunoaște adevărul', 'Bruce Milne', 975, 'Făclia', 2),
(822, 'Tânjirea după Dumnezeu', 'Richard J. Foster, Gayle D. Beebe', 850, 'Casa Cartii', 3),
(823, 'Cuvântul pe cale de dispariție', 'Arthur W. Hunt III', 1112, 'Făclia', 3),
(824, 'Văzându-l pe Isus în Cortul Întâlnirii', 'Ervin N. Hershberger', 34, 'Christian Aid Ministries', 3),
(825, 'Văzându-l pe Isus în Cortul Întâlnirii', 'Ervin N. Hershberger', 29, 'Christian Aid Ministries', 3),
(826, 'Biblia pe care a citit-o Isus', 'Philip Yancey', 84, 'Noua Speranta', 3),
(827, 'Sfanta Treime', 'Dumitru Stăniloae', 92, 'Institul biblic al Bisericii Ortodoxe Romane', 3),
(828, 'Creștinism biblic', 'John Calvin', 973, 'Făclia', 2),
(829, 'Slava lui Hristos în jertfe', 'H. L. Heijkoop', 53, 'GBV', 3),
(830, 'Creștinul în viața cotidiană', 'Rupprecht Bayer', 838, 'Agape', 3),
(831, 'O viață de victorie', 'Dennis McCallum', 910, 'Cartea Crestina', 3),
(832, 'Ultima generație', 'Cristian Ionescu', 465, 'Societatea Penticostala', 3),
(833, 'Harul lui Dumnezeu', 'Petru Popovici', 916, 'Vestea Buna', 3),
(834, 'Viața pe care ți-ai dorit-o dintotdeauna', 'John Ortberg', 794, 'MajestyPress', 3),
(835, 'Onest cu Dumnezeu?', 'Bill Hybels', 747, 'Noua Speranta', 3),
(836, 'Calea spre cer în 1000 de ilustrații', 'Timotei Pop', 773, 'Agape', 3),
(837, 'Chemarea și viața eliberată', 'Otto Rimas', 744, 'Shalom', 3),
(838, 'Eseuri', 'John Saunders', 828, 'Lampadarul de Aur', 3),
(839, 'Dacă vrei să ajungi departe', 'Ralph Shallis', 746, 'Agape', 3),
(840, 'Îndrăzneala credinței', 'Geroge Muller', 723, 'Agape', 3),
(841, 'Înteonarea voii lui Dumnezeu în viața creștină', 'Petru Popovici', 765, 'Agape', 3),
(842, 'Pot să mă încred în El?', 'Jerry Bridges', 766, 'Agapre', 3),
(843, 'Trădată, iuvirea trecea', 'Vladimir Pustan', 774, 'Fabrica de Vise', 3),
(844, 'Când oamenii duhovnicești sunt amăgiți', 'Beth Moore', 471, 'Casa Cartii', 3),
(845, 'Deprinderi sfinte', 'Mimi Wilson și Shelly Cook Volkhardt', 748, 'Agape', 3),
(846, 'Seria Noului Credincios vol I', 'Watchmann Nee', 339, 'Living Stream Ministries', 3),
(847, 'Revoluția iubirii', 'George Verwer', 767, 'Discipolul', 3),
(848, 'Îngerii agenții secreți ai lui Dumnezeu', 'Billy Graham', 826, 'Stephanus', 3),
(849, 'Rugul în flăcări', 'Petru Popovici', 921, '', 3),
(850, 'Harul lui Dumnezeu', 'Wiliam MacDonald', 915, 'CLV', 3),
(851, 'Îmbătat de dragoste', 'Richard Wumbrand', 801, 'Stephanus', 3),
(852, 'Polițistul creștin', 'Kibinge WA Muturi', 386, 'Editura Universitatii Emanuel', 3),
(853, 'O viață de biruință', 'Joachim Langhmmer', 790, 'Misiunea Evanghelică', 3),
(854, 'Banii', 'Andrew Murray', 783, 'Samuel', 3),
(855, 'Intimitate cu cel Atotputernic', 'Charles Swindoll', 786, 'Samuel', 3),
(856, 'În crăpătura stâncii', 'Constantin Moisa', 793, 'Stephanus', 3),
(857, 'Urmând pe Cristos', 'Thomas A. Kempis', 700, 'Stephanos', 3),
(858, 'Biserica în asediu', 'Petru Lascău', 763, 'Shalom', 3),
(859, 'Factorul rugăciunii', 'Sammy Tippit', 917, 'Moody Bible Institute', 3),
(860, 'Lupta', 'John White', 918, 'Logos', 3),
(861, 'Pentru ca lanțurile să cadă', 'Sergine Snanoudj', 782, 'Stephanus', 3),
(862, 'Mișcat de forța vieții', 'Petru Cârdei', 791, 'Stephanus', 3),
(863, 'Discursuri despre trezirile religioase', 'C. G. Finney', 908, 'Stephanus', 3),
(864, 'Vin profeții', 'Wolfgang Buhne', 909, 'Agape', 3),
(865, 'Teologilor, luați loc, vă rog', 'David Bercot', 43, 'Christian Aid Ministries', 3),
(866, 'Mărturiile Calvarului', 'Giovanni Papini', 245, 'Universalia', 3),
(867, 'Iisus din Nazaret ', 'E. Copăcianu', 582, 'Doris', 3),
(868, 'Potopul I', 'Sienkiewicz', 322, 'Biblioteca pentru toti', 13),
(869, 'Potopul II', 'Sienkiewicz', 323, 'Biblioteca pentru toti', 13),
(870, 'Potopul III', 'Sienkiewicz', 324, 'Biblioteca pentru toti', 13),
(871, 'Potopul IV', 'Sienkiewicz', 325, 'Biblioteca pentru toti', 13),
(872, 'Potopul V', 'Sienkiewicz', 326, 'Biblioteca pentru toti', 13),
(873, 'Nicolae Iorga, Mircea Eliade, Nae Ionescu', 'Valeriu Râpeanu', 336, 'Arta Grafica', 13),
(874, 'Cartea înțelepciunii populare Proverbe', '', 329, 'Minerva', 13),
(875, 'Dicționare de cuvinte, expresii, citate celebre', '', 328, 'Colecția Lexicon', 13),
(876, 'Aforisme', 'Arthur Schopenhauer', 332, 'Saeculum I. O.', 13),
(877, 'Vai celui singur!', 'Lidia Popița ', 248, 'Junimea', 13),
(878, 'Mari bătălii din istoria lumii', 'Manole Neagoe', 331, 'Scrisul Romanesc ', 13),
(879, 'Dicționar de maxime comentat', 'Tudor Vianu', 330, 'Saeculum I. O.', 13),
(880, 'Anecdote despre mari personalități', '', 333, 'Saeculum I. O.', 13),
(881, 'Alexandru cel Mare', 'Vladimir Hanga', 334, 'Albatros', 13),
(882, 'Închinare cu ajutorul tehnologiei de vârf?', 'Quentin J. Schultze', 988, 'Făclia', 3),
(883, 'Închinarea', 'Peter Masters', 987, 'Făclia', 3),
(884, 'Muzica în echilibru', 'Frank Garlock & Kurt Woetzel', 925, 'Făclia', 3),
(885, 'Tragedia veacurilor', 'Ellen White', 340, 'Viata si Sanatate', 3),
(886, 'Arheologia Bibliei', 'James K. Hoffmeier', 440, 'Casa Cartii', 2),
(887, 'Teologie Sistematică', 'Wayne Grudem', 904, 'Faclia', 2),
(888, 'Fugi, băiete, fugi!', 'Nick Cruz și Jamie Buckingham', 533, 'Casa Cartii ', 12),
(889, 'Dumnezeu și unchiul Robert', 'Lester Bauman', 262, 'Christian Aid Ministries', 10),
(890, 'L-am văzut pe Dumnezeu', 'Klaus-Dieter John', 846, 'Casa Cartii', 10);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `category`
--

CREATE TABLE `category` (
  `id_categorie` int(11) NOT NULL,
  `categorie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `category`
--

INSERT INTO `category` (`id_categorie`, `categorie`) VALUES
(1, 'Beletristica'),
(2, 'Teologie'),
(3, 'Viata crestina'),
(4, 'Copii'),
(5, 'Familie'),
(6, 'Istorie crestina'),
(7, 'Predicare'),
(8, 'Comentarii'),
(9, 'Lideri si invatatori'),
(10, 'Povesti'),
(11, 'Tineret'),
(12, 'Marturii'),
(13, 'Necrestine');

-- --------------------------------------------------------

--
-- Substitut structură pentru vizualizare `imprumut`
-- (Vezi mai jos vizualizarea actuală)
--
CREATE TABLE `imprumut` (
`nume` mediumtext
,`titlu` text
,`nr_carte` int(50)
,`data_imprumut` datetime
,`data_returnare` datetime
);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `rent`
--

CREATE TABLE `rent` (
  `id_rent` int(6) UNSIGNED NOT NULL,
  `id_book` int(6) UNSIGNED DEFAULT NULL,
  `id_user` int(6) UNSIGNED DEFAULT NULL,
  `data_imprumut` datetime NOT NULL,
  `data_returnare` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `rent`
--

INSERT INTO `rent` (`id_rent`, `id_book`, `id_user`, `data_imprumut`, `data_returnare`) VALUES
(36, 812, 42, '2021-09-18 19:56:33', '2021-09-18 19:58:03'),
(37, 31, 40, '2021-09-18 19:59:53', '2021-09-18 20:00:10'),
(38, 280, 103, '2021-11-11 19:56:23', '2021-11-18 19:37:04'),
(39, 621, 103, '2021-11-18 19:36:38', '0000-00-00 00:00:00'),
(40, 170, 104, '2021-11-21 19:17:45', '2022-01-01 20:22:57'),
(41, 112, 35, '2021-12-12 12:05:55', '0000-00-00 00:00:00'),
(42, 514, 35, '2021-12-12 12:06:25', '0000-00-00 00:00:00'),
(43, 709, 35, '2021-12-12 12:06:49', '0000-00-00 00:00:00'),
(44, 33, 79, '2021-12-12 12:08:42', '0000-00-00 00:00:00'),
(45, 159, 41, '2022-01-01 20:24:07', '2022-02-15 11:20:31'),
(46, 160, 41, '2022-01-01 20:24:25', '2022-02-15 11:19:56'),
(47, 386, 105, '2022-01-06 19:41:19', '2022-02-06 20:04:18'),
(48, 119, 106, '2022-01-09 12:11:11', '2022-02-06 12:13:40'),
(49, 120, 106, '2022-01-09 12:11:36', '2022-02-06 12:13:53'),
(50, 118, 106, '2022-01-09 12:11:50', '2022-02-06 12:13:27'),
(51, 239, 102, '2022-01-09 20:15:10', '2022-02-13 20:10:58'),
(52, 158, 41, '2022-01-16 12:10:05', '2022-02-15 11:20:56'),
(53, 157, 86, '2022-01-16 12:10:43', '2022-02-15 11:21:34'),
(54, 156, 86, '2022-01-16 12:11:03', '2022-02-15 11:21:55'),
(55, 524, 107, '2022-01-23 12:18:33', '0000-00-00 00:00:00'),
(56, 133, 106, '2022-02-06 12:14:42', '2022-02-27 13:12:37'),
(57, 134, 106, '2022-02-06 12:15:15', '2022-02-27 13:13:05'),
(58, 386, 108, '2022-02-10 17:59:39', '2022-03-27 20:15:34'),
(59, 506, 108, '2022-02-10 17:59:55', '0000-00-00 00:00:00'),
(60, 71, 102, '2022-02-13 20:11:17', '2022-03-27 20:16:05'),
(61, 813, 109, '2022-02-15 13:18:28', '0000-00-00 00:00:00'),
(62, 162, 41, '2022-02-15 14:02:05', '2022-02-24 17:43:58'),
(63, 132, 106, '2022-02-27 13:13:28', '0000-00-00 00:00:00'),
(64, 131, 106, '2022-02-27 13:14:01', '0000-00-00 00:00:00'),
(65, 206, 98, '2022-03-04 19:05:37', '2022-03-27 20:16:33'),
(66, 34, 102, '2022-03-27 20:17:18', '0000-00-00 00:00:00'),
(67, 180, 98, '2022-03-27 20:17:35', '0000-00-00 00:00:00'),
(68, 201, 98, '2022-03-27 20:18:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(6) UNSIGNED NOT NULL,
  `nume` mediumtext DEFAULT NULL,
  `adresa` text DEFAULT NULL,
  `telefon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `user`
--

INSERT INTO `user` (`id_user`, `nume`, `adresa`, `telefon`) VALUES
(20, 'Iordănescu Beni', 'str. Bistrita, nr 13A, Tg-Jiu, Gorj', '0762278352'),
(21, 'Țughin Maria', 'str. Aleea Pacii, bl 4, sc 2, ap 4, Tg-Jiu, Gorj', '0253243903'),
(22, 'Covrig Vica', 'str. lotrului, bl 13B, sc 1, ap 35, Tg-Jiu, Gorj', '0760325310'),
(23, 'Giugelea Cornelia', 'comuna Balesti, sat Talpasesti, Gorj', '0761299512'),
(24, 'Iordănescu Vasile', 'str Bistrita, nr 15, Tg-Jiu, Gorj', '0253216175'),
(25, 'Botănel Denisa', 'str Petresti nr 104', '0743185999'),
(26, 'Botănel Elisa', 'str Petresti, nr 104', '0767357243'),
(27, 'Botănel Andreea', 'str Petresti nr 104', '0764161548'),
(28, 'Țughin Denisa', 'str. Pacii, bl 4, sc 2, ap 7, Tg-Jiu, Gorj', '0765692764'),
(29, 'Ciocioman Daniela ', 'str. Mioritei, bl 19, sc 2, ap 27, Tg-Jiu, Gorj', '0784062043'),
(30, 'Bejinaru Claudiu', 'str. susita, nr 39, Tg-Jiu, Gorj', '0762300433'),
(31, 'Coancă Casiana', 'str. Victor Daimaca, nr 24, Tg-Jiu, Gorj', '0764539888'),
(32, 'Gherghinoiu Bianca', 'str Macesului, nr 44, Tg-Jiu, Gorj', '0769606388'),
(33, 'Cercelaru Robert', 'str. Aleea Primaverii, nr 9A, Tg-Jiu, Gorj', '0763687391'),
(34, 'Ozon Elisabeta', 'str. Motrului, nr 11, Tg-Jiu, Gorj', '0726100267'),
(35, 'Coancă Naomi', 'str. Victor Daimaca, nr 24, Tg-Jiu, Gorj', '0759517003'),
(36, 'Dumitrescu Cristina', 'str Slobozia, nr 77, Gorj', '0762913777'),
(37, 'Rusu Ioan Florin', 'str. Victoriei, bl 194, sc 1, ap 7, Tg-Jiu, Gorj', '0353404847'),
(38, 'Balan Adrian', 'str Petresti, nr 111, Tg-Jiu, Gorj', '0748881758'),
(39, 'Cercelaru Emanuel', 'str. Aleea Primaverii, nr 19, Tg-Jiu, Gorj', '0763687391'),
(40, 'Botănel Claudiu', 'str Petresti, nr 111A, Tg-Jiu, Gorj', '0767433381'),
(41, 'Botănel Adina', 'str Petresti, nr 111A, Tg-Jiu, Gorj', '0761242005'),
(42, 'Botănel Radu', 'str. Petresti, nr. 111A, Tg-Jiu, Gorj', '0787460913'),
(43, 'Cercelaru Leonard', 'str. Aleea Primaverii, nr 19A, Tg-Jiu, Gorj', '0763687391'),
(44, 'Pâslea Mădălina', 'str. Victor Daimaca, nr 1, Tg-Jiu, Gorj', '0766603095'),
(45, 'Botănel Ciprian', 'str Petresti, nr 111A, Tg-Jiu, Gorj', '0760701311'),
(46, 'Toaxen Abbel', 'str Turcinesti, nr 2 A', '0761826216'),
(47, 'Brîndușoiu Ștefan', 'str Bistrita nr 39, Tg-Jiu, Gorj', '0763334762'),
(48, 'Dumitrescu Sergiu', 'str Comuna din paris, bl 11, sc 1, et 1, ap 7', '0762913777'),
(49, 'Ozon Tabita', 'str Motrului, nr 11, Tg-Jiu, Gorj', '0762778614'),
(50, 'Gheorghiță Ionatan', 'str Victoriei, bl 194, sc 2, ap 14, Tg-Jiu, Gorj', '0253240053'),
(51, 'Dumitrescu David', 'str Slobozia, nr 170, Gorj', '0760102832'),
(52, 'Gheorghiță Elisei', 'str 9 Mai, bl 5, sc 1, et 3, ap 11, Tg-Jiu, Gorj', '0765680679'),
(53, 'Bordînc Lidia', 'str Lc Col Dum Petrescu, sc 1, bl 13, ap 15, Tg-Jiu, Gorj  ', '0769783550'),
(54, 'Bordînc Alex', 'str Loc Col Dum Petrescu, sc 1, bl 13, ap 15, Tg-Jiu, Gorj', '0769783550'),
(55, 'Gheorghiță Oana', 'str. Susita, nr 39, Gorj', '0765369766'),
(56, 'Balan Razvan', 'str Petresti, nr 111, Tg-Jiu, Gorj', '0773772035'),
(57, 'Țughin Lidia', 'str Olari, bl 1, sc 1, ap 4, Tg-Jiu, Gorj', '0763748623'),
(58, 'Poenaru Miriam', 'str Merilor, nr 3, Tg-Jiu, Gorj', '0785215506'),
(59, 'Poenaru Ligia', 'str Merilor, nr 3, Tg-Jiu, Gorj', '0785215506'),
(60, 'Brîndușoiu Andrei', 'str Bistritei, nr 39, Tg-Jiu, Gorj', '0763334762'),
(61, 'Brîndușoiu Paul', 'str Bistrita, nr 38, Tg-Jiu, Gorj', '0763334762'),
(62, 'Cercelaru Călin', 'str Nicolae Titulescu, bl 13, sc 1, ap 29, Tg-Jiu, Gorj', '0786336796'),
(63, 'Brândușoiu Albert', 'str Bistrita, nr 39, Tg-Jiu, Gorj', '0763334762'),
(64, 'Botănel Mihai', 'str Loc Col Dum Petrescu, bl 11, sc 5, ap 4', '0762525036'),
(65, 'Gheorghiță Damaris', 'str Victoriei, bl 2, sc 2, ap 14, Tg-Jiu, Gorj ', '0769564038'),
(66, 'Bordînc Teodora', 'str 11 Iunie, nr 13, Tg-Jiu, Gorj', '0762284528'),
(67, 'Toderici Cristina', 'str Gilortului, nr 22, Tg-Jiu, Gorj', '0761525610'),
(68, 'Stoica Mădălin', 'str Victoriei, bl 194, sc 2, et 3, ap 14', '0761658440'),
(69, 'Cercelaru Lidia', 'str Calea Bucuresti, nr 66, bl 24, ap 2, sc 1, Tg-Jiu, Gorj', '0761234568'),
(70, 'Stoica Tabita', 'str Victoriei, bl 194, sc 2, et 3, ap 14. Tg-Jiu, Gorj', '0767012949'),
(71, 'Bordînc Irina', 'str 11 Iunie, nr 13, Tg-Jiu, Gorj', '0764140451'),
(72, 'Cercelaru Tiberiu', 'str Aleea Primaverii, nr 19A, Tg-Jiu, Gorj', '0763687391'),
(73, 'Peagu Roberta', 'str Minerilor, bl 9, sc 7, ap 175', '0766352291'),
(74, 'Cercelaru Emil', 'str Mioritei, bl 6, sc 1, et 1, ap 26', '0767445202'),
(75, 'Toaxen Tabita ', 'str Turcinesti, nr 2A, Gorj', '0764478026'),
(76, 'Dunăreanu Daniela', 'str Luncilor, nr 71, Tg-Jiu, Gorj', '0746399883'),
(77, 'Botănel Ruben', 'str Petresti, nr 104, Tg-Jiu, Gorj', '0743049521'),
(78, 'Gheorghiță Samuel', 'str Victoriei, bl 194, sc 2, ap 14, et 3,Tg-Jiu, Gorj', '0766911357'),
(79, 'Botănel Melisa', 'str Petresti, nr 111A, Tg-Jiu, Gorj', '0760988031'),
(80, 'Botănel Eugen', 'str Loc Col Dum Petrescu, bl 11, sc 5, ap 4', '0729834437'),
(81, 'Dunăreanu Elisabeta', 'str Pandrui, nr 71, Tg-Jiu, Gorj', '0762939299'),
(82, 'Botănel Ana', 'str Loc Col Dum Petrescu, bl 11, sc 5, ap 4, Tg-Jiu, Gorj', '0769994969'),
(83, 'Dunăreanu Eunice', 'str Panduri nr 71, Tg-Jiu, Gorj', '0762686566'),
(84, 'Botănel Bogdan', 'str Loc Col Dum Petrescu, bl 11, sc 5, ap 4, Tg-Jiu, Gorj', '0762525279'),
(85, 'Giurma Gabriel', 'comuna Scoarta, sat Copacioasa, nr 52A', '0768744635'),
(86, 'Botănel Larisa', 'str Petresti, nr 111A, Tg-Jiu, Gorj', '0765367998'),
(87, 'Cercelaru Andra', 'str Aleea Primaverii, nr 19A, Tg-Jiu, Gorj', '0767277123'),
(88, 'Giurma Andreea-Hermina', 'str slc Ion Fota, bl 1, sc 1, ap 37, Tg-Jiu, Gorj', '0768514834'),
(89, 'Ozon Emanuel', 'str Motrului, nr 11, Tg-Jiu, Gorj', '0761658688'),
(90, 'Bordânc Loredana', 'str Loc Col Dum Petrescu, sc 1, ap 15, bl 13, Tg-Jiu, Gorj', '0769783550'),
(91, 'Roșcaș Cristina-Cătălina', 'str Ec Teodoroiu, nr 342, Tg-Jiu, Gorj', '0764086761'),
(92, 'Cercelaru Damian', 'str Nicolae Titulescu, bl 13, sc 1, ap 29, et 7, Tg-Jiu, Gorj', '0786336796'),
(93, 'Giruma Naomi', 'sat Copacioasa, com Scoarta, Gorj', '0762464559'),
(94, 'Popescu Ana-Maria', 'str Aleea Plopilo, bl 28, sc 1, ap 18, et 4, Tg-Jiu, Gorj', '0762417148'),
(95, 'Oprița Alexandra', 'str Loc Col Dum Petresuc, bl 12, sc 4, ap 6, et 1, Tg-Jiu, Gorj', '0768740458'),
(96, 'Botănel Filip', 'str Petresti, nr 111A, Tg-Jiu, Gorj', '0785265163'),
(97, 'Gheorghiță Maria', 'str Romanesti, nr 3, Tg-Jiu, Gorj', '0725575095'),
(98, 'Iordănescu Ana', 'Tg-Jiu, Gorj', '0765410733'),
(99, 'Cercelaru Ruth', 'str Calea Bucuresti, nr 64, bl 64, sc 1, ap 2, Tg-Jiu, Gorj', '0769234187'),
(100, 'Cercelaru Ștefan', 'str Calea Bucuresti, nr 64, bl 64, sc 1, ap 2, Tg-Jiu, Gorj', '0769234187'),
(101, 'Gheorghiță Ellyas', 'Tg-Jiu, Gorj', '0766290818'),
(102, 'Gheorghiță Ayanna', 'Tg-Jiu, Gorj', '0766290818'),
(103, 'Ladaru Cristina', 'Curtisoara', '0761380108'),
(104, 'Cercelaru Otniel', 'str. Nicolae Titulescu', '0786336796'),
(105, 'Eduard Popescu', 'str Libertatii nr 2', '0772039897'),
(106, 'Dana Candea', 'str Unirii  nr 131', '0760597897'),
(107, 'Iosif Cercelaru', 'str', '0769234187'),
(108, 'Rusu Diana', 'str Victoriei 194', '0762171139'),
(109, 'Flori Bunescu', 'Bâlteni', '0767138018');

-- --------------------------------------------------------

--
-- Structură pentru vizualizare `imprumut`
--
DROP TABLE IF EXISTS `imprumut`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imprumut`  AS SELECT `user`.`nume` AS `nume`, `book`.`titlu` AS `titlu`, `book`.`nr_carte` AS `nr_carte`, `rent`.`data_imprumut` AS `data_imprumut`, `rent`.`data_returnare` AS `data_returnare` FROM ((`rent` join `book` on(`rent`.`id_book` = `book`.`id_book`)) join `user` on(`rent`.`id_user` = `user`.`id_user`)) ;

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `categorie` (`categorie`);

--
-- Indexuri pentru tabele `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexuri pentru tabele `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`id_rent`),
  ADD KEY `id_book` (`id_book`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexuri pentru tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=891;

--
-- AUTO_INCREMENT pentru tabele `category`
--
ALTER TABLE `category`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pentru tabele `rent`
--
ALTER TABLE `rent`
  MODIFY `id_rent` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pentru tabele `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `category` (`id_categorie`);

--
-- Constrângeri pentru tabele `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`),
  ADD CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
--
-- Bază de date: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Eliminarea datelor din tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Eliminarea datelor din tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"biblioteca\",\"table\":\"book\"},{\"db\":\"biblioteca\",\"table\":\"imprumut\"},{\"db\":\"biblioteca\",\"table\":\"rent\"},{\"db\":\"biblioteca\",\"table\":\"greseala\"},{\"db\":\"biblioteca\",\"table\":\"category\"},{\"db\":\"biblioteca\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Eliminarea datelor din tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'biblioteca', 'greseala', '{\"sorted_col\":\"categorie\"}', '2021-09-17 16:09:24');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Eliminarea datelor din tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-20 10:32:24', '{\"Console\\/Mode\":\"show\",\"lang\":\"ro\",\"Console\\/Height\":244.971}');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexuri pentru tabele `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexuri pentru tabele `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexuri pentru tabele `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexuri pentru tabele `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexuri pentru tabele `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexuri pentru tabele `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexuri pentru tabele `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexuri pentru tabele `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexuri pentru tabele `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexuri pentru tabele `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexuri pentru tabele `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexuri pentru tabele `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexuri pentru tabele `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexuri pentru tabele `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexuri pentru tabele `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexuri pentru tabele `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexuri pentru tabele `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Bază de date: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- phpMyAdmin SQL Dump
-- phpMyAdmin SQL Dump
