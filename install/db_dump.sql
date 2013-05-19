
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

SELECT 'DROP TABLE ' + COALESCE(TABLE_SCHEMA + '.', '') + TABLE_NAME +'; '
FROM   INFORMATION_SCHEMA.TABLES;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `mdp` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nom` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `prenom` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `datenais` varchar(100) NOT NULL,
  `avatar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '1273417847.jpg',
  `sexe` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dateinscri` int(11) NOT NULL,
  `dervisit` int(11) NOT NULL,
  `rang` tinyint(4) DEFAULT '1',
  `propos` text NOT NULL,
  `wiki` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `irc` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `diaspora` varchar(255) DEFAULT NULL,
  `flickr` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `cle_activation` text NOT NULL,
  `code` text,
  `invit` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

CREATE TABLE `bug` (
  `id` int(11) NOT NULL auto_increment,
  `titre` text NOT NULL,
  `url` text NOT NULL,
  `descr` text NOT NULL,
  `prio` int(11) NOT NULL,
  `mail` text NOT NULL,
  `etat` int(11) NOT NULL,
  `datedec` int(11) NOT NULL,
  `dateres` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `event` (
  `id` int(11) NOT NULL auto_increment,
  `nomeve` varchar(255) NOT NULL,
  `lien` varchar(255) default NULL,
  `description` text,
  `org` varchar(255) default NULL,
  `hashtag` varchar(255) default NULL,
  `datedeb` int(11) default NULL,
  `datefin` int(11) default NULL,
  `heuredeb` varchar(100) NOT NULL,
  `heurefin` varchar(100) NOT NULL,
  `city` varchar(250) NOT NULL,
  `lieu` varchar(255) default NULL,
  `map` text NOT NULL,
  `nbpart` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `eventuser` (
  `id` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `idevent` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `interet` (
  `id` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `nomint` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `mp` (
  `id` int(11) NOT NULL auto_increment,
  `sujet` varchar(255) collate utf8_bin NOT NULL default '',
  `expediteur` varchar(255) collate utf8_bin NOT NULL default '',
  `destinataire` varchar(255) collate utf8_bin NOT NULL default '',
  `message` text collate utf8_bin NOT NULL,
  `timestamp` bigint(20) NOT NULL default '0',
  `vu` enum('0','1') collate utf8_bin NOT NULL default '0',
  `efface` enum('0','1','2') collate utf8_bin NOT NULL default '0',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

