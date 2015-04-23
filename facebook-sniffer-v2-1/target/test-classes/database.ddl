CREATE DATABASE `facebook` /*!40100 DEFAULT CHARACTER SET latin1 */;

CREATE TABLE `brand_page` (
  `id` varchar(100) NOT NULL,
  `category` varchar(105) DEFAULT NULL,
  `checkins` varchar(45) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `talking_about_count` int(11) DEFAULT NULL,
  `were_here_count` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `about` longtext,
  `category_list` longtext,
  `description` longtext,
  `founded` text,
  `global_brand_page_name` text,
  `mission` text,
  `phone` tinytext,
  `press_contact` tinytext,
  `website` tinytext,
  `best_page_id` text,
  `global_brand_parent_page_id` varchar(100) DEFAULT NULL,
  `pull_dateTime` datetime DEFAULT NULL,
  KEY `idx_brand_page_id_pull_dateTime` (`id`,`pull_dateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `comment` (
  `commentId` varchar(100) NOT NULL,
  `parentId` varchar(100) DEFAULT NULL,
  `created_dateTime` datetime DEFAULT NULL,
  `message` longtext,
  `message_tags` longtext,
  `userId` varchar(100) DEFAULT NULL,
  `attachment_type` mediumtext,
  `attachment_url` mediumtext,
  `pull_dateTime` datetime DEFAULT NULL,
  KEY `idx_comment_pull_dateTime_commentId` (`pull_dateTime`,`commentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `insight` (
  `insightId` varchar(100) NOT NULL,
  `insight` varchar(100) DEFAULT NULL,
  `sub_cat` varchar(45) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `end_dateTime` datetime DEFAULT NULL,
  `pull_dateTime` datetime DEFAULT NULL,
  `brandPageId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`insightId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `like` (
  `parentId` varchar(100) NOT NULL,
  `pull_dateTime` datetime DEFAULT NULL,
  `userId` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`,`parentId`),
  KEY `idx_like_pull_dateTime_likeId` (`pull_dateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `post` (
  `postId` varchar(50) NOT NULL,
  `fromId` varchar(100) DEFAULT NULL,
  `story` longtext,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `is_published` varchar(45) DEFAULT NULL,
  `caption` longtext,
  `userId` varchar(100) DEFAULT NULL,
  `application` mediumtext,
  `description` mediumtext,
  `feed_targeting` tinytext,
  `is_hidden` bit(1) DEFAULT NULL,
  `link` tinytext,
  `message` mediumtext,
  `message_tags` mediumtext,
  `name` tinytext,
  `objectId` text,
  `picture` mediumtext,
  `place` text,
  `privacy` text,
  `properties` mediumtext,
  `source` text,
  `status_type` tinytext,
  `to` text,
  `type` mediumtext,
  `withTags` tinytext,
  `pull_dateTime` datetime DEFAULT NULL,
  KEY `idx_post_pull_dateTime_postId` (`pull_dateTime`,`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tagged` (
  `taggedId` varchar(100) NOT NULL,
  `brand_id` varchar(100) DEFAULT NULL,
  `application` varchar(45) DEFAULT NULL,
  `description` longtext,
  `name` varchar(45) DEFAULT NULL,
  `story` varchar(45) DEFAULT NULL,
  `pull_dateTime` datetime DEFAULT NULL,
  `link` text,
  `message` text,
  `message_tags` mediumtext,
  `objectId` text,
  `picture` longtext,
  `place` longtext,
  `privacy` longtext,
  `properties` longtext,
  `source` longtext,
  `status_type` longtext,
  `type` longtext,
  `updated_dateTime` datetime DEFAULT NULL,
  `userId` varchar(100) DEFAULT NULL,
  `to` text,
  `with_tags` mediumtext,
  PRIMARY KEY (`taggedId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `user` (
  `userId` varchar(50) NOT NULL,
  `checkins` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `current_location` mediumtext,
  `username` varchar(50) DEFAULT NULL,
  `talking_about_count` int(11) DEFAULT NULL,
  `description` longtext,
  `updated_dateTime` datetime DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `about` longtext,
  `age_range` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `devices` mediumtext,
  `education` varchar(45) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `hometown` varchar(150) DEFAULT NULL,
  `relationship_status` varchar(45) DEFAULT NULL,
  `verified` char(1) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
