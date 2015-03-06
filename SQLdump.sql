create database if not exists sdn_db;

use sdn_db;

drop table if exists macrulestable;

CREATE TABLE IF NOT EXISTS `macRulesTable` (
`Index` integer PRIMARY KEY AUTO_INCREMENT NOT NULL,
`mac` bigint(228) NOT NULL,				#was bigint(228) but temporarily set as varchar(17) for testing purposes with the GUI
`block` tinyint(1) DEFAULT '0',
`user_total` bigint(9) DEFAULT '1',		#new user should get a maximum of 1GB of total allocaiton for personal user
`total_all` bigint(9) DEFAULT '60',		#to be updated when user generates initial setup
`start_time` time DEFAULT '12:00:00',	#start and stop time are set to a default 24h cycle
`stop_time` time DEFAULT '12:00:00',
`bw_limit` bigint(10) DEFAULT '4294967294'	#set for maximum rate in kb/s
`current_user_usage` #the usage per user
`current_total_usage` #the total usage over the internet duplicate for every user
`terminal_name' #string for GUI render without 
);

#temporarily used for testing purposes. Make sure to comment out in the final version
#INSERT INTO `macRulesTable` (`Index`,`mac`,`block`,`user_total`,`total_all`,`bw_limit`) VALUES (1,'00:1C:B3:09:85:15',0,60,180,4294967294);
#INSERT INTO `macRulesTable` (`Index`,`mac`,`block`,`user_total`,`total_all`,`bw_limit`) VALUES (2,'00:1C:B3:09:85:16',0,60,180,75000);
#INSERT INTO `macRulesTable` (`Index`,`mac`,`block`,`user_total`,`total_all`,`bw_limit`) VALUES (3,'00:1C:B3:09:85:17',1,60,180,130000);


/*
Insert extra commmnets here
*/
