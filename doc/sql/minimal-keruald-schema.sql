--
-- `sessions` table structure
-- Performance tip: you can change session_ip to CHAR(15) if you don't use ipv6.
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `session_resource` tinyint(4) unsigned NOT NULL DEFAULT '1', 
  `session_ip` varchar(80) CHARACTER SET ascii NOT NULL,
  `user_id` mediumint(9) NOT NULL DEFAULT '-1',
  `session_online` tinyint(1) NOT NULL DEFAULT '1',
  `session_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_updated` (`session_updated`),
  KEY `Where` (`session_resource`),
  KEY `session_online` (`session_online`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- `users` table structure
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` smallint(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(11) NOT NULL DEFAULT '',
  `user_password` varchar(32) DEFAULT NULL,
  `user_active` tinyint(1) NOT NULL DEFAULT '1',
  `user_email` varchar(63) NOT NULL DEFAULT '',
  `user_regdate` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;