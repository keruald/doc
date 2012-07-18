
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_resource` tinyint(4) NOT NULL DEFAULT '1',
  `session_ip` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` smallint(5) NOT NULL DEFAULT '-1',
  `session_updated` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_online` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`session_id`),
  KEY `session_ressource` (`session_resource`),
  KEY `session_updated` (`session_updated`)
) ENGINE=MEMORY;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(11) NOT NULL DEFAULT '',
  `user_password` varchar(32) NOT NULL DEFAULT '',
  `user_active` tinyint(1) NOT NULL DEFAULT '0',
  `user_actkey` varchar(11) DEFAULT NULL,
  `user_email` varchar(63) NOT NULL DEFAULT '',
  `user_regdate` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
);
