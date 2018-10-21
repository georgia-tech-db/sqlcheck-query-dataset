CREATE TABLE IF NOT EXISTS `ossn_annotations` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `owner_guid` bigint(20) NOT NULL, `subject_guid` bigint(20) NOT NULL, `type` varchar(20) NOT NULL, `time_created` int(11) NOT NULL, PRIMARY KEY (`id`))
CREATE TABLE IF NOT EXISTS `ossn_object` ( `guid` bigint(20) NOT NULL AUTO_INCREMENT, `owner_guid` bigint(20) NOT NULL, `type` varchar(20) NOT NULL, `time_created` int(11) NOT NULL, `title` text NOT NULL, `description` longtext NOT NULL, `subtype` text NOT NULL, PRIMARY KEY (`guid`))
SELECT * FROM ossn_entities WHERE(guid='{$notif->subject_guid}')
CREATE TABLE IF NOT EXISTS `ossn_site_settings` ( `setting_id` bigint(20) NOT NULL AUTO_INCREMENT, `name` text NOT NULL, `value` text NOT NULL, PRIMARY KEY (`setting_id`))
CREATE TABLE IF NOT EXISTS `ossn_components` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `com_id` varchar(50) NOT NULL, `active` int(1) NOT NULL, PRIMARY KEY (`id`))
CREATE TABLE IF NOT EXISTS `ossn_entities` ( `guid` bigint(20) NOT NULL AUTO_INCREMENT, `owner_guid` bigint(20) NOT NULL, `type` text NOT NULL, `subtype` text NOT NULL, `time_created` int(11) NOT NULL, `time_updated` int(11) DEFAULT NULL, `permission` int(1) NOT NULL, `active` int(1) NOT NULL, PRIMARY KEY (`guid`))
CREATE TABLE IF NOT EXISTS `ossn_entities_metadata` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `guid` bigint(20) NOT NULL, `value` longtext NOT NULL, PRIMARY KEY (`id`))
CREATE TABLE IF NOT EXISTS `ossn_messages` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `message_from` bigint(20) NOT NULL, `message_to` bigint(20) NOT NULL, `message` text NOT NULL, `viewed` varchar(1) DEFAULT NULL, `time` int(11) NOT NULL, PRIMARY KEY (`id`))
CREATE TABLE IF NOT EXISTS `ossn_likes` ( `id` bigint(20) NOT NULL AUTO_INCREMENT, `subject_id` bigint(20) NOT NULL, `guid` bigint(20) NOT NULL, `type` varchar(20) NOT NULL, PRIMARY KEY (`id`))
CREATE TABLE IF NOT EXISTS `ossn_users` ( `guid` bigint(20) NOT NULL AUTO_INCREMENT, `type` text NOT NULL, `username` text NOT NULL, `email` text NOT NULL, `password` text NOT NULL, `salt` varchar(8) NOT NULL, `first_name` text NOT NULL, `last_name` text NOT NULL, `last_login` int(11) NOT NULL, `last_activity` int(11) NOT NULL, `activation` text, `time_created` int(11) NOT NULL, PRIMARY KEY (`guid`))
CREATE TABLE IF NOT EXISTS `ossn_relationships` ( `relation_id` bigint(20) NOT NULL AUTO_INCREMENT, `relation_from` bigint(20) NOT NULL, `relation_to` bigint(20) NOT NULL, `type` varchar(20) NOT NULL, `time` int(11) NOT NULL, PRIMARY KEY (`relation_id`))
CREATE TABLE IF NOT EXISTS `ossn_notifications` ( `guid` bigint(20) NOT NULL AUTO_INCREMENT, `type` text CHARACTER SET latin1 NOT NULL, `poster_guid` bigint(20) NOT NULL, `owner_guid` bigint(20) NOT NULL, `subject_guid` bigint(20) NOT NULL, `viewed` varchar(1) DEFAULT NULL, `time_created` int(11) NOT NULL, `item_guid` bigint(20) NOT NULL, PRIMARY KEY (`guid`))
