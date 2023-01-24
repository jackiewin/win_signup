


CREATE TABLE `win_signup_actions` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `action_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `number` smallint(5) unsigned NOT NULL,
  `setup` text NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `enable` enum('1','0') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
