


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

CREATE TABLE `win_signup_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` smallint(5) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `signup_date` datetime NOT NULL,
  `accept` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `win_signup_data_center` (
  `mid` mediumint(9) unsigned NOT NULL AUTO_INCREMENT COMMENT '模組編號',
  `col_name` varchar(100) NOT NULL DEFAULT '' COMMENT '欄位名稱',
  `col_sn` mediumint(9) unsigned NOT NULL DEFAULT '0' COMMENT '欄位編號',
  `data_name` varchar(100) NOT NULL DEFAULT '' COMMENT '資料名稱',
  `data_value` text NOT NULL COMMENT '儲存值',
  `data_sort` mediumint(9) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `col_id` varchar(100) NOT NULL COMMENT '辨識字串',
  `sort` mediumint(9) unsigned COMMENT '顯示順序',
  `update_time` datetime NOT NULL COMMENT '更新時間',
  PRIMARY KEY (`mid`,`col_name`,`col_sn`,`data_name`,`data_sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;