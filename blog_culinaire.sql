-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 10 sep. 2021 à 10:26
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_culinaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_commentaire`
--

CREATE TABLE `t_commentaire` (
  `com_id` int(11) NOT NULL,
  `com_auteur` varchar(255) NOT NULL,
  `com_contenu` text NOT NULL,
  `id_rec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Déchargement des données de la table `t_commentaire`
--

INSERT INTO `t_commentaire` (`com_id`, `com_auteur`, `com_contenu`, `id_rec`) VALUES
(1, 'Clément', 'Très simple et efficace, j\'ai utilisé le reste de fromage pour le faire fondre avec du miel et la ciboulette pour reverser par dessus et accompagné le tout avec une salade d\'endives.', 1),
(2, 'Maria', 'Trop gras et le fromage est trop fort. Une cata.', 1),
(3, 'Bénédicte', 'C\'est WOOOW !!!!!!', 1),
(4, 'Rwann', 'Je n\'ai fait que 12 crepes au lieu de 24', 2),
(5, 'Malik', 'Je la fais régulièrement et toujours autant délicieuse', 2),
(6, 'Lile', 'Surtout pas de pommes de terre ni de haricots verts dans la salade niçoise ! Pas de salade non plus d’ailleurs !! Et le poivron vert doit être un poivron-salade (long et fin). Sinon ok !!', 5),
(7, 'Cafinette', 'Très bonne recette. A faire et refaire. Merci.', 5),
(8, 'Guilyan_78', 'je n\'ai fait que 12 crepes au lieu de 24', 2),
(9, 'Aromatix', 'Très bonne recette, à laquelle j\'ai l\'habitude d\'ajouter des haricots verts cuits et froids coupés en morceaux.', 5),
(10, 'Mecamas', 'Vous pouvez essayer aussi en remplaçant l\'aneth par l\'estragon, c\'est bon ;)', 6),
(11, 'felix_13766875', 'J\'ai mis moitié haddock, moitié saumon, tomates cerises, citron ciboulette et oignons blancs émincés...', 6),
(12, 'enzo_14255951', 'Fait le 30/12/2010 en salade. Pas mal sans plus avec un peu huile d\'olive mais pas de citron ni d\'aneth', 6),
(13, '\r\nAveyron45', 'Très bonne recette de base. Personnellement, je n\'attends pas que les morceaux de viande soient cuits mais simplement dorés de tous les côtés car sinon, je trouve que la viande durcie. En même temps que le vin, j\'ajoute un gros filet de crème de cassis. Cela rajoute une petite touche de goût et de l\'onctuosité. Si je sert le plat avec des pommes de terre, je les rajoute 30 à 45 mn avant la fin de la cuisson selon leur taille et leur variété', 7),
(14, 'marioche', 'Recette tout simplement parfaite, personnellement j’ajoute les pommes de terre directement dans ma marmite et je les laisse mijoter 1h30 avec tout le reste!', 7),
(15, 'user12128', 'Un bon plat d hiver adopter par mon fils et mon mari un délice. Très bonne recette', 7),
(16, '\r\nOshenn', 'Vous pouvez rajouter une ou deux feuilles de laurier et un demi bâton de cannelle ça donner du goût', 8),
(17, 'focazelle', 'J\'ai ajouté du tabasco et des olives que j\'avais faites moi meme, marinées dans de l\'huile d\'olive et des herbes de provence. Malgré cela, ça manque un peu de gout', 8),
(18, 'Emlimi13', 'Très bon mais les carottes servent pas à grand chose', 8),
(19, 'adammo', 'Délicieux', 9),
(20, 'Claire_Frileux', 'Rapide et très bon. Fait l\'unanimité !', 9),
(21, 'Marsupil80', 'Rapide, facile et delicieux !', 9),
(22, 'Maminou_65', 'Manque le sucre,', 10),
(23, 'aorelia03', 'Devenu un classique de la maison ! Delicious !!', 10),
(24, 'Maribel269', 'Recette très simple et gâteau très bon. Mais, en lisant les commentaires, j’ai augmenté les quantités, 5 œufs et le reste au prorata, avec 820g de crème de marrons, mais les quantités de la recette originale sont assez vagues. J’ai utilisé un moule à kouglof. Cuisson 45 min à 180 (toujours en me basant sur les avis). Catastrophe : gâteau pas assez cuit et impossible à démouler. Je conseille donc à mon tour de faire un premier essai pour trouver le bon moule (manqué ou savarin) et les bons réglages de cuisson.', 10),
(25, 'elsarbrt_', 'je pense que ceux qui ont eu une crème et une pâte trop liquide s’y sont simplement mal pris, la vidéo est très pratique, j’ai réussi mon premier paris brest', 11),
(26, '\r\nplumdu81', 'Attention si votre pâte ne prend pas, c’est probablement une question de température! 180ºC c’est pas suffisant, mettre 200°C plutôt.', 11),
(27, 'Pancakeman', 'Deuxième fois que je réalise cette recette et elle est génial, un peu bourrative mais pour y remédier petite diminution de beurre et de pralin dans la crème. Recette pour 4 gourmand et 6 petite faim', 11),
(28, 'CarottesMerguez', 'Délicieux. Un oignon, une gousse d\'ail pour ma part. Un vrai régal.', 12),
(29, 'marjou67', 'La présence de l\'ail et de l\'acide de la tomate relèvent parfaitement le hachis parmentier! ? Très bonne recette que je garde dans mes tiroirs ?', 12),
(30, 'cassandra09', 'Trop Bonne recette, très onctueux', 12);

