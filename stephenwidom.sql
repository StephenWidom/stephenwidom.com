# WordPress MySQL database migration
#
# Generated: Friday 18. January 2019 14:13 UTC
# Hostname: localhost
# Database: `stephenwidom`
# URL: //dev.stephenwidom.com/cms
# Path: /var/www/html/stephenwidom.com/cms
# Tables: sw_commentmeta, sw_comments, sw_links, sw_options, sw_postmeta, sw_posts, sw_term_relationships, sw_term_taxonomy, sw_termmeta, sw_terms, sw_usermeta, sw_users
# Table Prefix: sw_
# Post Types: revision, acf-field, acf-field-group, attachment, page, portfolio, post, skills, technologies
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `sw_commentmeta`
#

DROP TABLE IF EXISTS `sw_commentmeta`;


#
# Table structure of table `sw_commentmeta`
#

CREATE TABLE `sw_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_commentmeta`
#

#
# End of data contents of table `sw_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `sw_comments`
#

DROP TABLE IF EXISTS `sw_comments`;


#
# Table structure of table `sw_comments`
#

CREATE TABLE `sw_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_comments`
#
INSERT INTO `sw_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-02 23:10:02', '2018-12-02 23:10:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `sw_comments`
# --------------------------------------------------------



#
# Delete any existing table `sw_links`
#

DROP TABLE IF EXISTS `sw_links`;


#
# Table structure of table `sw_links`
#

CREATE TABLE `sw_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_links`
#

#
# End of data contents of table `sw_links`
# --------------------------------------------------------



#
# Delete any existing table `sw_options`
#

DROP TABLE IF EXISTS `sw_options`;


#
# Table structure of table `sw_options`
#

CREATE TABLE `sw_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_options`
#
INSERT INTO `sw_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.stephenwidom.com/cms', 'yes'),
(2, 'home', 'http://dev.stephenwidom.com/cms', 'yes'),
(3, 'blogname', 'Stephen Widom', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@test.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:160:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:12:"portfolio/?$";s:29:"index.php?post_type=portfolio";s:42:"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:37:"portfolio/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:29:"portfolio/page/([0-9]{1,})/?$";s:47:"index.php?post_type=portfolio&paged=$matches[1]";s:15:"technologies/?$";s:32:"index.php?post_type=technologies";s:45:"technologies/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=technologies&feed=$matches[1]";s:40:"technologies/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=technologies&feed=$matches[1]";s:32:"technologies/page/([0-9]{1,})/?$";s:50:"index.php?post_type=technologies&paged=$matches[1]";s:9:"skills/?$";s:26:"index.php?post_type=skills";s:39:"skills/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=skills&feed=$matches[1]";s:34:"skills/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=skills&feed=$matches[1]";s:26:"skills/page/([0-9]{1,})/?$";s:44:"index.php?post_type=skills&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:37:"portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"portfolio/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"portfolio/([^/]+)/embed/?$";s:42:"index.php?portfolio=$matches[1]&embed=true";s:30:"portfolio/([^/]+)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:50:"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:45:"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:38:"portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:45:"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:34:"portfolio/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:26:"portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"portfolio/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"technologies/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"technologies/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"technologies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"technologies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"technologies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"technologies/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"technologies/([^/]+)/embed/?$";s:45:"index.php?technologies=$matches[1]&embed=true";s:33:"technologies/([^/]+)/trackback/?$";s:39:"index.php?technologies=$matches[1]&tb=1";s:53:"technologies/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?technologies=$matches[1]&feed=$matches[2]";s:48:"technologies/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?technologies=$matches[1]&feed=$matches[2]";s:41:"technologies/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?technologies=$matches[1]&paged=$matches[2]";s:48:"technologies/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?technologies=$matches[1]&cpage=$matches[2]";s:37:"technologies/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?technologies=$matches[1]&page=$matches[2]";s:29:"technologies/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"technologies/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"technologies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"technologies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"technologies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"technologies/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"skills/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"skills/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"skills/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"skills/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"skills/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"skills/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"skills/([^/]+)/embed/?$";s:39:"index.php?skills=$matches[1]&embed=true";s:27:"skills/([^/]+)/trackback/?$";s:33:"index.php?skills=$matches[1]&tb=1";s:47:"skills/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?skills=$matches[1]&feed=$matches[2]";s:42:"skills/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?skills=$matches[1]&feed=$matches[2]";s:35:"skills/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?skills=$matches[1]&paged=$matches[2]";s:42:"skills/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?skills=$matches[1]&cpage=$matches[2]";s:31:"skills/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?skills=$matches[1]&page=$matches[2]";s:23:"skills/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"skills/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"skills/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"skills/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"skills/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"skills/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"media_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?media_category=$matches[1]&feed=$matches[2]";s:50:"media_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?media_category=$matches[1]&feed=$matches[2]";s:31:"media_category/([^/]+)/embed/?$";s:47:"index.php?media_category=$matches[1]&embed=true";s:43:"media_category/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?media_category=$matches[1]&paged=$matches[2]";s:25:"media_category/([^/]+)/?$";s:36:"index.php?media_category=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:41:"acf-to-rest-api/class-acf-to-rest-api.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:49:"enhanced-media-library/enhanced-media-library.php";i:3;s:37:"post-types-order/post-types-order.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";i:5;s:33:"wp-rest-filter/wp-rest-filter.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'stephenwidom', 'yes'),
(41, 'stylesheet', 'stephenwidom', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'sw_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `sw_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1547824204;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1547853004;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1547853011;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547853012;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547853480;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(140, 'wpuxss_eml_taxonomies', 'a:3:{s:14:"media_category";a:12:{s:8:"assigned";i:1;s:9:"eml_media";i:1;s:6:"labels";a:12:{s:4:"name";s:16:"Media Categories";s:13:"singular_name";s:14:"Media Category";s:9:"menu_name";s:16:"Media Categories";s:9:"all_items";s:20:"All Media Categories";s:9:"edit_item";s:19:"Edit Media Category";s:9:"view_item";s:19:"View Media Category";s:11:"update_item";s:21:"Update Media Category";s:12:"add_new_item";s:22:"Add New Media Category";s:13:"new_item_name";s:23:"New Media Category Name";s:11:"parent_item";s:21:"Parent Media Category";s:17:"parent_item_colon";s:22:"Parent Media Category:";s:12:"search_items";s:23:"Search Media Categories";}s:12:"hierarchical";i:1;s:17:"show_admin_column";i:1;s:12:"admin_filter";i:1;s:21:"media_uploader_filter";i:1;s:25:"media_popup_taxonomy_edit";i:0;s:17:"show_in_nav_menus";i:1;s:4:"sort";i:0;s:12:"show_in_rest";i:0;s:7:"rewrite";a:2:{s:4:"slug";s:14:"media_category";s:10:"with_front";i:1;}}s:8:"category";a:6:{s:9:"eml_media";i:0;s:12:"admin_filter";i:1;s:21:"media_uploader_filter";i:1;s:25:"media_popup_taxonomy_edit";i:0;s:20:"taxonomy_auto_assign";i:0;s:8:"assigned";i:0;}s:8:"post_tag";a:6:{s:9:"eml_media";i:0;s:12:"admin_filter";i:1;s:21:"media_uploader_filter";i:1;s:25:"media_popup_taxonomy_edit";i:0;s:20:"taxonomy_auto_assign";i:0;s:8:"assigned";i:0;}}', 'yes'),
(141, 'wpuxss_eml_lib_options', 'a:11:{s:24:"enhance_media_shortcodes";i:0;s:13:"media_orderby";s:4:"date";s:11:"media_order";s:4:"DESC";s:12:"natural_sort";i:0;s:13:"force_filters";i:1;s:15:"filters_to_show";a:3:{i:0;s:5:"types";i:1;s:5:"dates";i:2;s:10:"taxonomies";}s:10:"show_count";i:1;s:16:"include_children";i:1;s:17:"grid_show_caption";i:0;s:17:"grid_caption_type";s:5:"title";s:9:"search_in";a:3:{i:0;s:6:"titles";i:1;s:8:"captions";i:2;s:12:"descriptions";}}', 'yes'),
(142, 'wpuxss_eml_tax_options', 'a:3:{s:12:"tax_archives";i:0;s:24:"edit_all_as_hierarchical";i:0;s:21:"bulk_edit_save_button";i:0;}', 'yes'),
(143, 'wpuxss_eml_mimes', 'a:92:{s:12:"jpg|jpeg|jpe";a:5:{s:4:"mime";s:10:"image/jpeg";s:8:"singular";s:10:"image/jpeg";s:6:"plural";s:10:"image/jpeg";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"gif";a:5:{s:4:"mime";s:9:"image/gif";s:8:"singular";s:9:"image/gif";s:6:"plural";s:9:"image/gif";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"png";a:5:{s:4:"mime";s:9:"image/png";s:8:"singular";s:9:"image/png";s:6:"plural";s:9:"image/png";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"bmp";a:5:{s:4:"mime";s:9:"image/bmp";s:8:"singular";s:9:"image/bmp";s:6:"plural";s:9:"image/bmp";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"tiff|tif";a:5:{s:4:"mime";s:10:"image/tiff";s:8:"singular";s:10:"image/tiff";s:6:"plural";s:10:"image/tiff";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ico";a:5:{s:4:"mime";s:12:"image/x-icon";s:8:"singular";s:12:"image/x-icon";s:6:"plural";s:12:"image/x-icon";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"asf|asx";a:5:{s:4:"mime";s:14:"video/x-ms-asf";s:8:"singular";s:14:"video/x-ms-asf";s:6:"plural";s:14:"video/x-ms-asf";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wmv";a:5:{s:4:"mime";s:14:"video/x-ms-wmv";s:8:"singular";s:14:"video/x-ms-wmv";s:6:"plural";s:14:"video/x-ms-wmv";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wmx";a:5:{s:4:"mime";s:14:"video/x-ms-wmx";s:8:"singular";s:14:"video/x-ms-wmx";s:6:"plural";s:14:"video/x-ms-wmx";s:6:"filter";i:0;s:6:"upload";i:1;}s:2:"wm";a:5:{s:4:"mime";s:13:"video/x-ms-wm";s:8:"singular";s:13:"video/x-ms-wm";s:6:"plural";s:13:"video/x-ms-wm";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"avi";a:5:{s:4:"mime";s:9:"video/avi";s:8:"singular";s:9:"video/avi";s:6:"plural";s:9:"video/avi";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"divx";a:5:{s:4:"mime";s:10:"video/divx";s:8:"singular";s:10:"video/divx";s:6:"plural";s:10:"video/divx";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"flv";a:5:{s:4:"mime";s:11:"video/x-flv";s:8:"singular";s:11:"video/x-flv";s:6:"plural";s:11:"video/x-flv";s:6:"filter";i:0;s:6:"upload";i:1;}s:6:"mov|qt";a:5:{s:4:"mime";s:15:"video/quicktime";s:8:"singular";s:15:"video/quicktime";s:6:"plural";s:15:"video/quicktime";s:6:"filter";i:0;s:6:"upload";i:1;}s:12:"mpeg|mpg|mpe";a:5:{s:4:"mime";s:10:"video/mpeg";s:8:"singular";s:10:"video/mpeg";s:6:"plural";s:10:"video/mpeg";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"mp4|m4v";a:5:{s:4:"mime";s:9:"video/mp4";s:8:"singular";s:9:"video/mp4";s:6:"plural";s:9:"video/mp4";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ogv";a:5:{s:4:"mime";s:9:"video/ogg";s:8:"singular";s:9:"video/ogg";s:6:"plural";s:9:"video/ogg";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"webm";a:5:{s:4:"mime";s:10:"video/webm";s:8:"singular";s:10:"video/webm";s:6:"plural";s:10:"video/webm";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mkv";a:5:{s:4:"mime";s:16:"video/x-matroska";s:8:"singular";s:16:"video/x-matroska";s:6:"plural";s:16:"video/x-matroska";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"3gp|3gpp";a:5:{s:4:"mime";s:10:"video/3gpp";s:8:"singular";s:10:"video/3gpp";s:6:"plural";s:10:"video/3gpp";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"3g2|3gp2";a:5:{s:4:"mime";s:11:"video/3gpp2";s:8:"singular";s:11:"video/3gpp2";s:6:"plural";s:11:"video/3gpp2";s:6:"filter";i:0;s:6:"upload";i:1;}s:18:"txt|asc|c|cc|h|srt";a:5:{s:4:"mime";s:10:"text/plain";s:8:"singular";s:10:"text/plain";s:6:"plural";s:10:"text/plain";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"csv";a:5:{s:4:"mime";s:8:"text/csv";s:8:"singular";s:8:"text/csv";s:6:"plural";s:8:"text/csv";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"tsv";a:5:{s:4:"mime";s:25:"text/tab-separated-values";s:8:"singular";s:25:"text/tab-separated-values";s:6:"plural";s:25:"text/tab-separated-values";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ics";a:5:{s:4:"mime";s:13:"text/calendar";s:8:"singular";s:13:"text/calendar";s:6:"plural";s:13:"text/calendar";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"rtx";a:5:{s:4:"mime";s:13:"text/richtext";s:8:"singular";s:13:"text/richtext";s:6:"plural";s:13:"text/richtext";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"css";a:5:{s:4:"mime";s:8:"text/css";s:8:"singular";s:8:"text/css";s:6:"plural";s:8:"text/css";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"htm|html";a:5:{s:4:"mime";s:9:"text/html";s:8:"singular";s:9:"text/html";s:6:"plural";s:9:"text/html";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"vtt";a:5:{s:4:"mime";s:8:"text/vtt";s:8:"singular";s:8:"text/vtt";s:6:"plural";s:8:"text/vtt";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"dfxp";a:5:{s:4:"mime";s:20:"application/ttaf+xml";s:8:"singular";s:20:"application/ttaf+xml";s:6:"plural";s:20:"application/ttaf+xml";s:6:"filter";i:0;s:6:"upload";i:1;}s:11:"mp3|m4a|m4b";a:5:{s:4:"mime";s:10:"audio/mpeg";s:8:"singular";s:10:"audio/mpeg";s:6:"plural";s:10:"audio/mpeg";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"aac";a:5:{s:4:"mime";s:9:"audio/aac";s:8:"singular";s:9:"audio/aac";s:6:"plural";s:9:"audio/aac";s:6:"filter";i:0;s:6:"upload";i:1;}s:6:"ra|ram";a:5:{s:4:"mime";s:17:"audio/x-realaudio";s:8:"singular";s:17:"audio/x-realaudio";s:6:"plural";s:17:"audio/x-realaudio";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wav";a:5:{s:4:"mime";s:9:"audio/wav";s:8:"singular";s:9:"audio/wav";s:6:"plural";s:9:"audio/wav";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"ogg|oga";a:5:{s:4:"mime";s:9:"audio/ogg";s:8:"singular";s:9:"audio/ogg";s:6:"plural";s:9:"audio/ogg";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"flac";a:5:{s:4:"mime";s:10:"audio/flac";s:8:"singular";s:10:"audio/flac";s:6:"plural";s:10:"audio/flac";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"mid|midi";a:5:{s:4:"mime";s:10:"audio/midi";s:8:"singular";s:10:"audio/midi";s:6:"plural";s:10:"audio/midi";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wma";a:5:{s:4:"mime";s:14:"audio/x-ms-wma";s:8:"singular";s:14:"audio/x-ms-wma";s:6:"plural";s:14:"audio/x-ms-wma";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wax";a:5:{s:4:"mime";s:14:"audio/x-ms-wax";s:8:"singular";s:14:"audio/x-ms-wax";s:6:"plural";s:14:"audio/x-ms-wax";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mka";a:5:{s:4:"mime";s:16:"audio/x-matroska";s:8:"singular";s:16:"audio/x-matroska";s:6:"plural";s:16:"audio/x-matroska";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"rtf";a:5:{s:4:"mime";s:15:"application/rtf";s:8:"singular";s:15:"application/rtf";s:6:"plural";s:15:"application/rtf";s:6:"filter";i:0;s:6:"upload";i:1;}s:2:"js";a:5:{s:4:"mime";s:22:"application/javascript";s:8:"singular";s:22:"application/javascript";s:6:"plural";s:22:"application/javascript";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"pdf";a:5:{s:4:"mime";s:15:"application/pdf";s:8:"singular";s:3:"PDF";s:6:"plural";s:4:"PDFs";s:6:"filter";i:1;s:6:"upload";i:1;}s:3:"swf";a:5:{s:4:"mime";s:29:"application/x-shockwave-flash";s:8:"singular";s:29:"application/x-shockwave-flash";s:6:"plural";s:29:"application/x-shockwave-flash";s:6:"filter";i:0;s:6:"upload";i:0;}s:5:"class";a:5:{s:4:"mime";s:16:"application/java";s:8:"singular";s:16:"application/java";s:6:"plural";s:16:"application/java";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"tar";a:5:{s:4:"mime";s:17:"application/x-tar";s:8:"singular";s:17:"application/x-tar";s:6:"plural";s:17:"application/x-tar";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"zip";a:5:{s:4:"mime";s:15:"application/zip";s:8:"singular";s:15:"application/zip";s:6:"plural";s:15:"application/zip";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"gz|gzip";a:5:{s:4:"mime";s:18:"application/x-gzip";s:8:"singular";s:18:"application/x-gzip";s:6:"plural";s:18:"application/x-gzip";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"rar";a:5:{s:4:"mime";s:15:"application/rar";s:8:"singular";s:15:"application/rar";s:6:"plural";s:15:"application/rar";s:6:"filter";i:0;s:6:"upload";i:1;}s:2:"7z";a:5:{s:4:"mime";s:27:"application/x-7z-compressed";s:8:"singular";s:27:"application/x-7z-compressed";s:6:"plural";s:27:"application/x-7z-compressed";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"exe";a:5:{s:4:"mime";s:24:"application/x-msdownload";s:8:"singular";s:24:"application/x-msdownload";s:6:"plural";s:24:"application/x-msdownload";s:6:"filter";i:0;s:6:"upload";i:0;}s:3:"psd";a:5:{s:4:"mime";s:24:"application/octet-stream";s:8:"singular";s:24:"application/octet-stream";s:6:"plural";s:24:"application/octet-stream";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"xcf";a:5:{s:4:"mime";s:24:"application/octet-stream";s:8:"singular";s:24:"application/octet-stream";s:6:"plural";s:24:"application/octet-stream";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"doc";a:5:{s:4:"mime";s:18:"application/msword";s:8:"singular";s:18:"application/msword";s:6:"plural";s:18:"application/msword";s:6:"filter";i:0;s:6:"upload";i:1;}s:11:"pot|pps|ppt";a:5:{s:4:"mime";s:29:"application/vnd.ms-powerpoint";s:8:"singular";s:29:"application/vnd.ms-powerpoint";s:6:"plural";s:29:"application/vnd.ms-powerpoint";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wri";a:5:{s:4:"mime";s:24:"application/vnd.ms-write";s:8:"singular";s:24:"application/vnd.ms-write";s:6:"plural";s:24:"application/vnd.ms-write";s:6:"filter";i:0;s:6:"upload";i:1;}s:15:"xla|xls|xlt|xlw";a:5:{s:4:"mime";s:24:"application/vnd.ms-excel";s:8:"singular";s:24:"application/vnd.ms-excel";s:6:"plural";s:24:"application/vnd.ms-excel";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mdb";a:5:{s:4:"mime";s:25:"application/vnd.ms-access";s:8:"singular";s:25:"application/vnd.ms-access";s:6:"plural";s:25:"application/vnd.ms-access";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mpp";a:5:{s:4:"mime";s:26:"application/vnd.ms-project";s:8:"singular";s:26:"application/vnd.ms-project";s:6:"plural";s:26:"application/vnd.ms-project";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"docx";a:5:{s:4:"mime";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.document";s:8:"singular";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.document";s:6:"plural";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.document";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"docm";a:5:{s:4:"mime";s:48:"application/vnd.ms-word.document.macroEnabled.12";s:8:"singular";s:48:"application/vnd.ms-word.document.macroEnabled.12";s:6:"plural";s:48:"application/vnd.ms-word.document.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"dotx";a:5:{s:4:"mime";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.template";s:8:"singular";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.template";s:6:"plural";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.template";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"dotm";a:5:{s:4:"mime";s:48:"application/vnd.ms-word.template.macroEnabled.12";s:8:"singular";s:48:"application/vnd.ms-word.template.macroEnabled.12";s:6:"plural";s:48:"application/vnd.ms-word.template.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlsx";a:5:{s:4:"mime";s:65:"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";s:8:"singular";s:65:"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";s:6:"plural";s:65:"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlsm";a:5:{s:4:"mime";s:46:"application/vnd.ms-excel.sheet.macroEnabled.12";s:8:"singular";s:46:"application/vnd.ms-excel.sheet.macroEnabled.12";s:6:"plural";s:46:"application/vnd.ms-excel.sheet.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlsb";a:5:{s:4:"mime";s:53:"application/vnd.ms-excel.sheet.binary.macroEnabled.12";s:8:"singular";s:53:"application/vnd.ms-excel.sheet.binary.macroEnabled.12";s:6:"plural";s:53:"application/vnd.ms-excel.sheet.binary.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xltx";a:5:{s:4:"mime";s:68:"application/vnd.openxmlformats-officedocument.spreadsheetml.template";s:8:"singular";s:68:"application/vnd.openxmlformats-officedocument.spreadsheetml.template";s:6:"plural";s:68:"application/vnd.openxmlformats-officedocument.spreadsheetml.template";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xltm";a:5:{s:4:"mime";s:49:"application/vnd.ms-excel.template.macroEnabled.12";s:8:"singular";s:49:"application/vnd.ms-excel.template.macroEnabled.12";s:6:"plural";s:49:"application/vnd.ms-excel.template.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlam";a:5:{s:4:"mime";s:46:"application/vnd.ms-excel.addin.macroEnabled.12";s:8:"singular";s:46:"application/vnd.ms-excel.addin.macroEnabled.12";s:6:"plural";s:46:"application/vnd.ms-excel.addin.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"pptx";a:5:{s:4:"mime";s:73:"application/vnd.openxmlformats-officedocument.presentationml.presentation";s:8:"singular";s:73:"application/vnd.openxmlformats-officedocument.presentationml.presentation";s:6:"plural";s:73:"application/vnd.openxmlformats-officedocument.presentationml.presentation";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"pptm";a:5:{s:4:"mime";s:58:"application/vnd.ms-powerpoint.presentation.macroEnabled.12";s:8:"singular";s:58:"application/vnd.ms-powerpoint.presentation.macroEnabled.12";s:6:"plural";s:58:"application/vnd.ms-powerpoint.presentation.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"ppsx";a:5:{s:4:"mime";s:70:"application/vnd.openxmlformats-officedocument.presentationml.slideshow";s:8:"singular";s:70:"application/vnd.openxmlformats-officedocument.presentationml.slideshow";s:6:"plural";s:70:"application/vnd.openxmlformats-officedocument.presentationml.slideshow";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"ppsm";a:5:{s:4:"mime";s:55:"application/vnd.ms-powerpoint.slideshow.macroEnabled.12";s:8:"singular";s:55:"application/vnd.ms-powerpoint.slideshow.macroEnabled.12";s:6:"plural";s:55:"application/vnd.ms-powerpoint.slideshow.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"potx";a:5:{s:4:"mime";s:69:"application/vnd.openxmlformats-officedocument.presentationml.template";s:8:"singular";s:69:"application/vnd.openxmlformats-officedocument.presentationml.template";s:6:"plural";s:69:"application/vnd.openxmlformats-officedocument.presentationml.template";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"potm";a:5:{s:4:"mime";s:54:"application/vnd.ms-powerpoint.template.macroEnabled.12";s:8:"singular";s:54:"application/vnd.ms-powerpoint.template.macroEnabled.12";s:6:"plural";s:54:"application/vnd.ms-powerpoint.template.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"ppam";a:5:{s:4:"mime";s:51:"application/vnd.ms-powerpoint.addin.macroEnabled.12";s:8:"singular";s:51:"application/vnd.ms-powerpoint.addin.macroEnabled.12";s:6:"plural";s:51:"application/vnd.ms-powerpoint.addin.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"sldx";a:5:{s:4:"mime";s:66:"application/vnd.openxmlformats-officedocument.presentationml.slide";s:8:"singular";s:66:"application/vnd.openxmlformats-officedocument.presentationml.slide";s:6:"plural";s:66:"application/vnd.openxmlformats-officedocument.presentationml.slide";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"sldm";a:5:{s:4:"mime";s:51:"application/vnd.ms-powerpoint.slide.macroEnabled.12";s:8:"singular";s:51:"application/vnd.ms-powerpoint.slide.macroEnabled.12";s:6:"plural";s:51:"application/vnd.ms-powerpoint.slide.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:28:"onetoc|onetoc2|onetmp|onepkg";a:5:{s:4:"mime";s:19:"application/onenote";s:8:"singular";s:19:"application/onenote";s:6:"plural";s:19:"application/onenote";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"oxps";a:5:{s:4:"mime";s:16:"application/oxps";s:8:"singular";s:16:"application/oxps";s:6:"plural";s:16:"application/oxps";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"xps";a:5:{s:4:"mime";s:30:"application/vnd.ms-xpsdocument";s:8:"singular";s:30:"application/vnd.ms-xpsdocument";s:6:"plural";s:30:"application/vnd.ms-xpsdocument";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odt";a:5:{s:4:"mime";s:39:"application/vnd.oasis.opendocument.text";s:8:"singular";s:39:"application/vnd.oasis.opendocument.text";s:6:"plural";s:39:"application/vnd.oasis.opendocument.text";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odp";a:5:{s:4:"mime";s:47:"application/vnd.oasis.opendocument.presentation";s:8:"singular";s:47:"application/vnd.oasis.opendocument.presentation";s:6:"plural";s:47:"application/vnd.oasis.opendocument.presentation";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ods";a:5:{s:4:"mime";s:46:"application/vnd.oasis.opendocument.spreadsheet";s:8:"singular";s:46:"application/vnd.oasis.opendocument.spreadsheet";s:6:"plural";s:46:"application/vnd.oasis.opendocument.spreadsheet";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odg";a:5:{s:4:"mime";s:43:"application/vnd.oasis.opendocument.graphics";s:8:"singular";s:43:"application/vnd.oasis.opendocument.graphics";s:6:"plural";s:43:"application/vnd.oasis.opendocument.graphics";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odc";a:5:{s:4:"mime";s:40:"application/vnd.oasis.opendocument.chart";s:8:"singular";s:40:"application/vnd.oasis.opendocument.chart";s:6:"plural";s:40:"application/vnd.oasis.opendocument.chart";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odb";a:5:{s:4:"mime";s:43:"application/vnd.oasis.opendocument.database";s:8:"singular";s:43:"application/vnd.oasis.opendocument.database";s:6:"plural";s:43:"application/vnd.oasis.opendocument.database";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odf";a:5:{s:4:"mime";s:42:"application/vnd.oasis.opendocument.formula";s:8:"singular";s:42:"application/vnd.oasis.opendocument.formula";s:6:"plural";s:42:"application/vnd.oasis.opendocument.formula";s:6:"filter";i:0;s:6:"upload";i:1;}s:6:"wp|wpd";a:5:{s:4:"mime";s:23:"application/wordperfect";s:8:"singular";s:23:"application/wordperfect";s:6:"plural";s:23:"application/wordperfect";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"key";a:5:{s:4:"mime";s:29:"application/vnd.apple.keynote";s:8:"singular";s:29:"application/vnd.apple.keynote";s:6:"plural";s:29:"application/vnd.apple.keynote";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"numbers";a:5:{s:4:"mime";s:29:"application/vnd.apple.numbers";s:8:"singular";s:29:"application/vnd.apple.numbers";s:6:"plural";s:29:"application/vnd.apple.numbers";s:6:"filter";i:0;s:6:"upload";i:1;}s:5:"pages";a:5:{s:4:"mime";s:27:"application/vnd.apple.pages";s:8:"singular";s:27:"application/vnd.apple.pages";s:6:"plural";s:27:"application/vnd.apple.pages";s:6:"filter";i:0;s:6:"upload";i:1;}}', 'yes'),
(144, 'wpuxss_eml_mimes_backup', 'a:92:{s:12:"jpg|jpeg|jpe";a:5:{s:4:"mime";s:10:"image/jpeg";s:8:"singular";s:10:"image/jpeg";s:6:"plural";s:10:"image/jpeg";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"gif";a:5:{s:4:"mime";s:9:"image/gif";s:8:"singular";s:9:"image/gif";s:6:"plural";s:9:"image/gif";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"png";a:5:{s:4:"mime";s:9:"image/png";s:8:"singular";s:9:"image/png";s:6:"plural";s:9:"image/png";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"bmp";a:5:{s:4:"mime";s:9:"image/bmp";s:8:"singular";s:9:"image/bmp";s:6:"plural";s:9:"image/bmp";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"tiff|tif";a:5:{s:4:"mime";s:10:"image/tiff";s:8:"singular";s:10:"image/tiff";s:6:"plural";s:10:"image/tiff";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ico";a:5:{s:4:"mime";s:12:"image/x-icon";s:8:"singular";s:12:"image/x-icon";s:6:"plural";s:12:"image/x-icon";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"asf|asx";a:5:{s:4:"mime";s:14:"video/x-ms-asf";s:8:"singular";s:14:"video/x-ms-asf";s:6:"plural";s:14:"video/x-ms-asf";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wmv";a:5:{s:4:"mime";s:14:"video/x-ms-wmv";s:8:"singular";s:14:"video/x-ms-wmv";s:6:"plural";s:14:"video/x-ms-wmv";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wmx";a:5:{s:4:"mime";s:14:"video/x-ms-wmx";s:8:"singular";s:14:"video/x-ms-wmx";s:6:"plural";s:14:"video/x-ms-wmx";s:6:"filter";i:0;s:6:"upload";i:1;}s:2:"wm";a:5:{s:4:"mime";s:13:"video/x-ms-wm";s:8:"singular";s:13:"video/x-ms-wm";s:6:"plural";s:13:"video/x-ms-wm";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"avi";a:5:{s:4:"mime";s:9:"video/avi";s:8:"singular";s:9:"video/avi";s:6:"plural";s:9:"video/avi";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"divx";a:5:{s:4:"mime";s:10:"video/divx";s:8:"singular";s:10:"video/divx";s:6:"plural";s:10:"video/divx";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"flv";a:5:{s:4:"mime";s:11:"video/x-flv";s:8:"singular";s:11:"video/x-flv";s:6:"plural";s:11:"video/x-flv";s:6:"filter";i:0;s:6:"upload";i:1;}s:6:"mov|qt";a:5:{s:4:"mime";s:15:"video/quicktime";s:8:"singular";s:15:"video/quicktime";s:6:"plural";s:15:"video/quicktime";s:6:"filter";i:0;s:6:"upload";i:1;}s:12:"mpeg|mpg|mpe";a:5:{s:4:"mime";s:10:"video/mpeg";s:8:"singular";s:10:"video/mpeg";s:6:"plural";s:10:"video/mpeg";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"mp4|m4v";a:5:{s:4:"mime";s:9:"video/mp4";s:8:"singular";s:9:"video/mp4";s:6:"plural";s:9:"video/mp4";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ogv";a:5:{s:4:"mime";s:9:"video/ogg";s:8:"singular";s:9:"video/ogg";s:6:"plural";s:9:"video/ogg";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"webm";a:5:{s:4:"mime";s:10:"video/webm";s:8:"singular";s:10:"video/webm";s:6:"plural";s:10:"video/webm";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mkv";a:5:{s:4:"mime";s:16:"video/x-matroska";s:8:"singular";s:16:"video/x-matroska";s:6:"plural";s:16:"video/x-matroska";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"3gp|3gpp";a:5:{s:4:"mime";s:10:"video/3gpp";s:8:"singular";s:10:"video/3gpp";s:6:"plural";s:10:"video/3gpp";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"3g2|3gp2";a:5:{s:4:"mime";s:11:"video/3gpp2";s:8:"singular";s:11:"video/3gpp2";s:6:"plural";s:11:"video/3gpp2";s:6:"filter";i:0;s:6:"upload";i:1;}s:18:"txt|asc|c|cc|h|srt";a:5:{s:4:"mime";s:10:"text/plain";s:8:"singular";s:10:"text/plain";s:6:"plural";s:10:"text/plain";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"csv";a:5:{s:4:"mime";s:8:"text/csv";s:8:"singular";s:8:"text/csv";s:6:"plural";s:8:"text/csv";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"tsv";a:5:{s:4:"mime";s:25:"text/tab-separated-values";s:8:"singular";s:25:"text/tab-separated-values";s:6:"plural";s:25:"text/tab-separated-values";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ics";a:5:{s:4:"mime";s:13:"text/calendar";s:8:"singular";s:13:"text/calendar";s:6:"plural";s:13:"text/calendar";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"rtx";a:5:{s:4:"mime";s:13:"text/richtext";s:8:"singular";s:13:"text/richtext";s:6:"plural";s:13:"text/richtext";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"css";a:5:{s:4:"mime";s:8:"text/css";s:8:"singular";s:8:"text/css";s:6:"plural";s:8:"text/css";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"htm|html";a:5:{s:4:"mime";s:9:"text/html";s:8:"singular";s:9:"text/html";s:6:"plural";s:9:"text/html";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"vtt";a:5:{s:4:"mime";s:8:"text/vtt";s:8:"singular";s:8:"text/vtt";s:6:"plural";s:8:"text/vtt";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"dfxp";a:5:{s:4:"mime";s:20:"application/ttaf+xml";s:8:"singular";s:20:"application/ttaf+xml";s:6:"plural";s:20:"application/ttaf+xml";s:6:"filter";i:0;s:6:"upload";i:1;}s:11:"mp3|m4a|m4b";a:5:{s:4:"mime";s:10:"audio/mpeg";s:8:"singular";s:10:"audio/mpeg";s:6:"plural";s:10:"audio/mpeg";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"aac";a:5:{s:4:"mime";s:9:"audio/aac";s:8:"singular";s:9:"audio/aac";s:6:"plural";s:9:"audio/aac";s:6:"filter";i:0;s:6:"upload";i:1;}s:6:"ra|ram";a:5:{s:4:"mime";s:17:"audio/x-realaudio";s:8:"singular";s:17:"audio/x-realaudio";s:6:"plural";s:17:"audio/x-realaudio";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wav";a:5:{s:4:"mime";s:9:"audio/wav";s:8:"singular";s:9:"audio/wav";s:6:"plural";s:9:"audio/wav";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"ogg|oga";a:5:{s:4:"mime";s:9:"audio/ogg";s:8:"singular";s:9:"audio/ogg";s:6:"plural";s:9:"audio/ogg";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"flac";a:5:{s:4:"mime";s:10:"audio/flac";s:8:"singular";s:10:"audio/flac";s:6:"plural";s:10:"audio/flac";s:6:"filter";i:0;s:6:"upload";i:1;}s:8:"mid|midi";a:5:{s:4:"mime";s:10:"audio/midi";s:8:"singular";s:10:"audio/midi";s:6:"plural";s:10:"audio/midi";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wma";a:5:{s:4:"mime";s:14:"audio/x-ms-wma";s:8:"singular";s:14:"audio/x-ms-wma";s:6:"plural";s:14:"audio/x-ms-wma";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wax";a:5:{s:4:"mime";s:14:"audio/x-ms-wax";s:8:"singular";s:14:"audio/x-ms-wax";s:6:"plural";s:14:"audio/x-ms-wax";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mka";a:5:{s:4:"mime";s:16:"audio/x-matroska";s:8:"singular";s:16:"audio/x-matroska";s:6:"plural";s:16:"audio/x-matroska";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"rtf";a:5:{s:4:"mime";s:15:"application/rtf";s:8:"singular";s:15:"application/rtf";s:6:"plural";s:15:"application/rtf";s:6:"filter";i:0;s:6:"upload";i:1;}s:2:"js";a:5:{s:4:"mime";s:22:"application/javascript";s:8:"singular";s:22:"application/javascript";s:6:"plural";s:22:"application/javascript";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"pdf";a:5:{s:4:"mime";s:15:"application/pdf";s:8:"singular";s:15:"application/pdf";s:6:"plural";s:15:"application/pdf";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"swf";a:5:{s:4:"mime";s:29:"application/x-shockwave-flash";s:8:"singular";s:29:"application/x-shockwave-flash";s:6:"plural";s:29:"application/x-shockwave-flash";s:6:"filter";i:0;s:6:"upload";i:0;}s:5:"class";a:5:{s:4:"mime";s:16:"application/java";s:8:"singular";s:16:"application/java";s:6:"plural";s:16:"application/java";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"tar";a:5:{s:4:"mime";s:17:"application/x-tar";s:8:"singular";s:17:"application/x-tar";s:6:"plural";s:17:"application/x-tar";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"zip";a:5:{s:4:"mime";s:15:"application/zip";s:8:"singular";s:15:"application/zip";s:6:"plural";s:15:"application/zip";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"gz|gzip";a:5:{s:4:"mime";s:18:"application/x-gzip";s:8:"singular";s:18:"application/x-gzip";s:6:"plural";s:18:"application/x-gzip";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"rar";a:5:{s:4:"mime";s:15:"application/rar";s:8:"singular";s:15:"application/rar";s:6:"plural";s:15:"application/rar";s:6:"filter";i:0;s:6:"upload";i:1;}s:2:"7z";a:5:{s:4:"mime";s:27:"application/x-7z-compressed";s:8:"singular";s:27:"application/x-7z-compressed";s:6:"plural";s:27:"application/x-7z-compressed";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"exe";a:5:{s:4:"mime";s:24:"application/x-msdownload";s:8:"singular";s:24:"application/x-msdownload";s:6:"plural";s:24:"application/x-msdownload";s:6:"filter";i:0;s:6:"upload";i:0;}s:3:"psd";a:5:{s:4:"mime";s:24:"application/octet-stream";s:8:"singular";s:24:"application/octet-stream";s:6:"plural";s:24:"application/octet-stream";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"xcf";a:5:{s:4:"mime";s:24:"application/octet-stream";s:8:"singular";s:24:"application/octet-stream";s:6:"plural";s:24:"application/octet-stream";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"doc";a:5:{s:4:"mime";s:18:"application/msword";s:8:"singular";s:18:"application/msword";s:6:"plural";s:18:"application/msword";s:6:"filter";i:0;s:6:"upload";i:1;}s:11:"pot|pps|ppt";a:5:{s:4:"mime";s:29:"application/vnd.ms-powerpoint";s:8:"singular";s:29:"application/vnd.ms-powerpoint";s:6:"plural";s:29:"application/vnd.ms-powerpoint";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"wri";a:5:{s:4:"mime";s:24:"application/vnd.ms-write";s:8:"singular";s:24:"application/vnd.ms-write";s:6:"plural";s:24:"application/vnd.ms-write";s:6:"filter";i:0;s:6:"upload";i:1;}s:15:"xla|xls|xlt|xlw";a:5:{s:4:"mime";s:24:"application/vnd.ms-excel";s:8:"singular";s:24:"application/vnd.ms-excel";s:6:"plural";s:24:"application/vnd.ms-excel";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mdb";a:5:{s:4:"mime";s:25:"application/vnd.ms-access";s:8:"singular";s:25:"application/vnd.ms-access";s:6:"plural";s:25:"application/vnd.ms-access";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"mpp";a:5:{s:4:"mime";s:26:"application/vnd.ms-project";s:8:"singular";s:26:"application/vnd.ms-project";s:6:"plural";s:26:"application/vnd.ms-project";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"docx";a:5:{s:4:"mime";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.document";s:8:"singular";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.document";s:6:"plural";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.document";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"docm";a:5:{s:4:"mime";s:48:"application/vnd.ms-word.document.macroEnabled.12";s:8:"singular";s:48:"application/vnd.ms-word.document.macroEnabled.12";s:6:"plural";s:48:"application/vnd.ms-word.document.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"dotx";a:5:{s:4:"mime";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.template";s:8:"singular";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.template";s:6:"plural";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.template";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"dotm";a:5:{s:4:"mime";s:48:"application/vnd.ms-word.template.macroEnabled.12";s:8:"singular";s:48:"application/vnd.ms-word.template.macroEnabled.12";s:6:"plural";s:48:"application/vnd.ms-word.template.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlsx";a:5:{s:4:"mime";s:65:"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";s:8:"singular";s:65:"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";s:6:"plural";s:65:"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlsm";a:5:{s:4:"mime";s:46:"application/vnd.ms-excel.sheet.macroEnabled.12";s:8:"singular";s:46:"application/vnd.ms-excel.sheet.macroEnabled.12";s:6:"plural";s:46:"application/vnd.ms-excel.sheet.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlsb";a:5:{s:4:"mime";s:53:"application/vnd.ms-excel.sheet.binary.macroEnabled.12";s:8:"singular";s:53:"application/vnd.ms-excel.sheet.binary.macroEnabled.12";s:6:"plural";s:53:"application/vnd.ms-excel.sheet.binary.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xltx";a:5:{s:4:"mime";s:68:"application/vnd.openxmlformats-officedocument.spreadsheetml.template";s:8:"singular";s:68:"application/vnd.openxmlformats-officedocument.spreadsheetml.template";s:6:"plural";s:68:"application/vnd.openxmlformats-officedocument.spreadsheetml.template";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xltm";a:5:{s:4:"mime";s:49:"application/vnd.ms-excel.template.macroEnabled.12";s:8:"singular";s:49:"application/vnd.ms-excel.template.macroEnabled.12";s:6:"plural";s:49:"application/vnd.ms-excel.template.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"xlam";a:5:{s:4:"mime";s:46:"application/vnd.ms-excel.addin.macroEnabled.12";s:8:"singular";s:46:"application/vnd.ms-excel.addin.macroEnabled.12";s:6:"plural";s:46:"application/vnd.ms-excel.addin.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"pptx";a:5:{s:4:"mime";s:73:"application/vnd.openxmlformats-officedocument.presentationml.presentation";s:8:"singular";s:73:"application/vnd.openxmlformats-officedocument.presentationml.presentation";s:6:"plural";s:73:"application/vnd.openxmlformats-officedocument.presentationml.presentation";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"pptm";a:5:{s:4:"mime";s:58:"application/vnd.ms-powerpoint.presentation.macroEnabled.12";s:8:"singular";s:58:"application/vnd.ms-powerpoint.presentation.macroEnabled.12";s:6:"plural";s:58:"application/vnd.ms-powerpoint.presentation.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"ppsx";a:5:{s:4:"mime";s:70:"application/vnd.openxmlformats-officedocument.presentationml.slideshow";s:8:"singular";s:70:"application/vnd.openxmlformats-officedocument.presentationml.slideshow";s:6:"plural";s:70:"application/vnd.openxmlformats-officedocument.presentationml.slideshow";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"ppsm";a:5:{s:4:"mime";s:55:"application/vnd.ms-powerpoint.slideshow.macroEnabled.12";s:8:"singular";s:55:"application/vnd.ms-powerpoint.slideshow.macroEnabled.12";s:6:"plural";s:55:"application/vnd.ms-powerpoint.slideshow.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"potx";a:5:{s:4:"mime";s:69:"application/vnd.openxmlformats-officedocument.presentationml.template";s:8:"singular";s:69:"application/vnd.openxmlformats-officedocument.presentationml.template";s:6:"plural";s:69:"application/vnd.openxmlformats-officedocument.presentationml.template";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"potm";a:5:{s:4:"mime";s:54:"application/vnd.ms-powerpoint.template.macroEnabled.12";s:8:"singular";s:54:"application/vnd.ms-powerpoint.template.macroEnabled.12";s:6:"plural";s:54:"application/vnd.ms-powerpoint.template.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"ppam";a:5:{s:4:"mime";s:51:"application/vnd.ms-powerpoint.addin.macroEnabled.12";s:8:"singular";s:51:"application/vnd.ms-powerpoint.addin.macroEnabled.12";s:6:"plural";s:51:"application/vnd.ms-powerpoint.addin.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"sldx";a:5:{s:4:"mime";s:66:"application/vnd.openxmlformats-officedocument.presentationml.slide";s:8:"singular";s:66:"application/vnd.openxmlformats-officedocument.presentationml.slide";s:6:"plural";s:66:"application/vnd.openxmlformats-officedocument.presentationml.slide";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"sldm";a:5:{s:4:"mime";s:51:"application/vnd.ms-powerpoint.slide.macroEnabled.12";s:8:"singular";s:51:"application/vnd.ms-powerpoint.slide.macroEnabled.12";s:6:"plural";s:51:"application/vnd.ms-powerpoint.slide.macroEnabled.12";s:6:"filter";i:0;s:6:"upload";i:1;}s:28:"onetoc|onetoc2|onetmp|onepkg";a:5:{s:4:"mime";s:19:"application/onenote";s:8:"singular";s:19:"application/onenote";s:6:"plural";s:19:"application/onenote";s:6:"filter";i:0;s:6:"upload";i:1;}s:4:"oxps";a:5:{s:4:"mime";s:16:"application/oxps";s:8:"singular";s:16:"application/oxps";s:6:"plural";s:16:"application/oxps";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"xps";a:5:{s:4:"mime";s:30:"application/vnd.ms-xpsdocument";s:8:"singular";s:30:"application/vnd.ms-xpsdocument";s:6:"plural";s:30:"application/vnd.ms-xpsdocument";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odt";a:5:{s:4:"mime";s:39:"application/vnd.oasis.opendocument.text";s:8:"singular";s:39:"application/vnd.oasis.opendocument.text";s:6:"plural";s:39:"application/vnd.oasis.opendocument.text";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odp";a:5:{s:4:"mime";s:47:"application/vnd.oasis.opendocument.presentation";s:8:"singular";s:47:"application/vnd.oasis.opendocument.presentation";s:6:"plural";s:47:"application/vnd.oasis.opendocument.presentation";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"ods";a:5:{s:4:"mime";s:46:"application/vnd.oasis.opendocument.spreadsheet";s:8:"singular";s:46:"application/vnd.oasis.opendocument.spreadsheet";s:6:"plural";s:46:"application/vnd.oasis.opendocument.spreadsheet";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odg";a:5:{s:4:"mime";s:43:"application/vnd.oasis.opendocument.graphics";s:8:"singular";s:43:"application/vnd.oasis.opendocument.graphics";s:6:"plural";s:43:"application/vnd.oasis.opendocument.graphics";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odc";a:5:{s:4:"mime";s:40:"application/vnd.oasis.opendocument.chart";s:8:"singular";s:40:"application/vnd.oasis.opendocument.chart";s:6:"plural";s:40:"application/vnd.oasis.opendocument.chart";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odb";a:5:{s:4:"mime";s:43:"application/vnd.oasis.opendocument.database";s:8:"singular";s:43:"application/vnd.oasis.opendocument.database";s:6:"plural";s:43:"application/vnd.oasis.opendocument.database";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"odf";a:5:{s:4:"mime";s:42:"application/vnd.oasis.opendocument.formula";s:8:"singular";s:42:"application/vnd.oasis.opendocument.formula";s:6:"plural";s:42:"application/vnd.oasis.opendocument.formula";s:6:"filter";i:0;s:6:"upload";i:1;}s:6:"wp|wpd";a:5:{s:4:"mime";s:23:"application/wordperfect";s:8:"singular";s:23:"application/wordperfect";s:6:"plural";s:23:"application/wordperfect";s:6:"filter";i:0;s:6:"upload";i:1;}s:3:"key";a:5:{s:4:"mime";s:29:"application/vnd.apple.keynote";s:8:"singular";s:29:"application/vnd.apple.keynote";s:6:"plural";s:29:"application/vnd.apple.keynote";s:6:"filter";i:0;s:6:"upload";i:1;}s:7:"numbers";a:5:{s:4:"mime";s:29:"application/vnd.apple.numbers";s:8:"singular";s:29:"application/vnd.apple.numbers";s:6:"plural";s:29:"application/vnd.apple.numbers";s:6:"filter";i:0;s:6:"upload";i:1;}s:5:"pages";a:5:{s:4:"mime";s:27:"application/vnd.apple.pages";s:8:"singular";s:27:"application/vnd.apple.pages";s:6:"plural";s:27:"application/vnd.apple.pages";s:6:"filter";i:0;s:6:"upload";i:1;}}', 'no'),
(145, 'wpuxss_eml_version', '2.7.2', 'yes'),
(147, 'acf_version', '5.7.10', 'yes'),
(149, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1543792585;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(150, 'current_theme', 'Stephen Widom', 'yes'),
(151, 'theme_mods_stephenwidom', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(154, 'category_children', 'a:0:{}', 'yes'),
(155, 'acf_to_rest_api_request_version', '2', 'yes'),
(249, 'db_upgraded', '', 'yes'),
(253, 'can_compress_scripts', '0', 'no'),
(268, 'cpto_options', 'a:7:{s:23:"show_reorder_interfaces";a:6:{s:4:"post";s:4:"show";s:10:"attachment";s:4:"show";s:8:"wp_block";s:4:"show";s:9:"portfolio";s:4:"show";s:12:"technologies";s:4:"show";s:6:"skills";s:4:"show";}s:8:"autosort";i:1;s:9:"adminsort";i:1;s:18:"use_query_ASC_DESC";s:0:"";s:17:"archive_drag_drop";i:1;s:10:"capability";s:14:"manage_options";s:21:"navigation_sort_apply";i:1;}', 'yes'),
(269, 'CPT_configured', 'TRUE', 'yes'),
(280, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1547820788;}', 'no') ;

#
# End of data contents of table `sw_options`
# --------------------------------------------------------



#
# Delete any existing table `sw_postmeta`
#

DROP TABLE IF EXISTS `sw_postmeta`;


#
# Table structure of table `sw_postmeta`
#

CREATE TABLE `sw_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_postmeta`
#
INSERT INTO `sw_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1544143272:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1547768236:1'),
(7, 8, '_edit_last', '1'),
(8, 8, '_edit_lock', '1543889645:1'),
(9, 8, 'technologies', 'a:7:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"17";i:4;s:2:"14";i:5;s:2:"18";i:6;s:2:"24";}'),
(10, 8, '_technologies', 'field_5c046832088f0'),
(11, 10, '_edit_last', '1'),
(12, 10, '_edit_lock', '1547768378:1'),
(13, 7, 'rating', '5'),
(14, 7, '_rating', 'field_5c0469d72fdbe'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1547768216:1'),
(17, 12, 'rating', '5'),
(18, 12, '_rating', 'field_5c0469d72fdbe'),
(19, 13, '_edit_last', '1'),
(20, 13, '_edit_lock', '1547768205:1'),
(21, 13, 'rating', '3'),
(22, 13, '_rating', 'field_5c0469d72fdbe'),
(23, 14, '_edit_last', '1'),
(24, 14, '_edit_lock', '1547768188:1'),
(25, 14, 'rating', '4'),
(26, 14, '_rating', 'field_5c0469d72fdbe'),
(27, 15, '_edit_last', '1'),
(28, 15, 'rating', '1'),
(29, 15, '_rating', 'field_5c0469d72fdbe'),
(30, 15, '_edit_lock', '1547768176:1'),
(31, 16, '_edit_last', '1'),
(32, 16, '_edit_lock', '1547768165:1'),
(33, 16, 'rating', '5'),
(34, 16, '_rating', 'field_5c0469d72fdbe'),
(35, 17, '_edit_last', '1'),
(36, 17, '_edit_lock', '1543793087:1'),
(37, 17, 'rating', '4'),
(38, 17, '_rating', 'field_5c0469d72fdbe'),
(39, 18, '_edit_last', '1'),
(40, 18, '_edit_lock', '1547768153:1'),
(41, 18, 'rating', '5'),
(42, 18, '_rating', 'field_5c0469d72fdbe'),
(43, 19, '_edit_last', '1'),
(44, 19, '_edit_lock', '1543889685:1'),
(45, 19, 'technologies', 'a:7:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"18";i:4;s:2:"14";i:5;s:2:"17";i:6;s:2:"24";}'),
(46, 19, '_technologies', 'field_5c046832088f0'),
(47, 20, '_edit_last', '1'),
(48, 20, 'technologies', 'a:8:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"13";i:3;s:2:"14";i:4;s:2:"17";i:5;s:2:"21";i:6;s:2:"16";i:7;s:2:"24";}'),
(49, 20, '_technologies', 'field_5c046832088f0'),
(50, 20, '_edit_lock', '1543889619:1'),
(51, 21, '_edit_last', '1'),
(52, 21, '_edit_lock', '1547768131:1'),
(53, 21, 'rating', '2'),
(54, 21, '_rating', 'field_5c0469d72fdbe'),
(55, 22, '_edit_last', '1'),
(56, 22, '_edit_lock', '1543889599:1'),
(57, 22, 'technologies', 'a:6:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"18";i:4;s:2:"17";i:5;s:2:"24";}'),
(58, 22, '_technologies', 'field_5c046832088f0'),
(59, 23, '_edit_last', '1'),
(60, 23, '_edit_lock', '1543889570:1'),
(61, 23, 'technologies', 'a:6:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"18";i:4;s:2:"14";i:5;s:2:"24";}'),
(62, 23, '_technologies', 'field_5c046832088f0'),
(63, 24, '_edit_last', '1'),
(64, 24, '_edit_lock', '1547768113:1'),
(65, 24, 'rating', '4'),
(66, 24, '_rating', 'field_5c0469d72fdbe'),
(67, 25, '_edit_last', '1'),
(68, 25, '_edit_lock', '1543889549:1'),
(69, 25, 'technologies', 'a:4:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"24";}'),
(70, 25, '_technologies', 'field_5c046832088f0'),
(71, 25, 'url', 'http://plastic-craft.com'),
(72, 25, '_url', 'field_5c05e2e44fd51'),
(73, 25, 'repo', ''),
(74, 25, '_repo', 'field_5c05e2f24fd52'),
(75, 23, 'url', 'http://modestview.com'),
(76, 23, '_url', 'field_5c05e2e44fd51'),
(77, 23, 'repo', ''),
(78, 23, '_repo', 'field_5c05e2f24fd52'),
(79, 22, 'url', 'http://dailymonkey.com'),
(80, 22, '_url', 'field_5c05e2e44fd51'),
(81, 22, 'repo', ''),
(82, 22, '_repo', 'field_5c05e2f24fd52'),
(83, 20, 'url', 'http://stephenwidom.com'),
(84, 20, '_url', 'field_5c05e2e44fd51'),
(85, 20, 'repo', ''),
(86, 20, '_repo', 'field_5c05e2f24fd52'),
(87, 8, 'url', 'http://togetherfordevelopment.com'),
(88, 8, '_url', 'field_5c05e2e44fd51'),
(89, 8, 'repo', 'https://github.com/StephenWidom/togetherfordevelopment'),
(90, 8, '_repo', 'field_5c05e2f24fd52'),
(91, 19, 'url', 'http://pinotandthenoirs.com'),
(92, 19, '_url', 'field_5c05e2e44fd51'),
(93, 19, 'repo', ''),
(94, 19, '_repo', 'field_5c05e2f24fd52'),
(95, 28, '_edit_last', '1'),
(96, 28, '_edit_lock', '1543889732:1'),
(97, 28, 'technologies', 'a:4:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"14";i:3;s:2:"18";}'),
(98, 28, '_technologies', 'field_5c046832088f0'),
(99, 28, 'url', 'http://plasticcuttingboards.com'),
(100, 28, '_url', 'field_5c05e2e44fd51') ;
INSERT INTO `sw_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(101, 28, 'repo', ''),
(102, 28, '_repo', 'field_5c05e2f24fd52'),
(103, 29, '_edit_last', '1'),
(104, 29, '_edit_lock', '1543889796:1'),
(105, 29, 'technologies', 'a:9:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"17";i:4;s:2:"14";i:5;s:2:"18";i:6;s:2:"13";i:7;s:2:"21";i:8;s:2:"24";}'),
(106, 29, '_technologies', 'field_5c046832088f0'),
(107, 29, 'url', 'https://plansponsor.com'),
(108, 29, '_url', 'field_5c05e2e44fd51'),
(109, 29, 'repo', ''),
(110, 29, '_repo', 'field_5c05e2f24fd52'),
(111, 30, '_edit_last', '1'),
(112, 30, '_edit_lock', '1543889870:1'),
(113, 30, 'technologies', 'a:9:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"17";i:4;s:2:"14";i:5;s:2:"18";i:6;s:2:"13";i:7;s:2:"21";i:8;s:2:"24";}'),
(114, 30, '_technologies', 'field_5c046832088f0'),
(115, 30, 'url', 'https://planadviser.com'),
(116, 30, '_url', 'field_5c05e2e44fd51'),
(117, 30, 'repo', ''),
(118, 30, '_repo', 'field_5c05e2f24fd52'),
(119, 31, '_edit_last', '1'),
(120, 31, '_edit_lock', '1543985338:1'),
(121, 31, 'technologies', 'a:9:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"17";i:4;s:2:"14";i:5;s:2:"18";i:6;s:2:"13";i:7;s:2:"21";i:8;s:2:"24";}'),
(122, 31, '_technologies', 'field_5c046832088f0'),
(123, 31, 'url', 'https://ai-cio.com'),
(124, 31, '_url', 'field_5c05e2e44fd51'),
(125, 31, 'repo', ''),
(126, 31, '_repo', 'field_5c05e2f24fd52'),
(127, 32, '_edit_last', '1'),
(128, 32, '_edit_lock', '1543985313:1'),
(129, 32, 'technologies', 'a:7:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"17";i:4;s:2:"14";i:5;s:2:"18";i:6;s:2:"24";}'),
(130, 32, '_technologies', 'field_5c046832088f0'),
(131, 32, 'url', 'https://thetradenews.com'),
(132, 32, '_url', 'field_5c05e2e44fd51'),
(133, 32, 'repo', ''),
(134, 32, '_repo', 'field_5c05e2f24fd52'),
(135, 34, '_edit_last', '1'),
(136, 34, '_edit_lock', '1543985281:1'),
(137, 34, 'technologies', 'a:7:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"17";i:4;s:2:"14";i:5;s:2:"18";i:6;s:2:"24";}'),
(138, 34, '_technologies', 'field_5c046832088f0'),
(139, 34, 'url', 'https://globalcustodian.com'),
(140, 34, '_url', 'field_5c05e2e44fd51'),
(141, 34, 'repo', ''),
(142, 34, '_repo', 'field_5c05e2f24fd52'),
(143, 35, '_edit_last', '1'),
(144, 35, '_edit_lock', '1547820622:1'),
(145, 35, 'technologies', 'a:8:{i:0;s:1:"7";i:1;s:2:"12";i:2;s:2:"16";i:3;s:2:"17";i:4;s:2:"14";i:5;s:2:"18";i:6;s:2:"13";i:7;s:2:"21";}'),
(146, 35, '_technologies', 'field_5c046832088f0'),
(147, 35, 'url', 'https://strategic-i.com'),
(148, 35, '_url', 'field_5c05e2e44fd51'),
(149, 35, 'repo', ''),
(150, 35, '_repo', 'field_5c05e2f24fd52'),
(151, 36, '_wp_attached_file', '2018/12/cio-large.jpg'),
(152, 36, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:21:"2018/12/cio-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(153, 37, '_wp_attached_file', '2018/12/dailymonkey-large.jpg'),
(154, 37, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:600;s:4:"file";s:29:"2018/12/dailymonkey-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(155, 38, '_wp_attached_file', '2018/12/gc-large.jpg'),
(156, 38, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:20:"2018/12/gc-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(157, 39, '_wp_attached_file', '2018/12/lou-large.jpg'),
(158, 39, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:651;s:4:"file";s:21:"2018/12/lou-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(159, 40, '_wp_attached_file', '2018/12/modestview-large.jpg'),
(160, 40, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:651;s:4:"file";s:28:"2018/12/modestview-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(161, 41, '_wp_attached_file', '2018/12/patrickrienzo-large.jpg'),
(162, 41, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:651;s:4:"file";s:31:"2018/12/patrickrienzo-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(163, 42, '_wp_attached_file', '2018/12/pinot-and-the-noirs-large.jpg'),
(164, 42, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:37:"2018/12/pinot-and-the-noirs-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 43, '_wp_attached_file', '2018/12/planadviser-large.jpg'),
(166, 43, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:29:"2018/12/planadviser-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(167, 44, '_wp_attached_file', '2018/12/plansponsor-large.jpg'),
(168, 44, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:29:"2018/12/plansponsor-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 45, '_wp_attached_file', '2018/12/plastic-craft-large.jpg'),
(170, 45, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:651;s:4:"file";s:31:"2018/12/plastic-craft-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(171, 46, '_wp_attached_file', '2018/12/plasticcuttingboards-large.jpg'),
(172, 46, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:651;s:4:"file";s:38:"2018/12/plasticcuttingboards-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(173, 47, '_wp_attached_file', '2018/12/stephenwidom-large.jpg'),
(174, 47, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:30:"2018/12/stephenwidom-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 48, '_wp_attached_file', '2018/12/strategic-i-large.jpg'),
(176, 48, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:29:"2018/12/strategic-i-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(177, 49, '_wp_attached_file', '2018/12/togetherfordevelopment-large.jpg'),
(178, 49, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:40:"2018/12/togetherfordevelopment-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(179, 50, '_wp_attached_file', '2018/12/trade-large.jpg'),
(180, 50, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:960;s:6:"height";i:658;s:4:"file";s:23:"2018/12/trade-large.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(181, 35, '_thumbnail_id', '48'),
(182, 34, '_thumbnail_id', '38'),
(183, 32, '_thumbnail_id', '50'),
(184, 31, '_thumbnail_id', '36'),
(185, 17, '_wp_trash_meta_status', 'publish'),
(186, 17, '_wp_trash_meta_time', '1547768161'),
(187, 17, '_wp_desired_post_slug', 'git'),
(188, 24, 'years_experience', '6'),
(189, 24, '_years_experience', 'field_5c0469d72fdbe'),
(190, 21, 'years_experience', '2'),
(191, 21, '_years_experience', 'field_5c0469d72fdbe'),
(192, 18, 'years_experience', '6'),
(193, 18, '_years_experience', 'field_5c0469d72fdbe'),
(194, 16, 'years_experience', '5'),
(195, 16, '_years_experience', 'field_5c0469d72fdbe'),
(196, 15, 'years_experience', '1'),
(197, 15, '_years_experience', 'field_5c0469d72fdbe'),
(198, 14, 'years_experience', '6'),
(199, 14, '_years_experience', 'field_5c0469d72fdbe'),
(200, 13, 'years_experience', '2') ;
INSERT INTO `sw_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(201, 13, '_years_experience', 'field_5c0469d72fdbe'),
(202, 12, 'years_experience', '12'),
(203, 12, '_years_experience', 'field_5c0469d72fdbe'),
(204, 7, 'years_experience', '12'),
(205, 7, '_years_experience', 'field_5c0469d72fdbe'),
(206, 52, '_edit_last', '1'),
(207, 52, '_edit_lock', '1547768395:1'),
(208, 52, 'years_experience', '4'),
(209, 52, '_years_experience', 'field_5c0469d72fdbe'),
(210, 53, '_edit_last', '1'),
(211, 53, '_edit_lock', '1547768421:1'),
(212, 53, 'years_experience', '4'),
(213, 53, '_years_experience', 'field_5c0469d72fdbe'),
(214, 54, '_edit_last', '1'),
(215, 54, '_edit_lock', '1547768432:1'),
(216, 54, 'years_experience', '2'),
(217, 54, '_years_experience', 'field_5c0469d72fdbe'),
(218, 55, '_edit_last', '1'),
(219, 55, '_edit_lock', '1547768455:1'),
(220, 55, 'years_experience', '2'),
(221, 55, '_years_experience', 'field_5c0469d72fdbe'),
(222, 56, '_edit_last', '1'),
(223, 56, '_edit_lock', '1547768472:1'),
(224, 56, 'years_experience', '5'),
(225, 56, '_years_experience', 'field_5c0469d72fdbe'),
(226, 57, '_edit_last', '1'),
(227, 57, '_edit_lock', '1547768494:1'),
(228, 57, 'years_experience', '3'),
(229, 57, '_years_experience', 'field_5c0469d72fdbe'),
(230, 58, '_edit_last', '1'),
(231, 58, '_edit_lock', '1547768510:1'),
(232, 58, 'years_experience', '3'),
(233, 58, '_years_experience', 'field_5c0469d72fdbe'),
(234, 59, '_edit_last', '1'),
(235, 59, '_edit_lock', '1547768550:1'),
(236, 59, 'years_experience', '3'),
(237, 59, '_years_experience', 'field_5c0469d72fdbe'),
(238, 60, '_edit_last', '1'),
(239, 60, '_edit_lock', '1547768678:1'),
(240, 60, 'years_experience', '4'),
(241, 60, '_years_experience', 'field_5c0469d72fdbe'),
(242, 61, '_edit_last', '1'),
(243, 61, '_edit_lock', '1547768727:1'),
(244, 61, 'years_experience', '3'),
(245, 61, '_years_experience', 'field_5c0469d72fdbe'),
(246, 62, '_edit_last', '1'),
(247, 62, '_edit_lock', '1547768750:1'),
(248, 62, 'years_experience', '4'),
(249, 62, '_years_experience', 'field_5c0469d72fdbe'),
(250, 63, '_edit_last', '1'),
(251, 63, '_edit_lock', '1547768759:1'),
(252, 63, 'years_experience', '1'),
(253, 63, '_years_experience', 'field_5c0469d72fdbe') ;

#
# End of data contents of table `sw_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `sw_posts`
#

DROP TABLE IF EXISTS `sw_posts`;


#
# Table structure of table `sw_posts`
#

CREATE TABLE `sw_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_posts`
#
INSERT INTO `sw_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-02 23:10:02', '2018-12-02 23:10:02', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-12-02 23:10:02', '2018-12-02 23:10:02', '', 0, 'http://dev.stephenwidom.com/cms/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-02 23:10:02', '2018-12-02 23:10:02', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://dev.stephenwidom.com/cms/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-12-02 23:10:02', '2018-12-02 23:10:02', '', 0, 'http://dev.stephenwidom.com/cms/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-02 23:10:02', '2018-12-02 23:10:02', '<h2>Who we are</h2><p>Our website address is: http://dev.stephenwidom.com/cms.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-12-02 23:10:02', '2018-12-02 23:10:02', '', 0, 'http://dev.stephenwidom.com/cms/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-12-02 23:19:10', '2018-12-02 23:19:10', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"portfolio";}}}s:8:"position";s:4:"side";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Portfolio', 'portfolio', 'publish', 'closed', 'closed', '', 'group_5c0468289e39f', '', '', '2018-12-04 02:14:23', '2018-12-04 02:14:23', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2018-12-02 23:19:10', '2018-12-02 23:19:10', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:12:"technologies";}s:8:"taxonomy";s:0:"";s:10:"allow_null";i:1;s:8:"multiple";i:1;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'Technologies', 'technologies', 'publish', 'closed', 'closed', '', 'field_5c046832088f0', '', '', '2018-12-02 23:19:10', '2018-12-02 23:19:10', '', 5, 'http://dev.stephenwidom.com/cms/?post_type=acf-field&p=6', 0, 'acf-field', '', 0),
(7, 1, '2018-12-02 23:19:21', '2018-12-02 23:19:21', '', 'HTML', '', 'publish', 'closed', 'closed', '', 'html', '', '', '2019-01-17 23:39:28', '2019-01-17 23:39:28', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=7', 0, 'technologies', '', 0),
(8, 1, '2018-12-02 23:19:39', '2018-12-02 23:19:39', 'I designed and coded the website for UWC\'s "Together for Development" short course.', 'Together for Development', '', 'publish', 'closed', 'closed', '', 'together-for-development', '', '', '2018-12-04 02:16:26', '2018-12-04 02:16:26', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=8', 0, 'portfolio', '', 0),
(10, 1, '2018-12-02 23:25:46', '2018-12-02 23:25:46', 'a:7:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"technologies";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"skills";}}}s:8:"position";s:4:"side";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Technologies / Skills', 'technologies-skills', 'publish', 'closed', 'closed', '', 'group_5c0469d14d65b', '', '', '2019-01-17 23:41:59', '2019-01-17 23:41:59', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2018-12-02 23:25:47', '2018-12-02 23:25:47', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:5:"years";s:3:"min";i:1;s:3:"max";i:99;s:4:"step";i:1;}', 'Years Experience', 'years_experience', 'publish', 'closed', 'closed', '', 'field_5c0469d72fdbe', '', '', '2019-01-17 23:37:21', '2019-01-17 23:37:21', '', 10, 'http://dev.stephenwidom.com/cms/?post_type=acf-field&#038;p=11', 0, 'acf-field', '', 0),
(12, 1, '2018-12-02 23:26:09', '2018-12-02 23:26:09', '', 'CSS', '', 'publish', 'closed', 'closed', '', 'css', '', '', '2019-01-17 23:39:17', '2019-01-17 23:39:17', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=12', 1, 'technologies', '', 0),
(13, 1, '2018-12-02 23:26:23', '2018-12-02 23:26:23', '', 'ReactJS', '', 'publish', 'closed', 'closed', '', 'reactjs', '', '', '2019-01-17 23:39:05', '2019-01-17 23:39:05', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=13', 3, 'technologies', '', 0),
(14, 1, '2018-12-02 23:26:36', '2018-12-02 23:26:36', '', 'JavaScript', '', 'publish', 'closed', 'closed', '', 'javascript', '', '', '2019-01-17 23:38:49', '2019-01-17 23:38:49', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=14', 2, 'technologies', '', 0),
(15, 1, '2018-12-02 23:26:45', '2018-12-02 23:26:45', '', 'Redux', '', 'publish', 'closed', 'closed', '', 'redux', '', '', '2019-01-17 23:38:37', '2019-01-17 23:38:37', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=15', 5, 'technologies', '', 0),
(16, 1, '2018-12-02 23:26:56', '2018-12-02 23:26:56', '', 'WordPress', '', 'publish', 'closed', 'closed', '', 'wordpress', '', '', '2019-01-17 23:38:26', '2019-01-17 23:38:26', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=16', 7, 'technologies', '', 0),
(17, 1, '2018-12-02 23:27:08', '2018-12-02 23:27:08', '', 'Git', '', 'trash', 'closed', 'closed', '', 'git__trashed', '', '', '2019-01-17 23:36:01', '2019-01-17 23:36:01', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=17', 0, 'technologies', '', 0),
(18, 1, '2018-12-02 23:27:21', '2018-12-02 23:27:21', '', 'jQuery', '', 'publish', 'closed', 'closed', '', 'jquery', '', '', '2019-01-17 23:38:14', '2019-01-17 23:38:14', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=18', 8, 'technologies', '', 0),
(19, 1, '2018-12-02 23:28:37', '2018-12-02 23:28:37', '', 'Pinot & The Noirs', '', 'publish', 'closed', 'closed', '', 'pinot-the-noirs', '', '', '2018-12-04 02:16:44', '2018-12-04 02:16:44', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=19', 0, 'portfolio', '', 0),
(20, 1, '2018-12-02 23:29:08', '2018-12-02 23:29:08', 'This website, which I designed and coded myself.', 'Stephen Widom', '', 'publish', 'closed', 'closed', '', 'stephen-widom', '', '', '2018-12-04 02:15:59', '2018-12-04 02:15:59', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=20', 0, 'portfolio', '', 0),
(21, 1, '2018-12-02 23:29:32', '2018-12-02 23:29:32', '', 'Webpack', '', 'publish', 'closed', 'closed', '', 'webpack', '', '', '2019-01-17 23:37:52', '2019-01-17 23:37:52', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=21', 4, 'technologies', '', 0),
(22, 1, '2018-12-04 02:09:11', '2018-12-04 02:09:11', 'I draw silly monkeys. I used said drawings as a platform to test my original infinite scrolling implementation.', 'DAILYMONKEY', '', 'publish', 'closed', 'closed', '', 'dailymonkey', '', '', '2018-12-04 02:15:29', '2018-12-04 02:15:29', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=22', 0, 'portfolio', '', 0),
(23, 1, '2018-12-04 02:10:34', '2018-12-04 02:10:34', 'A website I designed and coded to showcase/promote a local performing artist.', 'Modest View', '', 'publish', 'closed', 'closed', '', 'modest-view', '', '', '2018-12-04 02:15:10', '2018-12-04 02:15:10', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=23', 0, 'portfolio', '', 0),
(24, 1, '2018-12-04 02:10:47', '2018-12-04 02:10:47', '', 'PHP', '', 'publish', 'closed', 'closed', '', 'php', '', '', '2019-01-17 23:37:35', '2019-01-17 23:37:35', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=technologies&#038;p=24', 6, 'technologies', '', 0),
(25, 1, '2018-12-04 02:13:34', '2018-12-04 02:13:34', 'A corporate website I designed and coded. They\'ve since overhauled it and made some questionable design choices.', 'Plastic Craft', '', 'publish', 'closed', 'closed', '', 'plastic-craft', '', '', '2018-12-04 02:14:49', '2018-12-04 02:14:49', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=25', 0, 'portfolio', '', 0),
(26, 1, '2018-12-04 02:14:23', '2018-12-04 02:14:23', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_5c05e2e44fd51', '', '', '2018-12-04 02:14:23', '2018-12-04 02:14:23', '', 5, 'http://dev.stephenwidom.com/cms/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2018-12-04 02:14:23', '2018-12-04 02:14:23', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Repo', 'repo', 'publish', 'closed', 'closed', '', 'field_5c05e2f24fd52', '', '', '2018-12-04 02:14:23', '2018-12-04 02:14:23', '', 5, 'http://dev.stephenwidom.com/cms/?post_type=acf-field&p=27', 2, 'acf-field', '', 0),
(28, 1, '2018-12-04 02:17:44', '2018-12-04 02:17:44', 'Another website I designed and coded for Plastic-Craft. Again, they\'ve since changed the original look and feel.', 'Plastic Cutting Boards', '', 'publish', 'closed', 'closed', '', 'plastic-cutting-boards', '', '', '2018-12-04 02:17:44', '2018-12-04 02:17:44', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=28', 0, 'portfolio', '', 0),
(29, 1, '2018-12-04 02:18:55', '2018-12-04 02:18:55', '', 'PLANSPONSOR', '', 'publish', 'closed', 'closed', '', 'plansponsor', '', '', '2018-12-04 02:18:55', '2018-12-04 02:18:55', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=29', 0, 'portfolio', '', 0),
(30, 1, '2018-12-04 02:19:35', '2018-12-04 02:19:35', '', 'PLANADVISER', '', 'publish', 'closed', 'closed', '', 'planadviser', '', '', '2018-12-04 02:19:35', '2018-12-04 02:19:35', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=30', 0, 'portfolio', '', 0),
(31, 1, '2018-12-04 02:20:49', '2018-12-04 02:20:49', '', 'Chief Investment Officer', '', 'publish', 'closed', 'closed', '', 'chief-investment-officer', '', '', '2018-12-05 04:51:15', '2018-12-05 04:51:15', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=31', 0, 'portfolio', '', 0),
(32, 1, '2018-12-04 02:21:46', '2018-12-04 02:21:46', '', 'The TRADE', '', 'publish', 'closed', 'closed', '', 'the-trade', '', '', '2018-12-05 04:50:54', '2018-12-05 04:50:54', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=32', 0, 'portfolio', '', 0),
(34, 1, '2018-12-04 02:22:49', '2018-12-04 02:22:49', '', 'Global Custodian', '', 'publish', 'closed', 'closed', '', 'global-custodian', '', '', '2018-12-05 04:50:22', '2018-12-05 04:50:22', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=34', 0, 'portfolio', '', 0),
(35, 1, '2018-12-04 02:23:42', '2018-12-04 02:23:42', '', 'Strategic Insight', '', 'publish', 'closed', 'closed', '', 'strategic-insight', '', '', '2018-12-05 04:49:50', '2018-12-05 04:49:50', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=portfolio&#038;p=35', 0, 'portfolio', '', 0),
(36, 1, '2018-12-05 04:49:31', '2018-12-05 04:49:31', '', 'cio-large', '', 'inherit', 'open', 'closed', '', 'cio-large', '', '', '2018-12-05 04:49:31', '2018-12-05 04:49:31', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/cio-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-12-05 04:49:32', '2018-12-05 04:49:32', '', 'dailymonkey-large', '', 'inherit', 'open', 'closed', '', 'dailymonkey-large', '', '', '2018-12-05 04:49:32', '2018-12-05 04:49:32', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/dailymonkey-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-12-05 04:49:32', '2018-12-05 04:49:32', '', 'gc-large', '', 'inherit', 'open', 'closed', '', 'gc-large', '', '', '2018-12-05 04:49:32', '2018-12-05 04:49:32', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/gc-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-12-05 04:49:33', '2018-12-05 04:49:33', '', 'lou-large', '', 'inherit', 'open', 'closed', '', 'lou-large', '', '', '2018-12-05 04:49:33', '2018-12-05 04:49:33', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/lou-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-12-05 04:49:33', '2018-12-05 04:49:33', '', 'modestview-large', '', 'inherit', 'open', 'closed', '', 'modestview-large', '', '', '2018-12-05 04:49:33', '2018-12-05 04:49:33', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/modestview-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-12-05 04:49:34', '2018-12-05 04:49:34', '', 'patrickrienzo-large', '', 'inherit', 'open', 'closed', '', 'patrickrienzo-large', '', '', '2018-12-05 04:49:34', '2018-12-05 04:49:34', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/patrickrienzo-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-12-05 04:49:34', '2018-12-05 04:49:34', '', 'pinot-and-the-noirs-large', '', 'inherit', 'open', 'closed', '', 'pinot-and-the-noirs-large', '', '', '2018-12-05 04:49:34', '2018-12-05 04:49:34', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/pinot-and-the-noirs-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-12-05 04:49:34', '2018-12-05 04:49:34', '', 'planadviser-large', '', 'inherit', 'open', 'closed', '', 'planadviser-large', '', '', '2018-12-05 04:49:34', '2018-12-05 04:49:34', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/planadviser-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-12-05 04:49:35', '2018-12-05 04:49:35', '', 'plansponsor-large', '', 'inherit', 'open', 'closed', '', 'plansponsor-large', '', '', '2018-12-05 04:49:35', '2018-12-05 04:49:35', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/plansponsor-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-12-05 04:49:35', '2018-12-05 04:49:35', '', 'plastic-craft-large', '', 'inherit', 'open', 'closed', '', 'plastic-craft-large', '', '', '2018-12-05 04:49:35', '2018-12-05 04:49:35', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/plastic-craft-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-12-05 04:49:35', '2018-12-05 04:49:35', '', 'plasticcuttingboards-large', '', 'inherit', 'open', 'closed', '', 'plasticcuttingboards-large', '', '', '2018-12-05 04:49:35', '2018-12-05 04:49:35', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/plasticcuttingboards-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-12-05 04:49:36', '2018-12-05 04:49:36', '', 'stephenwidom-large', '', 'inherit', 'open', 'closed', '', 'stephenwidom-large', '', '', '2018-12-05 04:49:36', '2018-12-05 04:49:36', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/stephenwidom-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-12-05 04:49:36', '2018-12-05 04:49:36', '', 'strategic-i-large', '', 'inherit', 'open', 'closed', '', 'strategic-i-large', '', '', '2018-12-05 04:49:36', '2018-12-05 04:49:36', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/strategic-i-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-12-05 04:49:37', '2018-12-05 04:49:37', '', 'togetherfordevelopment-large', '', 'inherit', 'open', 'closed', '', 'togetherfordevelopment-large', '', '', '2018-12-05 04:49:37', '2018-12-05 04:49:37', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/togetherfordevelopment-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-12-05 04:49:37', '2018-12-05 04:49:37', '', 'trade-large', '', 'inherit', 'open', 'closed', '', 'trade-large', '', '', '2018-12-05 04:49:37', '2018-12-05 04:49:37', '', 35, 'http://dev.stephenwidom.com/cms/wp-content/uploads/2018/12/trade-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-01-17 23:35:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-17 23:35:44', '0000-00-00 00:00:00', '', 0, 'http://dev.stephenwidom.com/cms/?p=51', 0, 'post', '', 0),
(52, 1, '2019-01-17 23:42:15', '2019-01-17 23:42:15', '', 'Git', '', 'publish', 'closed', 'closed', '', 'git', '', '', '2019-01-17 23:42:15', '2019-01-17 23:42:15', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=52', 0, 'skills', '', 0),
(53, 1, '2019-01-17 23:42:33', '2019-01-17 23:42:33', '', 'VirtualBox', '', 'publish', 'closed', 'closed', '', 'virtualbox', '', '', '2019-01-17 23:42:41', '2019-01-17 23:42:41', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=53', 1, 'skills', '', 0),
(54, 1, '2019-01-17 23:42:53', '2019-01-17 23:42:53', '', 'Vagrant', '', 'publish', 'closed', 'closed', '', 'vagrant', '', '', '2019-01-17 23:42:53', '2019-01-17 23:42:53', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=54', 2, 'skills', '', 0),
(55, 1, '2019-01-17 23:43:13', '2019-01-17 23:43:13', '', 'Eloqua', '', 'publish', 'closed', 'closed', '', 'eloqua', '', '', '2019-01-17 23:43:13', '2019-01-17 23:43:13', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=55', 5, 'skills', '', 0),
(56, 1, '2019-01-17 23:43:30', '2019-01-17 23:43:30', '', 'Photoshop', '', 'publish', 'closed', 'closed', '', 'photoshop', '', '', '2019-01-17 23:43:30', '2019-01-17 23:43:30', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=56', 10, 'skills', '', 0),
(57, 1, '2019-01-17 23:43:54', '2019-01-17 23:43:54', '', 'JIRA', '', 'publish', 'closed', 'closed', '', 'jira', '', '', '2019-01-17 23:43:54', '2019-01-17 23:43:54', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=57', 3, 'skills', '', 0),
(58, 1, '2019-01-17 23:44:04', '2019-01-17 23:44:04', '', 'Agile', '', 'publish', 'closed', 'closed', '', 'agile', '', '', '2019-01-17 23:44:04', '2019-01-17 23:44:04', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=58', 4, 'skills', '', 0),
(59, 1, '2019-01-17 23:44:37', '2019-01-17 23:44:37', '', 'Slack', '', 'publish', 'closed', 'closed', '', 'slack', '', '', '2019-01-17 23:44:37', '2019-01-17 23:44:37', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=59', 11, 'skills', '', 0),
(60, 1, '2019-01-17 23:45:06', '2019-01-17 23:45:06', '', 'Linux Command Line', '', 'publish', 'closed', 'closed', '', 'linux-command-line', '', '', '2019-01-17 23:45:06', '2019-01-17 23:45:06', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=60', 8, 'skills', '', 0),
(61, 1, '2019-01-17 23:47:09', '2019-01-17 23:47:09', '', 'Linode', '', 'publish', 'closed', 'closed', '', 'linode', '', '', '2019-01-17 23:47:09', '2019-01-17 23:47:09', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=61', 7, 'skills', '', 0),
(62, 1, '2019-01-17 23:47:57', '2019-01-17 23:47:57', '', 'Vim', '', 'publish', 'closed', 'closed', '', 'vim', '', '', '2019-01-17 23:47:57', '2019-01-17 23:47:57', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=62', 6, 'skills', '', 0),
(63, 1, '2019-01-17 23:48:20', '2019-01-17 23:48:20', '', 'Firebase', '', 'publish', 'closed', 'closed', '', 'firebase', '', '', '2019-01-17 23:48:20', '2019-01-17 23:48:20', '', 0, 'http://dev.stephenwidom.com/cms/?post_type=skills&#038;p=63', 9, 'skills', '', 0) ;

#
# End of data contents of table `sw_posts`
# --------------------------------------------------------



#
# Delete any existing table `sw_term_relationships`
#

DROP TABLE IF EXISTS `sw_term_relationships`;


#
# Table structure of table `sw_term_relationships`
#

CREATE TABLE `sw_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_term_relationships`
#
INSERT INTO `sw_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `sw_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `sw_term_taxonomy`
#

DROP TABLE IF EXISTS `sw_term_taxonomy`;


#
# Table structure of table `sw_term_taxonomy`
#

CREATE TABLE `sw_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_term_taxonomy`
#
INSERT INTO `sw_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `sw_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `sw_termmeta`
#

DROP TABLE IF EXISTS `sw_termmeta`;


#
# Table structure of table `sw_termmeta`
#

CREATE TABLE `sw_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_termmeta`
#

#
# End of data contents of table `sw_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `sw_terms`
#

DROP TABLE IF EXISTS `sw_terms`;


#
# Table structure of table `sw_terms`
#

CREATE TABLE `sw_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_terms`
#
INSERT INTO `sw_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `sw_terms`
# --------------------------------------------------------



#
# Delete any existing table `sw_usermeta`
#

DROP TABLE IF EXISTS `sw_usermeta`;


#
# Table structure of table `sw_usermeta`
#

CREATE TABLE `sw_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_usermeta`
#
INSERT INTO `sw_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'sw_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'sw_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"3bebd0b37c0c2e8c8ec5d3401b3536fd1f986cdaff35a604975c7643660fc6cb";a:4:{s:10:"expiration";i:1547940943;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0";s:5:"login";i:1547768143;}}'),
(17, 1, 'sw_dashboard_quick_press_last_post_id', '51'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'sw_user-settings', 'libraryContent=browse'),
(20, 1, 'sw_user-settings-time', '1543985386') ;

#
# End of data contents of table `sw_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `sw_users`
#

DROP TABLE IF EXISTS `sw_users`;


#
# Table structure of table `sw_users`
#

CREATE TABLE `sw_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `sw_users`
#
INSERT INTO `sw_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BqdlHSBFAG7vy9oH.9UdbB0.V3QcOh/', 'admin', 'test@test.com', '', '2018-12-02 23:10:01', '', 0, 'admin') ;

#
# End of data contents of table `sw_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

