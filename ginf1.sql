-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 jan. 2022 à 16:51
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ginf1`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `user`, `pass`) VALUES
(55, 'Sohaib.idalin', '1234567890'),
(56, 'yassir.idalin', '1234567890'),
(57, 'ammaar', '1234567890'),
(58, 'oussama.idalin', '1234567890');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `cne` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `photo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `user`, `nom`, `prenom`, `cne`, `email`, `tel`, `photo`) VALUES
(55, 'Sohaib.idalin', 'Idalin', 'Sohaib', 'KB196825', 'sohaibidalin2017@gmail.com', '0684317455', 'jpg'),
(56, 'yassir.idalin', 'Idalin', 'yassir', 'R130180340', 'yassiridalin15@gmail.com', '0677442466', 'png'),
(57, 'ammaar', 'ammar', 'idnasser', 'KB542987', 'ammar.idnasser@gmail.com', '0763845629', 'jpg'),
(58, 'oussama.idalin', 'oussama', 'idalin', 'KB431289', 'oussamaidalin@gmail.com', '0672948443', 'jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cne` (`cne`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