-- --------------------------------------------------------

--
-- Structure de la table `t_recette`
--

CREATE TABLE `t_recette` (
  `rec_id` int(11) NOT NULL,
  `rec_nom` varchar(255) NOT NULL,
  `rec_resume` text NOT NULL,
  `rec_temps` varchar(255) NOT NULL,
  `rec_difficulte` varchar(255) NOT NULL,
  `rec_budget` varchar(255) NOT NULL,
  `rec_ingredients` text NOT NULL,
  `rec_image` varchar(255) NOT NULL,
  `rec_preparation` text NOT NULL,
  `rec_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Déchargement des données de la table `t_recette`
--

INSERT INTO `t_recette` (`rec_id`, `rec_nom`, `rec_resume`, `rec_temps`, `rec_difficulte`, `rec_budget`, `rec_ingredients`, `rec_image`, `rec_preparation`, `rec_categorie`) VALUES
(1, 'Oeuf cocotte en fromage', 'Plat fondant et onctueux!', '30 min', 'Très facile', 'Bon marché', '4 tranches de jambon\r\n4 oeufs\r\n4 neufchâtel\r\nsel\r\npoivre\r\nciboulette\r\n', 'oeuf_cocotte_fromage.jpg', 'ÉTAPE 1\r\nA l\'aide d\'un emporte pièce, faire un trou au centre du fromage. Attention à ne pas traverser le fromage !\r\n\r\nÉTAPE 2\r\nDéposer des lamelles de jambon au fond du trou, y casser un oeuf, saler et poivrer.\r\n\r\nÉTAPE 3\r\nParsemer de ciboulette ciselée.\r\n\r\nÉTAPE 4\r\nDéposer sur une plaque recouverte de papier sulfurisé et enfourner 15 minutes.\r\n\r\nÉTAPE 5\r\nDéguster bien chaud !', 'Entrée'),
(2, 'Pâte à crêpes', 'Pour profiter de bonnes crêpes toute l\'année.', '30 min', 'facile', 'Bon marché', '15 crêpes :\r\n300 g farine\r\n3 cas de sucre\r\n2 cas huile\r\n60 cl de lait\r\n5 cl de rhum\r\n3 oeufs entiers\r\n50 g de beurre fondu', 'pate_a_crepe.jpg', 'ÉTAPE 1\r\nMettre la farine dans une terrine et former un puits.\r\n\r\nÉTAPE 2\r\nY déposer les oeufs entiers, le sucre, l\'huile et le beurre.\r\n\r\nÉTAPE 3\r\nMélanger délicatement avec un fouet en ajoutant au fur et à mesure le lait. La pâte ainsi obtenue doit avoir une consistance d\'un liquide légèrement épais.\r\n\r\nÉTAPE 4\r\nParfumer de rhum.\r\n\r\nÉTAPE 5\r\nFaire chauffer une poêle antiadhésive et la huiler très légèrement. Y verser une louche de pâte, la répartir dans la poêle puis attendre qu\'elle soit cuite d\'un côté avant de la retourner. Cuire ainsi toutes les crêpes à feu doux.', 'Dessert'),
(5, 'Salade niçoise', 'Très frais et très gourmant.', '28 min', 'Très facile', 'Bon marché', '4 tomates ronde assez fermes\r\nbasilic\r\nvinaigre de vin rouge\r\nhuile d\'olive\r\npoivre\r\nsel\r\n4 oeufs\r\n2 oignons cébettes \r\n8 févettes\r\n1 poivron vert\r\n200g de thon au naturel\r\n4 filets d\'anchois au sel', 'salade_nicoise.jpg', 'ÉTAPE 1\r\nPour réaliser la salade niçoise, il suffit de rassembler tous les ingrédients, puis de procéder de la manière suivante...\r\n\r\nÉTAPE 2\r\nFaire durcir les oeufs (6 à 8 minutes après ébullition de l\'eau), puis les faire bien refroidir à l\'eau froide.\r\n\r\nÉTAPE 3\r\nHacher les cébettes et les disposer au fond du plat.\r\n\r\nÉTAPE 4\r\nAjouter les févettes, le poivron vert finement coupé, les radis coupés en rondelles et le thon bien égouté et émietté. Mélanger grossièrement tous ces ingrédients avec du sel et du poivre.\r\n\r\nÉTAPE 5\r\nCouper les tomates en fines rondelles et les ajouter ainsi que les artichauts Couper les oeufs durs en quartiers et les disposer sur le dessus et ajouter les filets d\'anchois, les olives noires et le basilic finement ciselé.\r\n\r\nÉTAPE 6\r\nEnfin, saupoudrer de sel et de poivre, puis arroser d\'huile d\'olive et de vinaigre de vin.\r\n\r\nÉTAPE 7\r\nMettre au frais 1 heure et bien mélanger la salade juste avant de la servir.', 'Entrée'),
(6, 'Salade de pâtes au saumon fumé', 'Pour vous rappeler vos vacances.', '30 min', 'Très facile', 'Moyen', 'pâtes\r\n6 c.à.s d\'huile d\'olive\r\ncitron\r\naneth séchée ou frais\r\n4 tranches de saumon fumé', 'salade_pate_saumon.jpg', 'ÉTAPE 1\r\nCuire les pâtes dans de l\'eau bouillante salée légèrement, à cause du saumon.\r\n\r\nÉTAPE 2\r\nLes égoutter et passer sous l\'eau fraîche.\r\n\r\nÉTAPE 3\r\nAjouter le saumon coupé, en petits morceaux, l\'huile, le jus de citron et l\'aneth. Bien mélanger et mettre un peu au frigo pour servir bien frais.', 'Entrée'),
(7, 'Boeuf bourguignon', 'Ce bon plat du dimanche !', '6h', 'Facile', 'Moyen', '4 carottes\r\n1 bouquet garni\r\n1 bouteille de vin rouge assez bon\r\nsel\r\npoivre\r\n600 g de bourguignon\r\n4 oignons\r\n100 g de beurre', 'boeuf_bourguignon.jpg', 'ÉTAPE 1\r\nDétailler la viande en cubes de 3 cm de côté, enlever les gros morceaux de gras.\r\n\r\nÉTAPE 2\r\nCouper l\'oignon en morceaux. Le faire revenir dans une poêle au beurre. Une fois transparent, le verser dans une cocotte en fonte de préférence.\r\n\r\nÉTAPE 3\r\nProcéder de même avec la viande mais en plusieurs fois, jusqu\'à ce que tous les morceaux soient cuits. Les ajouter au fur et à mesure dans la cocotte. Ne pas avoir peur d\'ajouter du beurre entre chaque fournée.\r\n\r\nÉTAPE 4\r\nQuand toute la viande est dans la cocotte, déglacer la poêle avec de l\'eau ou du vin et faire bouillir en raclant pour récupérer le suc. Saler, poivrer, ajouter au reste.\r\n\r\nÉTAPE 5\r\nRecouvrir le tout avec une partie du vin et faire mijoter quelques heures avec le bouquet garni et les carottes en rondelles.\r\n\r\nÉTAPE 6\r\nLe lendemain, faire mijoter au moins 2 heures en plusieurs fois, ajouter du vin ou de l\'eau si nécessaire.', 'Plat'),
(8, 'Spaghetti bolognaise', 'Toujours aussi appétissant et délicieux.', '1 h 20 min', 'Très facile', 'Bon marché', '2 gousses d\'ail\r\n1 carotte\r\n1 branche de céleri\r\n850 g de tomate\r\n37.5 ml de vin rouge\r\n50 cl de bouillon\r\npersil\r\n1 c.à.c de sucre\r\n2 c.à.s d\'huile\r\n500 g de spaghetti\r\n1 oignon\r\n500 g de boeuf haché', 'spaghetti_bolognaise.jpg', 'ÉTAPE 1\r\nail\r\noignon\r\ncarotte\r\ncéleri\r\nHachez l\'ail, l\'oignon, puis coupez la carotte et le céleri en petits dés (enlevez les principales nervures du céleri).\r\n\r\nÉTAPE 2\r\nhuile\r\nFaites chauffer l\'huile dans une casserole assez grande. Faites revenir l\'ail, l\'oignon, la carotte et le céleri à feu doux pendant 5 min en remuant.\r\n\r\nÉTAPE 3\r\nboeuf haché\r\nAugmenter la flamme, puis ajoutez le boeuf. Faites brunir et remuez de façon à ce que la viande ne fasse pas de gros paquets.\r\n\r\nÉTAPE 4\r\nvin rouge\r\nbouillon\r\nsucre\r\npersil\r\nAjoutez le bouillon, le vin rouge, les tomates préalablement coupées assez grossièrement, le sucre et le persil haché. Portez à ébullition.\r\n\r\nÉTAPE 5\r\nBaisser ensuite le feu et laissez mijoter à couvert 1h à 1h30, de façon à ce que le vin s\'évapore.\r\n\r\nÉTAPE 6\r\nspaghetti\r\nFaites cuire les spaghetti, puis mettez-les dans un plat.\r\n\r\nÉTAPE 7\r\nAjoutez la sauce bolognaise.', 'Plat'),
(9, 'Burger maison', 'Cette recette américaine ravivera votre gourmandise!', '10min', 'Très facile', 'Bon marché', 'tomate\r\nmoutarde\r\nketchup\r\npain pour hamburger\r\nviande hachée\r\noignon\r\ncheddar\r\nsalade', 'burger.jpg', 'ÉTAPE 1\r\nFaites revenir les oignons à feux doux.\r\n\r\nÉTAPE 2\r\nAjouter les steaks.\r\n\r\nÉTAPE 3\r\nUne fois saisi, poser une tranche de cheddar sur le steak et laisser fondre.\r\n\r\nÉTAPE 4\r\nUne fois cuit, déposer le steak et le fromage sur une des tranches du pain que vous aurez auparavant tartinée d\'un mélange de ketchup et de moutarde.\r\n\r\nÉTAPE 5\r\nAjouter la salade et de petites rondelles de tomates.\r\n\r\nÉTAPE 6\r\nVous pouvez maintenant recouvrir la préparation de l\'autre tranche (avec ketchup et moutarde)', 'Plat'),
(10, 'Gâteau à la crème de marron', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec erat vel diam elementum tempus. Aenean eu ultricies risus. Integer iaculis.', '50 min', 'Très facile', 'Moyen', '1 grosse cuillère de farine \r\n1 c.à.s de rhum ou de cognac\r\n1 boîte de crème de marron\r\n50 g de beurre fondu\r\n3 oeufs\r\n3 oeufs montés en neige', 'gateau_marron.jpg', 'ÉTAPE 1\r\nMélanger tous les ingrédients les uns après les autres (finir par les blancs montés en neige).\r\n\r\nÉTAPE 2\r\nMettre dans un moule à manqué au four pendant 30 minutes à 180°C (thermostat 6).', 'Dessert'),
(11, 'Paris-Brest', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec erat vel diam elementum tempus. Aenean eu ultricies risus. Integer iaculis.', '1 h 15 min', 'Difficile', 'Moyen', 'Pour la crème :\r\n25 cl de lait\r\n20 g de maïzena\r\n60 g de sucre\r\n115 g de pralin en poudre\r\n3 jaunes d\'oeuf\r\n125 g de beurre tendre\r\n\r\nPour la pâte :\r\n12.5 cl de lait et eau\r\n10 g de sucre en poudre\r\n50 g de farine\r\n20 g de maïzena\r\n20 g d\'amandes effilées\r\nsel\r\nsucre glace\r\n55 g de beurre\r\n2 oeufs', 'paris_brest.jpg', 'ÉTAPE 1\r\nFaites d’abord la crème. Portez le lait à ébullition. Fouettez les jaunes avec le sucre jusqu’à ce qu’ils blanchissent, incorporez la Maïzena. Versez dessus le lait bouillant en filet en fouettant. Faites épaissir sur feu moyen en remuant jusqu’à l’ébullition. Laissez refroidir.\r\n\r\nÉTAPE 2\r\nTravaillez le beurre en pommade. Incorporez la crème pâtissière et le praliné, en fouettant afin de bien aérer la masse.\r\n\r\nÉTAPE 3\r\nAllumez le four à 180°C . Couvrez la plaque de papier sulfurisé. Portez l’eau et le lait à ébullition avec le beurre, le sucre et une pincée de sel. Ajoutez la farine et la Maïzena d’un coup. Remuez vivement jusqu’à ce que la pâte se détache des parois. Eteignez le feu, incorporez les oeufs un à un en fouettant avec vigueur. Cessez de fouetter quand la pâte est lisse.\r\n\r\nÉTAPE 4\r\nFaites un cercle de pâte de 20 cm sur la plaque avec une poche à douille. Formez un second cercle dessus puis un troisième. Décorez d’amandes.\r\n\r\nÉTAPE 5\r\nFaites dorer 30 mn au four. Laissez refroidir au four éteint, porte entrouverte. Tranchez la couronne dans l’épaisseur.\r\n\r\nÉTAPE 6\r\nGarnissez le bas de crème, remettez le couvercle et poudrez de sucre glace.', 'Dessert'),
(12, 'Hachie parmentier', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vehicula imperdiet luctus. Maecenas sit amet porta diam. Donec accumsan, sapien ut tempor tincidunt, dolor eros laoreet diam, sed.', '45 min', 'Facile', 'Bon marché', '300 g de purée\r\n2 gousses d\'ail\r\n2 tomates fraîches\r\n1 c.à.s de farine\r\n1 pincée d\'herbes de Provence\r\n30 g de parmesan\r\nsel\r\npoivre\r\n400 g de viande hachée\r\n2 oignons\r\n1 jaune d\'oeuf\r\n30 g de beurre\r\n50 g de fromage râpé', 'hachie_parmentier.jpg', 'ÉTAPE 1\r\nHacher l\'oignon et l\'ail. Les faire revenir dans le beurre jusqu\'à ce qu\'ils soient tendres.\r\n\r\nÉTAPE 2\r\nAjouter les tomates coupées en dés, la viande hachée, la farine, du sel, du poivre et les herbes de Provence.\r\n\r\nÉTAPE 3\r\nQuand tout est cuit, couper le feu et ajouter le jaune d\'oeuf et un peu de parmesan. Bien mélanger.\r\n\r\nÉTAPE 4\r\nPréchauffer le four à 200°C (thermostat 6-7). Etaler au fond du plat à gratin. Préparer la purée. L\'étaler au dessus de la viande. Saupoudrer de fromage râpé et faire gratiner.', 'Plat');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_commentaire`
--
ALTER TABLE `t_commentaire`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `FK_recette_commentaire` (`id_rec`);

--
-- Index pour la table `t_recette`
--
ALTER TABLE `t_recette`
  ADD PRIMARY KEY (`rec_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_commentaire`
--
ALTER TABLE `t_commentaire`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `t_recette`
--
ALTER TABLE `t_recette`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_commentaire`
--
ALTER TABLE `t_commentaire`
  ADD CONSTRAINT `FK_recette_commentaire` FOREIGN KEY (`id_rec`) REFERENCES `t_recette` (`rec_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
