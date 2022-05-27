-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 27 mai 2022 à 12:23
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
-- Base de données : `api_5hds_gestion_stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `token` varchar(256) NOT NULL,
  `price` int(255) NOT NULL,
  `stock` int(255) NOT NULL,
  `reference` varchar(256) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `token`, `price`, `stock`, `reference`, `created_at`, `update_at`) VALUES
(1, 'Coffee', 'du coffee tel un anglais', 'iC9VZOyeRl6kcjsIRJ1e', 5, 1000, '#05AOCH69', '2022-05-27 11:36:33', '2022-05-27 11:36:33');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  `prenom` varchar(256) NOT NULL,
  `token` varchar(256) NOT NULL,
  `roleUsers` varchar(256) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `token`, `roleUsers`, `created_at`, `update_at`) VALUES
(3, 'Julien,', 'Chapuis', 'fHCMKxNlQdZ5GShPTfJD', 'developpeur', '2022-05-27 11:37:00', '2022-05-27 11:37:00'),
(5, 'Tifa', 'Lockheart', 'Ozjo1cL2tsbc2hwTzbQZ', 'developpeur', '2022-05-27 11:37:30', '2022-05-27 11:37:30'),
(4, 'Marine', 'Kotagawa', 'jJdPOL3RcUbOdWV4QLdQ', 'developpeur', '2022-05-27 11:38:27', '2022-05-27 11:38:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
