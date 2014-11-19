-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 19 Novembre 2014 à 23:52
-- Version du serveur: 5.6.13
-- Version de PHP: 5.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pgcms`
--
CREATE DATABASE IF NOT EXISTS `pgcms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pgcms`;

-- --------------------------------------------------------

--
-- Structure de la table `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_exportable` tinyint(1) NOT NULL,
  `is_gallery` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_context` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_entity_detail` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `cms_block`
--

INSERT INTO `cms_block` (`id`, `name`, `type`, `configuration`, `is_exportable`, `is_gallery`, `slug`, `template_context`, `created_at`, `updated_at`, `is_entity_detail`) VALUES
(1, 'HTML Header', 'PlaygroundCMS\\Blocks\\FreeHTMLController', '{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}', 0, 1, 'html-header', '{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}', '2014-05-22 20:00:44', '2014-11-01 23:54:52', 0),
(2, 'Switch', 'PlaygroundCMS\\Blocks\\SwitchLocaleController', 'null', 0, 1, 'switch', '{"web":"playground-cms\\/blocks\\/switch_locale.phtml","mobile":""}', '2014-05-22 20:04:07', '2014-05-22 20:04:07', 0),
(3, 'Liste d''articles (home)', 'PlaygroundPublishing\\Blocks\\ArticleListController', '{"sort":{"field":"updatedAt","direction":"DESC"},"pagination":{"max_per_page":"10","limit":""}}', 1, 0, 'liste-darticles-home', '{"web":"playground-publishing\\/blocks\\/list_article_md_12.phtml","mobile":""}', '2014-05-22 20:07:04', '2014-10-23 00:33:16', 0),
(5, 'Liste d''articles via la categorie courante', 'PlaygroundPublishing\\Blocks\\ArticleCategoryListController', '{"current_entity":"1","sort":{"field":"updatedAt","direction":"DESC"},"pagination":{"max_per_page":"10","limit":"9999"}}', 0, 0, 'liste-darticles-via-la-categorie-courante', '{"web":"playground-publishing\\/blocks\\/list_article_category_md_12.phtml","mobile":""}', '2014-05-23 10:46:40', '2014-05-23 12:50:02', 0),
(6, 'Liste des articles via le tag courant', 'PlaygroundPublishing\\Blocks\\ArticleTagListController', '{"current_entity":"1","sort":{"field":"updatedAt","direction":"DESC"},"pagination":{"max_per_page":"10","limit":""}}', 0, 0, 'liste-des-articles-via-le-tag-courant', '{"web":"playground-publishing\\/blocks\\/list_article_tag_md_12.phtml","mobile":""}', '2014-05-23 10:55:49', '2014-05-23 10:55:49', 0),
(7, 'Liste des articles via le tag de l''article courant', 'PlaygroundPublishing\\Blocks\\ArticleTagListController', '{"current_entity":"1","sort":{"field":"updatedAt","direction":"DESC"},"pagination":{"max_per_page":"5","limit":"5"}}', 0, 0, 'liste-des-articles-via-le-tag-de-larticle-courant', '{"web":"playground-publishing\\/blocks\\/list_article_tag_md_12.phtml","mobile":""}', '2014-05-23 10:59:01', '2014-05-23 10:59:01', 0),
(8, 'Liste des articles via la categorie de l''article courant', 'PlaygroundPublishing\\Blocks\\ArticleCategoryListController', '{"current_entity":"1","sort":{"field":"updatedAt","direction":"DESC"},"pagination":{"max_per_page":"5","limit":""}}', 0, 0, 'liste-des-articles-via-la-categorie-de-larticle-courant', '{"web":"playground-publishing\\/blocks\\/list_article_category_md_12.phtml","mobile":""}', '2014-05-23 10:59:42', '2014-05-23 10:59:42', 0),
(10, 'Entity Article Détail', 'PlaygroundPublishing\\Blocks\\ArticleController', 'null', 0, 0, 'entity-article-detail', '{"web":"playground-publishing\\/blocks\\/article_md_12.phtml","mobile":""}', '2014-05-23 11:56:00', '2014-10-27 00:02:36', 1),
(11, 'Liste de tags', 'PlaygroundPublishing\\Blocks\\TagListController', '{"sort":{"field":"title","direction":"ASC"},"pagination":{"max_per_page":"","limit":""}}', 0, 1, 'liste-de-tags', '{"web":"playground-publishing\\/blocks\\/list_tag_md_12.phtml","mobile":""}', '2014-05-23 12:14:39', '2014-05-23 12:16:22', 0),
(12, 'Liste de categories', 'PlaygroundPublishing\\Blocks\\CategoryListController', '{"sort":{"field":"title","direction":"ASC"},"pagination":{"max_per_page":"","limit":""}}', 0, 1, 'liste-de-categories', '{"web":"playground-publishing\\/blocks\\/list_category_md_12.phtml","mobile":""}', '2014-05-23 12:16:12', '2014-05-23 12:22:23', 0),
(13, 'Liste de commentaire lié à l''article courant', 'PlaygroundPublishing\\Blocks\\CommentListController', '{"status":"1"}', 0, 0, 'liste-de-commentaire-lie-a-larticle-courant', '{"web":"playground-publishing\\/blocks\\/list_comment_md_12.phtml","mobile":""}', '2014-05-23 14:17:49', '2014-05-23 16:25:33', 0),
(14, 'Liste de sondages', 'PlaygroundPublishing\\Blocks\\PollListController', '{"sort":{"field":"updatedAt","direction":"DESC"},"pagination":{"max_per_page":"5","limit":"5"}}', 0, 0, 'liste-de-sondages', '{"web":"playground-publishing\\/blocks\\/list_poll_md_12.phtml","mobile":""}', '2014-06-01 22:16:10', '2014-06-01 22:16:10', 0),
(15, 'Block Sondage detail', 'PlaygroundPublishing\\Blocks\\PollController', 'null', 0, 0, 'block-sondage-detail', '{"web":"playground-publishing\\/blocks\\/poll_md_12.phtml","mobile":""}', '2014-06-01 22:17:11', '2014-10-27 00:06:19', 1),
(16, 'Block Menu Header', 'PlaygroundCMS\\Blocks\\MenuController', '{"menu":"2"}', 0, 1, 'block-menu-header', '{"web":"playground-cms\\/blocks\\/menu.phtml","mobile":"playground-cms\\/blocks\\/menu.phtml"}', '2014-10-20 00:49:10', '2014-10-20 00:49:10', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cms_block_layout_zone`
--

CREATE TABLE IF NOT EXISTS `cms_block_layout_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `layoutZone_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_25E53886E9ED820C` (`block_id`),
  KEY `IDX_25E53886D29AF672` (`layoutZone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Contenu de la table `cms_block_layout_zone`
--

INSERT INTO `cms_block_layout_zone` (`id`, `block_id`, `position`, `created_at`, `updated_at`, `layoutZone_id`) VALUES
(3, 2, 99, '2014-05-22 20:05:08', '2014-05-22 20:05:08', 4),
(4, 3, 99, '2014-05-22 20:07:04', '2014-05-22 20:07:04', 2),
(5, 1, 99, '2014-05-23 10:08:33', '2014-05-23 10:08:33', 5),
(6, 2, 99, '2014-05-23 10:08:37', '2014-05-23 10:08:37', 8),
(8, 1, 99, '2014-05-23 10:45:53', '2014-05-23 10:45:53', 9),
(9, 2, 99, '2014-05-23 10:45:57', '2014-05-23 10:45:57', 12),
(10, 5, 99, '2014-05-23 10:46:40', '2014-05-23 10:46:40', 10),
(11, 1, 99, '2014-05-23 10:55:08', '2014-05-23 10:55:08', 13),
(12, 2, 99, '2014-05-23 10:55:12', '2014-05-23 10:55:12', 16),
(13, 6, 99, '2014-05-23 10:55:49', '2014-05-23 10:55:49', 14),
(14, 7, 4, '2014-05-23 10:59:01', '2014-05-23 11:56:06', 6),
(15, 8, 3, '2014-05-23 10:59:42', '2014-05-23 11:56:06', 6),
(17, 10, 0, '2014-05-23 11:56:00', '2014-05-23 11:56:06', 6),
(18, 11, 1, '2014-05-23 12:14:39', '2014-11-04 22:48:44', 3),
(19, 12, 102, '2014-05-23 12:16:12', '2014-11-04 22:48:44', 3),
(20, 11, 99, '2014-05-23 12:22:06', '2014-05-23 12:22:06', 7),
(21, 12, 99, '2014-05-23 12:22:36', '2014-05-23 12:22:36', 7),
(22, 11, 99, '2014-05-23 12:23:21', '2014-05-23 12:23:21', 11),
(23, 12, 99, '2014-05-23 12:23:25', '2014-05-23 12:23:25', 11),
(24, 11, 99, '2014-05-23 12:23:35', '2014-05-23 12:23:35', 15),
(25, 12, 99, '2014-05-23 12:23:40', '2014-05-23 12:23:40', 15),
(26, 13, 99, '2014-05-23 14:17:49', '2014-05-23 14:17:49', 6),
(28, 14, 0, '2014-06-01 22:16:10', '2014-11-04 22:48:44', 3),
(29, 1, 99, '2014-06-01 22:16:38', '2014-06-01 22:16:38', 21),
(30, 11, 99, '2014-06-01 22:16:45', '2014-06-01 22:16:45', 23),
(31, 12, 99, '2014-06-01 22:16:49', '2014-06-01 22:16:49', 23),
(32, 2, 99, '2014-06-01 22:16:52', '2014-06-01 22:16:52', 24),
(33, 15, 99, '2014-06-01 22:17:11', '2014-06-01 22:17:11', 22),
(34, 16, 99, '2014-10-20 00:50:52', '2014-10-20 00:50:52', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cms_feed`
--

CREATE TABLE IF NOT EXISTS `cms_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E4D6E9D6A76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=166 ;

--
-- Contenu de la table `cms_feed`
--

INSERT INTO `cms_feed` (`id`, `user_id`, `model`, `record_id`, `name`, `text`, `created_at`, `updated_at`) VALUES
(1, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'New Block', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(2, 2, 'PlaygroundCMS\\Entity\\Page', 1, 'Home', 'New Page', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(3, 2, 'PlaygroundCMS\\Entity\\Template', 1, 'Block HTML template', 'New Template', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(4, 2, 'PlaygroundCMS\\Entity\\Template', 2, 'Block Switch Locale template', 'New Template', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(5, 2, 'PlaygroundCMS\\Entity\\Template', 3, 'Partial Pagination', 'New Template', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(6, 2, 'PlaygroundCMS\\Entity\\Layout', 1, 'Index', 'New Layout', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(7, 2, 'PlaygroundCMS\\Entity\\Zone', 1, 'home_header', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(8, 2, 'PlaygroundCMS\\Entity\\Zone', 2, 'home_content', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(9, 2, 'PlaygroundCMS\\Entity\\Zone', 3, 'home_right_menu', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(10, 2, 'PlaygroundCMS\\Entity\\Zone', 4, 'home_footer', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(11, 2, 'PlaygroundCMS\\Entity\\Block', 2, 'Switch', 'New Block', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(12, 2, 'PlaygroundCMS\\Entity\\Template', 4, 'Template liste d''article', 'New Template', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(13, 2, 'PlaygroundCMS\\Entity\\Block', 3, 'Liste d''articles (home)', 'New Block', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(14, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid', 'New Article', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(15, 2, 'PlaygroundPublishing\\Entity\\Article', 3, 'SNCF had ordered 2,000 TER trains too fast for network', 'New Article', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(16, 2, 'PlaygroundPublishing\\Entity\\Article', 4, 'Drama of solitude - A Yorkshire devoured by a person', 'New Article', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(17, 2, 'PlaygroundPublishing\\Entity\\Article', 5, 'Europe - The French shocked to learn that a large number of them will vote PS', 'New Article', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(18, 2, 'PlaygroundPublishing\\Entity\\Article', 6, 'David Pujadas obliged to make the antenna after the broadcast of a report of quality', 'New Article', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(19, 2, 'PlaygroundCMS\\Entity\\Layout', 2, 'Article', 'New Layout', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(20, 2, 'PlaygroundCMS\\Entity\\Zone', 5, 'article_header', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(21, 2, 'PlaygroundCMS\\Entity\\Zone', 6, 'article_content', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(22, 2, 'PlaygroundCMS\\Entity\\Zone', 7, 'article_right_menu', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(23, 2, 'PlaygroundCMS\\Entity\\Zone', 8, 'article_footer', 'New Zone', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(24, 2, 'PlaygroundCMS\\Entity\\Layout', 3, 'Category', 'New Layout', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(25, 2, 'PlaygroundCMS\\Entity\\Layout', 4, 'Tag', 'New Layout', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(26, 2, 'PlaygroundCMS\\Entity\\Template', 5, 'Template entity article', 'New Template', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(27, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'Politic', 'New Category', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(28, 2, 'PlaygroundPublishing\\Entity\\Category', 2, 'Culture', 'New Category', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(29, 2, 'PlaygroundPublishing\\Entity\\Category', 3, 'Various facts', 'New Category', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(30, 2, 'PlaygroundPublishing\\Entity\\Category', 4, 'Economic', 'New Category', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(31, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'New Tag', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(32, 2, 'PlaygroundPublishing\\Entity\\Tag', 2, 'Newscast', 'New Tag', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(33, 2, 'PlaygroundPublishing\\Entity\\Tag', 3, 'David PUJADAS', 'New Tag', '2014-11-19 23:34:42', '2014-11-19 23:34:42'),
(34, 2, 'PlaygroundPublishing\\Entity\\Tag', 4, 'European Elections', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(35, 2, 'PlaygroundPublishing\\Entity\\Tag', 5, 'PS', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(36, 2, 'PlaygroundPublishing\\Entity\\Tag', 6, 'Yorkshire', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(37, 2, 'PlaygroundPublishing\\Entity\\Tag', 7, '21th April', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(38, 2, 'PlaygroundPublishing\\Entity\\Tag', 9, 'Dax', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(39, 2, 'PlaygroundPublishing\\Entity\\Tag', 10, 'Loneliness', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(40, 2, 'PlaygroundPublishing\\Entity\\Tag', 11, 'SNCF', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(41, 2, 'PlaygroundPublishing\\Entity\\Tag', 12, 'TER', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(42, 2, 'PlaygroundPublishing\\Entity\\Tag', 13, 'Fast', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(43, 2, 'PlaygroundPublishing\\Entity\\Tag', 14, 'French Academy', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(44, 2, 'PlaygroundPublishing\\Entity\\Tag', 15, 'Jean d’Ormesson', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(45, 2, 'PlaygroundPublishing\\Entity\\Tag', 16, 'Alain Finkielkraut', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(46, 2, 'PlaygroundPublishing\\Entity\\Tag', 17, 'Xavier Darcos', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(47, 2, 'PlaygroundPublishing\\Entity\\Tag', 18, 'Max Gallo', 'New Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(48, 2, 'PlaygroundCMS\\Entity\\Template', 6, 'Template liste d''article par tag', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(49, 2, 'PlaygroundCMS\\Entity\\Template', 7, 'Template liste d''article par categorie', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(50, 2, 'PlaygroundCMS\\Entity\\Block', 5, 'Liste d''articles via la categorie courante', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(51, 2, 'PlaygroundCMS\\Entity\\Block', 6, 'Liste des articles via le tag courant', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(52, 2, 'PlaygroundCMS\\Entity\\Block', 7, 'Liste des articles via le tag de l''article courant', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(53, 2, 'PlaygroundCMS\\Entity\\Block', 8, 'Liste des articles via la categorie de l''article courant', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(54, 2, 'PlaygroundCMS\\Entity\\Block', 10, 'Entity Article Détail', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(55, 2, 'PlaygroundCMS\\Entity\\Template', 8, 'Template liste de tags', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(56, 2, 'PlaygroundCMS\\Entity\\Block', 11, 'Liste de tags', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(57, 2, 'PlaygroundCMS\\Entity\\Template', 9, 'Template liste de categories', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(58, 2, 'PlaygroundCMS\\Entity\\Block', 12, 'Liste de categories', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(59, 2, 'PlaygroundCMS\\Entity\\Template', 10, 'Template liste de commentaire', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(60, 2, 'PlaygroundCMS\\Entity\\Block', 13, 'Liste de commentaire lié à l''article courant', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(61, 2, 'PlaygroundPublishing\\Entity\\Comment', 57, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(62, 2, 'PlaygroundPublishing\\Entity\\Comment', 59, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(63, 2, 'PlaygroundPublishing\\Entity\\Comment', 60, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(64, 2, 'PlaygroundPublishing\\Entity\\Comment', 62, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(65, 2, 'PlaygroundPublishing\\Entity\\Comment', 63, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(66, 2, 'PlaygroundPublishing\\Entity\\Comment', 64, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(67, 2, 'PlaygroundPublishing\\Entity\\Comment', 69, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(68, 2, 'PlaygroundPublishing\\Entity\\Comment', 74, 'fdfdddf', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(69, 2, 'PlaygroundPublishing\\Entity\\Comment', 75, 'fdfdddf1212121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(70, 2, 'PlaygroundPublishing\\Entity\\Comment', 76, 'fdfdddf1212121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(71, 2, 'PlaygroundPublishing\\Entity\\Comment', 77, 'fdfdddf1212121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(72, 2, 'PlaygroundPublishing\\Entity\\Comment', 79, 'fdfdddf1212121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(73, 2, 'PlaygroundPublishing\\Entity\\Comment', 80, 'fdfdddf1212121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(74, 2, 'PlaygroundCMS\\Entity\\Zone', 10, 'test_content', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(75, 2, 'PlaygroundCMS\\Entity\\Zone', 11, 'test_right_menu', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(76, 2, 'PlaygroundCMS\\Entity\\Zone', 12, 'test_footer', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(77, 2, 'PlaygroundCMS\\Entity\\Zone', 9, 'test_header', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(78, 2, 'PlaygroundPublishing\\Entity\\Comment', 81, 'En_US', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(79, 2, 'PlaygroundPublishing\\Entity\\Comment', 82, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(80, 2, 'PlaygroundPublishing\\Entity\\Comment', 83, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(81, 2, 'PlaygroundPublishing\\Entity\\Comment', 84, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(82, 2, 'PlaygroundPublishing\\Entity\\Comment', 85, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(83, 2, 'PlaygroundPublishing\\Entity\\Comment', 86, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(84, 2, 'PlaygroundPublishing\\Entity\\Comment', 87, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(85, 2, 'PlaygroundPublishing\\Entity\\Comment', 88, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(86, 2, 'PlaygroundPublishing\\Entity\\Comment', 89, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(87, 2, 'PlaygroundPublishing\\Entity\\Comment', 90, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(88, 2, 'PlaygroundPublishing\\Entity\\Comment', 91, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(89, 2, 'PlaygroundPublishing\\Entity\\Comment', 92, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(90, 2, 'PlaygroundPublishing\\Entity\\Comment', 93, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(91, 2, 'PlaygroundPublishing\\Entity\\Comment', 94, 'En_US12121', 'New Comment', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(92, 2, 'PlaygroundPublishing\\Entity\\Poll', 1, 'Do you have a good image of the UMP?', 'New Poll', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(93, 2, 'PlaygroundCMS\\Entity\\Zone', 13, 'poll_header', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(94, 2, 'PlaygroundCMS\\Entity\\Zone', 14, 'poll_content', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(95, 2, 'PlaygroundCMS\\Entity\\Zone', 15, 'poll_right_menu', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(96, 2, 'PlaygroundCMS\\Entity\\Zone', 16, 'poll_footer', 'New Zone', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(97, 2, 'PlaygroundCMS\\Entity\\Layout', 6, 'Poll', 'New Layout', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(98, 2, 'PlaygroundCMS\\Entity\\Template', 12, 'Template liste de sondages', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(99, 2, 'PlaygroundCMS\\Entity\\Template', 13, 'template entity sondage', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(100, 2, 'PlaygroundCMS\\Entity\\Block', 14, 'Liste de sondages', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(101, 2, 'PlaygroundCMS\\Entity\\Block', 15, 'Block Sondage detail', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(102, 2, 'PlaygroundPublishing\\Entity\\Poll', 3, 'Winter snow tires required: good or bad?', 'New Poll', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(103, 2, 'PlaygroundCMS\\Entity\\Menu', 1, 'root', 'New Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(104, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'New Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(105, 2, 'PlaygroundCMS\\Entity\\Menu', 3, 'Politic', 'New Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(106, 2, 'PlaygroundCMS\\Entity\\Menu', 4, 'Economic', 'New Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(107, 2, 'PlaygroundCMS\\Entity\\Menu', 5, 'Most Read Articles', 'New Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(108, 2, 'PlaygroundCMS\\Entity\\Menu', 6, 'Ninja Uk', 'New Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(109, 2, 'PlaygroundCMS\\Entity\\Template', 14, 'Block Menu template', 'New Template', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(110, 2, 'PlaygroundCMS\\Entity\\Block', 16, 'Block Menu Header', 'New Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(111, 2, 'PlaygroundCMS\\Entity\\Menu', 7, 'Home', 'New Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(112, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header2', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(113, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(114, 2, 'PlaygroundCMS\\Entity\\Block', 2, 'Switch', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(115, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(116, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header2', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(117, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(118, 2, 'PlaygroundCMS\\Entity\\Page', 1, 'Home', 'Edit Page', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(119, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid222', 'Edit Article', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(120, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'Politic', 'Edit Category', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(121, 2, 'PlaygroundPublishing\\Entity\\Poll', 1, 'Do you have a good image of the UMP?', 'Edit Poll', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(122, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'Edit Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(123, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid222', 'Edit Article', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(124, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header2', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(125, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(126, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(127, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header222', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(128, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(129, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header222', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(130, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(131, 2, 'PlaygroundCMS\\Entity\\Block', 1, 'HTML Header', 'Edit Block', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(132, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(133, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(134, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(135, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(136, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(137, 2, 'PlaygroundCMS\\Entity\\Menu', 2, 'Menu Header', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(138, 2, 'PlaygroundCMS\\Entity\\Page', 1, 'Home', 'Edit Page', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(139, 2, 'PlaygroundCMS\\Entity\\Page', 1, 'Home', 'Edit Page', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(140, 2, 'PlaygroundCMS\\Entity\\Page', 1, 'Home', 'Edit Page', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(141, 2, 'PlaygroundCMS\\Entity\\Page', 1, 'Home', 'Edit Page', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(142, 2, 'PlaygroundCMS\\Entity\\Menu', 6, 'Ninja Uk', 'Edit Menu', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(143, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid222', 'Edit Article', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(144, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid', 'Edit Article', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(145, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid22222', 'Edit Article', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(146, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid', 'Edit Article', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(147, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'Politic', 'Edit Category', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(148, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'Politic', 'Edit Category', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(149, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'Politic', 'Edit Category', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(150, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'Politic', 'Edit Category', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(151, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'Edit Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(152, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'Edit Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(153, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'Edit Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(154, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'Politic', 'Edit Category', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(155, 2, 'PlaygroundPublishing\\Entity\\Category', 1, 'France TV', 'Edit Category', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(156, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'Edit Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(157, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'Edit Tag', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(158, 2, 'PlaygroundPublishing\\Entity\\Poll', 1, 'Do you have a good image of the UMP?', 'Edit Poll', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(159, 2, 'PlaygroundPublishing\\Entity\\Poll', 1, 'Do you have a good image of the UMP?', 'Edit Poll', '2014-11-19 23:34:43', '2014-11-19 23:34:43'),
(160, 2, 'PlaygroundPublishing\\Entity\\Poll', 1, 'Do you have a good image of the UMP?', 'Edit Poll', '2014-11-19 23:34:44', '2014-11-19 23:34:44'),
(161, 2, 'PlaygroundPublishing\\Entity\\Poll', 1, 'Do you have a good image of the UMP?', 'Edit Poll', '2014-11-19 23:34:44', '2014-11-19 23:34:44'),
(162, 2, 'PlaygroundPublishing\\Entity\\Comment', 95, 'Mon commentaire', 'New Comment', '2014-11-19 23:34:44', '2014-11-19 23:34:44'),
(163, 2, 'PlaygroundPublishing\\Entity\\Article', 2, 'The French Academy finally valid', 'Edit Article', '2014-11-19 23:34:44', '2014-11-19 23:34:44'),
(164, 2, 'PlaygroundPublishing\\Entity\\Tag', 1, 'France TV', 'Edit Tag', '2014-11-19 23:34:44', '2014-11-19 23:34:44'),
(165, 2, 'PlaygroundPublishing\\Entity\\Comment', 96, 'Mon commentaire', 'New Comment', '2014-11-19 23:34:44', '2014-11-19 23:34:44');

-- --------------------------------------------------------

--
-- Structure de la table `cms_layout`
--

CREATE TABLE IF NOT EXISTS `cms_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `cms_layout`
--

INSERT INTO `cms_layout` (`id`, `name`, `file`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Index', 'playground-cms/layout/index_zone.phtml', 'Index', NULL, '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(2, 'Article', 'playground-publishing/layout/article.phtml', '', NULL, '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(3, 'Category', 'playground-publishing/layout/category.phtml', '', NULL, '2014-05-23 10:07:01', '2014-05-23 10:07:01'),
(4, 'Tag', 'playground-publishing/layout/tag.phtml', '', NULL, '2014-05-23 10:07:10', '2014-05-23 10:07:10'),
(6, 'Poll', 'playground-publishing/layout/poll.phtml', '', NULL, '2014-06-01 22:07:57', '2014-06-01 22:07:57');

-- --------------------------------------------------------

--
-- Structure de la table `cms_layout_zone`
--

CREATE TABLE IF NOT EXISTS `cms_layout_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D2495D4A8C22AA1A` (`layout_id`),
  KEY `IDX_D2495D4A9F2C3FAB` (`zone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Contenu de la table `cms_layout_zone`
--

INSERT INTO `cms_layout_zone` (`id`, `layout_id`, `zone_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(2, 1, 2, '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(3, 1, 3, '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(4, 1, 4, '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(5, 2, 5, '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(6, 2, 6, '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(7, 2, 7, '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(8, 2, 8, '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(9, 3, 5, '2014-05-23 10:07:01', '2014-05-23 10:07:01'),
(10, 3, 6, '2014-05-23 10:07:01', '2014-05-23 10:07:01'),
(11, 3, 7, '2014-05-23 10:07:01', '2014-05-23 10:07:01'),
(12, 3, 8, '2014-05-23 10:07:01', '2014-05-23 10:07:01'),
(13, 4, 5, '2014-05-23 10:07:10', '2014-05-23 10:07:10'),
(14, 4, 6, '2014-05-23 10:07:10', '2014-05-23 10:07:10'),
(15, 4, 7, '2014-05-23 10:07:10', '2014-05-23 10:07:10'),
(16, 4, 8, '2014-05-23 10:07:10', '2014-05-23 10:07:10'),
(21, 6, 13, '2014-06-01 22:07:57', '2014-06-01 22:07:57'),
(22, 6, 14, '2014-06-01 22:07:57', '2014-06-01 22:07:57'),
(23, 6, 15, '2014-06-01 22:07:57', '2014-06-01 22:07:57'),
(24, 6, 16, '2014-06-01 22:07:57', '2014-06-01 22:07:57');

-- --------------------------------------------------------

--
-- Structure de la table `cms_menu`
--

CREATE TABLE IF NOT EXISTS `cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BA9397EE727ACA70` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `parent_id`, `lft`, `lvl`, `rgt`, `root`, `title`, `slug`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 0, 14, 1, 'root', 'root', '/', 1, '2014-10-20 00:13:16', '2014-10-20 00:13:16'),
(2, 1, 2, 1, 13, 1, 'Menu Header', 'menu-header', '/', 1, '2014-10-20 00:18:48', '2014-10-21 01:45:28'),
(3, 2, 5, 2, 6, 1, 'Politic', 'politic', '/en_us/category/politic-1.html', 1, '2014-10-20 00:19:46', '2014-10-21 01:45:28'),
(4, 2, 7, 2, 8, 1, 'Economic', 'economic', '/en_us/category/economic-4.html', 1, '2014-10-20 00:20:04', '2014-10-21 01:45:28'),
(5, 2, 9, 2, 12, 1, 'Most Read Articles', 'most-read-articles', '/', 1, '2014-10-20 00:20:50', '2014-10-21 01:45:28'),
(6, 5, 10, 3, 11, 1, 'Ninja Uk', 'ninja-uk', '/en_us/article/drama-of-solitude-a-yorkshire-devoured-by-a-person-4.html', 1, '2014-10-20 00:21:26', '2014-10-21 01:45:28'),
(7, 2, 3, 2, 4, 1, 'Home', 'home', '/en_us/home-1.html', 1, '2014-10-21 01:45:23', '2014-10-21 01:45:28');

-- --------------------------------------------------------

--
-- Structure de la table `cms_menu_translations`
--

CREATE TABLE IF NOT EXISTS `cms_menu_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_translations_lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `menu_translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=121 ;

--
-- Contenu de la table `cms_menu_translations`
--

INSERT INTO `cms_menu_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(82, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'title', '1', 'root'),
(83, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'slug', '1', 'root'),
(84, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'url', '1', '/'),
(85, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'title', '2', 'Menu Header'),
(86, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'slug', '2', 'menu-header'),
(87, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'url', '2', '/'),
(88, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'title', '2', 'Menu Header'),
(89, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'slug', '2', 'menu-header'),
(90, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'url', '2', '/'),
(91, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'title', '3', 'Politique'),
(92, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'slug', '3', 'politique'),
(93, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'url', '3', '/fr_fr/categorie/politique-1.html'),
(94, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'title', '3', 'Politic'),
(95, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'slug', '3', 'politic'),
(96, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'url', '3', '/en_us/category/politic-1.html'),
(97, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'title', '4', 'Economie'),
(98, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'slug', '4', 'economie'),
(99, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'url', '4', '/fr_fr/categorie/economie-4.html'),
(100, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'title', '4', 'Economic'),
(101, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'slug', '4', 'economic'),
(102, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'url', '4', '/en_us/category/economic-4.html'),
(103, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'title', '5', 'Articles les plus lus'),
(104, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'slug', '5', 'articles-les-plus-lus'),
(105, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'url', '5', '/'),
(106, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'title', '5', 'Most Read Articles'),
(107, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'slug', '5', 'most-read-articles'),
(108, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'url', '5', '/'),
(109, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'title', '6', 'Ninja Fr'),
(110, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'slug', '6', 'ninja-fr'),
(111, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'url', '6', '/fr_fr/article/drame-de-la-solitude-un-yorkshire-devore-par-une-personne-agee-4.html'),
(112, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'title', '6', 'Ninja Uk'),
(113, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'slug', '6', 'ninja-uk'),
(114, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'url', '6', '/en_us/article/drama-of-solitude-a-yorkshire-devoured-by-a-person-4.html'),
(115, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'title', '7', 'Accueil'),
(116, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'slug', '7', 'accueil'),
(117, 'fr_FR', 'PlaygroundCMS\\Entity\\Menu', 'url', '7', '/fr_fr/index-1.html'),
(118, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'title', '7', 'Home'),
(119, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'slug', '7', 'home'),
(120, 'en_US', 'PlaygroundCMS\\Entity\\Menu', 'url', '7', '/en_us/home-1.html');

-- --------------------------------------------------------

--
-- Structure de la table `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_web` tinyint(1) NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `status` smallint(6) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `cms_page`
--

INSERT INTO `cms_page` (`id`, `is_web`, `is_mobile`, `status`, `start_date`, `end_date`, `created_at`, `updated_at`, `title`, `slug`, `title_meta`, `description_meta`, `keyword_meta`) VALUES
(1, 1, 0, 1, '2014-01-01 00:00:00', '2029-01-01 00:00:00', '2014-05-22 20:00:44', '2014-11-02 05:27:17', 'Home', 'home', 'PGCMS - Home', 'PGCMS - Home', 'PGCMS, Home');

-- --------------------------------------------------------

--
-- Structure de la table `cms_page_translations`
--

CREATE TABLE IF NOT EXISTS `cms_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_translations_lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `page_translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Contenu de la table `cms_page_translations`
--

INSERT INTO `cms_page_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(1, 'fr_FR', 'PlaygroundCMS\\Entity\\Page', 'title', '1', 'Index'),
(2, 'fr_FR', 'PlaygroundCMS\\Entity\\Page', 'slug', '1', 'index'),
(3, 'fr_FR', 'PlaygroundCMS\\Entity\\Page', 'titleMeta', '1', 'PGCMS - Index'),
(4, 'fr_FR', 'PlaygroundCMS\\Entity\\Page', 'keywordMeta', '1', 'PGCMS, Index'),
(5, 'fr_FR', 'PlaygroundCMS\\Entity\\Page', 'descriptionMeta', '1', 'PGCMS, Index'),
(6, 'en_US', 'PlaygroundCMS\\Entity\\Page', 'title', '1', 'Home'),
(7, 'en_US', 'PlaygroundCMS\\Entity\\Page', 'slug', '1', 'home'),
(8, 'en_US', 'PlaygroundCMS\\Entity\\Page', 'titleMeta', '1', 'PGCMS - Home'),
(9, 'en_US', 'PlaygroundCMS\\Entity\\Page', 'descriptionMeta', '1', 'PGCMS - Home'),
(10, 'en_US', 'PlaygroundCMS\\Entity\\Page', 'keywordMeta', '1', 'PGCMS, Home');

-- --------------------------------------------------------

--
-- Structure de la table `cms_ressource`
--

CREATE TABLE IF NOT EXISTS `cms_ressource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(11) NOT NULL,
  `locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `security_context` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout_context` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ressource_unique_idx` (`url`),
  KEY `ressource_index_idx` (`model`,`record_id`,`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Contenu de la table `cms_ressource`
--

INSERT INTO `cms_ressource` (`id`, `url`, `model`, `record_id`, `locale`, `security_context`, `layout_context`, `created_at`, `updated_at`) VALUES
(1, '/fr_fr/index-1.html', 'PlaygroundCMS\\Entity\\Page', 1, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-cms\\/layout\\/index_zone.phtml"}', '2014-05-22 20:00:44', '2014-05-22 20:00:44'),
(2, '/en_us/home-1.html', 'PlaygroundCMS\\Entity\\Page', 1, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-cms\\/layout\\/index_zone.phtml"}', '2014-05-22 20:00:44', '2014-05-22 20:00:44'),
(4, '/fr_fr/article/lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye-2.html', 'PlaygroundPublishing\\Entity\\Article', 2, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:12:29', '2014-05-23 10:07:34'),
(5, '/en_us/article/the-french-academy-finally-valid-they-croivent-and-should-we-voye-2.html', 'PlaygroundPublishing\\Entity\\Article', 2, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:12:29', '2014-05-23 10:07:34'),
(6, '/fr_fr/article/la-sncf-aurait-commande-2000-rames-de-ter-trop-rapides-pour-son-reseau-3.html', 'PlaygroundPublishing\\Entity\\Article', 3, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:14:00', '2014-05-23 10:07:43'),
(7, '/en_us/article/sncf-had-ordered-2-000-ter-trains-too-fast-for-network-3.html', 'PlaygroundPublishing\\Entity\\Article', 3, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:14:00', '2014-05-23 10:07:43'),
(8, '/fr_fr/article/drame-de-la-solitude-un-yorkshire-devore-par-une-personne-agee-4.html', 'PlaygroundPublishing\\Entity\\Article', 4, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:15:05', '2014-05-23 10:07:52'),
(9, '/en_us/article/drama-of-solitude-a-yorkshire-devoured-by-a-person-4.html', 'PlaygroundPublishing\\Entity\\Article', 4, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:15:05', '2014-05-23 10:07:52'),
(10, '/fr_fr/article/europeennes-les-francais-choques-dapprendre-quun-tres-grand-nombre-dentre-eux-va-voter-ps-5.html', 'PlaygroundPublishing\\Entity\\Article', 5, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:16:14', '2014-05-23 10:08:02'),
(11, '/en_us/article/europe-the-french-shocked-to-learn-that-a-large-number-of-them-will-vote-ps-5.html', 'PlaygroundPublishing\\Entity\\Article', 5, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:16:14', '2014-05-23 10:08:02'),
(12, '/fr_fr/article/david-pujadas-oblige-de-rendre-lantenne-apres-la-diffusion-dun-reportage-de-qualite-6.html', 'PlaygroundPublishing\\Entity\\Article', 6, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:18:44', '2014-05-23 10:08:12'),
(13, '/en_us/article/david-pujadas-obliged-to-make-the-antenna-after-the-broadcast-of-a-report-of-quality-6.html', 'PlaygroundPublishing\\Entity\\Article', 6, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-22 20:18:44', '2014-05-23 10:08:12'),
(14, '/fr_fr/categorie/politique-1.html', 'PlaygroundPublishing\\Entity\\Category', 1, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:15:27', '2014-05-23 10:15:27'),
(15, '/en_us/category/politic-1.html', 'PlaygroundPublishing\\Entity\\Category', 1, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:15:27', '2014-05-23 10:15:27'),
(16, '/fr_fr/categorie/culture-2.html', 'PlaygroundPublishing\\Entity\\Category', 2, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:16:28', '2014-05-23 10:16:28'),
(17, '/en_us/category/culture-2.html', 'PlaygroundPublishing\\Entity\\Category', 2, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:16:28', '2014-05-23 10:16:28'),
(18, '/fr_fr/categorie/faits-divers-3.html', 'PlaygroundPublishing\\Entity\\Category', 3, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:17:21', '2014-05-23 10:17:21'),
(19, '/en_us/category/various-facts-3.html', 'PlaygroundPublishing\\Entity\\Category', 3, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:17:21', '2014-05-23 10:17:21'),
(20, '/fr_fr/categorie/economie-4.html', 'PlaygroundPublishing\\Entity\\Category', 4, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:17:43', '2014-05-23 10:17:43'),
(21, '/en_us/category/economic-4.html', 'PlaygroundPublishing\\Entity\\Category', 4, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/category.phtml"}', '2014-05-23 10:17:43', '2014-05-23 10:17:43'),
(22, '/fr_fr/tag/france-tv-1.html', 'PlaygroundPublishing\\Entity\\Tag', 1, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:18:12', '2014-05-23 10:18:12'),
(23, '/en_us/tag/france-tv-1.html', 'PlaygroundPublishing\\Entity\\Tag', 1, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:18:12', '2014-05-23 10:18:12'),
(24, '/fr_fr/tag/journal-televise-2.html', 'PlaygroundPublishing\\Entity\\Tag', 2, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:18:51', '2014-05-23 10:18:51'),
(25, '/en_us/tag/newscast-2.html', 'PlaygroundPublishing\\Entity\\Tag', 2, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:18:51', '2014-05-23 10:18:51'),
(26, '/fr_fr/tag/david-pujadas-3.html', 'PlaygroundPublishing\\Entity\\Tag', 3, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:20:13', '2014-05-23 10:20:13'),
(27, '/en_us/tag/david-pujadas-3.html', 'PlaygroundPublishing\\Entity\\Tag', 3, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:20:13', '2014-05-23 10:20:13'),
(28, '/fr_fr/tag/elections-europeennes-4.html', 'PlaygroundPublishing\\Entity\\Tag', 4, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:21:20', '2014-05-23 10:21:20'),
(29, '/en_us/tag/european-elections-4.html', 'PlaygroundPublishing\\Entity\\Tag', 4, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:21:20', '2014-05-23 10:21:20'),
(30, '/fr_fr/tag/ps-5.html', 'PlaygroundPublishing\\Entity\\Tag', 5, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:21:44', '2014-05-23 10:21:44'),
(31, '/en_us/tag/ps-5.html', 'PlaygroundPublishing\\Entity\\Tag', 5, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:21:44', '2014-05-23 10:21:44'),
(32, '/fr_fr/tag/yorkshire-6.html', 'PlaygroundPublishing\\Entity\\Tag', 6, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:22:09', '2014-05-23 10:22:09'),
(33, '/en_us/tag/yorkshire-6.html', 'PlaygroundPublishing\\Entity\\Tag', 6, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:22:09', '2014-05-23 10:22:09'),
(34, '/fr_fr/tag/21-avril-7.html', 'PlaygroundPublishing\\Entity\\Tag', 7, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:22:51', '2014-05-23 10:22:51'),
(35, '/en_us/tag/21th-april-7.html', 'PlaygroundPublishing\\Entity\\Tag', 7, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:22:51', '2014-05-23 10:22:51'),
(36, '/fr_fr/tag/21-avril-8.html', 'PlaygroundPublishing\\Entity\\Tag', 8, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:23:11', '2014-05-23 10:23:11'),
(37, '/en_us/tag/21th-april-8.html', 'PlaygroundPublishing\\Entity\\Tag', 8, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:23:11', '2014-05-23 10:23:11'),
(38, '/fr_fr/tag/dax-9.html', 'PlaygroundPublishing\\Entity\\Tag', 9, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:23:34', '2014-05-23 10:23:34'),
(39, '/en_us/tag/dax-9.html', 'PlaygroundPublishing\\Entity\\Tag', 9, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:23:34', '2014-05-23 10:23:34'),
(40, '/fr_fr/tag/solitude-10.html', 'PlaygroundPublishing\\Entity\\Tag', 10, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-23 10:24:43', '2014-05-23 10:24:43'),
(41, '/en_us/tag/loneliness-10.html', 'PlaygroundPublishing\\Entity\\Tag', 10, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/article.phtml"}', '2014-05-23 10:24:43', '2014-05-23 10:24:43'),
(42, '/fr_fr/tag/sncf-11.html', 'PlaygroundPublishing\\Entity\\Tag', 11, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:25:06', '2014-05-23 10:25:06'),
(43, '/en_us/tag/sncf-11.html', 'PlaygroundPublishing\\Entity\\Tag', 11, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:25:06', '2014-05-23 10:25:06'),
(44, '/fr_fr/tag/ter-12.html', 'PlaygroundPublishing\\Entity\\Tag', 12, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:25:34', '2014-05-23 10:25:34'),
(45, '/en_us/tag/ter-12.html', 'PlaygroundPublishing\\Entity\\Tag', 12, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:25:34', '2014-05-23 10:25:34'),
(46, '/fr_fr/tag/rapide-13.html', 'PlaygroundPublishing\\Entity\\Tag', 13, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:26:46', '2014-05-23 10:26:46'),
(47, '/en_us/tag/fast-13.html', 'PlaygroundPublishing\\Entity\\Tag', 13, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:26:46', '2014-05-23 10:26:46'),
(48, '/fr_fr/tag/academie-francaise-14.html', 'PlaygroundPublishing\\Entity\\Tag', 14, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:27:35', '2014-05-23 10:27:35'),
(49, '/en_us/tag/french-academy-14.html', 'PlaygroundPublishing\\Entity\\Tag', 14, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:27:36', '2014-05-23 10:27:36'),
(50, '/fr_fr/tag/jean-dormesson-15.html', 'PlaygroundPublishing\\Entity\\Tag', 15, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:27:59', '2014-05-23 10:27:59'),
(51, '/en_us/tag/jean-dormesson-15.html', 'PlaygroundPublishing\\Entity\\Tag', 15, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:27:59', '2014-05-23 10:27:59'),
(52, '/fr_fr/tag/alain-finkielkraut-16.html', 'PlaygroundPublishing\\Entity\\Tag', 16, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:28:17', '2014-05-23 10:28:17'),
(53, '/en_us/tag/alain-finkielkraut-16.html', 'PlaygroundPublishing\\Entity\\Tag', 16, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:28:17', '2014-05-23 10:28:17'),
(54, '/fr_fr/tag/xavier-darcos-17.html', 'PlaygroundPublishing\\Entity\\Tag', 17, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:28:58', '2014-05-23 10:28:58'),
(55, '/en_us/tag/xavier-darcos-17.html', 'PlaygroundPublishing\\Entity\\Tag', 17, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:28:58', '2014-05-23 10:28:58'),
(56, '/fr_fr/tag/max-gallo-18.html', 'PlaygroundPublishing\\Entity\\Tag', 18, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:29:19', '2014-05-23 10:29:19'),
(57, '/en_us/tag/max-gallo-18.html', 'PlaygroundPublishing\\Entity\\Tag', 18, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/tag.phtml"}', '2014-05-23 10:29:19', '2014-05-23 10:29:19'),
(58, '/fr_fr/sondage/avez-vous-une-bonne-image-de-lump-1.html', 'PlaygroundPublishing\\Entity\\Poll', 1, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/poll.phtml"}', '2014-06-01 22:07:44', '2014-06-01 22:11:15'),
(59, '/en_us/poll/do-you-have-a-good-image-of-the-ump-1.html', 'PlaygroundPublishing\\Entity\\Poll', 1, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/poll.phtml"}', '2014-06-01 22:07:44', '2014-06-01 22:11:15'),
(60, '/fr_fr/sondage/pneus-neige-obligatoires-en-hiver-bien-ou-pas-bien-3.html', 'PlaygroundPublishing\\Entity\\Poll', 3, 'fr_FR', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/poll.phtml"}', '2014-07-24 23:28:24', '2014-07-24 23:28:24'),
(61, '/en_us/poll/winter-snow-tires-required-good-or-bad-3.html', 'PlaygroundPublishing\\Entity\\Poll', 3, 'en_US', 'SECURITY_ANONYMOUS', '{"web":"playground-publishing\\/layout\\/poll.phtml"}', '2014-07-24 23:28:24', '2014-07-24 23:28:24');

-- --------------------------------------------------------

--
-- Structure de la table `cms_revision`
--

CREATE TABLE IF NOT EXISTS `cms_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object` longtext COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Contenu de la table `cms_revision`
--

INSERT INTO `cms_revision` (`id`, `type`, `object`, `object_id`, `revision`, `created_at`, `updated_at`) VALUES
(8, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:12:"HTML Header2";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:12:"html-header2";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 22:55:08.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 1, '2014-10-29 22:57:19', '2014-10-29 22:57:19'),
(9, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:11:"HTML Header";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:11:"html-header";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 22:57:19.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 2, '2014-10-29 22:57:25', '2014-10-29 22:57:25'),
(10, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:2;s:7:"\0*\0name";s:6:"Switch";s:7:"\0*\0type";s:43:"PlaygroundCMS\\Blocks\\SwitchLocaleController";s:16:"\0*\0configuration";s:4:"null";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:6:"switch";s:18:"\0*\0templateContext";s:65:"{"web":"playground-cms\\/blocks\\/switch_locale.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:04:07.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:04:07.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 2, 1, '2014-10-29 22:57:36', '2014-10-29 22:57:36'),
(11, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:11:"HTML Header";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:11:"html-header";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 22:57:19.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 3, '2014-10-29 22:57:49', '2014-10-29 22:57:49'),
(12, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:12:"HTML Header2";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:12:"html-header2";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 22:57:49.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 4, '2014-10-29 22:58:06', '2014-10-29 22:58:06'),
(13, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:13;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:11:"Menu Header";s:7:"\0*\0slug";s:11:"menu-header";s:6:"\0*\0url";s:1:"/";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:18:48.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}s:5:"fr_FR";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}}}', 2, 1, '2014-10-30 14:55:43', '2014-10-30 14:55:43'),
(14, 'PlaygroundCMS\\Entity\\Page', 'O:25:"PlaygroundCMS\\Entity\\Page":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 23:02:06.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:4:"Home";s:7:"\0*\0slug";s:4:"home";s:12:"\0*\0titleMeta";s:12:"PGCMS - Home";s:18:"\0*\0descriptionMeta";s:12:"PGCMS - Home";s:14:"\0*\0keywordMeta";s:11:"PGCMS, Home";s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:4:"Home";s:4:"slug";s:4:"home";s:9:"titleMeta";s:12:"PGCMS - Home";s:15:"descriptionMeta";s:12:"PGCMS - Home";s:11:"keywordMeta";s:11:"PGCMS, Home";}s:5:"fr_FR";a:5:{s:5:"title";s:5:"Index";s:4:"slug";s:5:"index";s:9:"titleMeta";s:13:"PGCMS - Index";s:11:"keywordMeta";s:12:"PGCMS, Index";s:15:"descriptionMeta";s:12:"PGCMS, Index";}}}', 1, 1, '2014-10-30 14:56:00', '2014-10-30 14:56:00'),
(15, 'PlaygroundPublishing\\Entity\\Article', 'O:35:"PlaygroundPublishing\\Entity\\Article":24:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:2;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:12:29.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-08-20 09:40:34.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:35:"The French Academy finally valid222";s:7:"\0*\0slug";s:35:"the-french-academy-finally-valid222";s:11:"\0*\0abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:10:"\0*\0content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:12:"\0*\0titleMeta";s:33:"The French Academy finally valid ";s:18:"\0*\0descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:14:"\0*\0keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:13:"\0*\0categories";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:7:"\0*\0tags";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:11:"\0*\0comments";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:7:{s:5:"title";s:35:"The French Academy finally valid222";s:4:"slug";s:35:"the-french-academy-finally-valid222";s:8:"abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:7:"content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:9:"titleMeta";s:33:"The French Academy finally valid ";s:15:"descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:11:"keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";}s:5:"fr_FR";a:7:{s:5:"title";s:85:"L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » ";s:4:"slug";s:68:"lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye";s:8:"abstract";s:371:"C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».";s:7:"content";s:1645:"<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>";s:9:"titleMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:11:"keywordMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:15:"descriptionMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";}}}', 2, 1, '2014-10-30 14:56:13', '2014-10-30 14:56:13'),
(16, 'PlaygroundPublishing\\Entity\\Category', 'O:36:"PlaygroundPublishing\\Entity\\Category":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:7:"Politic";s:7:"\0*\0slug";s:7:"politic";s:12:"\0*\0titleMeta";s:7:"Politic";s:18:"\0*\0descriptionMeta";s:7:"Politic";s:14:"\0*\0keywordMeta";s:7:"Politic";s:14:"\0*\0description";s:7:"Politic";s:11:"\0*\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:7:"Politic";s:4:"slug";s:7:"politic";s:9:"titleMeta";s:7:"Politic";s:15:"descriptionMeta";s:7:"Politic";s:11:"keywordMeta";s:7:"Politic";s:11:"description";s:7:"Politic";}s:5:"fr_FR";a:6:{s:5:"title";s:9:"Politique";s:4:"slug";s:9:"politique";s:11:"description";s:9:"Politique";s:9:"titleMeta";s:9:"Politique";s:11:"keywordMeta";s:9:"Politique";s:15:"descriptionMeta";s:9:"Politique";}}}', 1, 1, '2014-10-30 14:56:26', '2014-10-30 14:56:26'),
(17, 'PlaygroundPublishing\\Entity\\Poll', 'O:32:"PlaygroundPublishing\\Entity\\Poll":21:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 22:07:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-28 00:38:21.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:36:"Do you have a good image of the UMP?";s:7:"\0*\0slug";s:35:"do-you-have-a-good-image-of-the-ump";s:11:"\0*\0question";s:36:"Do you have a good image of the UMP?";s:12:"\0*\0titleMeta";s:36:"Do you have a good image of the UMP?";s:18:"\0*\0descriptionMeta";s:36:"Do you have a good image of the UMP?";s:14:"\0*\0keywordMeta";s:36:"Do you have a good image of the UMP?";s:10:"\0*\0answers";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:36:"Do you have a good image of the UMP?";s:4:"slug";s:35:"do-you-have-a-good-image-of-the-ump";s:8:"question";s:36:"Do you have a good image of the UMP?";s:9:"titleMeta";s:36:"Do you have a good image of the UMP?";s:15:"descriptionMeta";s:36:"Do you have a good image of the UMP?";s:11:"keywordMeta";s:36:"Do you have a good image of the UMP?";}s:5:"fr_FR";a:6:{s:5:"title";s:35:"Avez-vous une bonne image de l''UMP?";s:4:"slug";s:33:"avez-vous-une-bonne-image-de-lump";s:8:"question";s:35:"Avez-vous une bonne image de l''UMP?";s:9:"titleMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:11:"keywordMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:15:"descriptionMeta";s:35:"Avez-vous une bonne image de l''UMP?";}}}', 1, 1, '2014-10-30 14:58:35', '2014-10-30 14:58:35'),
(18, 'PlaygroundPublishing\\Entity\\Tag', 'O:31:"PlaygroundPublishing\\Entity\\Tag":17:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:41:"\0PlaygroundPublishing\\Entity\\Tag\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";}s:5:"fr_FR";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 1, '2014-10-30 14:59:02', '2014-10-30 14:59:02'),
(19, 'PlaygroundPublishing\\Entity\\Article', 'O:35:"PlaygroundPublishing\\Entity\\Article":24:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:2;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:12:29.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-30 14:56:13.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:35:"The French Academy finally valid222";s:7:"\0*\0slug";s:35:"the-french-academy-finally-valid222";s:11:"\0*\0abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:10:"\0*\0content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:12:"\0*\0titleMeta";s:33:"The French Academy finally valid ";s:18:"\0*\0descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:14:"\0*\0keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:13:"\0*\0categories";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:7:"\0*\0tags";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:11:"\0*\0comments";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:7:{s:5:"title";s:35:"The French Academy finally valid222";s:4:"slug";s:35:"the-french-academy-finally-valid222";s:8:"abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:7:"content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:9:"titleMeta";s:33:"The French Academy finally valid ";s:15:"descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:11:"keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";}s:5:"fr_FR";a:7:{s:5:"title";s:85:"L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » ";s:4:"slug";s:68:"lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye";s:8:"abstract";s:371:"C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».";s:7:"content";s:1645:"<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>";s:9:"titleMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:11:"keywordMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:15:"descriptionMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";}}}', 2, 2, '2014-10-31 06:27:30', '2014-10-31 06:27:30'),
(20, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:12:"HTML Header2";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:12:"html-header2";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 22:57:49.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 5, '2014-11-01 23:50:17', '2014-11-01 23:50:17'),
(21, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:11:"HTML Header";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:11:"html-header";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 22:58:06.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 6, '2014-11-01 23:51:23', '2014-11-01 23:51:23'),
(22, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:11:"HTML Header";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:11:"html-header";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-29 22:58:06.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 7, '2014-11-01 23:51:35', '2014-11-01 23:51:35'),
(23, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:14:"HTML Header222";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:14:"html-header222";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-01 23:51:23.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 8, '2014-11-01 23:54:22', '2014-11-01 23:54:22'),
(24, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:11:"HTML Header";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:11:"html-header";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-01 23:54:22.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 9, '2014-11-01 23:54:41', '2014-11-01 23:54:41'),
(25, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:14:"HTML Header222";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:14:"html-header222";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-01 23:54:41.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 10, '2014-11-01 23:54:52', '2014-11-01 23:54:52');
INSERT INTO `cms_revision` (`id`, `type`, `object`, `object_id`, `revision`, `created_at`, `updated_at`) VALUES
(26, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:11:"HTML Header";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:11:"html-header";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-01 23:54:52.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 11, '2014-11-02 00:10:00', '2014-11-02 00:10:00'),
(27, 'PlaygroundCMS\\Entity\\Block', 'O:26:"PlaygroundCMS\\Entity\\Block":13:{s:14:"\0*\0inputFilter";N;s:5:"\0*\0id";i:1;s:7:"\0*\0name";s:11:"HTML Header";s:7:"\0*\0type";s:39:"PlaygroundCMS\\Blocks\\FreeHTMLController";s:16:"\0*\0configuration";s:854:"{"html":"<div class=\\"navbar navbar-inverse navbar-fixed-top\\" role=\\"navigation\\"><div class=\\"container\\"><div class=\\"navbar-header\\"><button type=\\"button\\" class=\\"navbar-toggle\\" data-toggle=\\"collapse\\" data-target=\\".navbar-collapse\\"><span class=\\"sr-only\\">Toggle navigation<\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><span class=\\"icon-bar\\"><\\/span><\\/button><a class=\\"navbar-brand\\" href=\\"\\/\\">PGCMS<\\/a><\\/div><div class=\\"navbar-collapse collapse\\"><form class=\\"navbar-form navbar-right\\" role=\\"form\\"><div class=\\"form-group\\"><input type=\\"text\\" placeholder=\\"Email\\" class=\\"form-control\\"><\\/div><div class=\\"form-group\\"><input type=\\"password\\" placeholder=\\"Password\\" class=\\"form-control\\"><\\/div><button type=\\"submit\\" class=\\"btn btn-success\\">Sign in<\\/button><\\/form><\\/div><\\/div><\\/div>"}";s:15:"\0*\0isExportable";b:0;s:12:"\0*\0isGallery";b:1;s:17:"\0*\0isEntityDetail";b:0;s:7:"\0*\0slug";s:11:"html-header";s:18:"\0*\0templateContext";s:61:"{"web":"playground-cms\\/blocks\\/free_html.phtml","mobile":""}";s:19:"\0*\0blockLayoutZones";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-01 23:54:52.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}}', 1, 12, '2014-11-02 00:10:17', '2014-11-02 00:10:17'),
(28, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:13;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:11:"Menu Header";s:7:"\0*\0slug";s:11:"menu-header";s:6:"\0*\0url";s:1:"/";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:18:48.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}s:5:"fr_FR";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}}}', 2, 2, '2014-11-02 05:08:27', '2014-11-02 05:08:27'),
(29, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:13;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:11:"Menu Header";s:7:"\0*\0slug";s:11:"menu-header";s:6:"\0*\0url";s:1:"/";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:18:48.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}s:5:"fr_FR";a:3:{s:5:"title";s:14:"Menu Header123";s:4:"slug";s:14:"menu-header123";s:3:"url";s:1:"/";}}}', 2, 3, '2014-11-02 05:08:44', '2014-11-02 05:08:44'),
(30, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:13;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:11:"Menu Header";s:7:"\0*\0slug";s:11:"menu-header";s:6:"\0*\0url";s:1:"/";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:18:48.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}s:5:"fr_FR";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}}}', 2, 4, '2014-11-02 05:17:16', '2014-11-02 05:17:16'),
(31, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:13;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:11:"Menu Header";s:7:"\0*\0slug";s:11:"menu-header";s:6:"\0*\0url";s:1:"/";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:18:48.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}s:5:"fr_FR";a:3:{s:5:"title";s:16:"Menu Header12222";s:4:"slug";s:16:"menu-header12222";s:3:"url";s:1:"/";}}}', 2, 5, '2014-11-02 05:17:26', '2014-11-02 05:17:26'),
(32, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:13;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:11:"Menu Header";s:7:"\0*\0slug";s:11:"menu-header";s:6:"\0*\0url";s:1:"/";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:18:48.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}s:5:"fr_FR";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}}}', 2, 6, '2014-11-02 05:18:36', '2014-11-02 05:18:36'),
(33, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:2;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:13;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:1;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:11:"Menu Header";s:7:"\0*\0slug";s:11:"menu-header";s:6:"\0*\0url";s:1:"/";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:18:48.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:11:"Menu Header";s:4:"slug";s:11:"menu-header";s:3:"url";s:1:"/";}s:5:"fr_FR";a:3:{s:5:"title";s:16:"Menu Header12222";s:4:"slug";s:16:"menu-header12222";s:3:"url";s:1:"/";}}}', 2, 7, '2014-11-02 05:18:44', '2014-11-02 05:18:44'),
(34, 'PlaygroundCMS\\Entity\\Page', 'O:25:"PlaygroundCMS\\Entity\\Page":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-30 14:56:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:4:"Home";s:7:"\0*\0slug";s:4:"home";s:12:"\0*\0titleMeta";s:12:"PGCMS - Home";s:18:"\0*\0descriptionMeta";s:12:"PGCMS - Home";s:14:"\0*\0keywordMeta";s:11:"PGCMS, Home";s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:4:"Home";s:4:"slug";s:4:"home";s:9:"titleMeta";s:12:"PGCMS - Home";s:15:"descriptionMeta";s:12:"PGCMS - Home";s:11:"keywordMeta";s:11:"PGCMS, Home";}s:5:"fr_FR";a:5:{s:5:"title";s:5:"Index";s:4:"slug";s:5:"index";s:9:"titleMeta";s:13:"PGCMS - Index";s:11:"keywordMeta";s:12:"PGCMS, Index";s:15:"descriptionMeta";s:12:"PGCMS, Index";}}}', 1, 2, '2014-11-02 05:26:35', '2014-11-02 05:26:35'),
(35, 'PlaygroundCMS\\Entity\\Page', 'O:25:"PlaygroundCMS\\Entity\\Page":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-02 05:26:35.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:4:"Home";s:7:"\0*\0slug";s:4:"home";s:12:"\0*\0titleMeta";s:12:"PGCMS - Home";s:18:"\0*\0descriptionMeta";s:12:"PGCMS - Home";s:14:"\0*\0keywordMeta";s:11:"PGCMS, Home";s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:4:"Home";s:4:"slug";s:4:"home";s:9:"titleMeta";s:12:"PGCMS - Home";s:15:"descriptionMeta";s:12:"PGCMS - Home";s:11:"keywordMeta";s:11:"PGCMS, Home";}s:5:"fr_FR";a:5:{s:5:"title";s:8:"Index123";s:4:"slug";s:8:"index123";s:9:"titleMeta";s:13:"PGCMS - Index";s:11:"keywordMeta";s:12:"PGCMS, Index";s:15:"descriptionMeta";s:12:"PGCMS, Index";}}}', 1, 3, '2014-11-02 05:26:47', '2014-11-02 05:26:47'),
(36, 'PlaygroundCMS\\Entity\\Page', 'O:25:"PlaygroundCMS\\Entity\\Page":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-02 05:26:47.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:4:"Home";s:7:"\0*\0slug";s:4:"home";s:12:"\0*\0titleMeta";s:12:"PGCMS - Home";s:18:"\0*\0descriptionMeta";s:12:"PGCMS - Home";s:14:"\0*\0keywordMeta";s:11:"PGCMS, Home";s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:4:"Home";s:4:"slug";s:4:"home";s:9:"titleMeta";s:12:"PGCMS - Home";s:15:"descriptionMeta";s:12:"PGCMS - Home";s:11:"keywordMeta";s:11:"PGCMS, Home";}s:5:"fr_FR";a:5:{s:5:"title";s:5:"Index";s:4:"slug";s:5:"index";s:9:"titleMeta";s:13:"PGCMS - Index";s:11:"keywordMeta";s:12:"PGCMS, Index";s:15:"descriptionMeta";s:12:"PGCMS, Index";}}}', 1, 4, '2014-11-02 05:26:58', '2014-11-02 05:26:58'),
(37, 'PlaygroundCMS\\Entity\\Page', 'O:25:"PlaygroundCMS\\Entity\\Page":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-01-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:00:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-02 05:26:58.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:4:"Home";s:7:"\0*\0slug";s:4:"home";s:12:"\0*\0titleMeta";s:12:"PGCMS - Home";s:18:"\0*\0descriptionMeta";s:12:"PGCMS - Home";s:14:"\0*\0keywordMeta";s:11:"PGCMS, Home";s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:4:"Home";s:4:"slug";s:4:"home";s:9:"titleMeta";s:12:"PGCMS - Home";s:15:"descriptionMeta";s:12:"PGCMS - Home";s:11:"keywordMeta";s:11:"PGCMS, Home";}s:5:"fr_FR";a:5:{s:5:"title";s:8:"Index123";s:4:"slug";s:8:"index123";s:9:"titleMeta";s:13:"PGCMS - Index";s:11:"keywordMeta";s:12:"PGCMS, Index";s:15:"descriptionMeta";s:12:"PGCMS, Index";}}}', 1, 5, '2014-11-02 05:27:16', '2014-11-02 05:27:16'),
(38, 'PlaygroundCMS\\Entity\\Menu', 'O:25:"PlaygroundCMS\\Entity\\Menu":15:{s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:6;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";i:10;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";i:3;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";i:11;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";i:1;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";O:56:"DoctrineORMModule\\Proxy\\__CG__\\PlaygroundCMS\\Entity\\Menu":16:{s:17:"__isInitialized__";b:0;s:9:"\0*\0locale";s:5:"en_US";s:29:"\0PlaygroundCMS\\Entity\\Menu\0id";i:5;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lft";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0lvl";N;s:30:"\0PlaygroundCMS\\Entity\\Menu\0rgt";N;s:31:"\0PlaygroundCMS\\Entity\\Menu\0root";N;s:33:"\0PlaygroundCMS\\Entity\\Menu\0parent";N;s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";N;s:8:"\0*\0title";N;s:7:"\0*\0slug";N;s:6:"\0*\0url";N;s:9:"\0*\0status";i:0;s:13:"\0*\0created_at";N;s:13:"\0*\0updated_at";N;s:15:"\0*\0translations";N;}s:35:"\0PlaygroundCMS\\Entity\\Menu\0children";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:8:"\0*\0title";s:8:"Ninja Uk";s:7:"\0*\0slug";s:8:"ninja-uk";s:6:"\0*\0url";s:72:"/en_us/article/drama-of-solitude-a-yorkshire-devoured-by-a-person-4.html";s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-20 00:21:26.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-21 01:45:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:3:{s:5:"title";s:8:"Ninja Uk";s:4:"slug";s:8:"ninja-uk";s:3:"url";s:72:"/en_us/article/drama-of-solitude-a-yorkshire-devoured-by-a-person-4.html";}s:5:"fr_FR";a:3:{s:5:"title";s:8:"Ninja Fr";s:4:"slug";s:8:"ninja-fr";s:3:"url";s:84:"/fr_fr/article/drame-de-la-solitude-un-yorkshire-devore-par-une-personne-agee-4.html";}}}', 6, 1, '2014-11-02 05:34:58', '2014-11-02 05:34:58'),
(39, 'PlaygroundPublishing\\Entity\\Article', 'O:35:"PlaygroundPublishing\\Entity\\Article":24:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:2;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:12:29.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-31 06:27:30.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:35:"The French Academy finally valid222";s:7:"\0*\0slug";s:35:"the-french-academy-finally-valid222";s:11:"\0*\0abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:10:"\0*\0content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:12:"\0*\0titleMeta";s:33:"The French Academy finally valid ";s:18:"\0*\0descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:14:"\0*\0keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:13:"\0*\0categories";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:7:"\0*\0tags";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:11:"\0*\0comments";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:7:{s:5:"title";s:35:"The French Academy finally valid222";s:4:"slug";s:35:"the-french-academy-finally-valid222";s:8:"abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:7:"content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:9:"titleMeta";s:33:"The French Academy finally valid ";s:15:"descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:11:"keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";}s:5:"fr_FR";a:7:{s:5:"title";s:85:"L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » ";s:4:"slug";s:68:"lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye";s:8:"abstract";s:371:"C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».";s:7:"content";s:1645:"<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>";s:9:"titleMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:11:"keywordMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:15:"descriptionMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";}}}', 2, 3, '2014-11-04 22:03:46', '2014-11-04 22:03:46'),
(40, 'PlaygroundPublishing\\Entity\\Article', 'O:35:"PlaygroundPublishing\\Entity\\Article":24:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:2;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:12:29.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:03:46.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:32:"The French Academy finally valid";s:7:"\0*\0slug";s:32:"the-french-academy-finally-valid";s:11:"\0*\0abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:10:"\0*\0content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:12:"\0*\0titleMeta";s:33:"The French Academy finally valid ";s:18:"\0*\0descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:14:"\0*\0keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:13:"\0*\0categories";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:7:"\0*\0tags";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:11:"\0*\0comments";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:7:{s:5:"title";s:32:"The French Academy finally valid";s:4:"slug";s:32:"the-french-academy-finally-valid";s:8:"abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:7:"content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:9:"titleMeta";s:33:"The French Academy finally valid ";s:15:"descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:11:"keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";}s:5:"fr_FR";a:7:{s:5:"title";s:85:"L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » ";s:4:"slug";s:68:"lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye";s:8:"abstract";s:371:"C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».";s:7:"content";s:1645:"<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>";s:9:"titleMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:11:"keywordMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:15:"descriptionMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";}}}', 2, 4, '2014-11-04 22:05:19', '2014-11-04 22:05:19');
INSERT INTO `cms_revision` (`id`, `type`, `object`, `object_id`, `revision`, `created_at`, `updated_at`) VALUES
(41, 'PlaygroundPublishing\\Entity\\Article', 'O:35:"PlaygroundPublishing\\Entity\\Article":24:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:2;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:12:29.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:05:19.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:37:"The French Academy finally valid22222";s:7:"\0*\0slug";s:37:"the-french-academy-finally-valid22222";s:11:"\0*\0abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:10:"\0*\0content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:12:"\0*\0titleMeta";s:33:"The French Academy finally valid ";s:18:"\0*\0descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:14:"\0*\0keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:13:"\0*\0categories";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:7:"\0*\0tags";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:11:"\0*\0comments";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:7:{s:5:"title";s:37:"The French Academy finally valid22222";s:4:"slug";s:37:"the-french-academy-finally-valid22222";s:8:"abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:7:"content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:9:"titleMeta";s:33:"The French Academy finally valid ";s:15:"descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:11:"keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";}s:5:"fr_FR";a:7:{s:5:"title";s:85:"L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » ";s:4:"slug";s:68:"lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye";s:8:"abstract";s:371:"C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».";s:7:"content";s:1645:"<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>";s:9:"titleMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:11:"keywordMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:15:"descriptionMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";}}}', 2, 5, '2014-11-04 22:05:30', '2014-11-04 22:05:30'),
(42, 'PlaygroundPublishing\\Entity\\Article', 'O:35:"PlaygroundPublishing\\Entity\\Article":24:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:2;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:12:29.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:05:30.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:32:"The French Academy finally valid";s:7:"\0*\0slug";s:32:"the-french-academy-finally-valid";s:11:"\0*\0abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:10:"\0*\0content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:12:"\0*\0titleMeta";s:33:"The French Academy finally valid ";s:18:"\0*\0descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:14:"\0*\0keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:13:"\0*\0categories";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:7:"\0*\0tags";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:11:"\0*\0comments";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:7:{s:5:"title";s:32:"The French Academy finally valid";s:4:"slug";s:32:"the-french-academy-finally-valid";s:8:"abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:7:"content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:9:"titleMeta";s:33:"The French Academy finally valid ";s:15:"descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:11:"keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";}s:5:"fr_FR";a:7:{s:5:"title";s:85:"L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » ";s:4:"slug";s:68:"lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye";s:8:"abstract";s:371:"C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».";s:7:"content";s:1645:"<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>";s:9:"titleMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:11:"keywordMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:15:"descriptionMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";}}}', 2, 6, '2014-11-04 22:06:30', '2014-11-04 22:06:30'),
(43, 'PlaygroundPublishing\\Entity\\Category', 'O:36:"PlaygroundPublishing\\Entity\\Category":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-30 14:56:26.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:7:"Politic";s:7:"\0*\0slug";s:7:"politic";s:12:"\0*\0titleMeta";s:7:"Politic";s:18:"\0*\0descriptionMeta";s:7:"Politic";s:14:"\0*\0keywordMeta";s:7:"Politic";s:14:"\0*\0description";s:7:"Politic";s:11:"\0*\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:7:"Politic";s:4:"slug";s:7:"politic";s:9:"titleMeta";s:7:"Politic";s:15:"descriptionMeta";s:7:"Politic";s:11:"keywordMeta";s:7:"Politic";s:11:"description";s:7:"Politic";}s:5:"fr_FR";a:6:{s:5:"title";s:9:"Politique";s:4:"slug";s:9:"politique";s:11:"description";s:9:"Politique";s:9:"titleMeta";s:9:"Politique";s:11:"keywordMeta";s:9:"Politique";s:15:"descriptionMeta";s:9:"Politique";}}}', 1, 2, '2014-11-04 22:18:20', '2014-11-04 22:18:20'),
(44, 'PlaygroundPublishing\\Entity\\Category', 'O:36:"PlaygroundPublishing\\Entity\\Category":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:18:20.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:7:"Politic";s:7:"\0*\0slug";s:7:"politic";s:12:"\0*\0titleMeta";s:7:"Politic";s:18:"\0*\0descriptionMeta";s:7:"Politic";s:14:"\0*\0keywordMeta";s:7:"Politic";s:14:"\0*\0description";s:7:"Politic";s:11:"\0*\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:7:"Politic";s:4:"slug";s:7:"politic";s:9:"titleMeta";s:7:"Politic";s:15:"descriptionMeta";s:7:"Politic";s:11:"keywordMeta";s:7:"Politic";s:11:"description";s:7:"Politic";}s:5:"fr_FR";a:6:{s:5:"title";s:10:"Politique2";s:4:"slug";s:10:"politique2";s:11:"description";s:9:"Politique";s:9:"titleMeta";s:9:"Politique";s:11:"keywordMeta";s:9:"Politique";s:15:"descriptionMeta";s:9:"Politique";}}}', 1, 3, '2014-11-04 22:18:27', '2014-11-04 22:18:27'),
(45, 'PlaygroundPublishing\\Entity\\Category', 'O:36:"PlaygroundPublishing\\Entity\\Category":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:18:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:7:"Politic";s:7:"\0*\0slug";s:7:"politic";s:12:"\0*\0titleMeta";s:7:"Politic";s:18:"\0*\0descriptionMeta";s:7:"Politic";s:14:"\0*\0keywordMeta";s:7:"Politic";s:14:"\0*\0description";s:7:"Politic";s:11:"\0*\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:7:"Politic";s:4:"slug";s:7:"politic";s:9:"titleMeta";s:7:"Politic";s:15:"descriptionMeta";s:7:"Politic";s:11:"keywordMeta";s:7:"Politic";s:11:"description";s:7:"Politic";}s:5:"fr_FR";a:6:{s:5:"title";s:9:"Politique";s:4:"slug";s:9:"politique";s:11:"description";s:9:"Politique";s:9:"titleMeta";s:9:"Politique";s:11:"keywordMeta";s:9:"Politique";s:15:"descriptionMeta";s:9:"Politique";}}}', 1, 4, '2014-11-04 22:18:38', '2014-11-04 22:18:38'),
(46, 'PlaygroundPublishing\\Entity\\Category', 'O:36:"PlaygroundPublishing\\Entity\\Category":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:18:38.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:7:"Politic";s:7:"\0*\0slug";s:7:"politic";s:12:"\0*\0titleMeta";s:7:"Politic";s:18:"\0*\0descriptionMeta";s:7:"Politic";s:14:"\0*\0keywordMeta";s:7:"Politic";s:14:"\0*\0description";s:7:"Politic";s:11:"\0*\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:7:"Politic";s:4:"slug";s:7:"politic";s:9:"titleMeta";s:7:"Politic";s:15:"descriptionMeta";s:7:"Politic";s:11:"keywordMeta";s:7:"Politic";s:11:"description";s:7:"Politic";}s:5:"fr_FR";a:6:{s:5:"title";s:10:"Politique2";s:4:"slug";s:10:"politique2";s:11:"description";s:9:"Politique";s:9:"titleMeta";s:9:"Politique";s:11:"keywordMeta";s:9:"Politique";s:15:"descriptionMeta";s:9:"Politique";}}}', 1, 5, '2014-11-04 22:18:47', '2014-11-04 22:18:47'),
(47, 'PlaygroundPublishing\\Entity\\Tag', 'O:31:"PlaygroundPublishing\\Entity\\Tag":17:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-30 14:59:02.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:41:"\0PlaygroundPublishing\\Entity\\Tag\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";}s:5:"fr_FR";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 2, '2014-11-04 22:22:14', '2014-11-04 22:22:14'),
(48, 'PlaygroundPublishing\\Entity\\Tag', 'O:31:"PlaygroundPublishing\\Entity\\Tag":17:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:22:14.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:41:"\0PlaygroundPublishing\\Entity\\Tag\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";}s:5:"fr_FR";a:5:{s:5:"title";s:10:"France TV2";s:4:"slug";s:10:"france-tv2";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 3, '2014-11-04 22:22:21', '2014-11-04 22:22:21'),
(49, 'PlaygroundPublishing\\Entity\\Tag', 'O:31:"PlaygroundPublishing\\Entity\\Tag":17:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:22:21.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:41:"\0PlaygroundPublishing\\Entity\\Tag\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";}s:5:"fr_FR";a:5:{s:5:"title";s:10:"France TV1";s:4:"slug";s:10:"france-tv1";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 4, '2014-11-04 22:22:28', '2014-11-04 22:22:28'),
(50, 'PlaygroundPublishing\\Entity\\Category', 'O:36:"PlaygroundPublishing\\Entity\\Category":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:18:47.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:7:"Politic";s:7:"\0*\0slug";s:7:"politic";s:12:"\0*\0titleMeta";s:7:"Politic";s:18:"\0*\0descriptionMeta";s:7:"Politic";s:14:"\0*\0keywordMeta";s:7:"Politic";s:14:"\0*\0description";s:7:"Politic";s:11:"\0*\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:7:"Politic";s:4:"slug";s:7:"politic";s:9:"titleMeta";s:7:"Politic";s:15:"descriptionMeta";s:7:"Politic";s:11:"keywordMeta";s:7:"Politic";s:11:"description";s:7:"Politic";}s:5:"fr_FR";a:6:{s:5:"title";s:9:"Politique";s:4:"slug";s:9:"politique";s:11:"description";s:9:"Politique";s:9:"titleMeta";s:9:"Politique";s:11:"keywordMeta";s:9:"Politique";s:15:"descriptionMeta";s:9:"Politique";}}}', 1, 6, '2014-11-04 22:22:37', '2014-11-04 22:22:37'),
(51, 'PlaygroundPublishing\\Entity\\Category', 'O:36:"PlaygroundPublishing\\Entity\\Category":18:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0status";i:1;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:15:27.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:22:37.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:14:"\0*\0description";s:7:"Politic";s:11:"\0*\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:11:"description";s:0:"";}s:5:"fr_FR";a:6:{s:5:"title";s:10:"France TV2";s:4:"slug";s:10:"france-tv2";s:11:"description";s:0:"";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 7, '2014-11-04 22:23:36', '2014-11-04 22:23:36'),
(52, 'PlaygroundPublishing\\Entity\\Tag', 'O:31:"PlaygroundPublishing\\Entity\\Tag":17:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:22:28.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:41:"\0PlaygroundPublishing\\Entity\\Tag\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";}s:5:"fr_FR";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 5, '2014-11-04 22:23:51', '2014-11-04 22:23:51'),
(53, 'PlaygroundPublishing\\Entity\\Tag', 'O:31:"PlaygroundPublishing\\Entity\\Tag":17:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:23:51.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:41:"\0PlaygroundPublishing\\Entity\\Tag\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";}s:5:"fr_FR";a:5:{s:5:"title";s:10:"France TV2";s:4:"slug";s:10:"france-tv2";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 6, '2014-11-04 22:24:00', '2014-11-04 22:24:00'),
(54, 'PlaygroundPublishing\\Entity\\Poll', 'O:32:"PlaygroundPublishing\\Entity\\Poll":21:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 22:07:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-10-30 14:58:35.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:36:"Do you have a good image of the UMP?";s:7:"\0*\0slug";s:35:"do-you-have-a-good-image-of-the-ump";s:11:"\0*\0question";s:36:"Do you have a good image of the UMP?";s:12:"\0*\0titleMeta";s:36:"Do you have a good image of the UMP?";s:18:"\0*\0descriptionMeta";s:36:"Do you have a good image of the UMP?";s:14:"\0*\0keywordMeta";s:36:"Do you have a good image of the UMP?";s:10:"\0*\0answers";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:36:"Do you have a good image of the UMP?";s:4:"slug";s:35:"do-you-have-a-good-image-of-the-ump";s:8:"question";s:36:"Do you have a good image of the UMP?";s:9:"titleMeta";s:36:"Do you have a good image of the UMP?";s:15:"descriptionMeta";s:36:"Do you have a good image of the UMP?";s:11:"keywordMeta";s:36:"Do you have a good image of the UMP?";}s:5:"fr_FR";a:6:{s:5:"title";s:35:"Avez-vous une bonne image de l''UMP?";s:4:"slug";s:33:"avez-vous-une-bonne-image-de-lump";s:8:"question";s:35:"Avez-vous une bonne image de l''UMP?";s:9:"titleMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:11:"keywordMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:15:"descriptionMeta";s:35:"Avez-vous une bonne image de l''UMP?";}}}', 1, 2, '2014-11-04 22:27:03', '2014-11-04 22:27:03'),
(55, 'PlaygroundPublishing\\Entity\\Poll', 'O:32:"PlaygroundPublishing\\Entity\\Poll":21:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 22:07:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:27:03.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:36:"Do you have a good image of the UMP?";s:7:"\0*\0slug";s:35:"do-you-have-a-good-image-of-the-ump";s:11:"\0*\0question";s:36:"Do you have a good image of the UMP?";s:12:"\0*\0titleMeta";s:36:"Do you have a good image of the UMP?";s:18:"\0*\0descriptionMeta";s:36:"Do you have a good image of the UMP?";s:14:"\0*\0keywordMeta";s:36:"Do you have a good image of the UMP?";s:10:"\0*\0answers";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:36:"Do you have a good image of the UMP?";s:4:"slug";s:35:"do-you-have-a-good-image-of-the-ump";s:8:"question";s:36:"Do you have a good image of the UMP?";s:9:"titleMeta";s:36:"Do you have a good image of the UMP?";s:15:"descriptionMeta";s:36:"Do you have a good image of the UMP?";s:11:"keywordMeta";s:36:"Do you have a good image of the UMP?";}s:5:"fr_FR";a:6:{s:5:"title";s:36:"Avez-vous une bonne image de l''UMP?2";s:4:"slug";s:35:"avez-vous-une-bonne-image-de-lump-2";s:8:"question";s:35:"Avez-vous une bonne image de l''UMP?";s:9:"titleMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:11:"keywordMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:15:"descriptionMeta";s:35:"Avez-vous une bonne image de l''UMP?";}}}', 1, 3, '2014-11-04 22:27:14', '2014-11-04 22:27:14'),
(56, 'PlaygroundPublishing\\Entity\\Poll', 'O:32:"PlaygroundPublishing\\Entity\\Poll":21:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 22:07:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:27:14.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:36:"Do you have a good image of the UMP?";s:7:"\0*\0slug";s:35:"do-you-have-a-good-image-of-the-ump";s:11:"\0*\0question";s:36:"Do you have a good image of the UMP?";s:12:"\0*\0titleMeta";s:36:"Do you have a good image of the UMP?";s:18:"\0*\0descriptionMeta";s:36:"Do you have a good image of the UMP?";s:14:"\0*\0keywordMeta";s:36:"Do you have a good image of the UMP?";s:10:"\0*\0answers";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:36:"Do you have a good image of the UMP?";s:4:"slug";s:35:"do-you-have-a-good-image-of-the-ump";s:8:"question";s:36:"Do you have a good image of the UMP?";s:9:"titleMeta";s:36:"Do you have a good image of the UMP?";s:15:"descriptionMeta";s:36:"Do you have a good image of the UMP?";s:11:"keywordMeta";s:36:"Do you have a good image of the UMP?";}s:5:"fr_FR";a:6:{s:5:"title";s:35:"Avez-vous une bonne image de l''UMP?";s:4:"slug";s:33:"avez-vous-une-bonne-image-de-lump";s:8:"question";s:35:"Avez-vous une bonne image de l''UMP?";s:9:"titleMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:11:"keywordMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:15:"descriptionMeta";s:35:"Avez-vous une bonne image de l''UMP?";}}}', 1, 4, '2014-11-04 22:32:02', '2014-11-04 22:32:02'),
(57, 'PlaygroundPublishing\\Entity\\Poll', 'O:32:"PlaygroundPublishing\\Entity\\Poll":21:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-06-01 22:07:44.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:32:02.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:36:"Do you have a good image of the UMP?";s:7:"\0*\0slug";s:35:"do-you-have-a-good-image-of-the-ump";s:11:"\0*\0question";s:36:"Do you have a good image of the UMP?";s:12:"\0*\0titleMeta";s:36:"Do you have a good image of the UMP?";s:18:"\0*\0descriptionMeta";s:36:"Do you have a good image of the UMP?";s:14:"\0*\0keywordMeta";s:36:"Do you have a good image of the UMP?";s:10:"\0*\0answers";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:6:{s:5:"title";s:36:"Do you have a good image of the UMP?";s:4:"slug";s:35:"do-you-have-a-good-image-of-the-ump";s:8:"question";s:36:"Do you have a good image of the UMP?";s:9:"titleMeta";s:36:"Do you have a good image of the UMP?";s:15:"descriptionMeta";s:36:"Do you have a good image of the UMP?";s:11:"keywordMeta";s:36:"Do you have a good image of the UMP?";}s:5:"fr_FR";a:6:{s:5:"title";s:36:"Avez-vous une bonne image de l''UMP?2";s:4:"slug";s:35:"avez-vous-une-bonne-image-de-lump-2";s:8:"question";s:35:"Avez-vous une bonne image de l''UMP?";s:9:"titleMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:11:"keywordMeta";s:35:"Avez-vous une bonne image de l''UMP?";s:15:"descriptionMeta";s:35:"Avez-vous une bonne image de l''UMP?";}}}', 1, 5, '2014-11-04 22:32:10', '2014-11-04 22:32:10');
INSERT INTO `cms_revision` (`id`, `type`, `object`, `object_id`, `revision`, `created_at`, `updated_at`) VALUES
(58, 'PlaygroundPublishing\\Entity\\Article', 'O:35:"PlaygroundPublishing\\Entity\\Article":24:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:2;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:9:"\0*\0author";s:6:"troger";s:12:"\0*\0startDate";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:10:"\0*\0endDate";O:8:"DateTime":3:{s:4:"date";s:26:"2029-12-31 23:59:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-22 20:12:29.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:06:30.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:32:"The French Academy finally valid";s:7:"\0*\0slug";s:32:"the-french-academy-finally-valid";s:11:"\0*\0abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:10:"\0*\0content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:12:"\0*\0titleMeta";s:33:"The French Academy finally valid ";s:18:"\0*\0descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:14:"\0*\0keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:13:"\0*\0categories";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:7:"\0*\0tags";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:11:"\0*\0comments";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:7:{s:5:"title";s:32:"The French Academy finally valid";s:4:"slug";s:32:"the-french-academy-finally-valid";s:8:"abstract";s:315:"It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .";s:7:"content";s:1373:"<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>";s:9:"titleMeta";s:33:"The French Academy finally valid ";s:15:"descriptionMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";s:11:"keywordMeta";s:69:"The French Academy finally valid "They croivent" and "Should we Voye"";}s:5:"fr_FR";a:7:{s:5:"title";s:85:"L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » ";s:4:"slug";s:68:"lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye";s:8:"abstract";s:371:"C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».";s:7:"content";s:1645:"<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>";s:9:"titleMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:11:"keywordMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";s:15:"descriptionMeta";s:89:"L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » ";}}}', 2, 7, '2014-11-04 22:50:09', '2014-11-04 22:50:09'),
(59, 'PlaygroundPublishing\\Entity\\Tag', 'O:31:"PlaygroundPublishing\\Entity\\Tag":17:{s:14:"\0*\0inputFilter";N;s:18:"\0*\0securityContext";N;s:16:"\0*\0layoutContext";N;s:9:"\0*\0locale";s:5:"en_US";s:5:"\0*\0id";i:1;s:9:"\0*\0status";i:1;s:8:"\0*\0isWeb";b:1;s:11:"\0*\0isMobile";b:0;s:13:"\0*\0created_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-05-23 10:18:12.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:13:"\0*\0updated_at";O:8:"DateTime":3:{s:4:"date";s:26:"2014-11-04 22:24:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:12:"Europe/Paris";}s:8:"\0*\0title";s:9:"France TV";s:7:"\0*\0slug";s:9:"france-tv";s:12:"\0*\0titleMeta";s:9:"France TV";s:18:"\0*\0descriptionMeta";s:9:"France TV";s:14:"\0*\0keywordMeta";s:9:"France TV";s:41:"\0PlaygroundPublishing\\Entity\\Tag\0articles";O:33:"Doctrine\\ORM\\PersistentCollection":2:{s:39:"\0Doctrine\\ORM\\PersistentCollection\0coll";O:43:"Doctrine\\Common\\Collections\\ArrayCollection":1:{s:54:"\0Doctrine\\Common\\Collections\\ArrayCollection\0_elements";a:0:{}}s:46:"\0Doctrine\\ORM\\PersistentCollection\0initialized";b:0;}s:15:"\0*\0translations";a:2:{s:5:"en_US";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";}s:5:"fr_FR";a:5:{s:5:"title";s:9:"France TV";s:4:"slug";s:9:"france-tv";s:9:"titleMeta";s:9:"France TV";s:11:"keywordMeta";s:9:"France TV";s:15:"descriptionMeta";s:9:"France TV";}}}', 1, 7, '2014-11-19 22:35:02', '2014-11-19 22:35:02');

-- --------------------------------------------------------

--
-- Structure de la table `cms_template`
--

CREATE TABLE IF NOT EXISTS `cms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `block_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Contenu de la table `cms_template`
--

INSERT INTO `cms_template` (`id`, `name`, `file`, `description`, `image`, `block_type`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Block HTML template', 'playground-cms/blocks/free_html.phtml', 'template for block html', NULL, 'PlaygroundCMS\\Blocks\\FreeHTMLController', 0, '2014-05-22 20:00:44', '2014-05-22 20:00:44'),
(2, 'Block Switch Locale template', 'playground-cms/blocks/switch_locale.phtml', 'template for switch locale', NULL, 'PlaygroundCMS\\Blocks\\SwitchLocaleController', 0, '2014-05-22 20:00:44', '2014-05-22 20:00:44'),
(3, 'Partial Pagination', 'playground-cms/partial/pagination.phtml', 'Partial Pagination for block list', NULL, NULL, 1, '2014-05-22 20:00:44', '2014-05-22 20:00:44'),
(4, 'Template liste d''article', 'playground-publishing/blocks/list_article_md_12.phtml', 'template liste d''article', NULL, 'PlaygroundPublishing\\Blocks\\ArticleListController', 0, '2014-05-22 20:06:24', '2014-05-23 14:17:11'),
(5, 'Template entity article', 'playground-publishing/blocks/article_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\ArticleController', 0, '2014-05-23 10:09:54', '2014-05-23 14:16:51'),
(6, 'Template liste d''article par tag', 'playground-publishing/blocks/list_article_tag_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\ArticleTagListController', 0, '2014-05-23 10:45:11', '2014-05-23 14:16:55'),
(7, 'Template liste d''article par categorie', 'playground-publishing/blocks/list_article_category_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\ArticleCategoryListController', 0, '2014-05-23 10:45:40', '2014-05-23 14:16:59'),
(8, 'Template liste de tags', 'playground-publishing/blocks/list_tag_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\TagListController', 0, '2014-05-23 12:13:46', '2014-05-23 12:13:46'),
(9, 'Template liste de categories', 'playground-publishing/blocks/list_category_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\CategoryListController', 0, '2014-05-23 12:15:26', '2014-05-23 12:15:26'),
(10, 'Template liste de commentaire', 'playground-publishing/blocks/list_comment_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\CommentListController', 0, '2014-05-23 14:16:38', '2014-05-23 14:16:38'),
(12, 'Template liste de sondages', 'playground-publishing/blocks/list_poll_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\PollListController', 0, '2014-06-01 22:15:16', '2014-06-01 22:15:16'),
(13, 'template entity sondage', 'playground-publishing/blocks/poll_md_12.phtml', '', NULL, 'PlaygroundPublishing\\Blocks\\PollController', 0, '2014-06-01 22:15:37', '2014-06-01 22:15:37'),
(14, 'Block Menu template', 'playground-cms/blocks/menu.phtml', 'template for block menu', NULL, 'PlaygroundCMS\\Blocks\\MenuController', 0, '2014-10-20 00:47:24', '2014-10-20 00:47:24');

-- --------------------------------------------------------

--
-- Structure de la table `cms_zone`
--

CREATE TABLE IF NOT EXISTS `cms_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `cms_zone`
--

INSERT INTO `cms_zone` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'home_header', '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(2, 'home_content', '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(3, 'home_right_menu', '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(4, 'home_footer', '2014-05-22 20:02:53', '2014-05-22 20:02:53'),
(5, 'article_header', '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(6, 'article_content', '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(7, 'article_right_menu', '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(8, 'article_footer', '2014-05-23 10:06:38', '2014-05-23 10:06:38'),
(9, 'test_header', '2014-05-23 16:24:28', '2014-05-23 16:24:28'),
(10, 'test_content', '2014-05-23 16:24:28', '2014-05-23 16:24:28'),
(11, 'test_right_menu', '2014-05-23 16:24:28', '2014-05-23 16:24:28'),
(12, 'test_footer', '2014-05-23 16:24:28', '2014-05-23 16:24:28'),
(13, 'poll_header', '2014-06-01 22:07:57', '2014-06-01 22:07:57'),
(14, 'poll_content', '2014-06-01 22:07:57', '2014-06-01 22:07:57'),
(15, 'poll_right_menu', '2014-06-01 22:07:57', '2014-06-01 22:07:57'),
(16, 'poll_footer', '2014-06-01 22:07:57', '2014-06-01 22:07:57');

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `facebookPage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitterAccount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `core_cronjob`
--

CREATE TABLE IF NOT EXISTS `core_cronjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `errorMsg` longtext COLLATE utf8_unicode_ci,
  `stackTrace` longtext COLLATE utf8_unicode_ci,
  `createTime` datetime NOT NULL,
  `scheduleTime` datetime NOT NULL,
  `executeTime` datetime DEFAULT NULL,
  `finishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `design_theme`
--

CREATE TABLE IF NOT EXISTS `design_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `formgen`
--

CREATE TABLE IF NOT EXISTS `formgen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formjsonified` longtext COLLATE utf8_unicode_ci NOT NULL,
  `formtemplate` longtext COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_39EE8947E559DFD1` (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `locale`
--

CREATE TABLE IF NOT EXISTS `locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `active_back` tinyint(1) NOT NULL,
  `active_front` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `locale`
--

INSERT INTO `locale` (`id`, `name`, `locale`, `active_back`, `active_front`, `created_at`, `updated_at`) VALUES
(1, 'French', 'fr_FR', 1, 1, '2014-05-22 20:00:44', '2014-05-22 20:00:44'),
(2, 'English', 'en_US', 1, 1, '2014-05-22 20:00:44', '2014-05-22 20:00:44');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_article`
--

CREATE TABLE IF NOT EXISTS `publishing_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(6) NOT NULL,
  `is_web` tinyint(1) NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abstract` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `publishing_article`
--

INSERT INTO `publishing_article` (`id`, `status`, `is_web`, `is_mobile`, `author`, `start_date`, `end_date`, `created_at`, `updated_at`, `title`, `slug`, `abstract`, `content`, `title_meta`, `description_meta`, `keyword_meta`) VALUES
(2, 1, 1, 0, 'troger', '2014-05-23 00:00:00', '2029-12-31 23:59:59', '2014-05-22 20:12:29', '2014-11-04 22:50:09', 'The French Academy finally valid "They croivent" and "Should we Voye"', 'the-french-academy-finally-valid-they-croivent-and-should-we-voye', 'It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .', '<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>', 'The French Academy finally valid "They croivent" and "Should we Voye"', 'The French Academy finally valid "They croivent" and "Should we Voye"', 'The French Academy finally valid "They croivent" and "Should we Voye"'),
(3, 1, 1, 0, 'troger', '2014-05-22 00:00:00', '2029-12-31 23:59:59', '2014-05-22 20:14:00', '2014-05-23 10:34:20', 'SNCF had ordered 2,000 TER trains too fast for network', 'sncf-had-ordered-2-000-ter-trains-too-fast-for-network', 'This information is revealed by the chained duck this morning. According to his information, the SNCF has ordered nearly 2,000 TER trains, trains that proved too fast and point to its network.', 'This information is revealed by the chained duck this morning. According to his information, the SNCF has ordered nearly 2,000 TER trains , trains that proved too fast and point to its network. "We will improve our network but then the time saved by users and travelers is far too important," said a preliminary report from the company that tested several trains on the network. One used by the SNCF options to solve the problem would be to extend the distance of stations between them, but this may burden the bill of several billion euros . In addition, the problem would impact greatly train drivers . "The effect of speed is too high, they are not at all used , we have been sickened ," says an anonymous setting. Also according to the Duck, trains do not meet the specifications requested , all being equipped with comfortable seats and an effective air conditioning.', 'SNCF had ordered 2,000 TER trains too fast for network', 'SNCF had ordered 2,000 TER trains too fast for network', 'SNCF had ordered 2,000 TER trains too fast for network'),
(4, 1, 1, 0, 'troger', '2014-05-22 00:00:00', '2029-12-31 23:59:59', '2014-05-22 20:15:05', '2014-05-23 10:30:23', 'Drama of solitude - A Yorkshire devoured by a person', 'drama-of-solitude-a-yorkshire-devoured-by-a-person', 'Dax - Terrible discovery for the inhabitants of this village on the outskirts of Dax, in the Landes. No news of Poppy, an adorable Yorkshire 8 years, relatives went to his home. Alas, they have not found the corpse of poor dog, partly eaten by a person who lived with him for several years.', '<div>Dax - Terrible discovery for the inhabitants of this village on the outskirts of Dax, in the Landes. No news of Poppy, an adorable Yorkshire 8 years , relatives went to his home. Alas, they have not found the corpse of poor dog , partly eaten by a person who lived with him for several years.</div><div><br></div><div>"It''s terrible , really terrible," laments the village mayor Poppy who knew very well. According to firefighters, the dog would be dead for several weeks and the elderly who lived with Poppy would be nourished by his body . No trace suspect was discovered on the body of the little dog , which suggests a natural death , although further tests will be conducted to eliminate any doubt .</div><div><br></div><div>For Mayor , it is the loneliness that is responsible for this terrible tragedy . "Few people came to visit them, I think that even people outside the village, they had no real family ." Therefore, without contact with the outside , the elderly has been its survival to the regular consumption of flesh Poppy. Relief and veterinary services noted however that the elderly showed intelligence. " The flesh of Yorkshire are very thick , but the senior was able to make good use and manage the stock there was , otherwise , it would also died in a few days. " .</div>', 'Drama of solitude - A Yorkshire devoured by a person', 'Drama of solitude - A Yorkshire devoured by a person', 'Drama of solitude - A Yorkshire devoured by a person'),
(5, 1, 1, 0, 'troger', '2014-05-22 00:00:00', '2029-12-31 23:59:59', '2014-05-22 20:16:14', '2014-05-23 10:30:39', 'Europe - The French shocked to learn that a large number of them will vote PS', 'europe-the-french-shocked-to-learn-that-a-large-number-of-them-will-vote-ps', 'Paris - Will you to a new April 21 for the Republican party ? Third place in the Socialist Party in polls remind everyone how the French are attracted by extreme and parties, even a minority can tip an election. PS is there a protest vote or a real political force in the making? Report .', '<div>Paris - Will you to a new April 21 for the Republican party ? Third place in the Socialist Party in polls remind everyone how the French are attracted by extreme and parties, even a minority can tip an election. PS is there a protest vote or a real political force in the making? Report .</div><div><br></div><div>Recent polls show that the European elections the PS vote seems to settle permanently in the country. More and more French do not hesitate to assert and claim it. It is no longer hidden . As this young man of Reims who says he will vote for European PS . "Yes PS I will vote because I do not trust either the FN or the UMP. They are left in the system , "said a young man who recently joined the PS . "At first I did not want to tell my family was a little ashamed ," he says . "But today , attitudes have changed, we can safely claim to socialist." With friends, they argue in their neighborhood , trying to unite . But it is not always easy.</div><div><br></div><div>According to them, the PS still trying to get out of this phase of demonization , demonization instigated and organized by other Republican parties . " We read so much rubbish in the press about us, it''s sad. "Says Coralie , 31, who was active in PS for over ten years. " We caricature, but our members and our voters are not fools ," she adds , noting that third place in the polls shows that the French are beginning to open their eyes. " There will be big surprises on election night ," she said with a hint of malice in casting an admiring glance at a picture of Francois Hollande.</div><div><br></div><div>But for many analysts who have thoroughly analyzed this unique and interesting position - otherwise we do not do a whole article - it is a vote that is deeply rooted and bears a strong identity. "There is a kind of rejection of established values ​​. People no longer recognize themselves in policies, then they turn to extreme and therefore , logically , socialism . "Said an official of the FIFG noting that the PS is now maintained as the potential third political force . "This is something new . There is a clear tipping and other parties should be wary . " But in the opinion of many experts, the inexperience of the PS in the management of political affairs would be a very serious obstacle to a possible arrival one day at the head of the country.</div>', 'Europe - The French shocked to learn that a large number of them will vote PS', 'Europe - The French shocked to learn that a large number of them will vote PS', 'Europe - The French shocked to learn that a large number of them will vote PS'),
(6, 1, 1, 0, 'troger', '2014-05-23 00:00:00', '2029-12-31 23:59:59', '2014-05-22 20:18:44', '2014-05-23 12:12:17', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality', 'david-pujadas-obliged-to-make-the-antenna-after-the-broadcast-of-a-report-of-quality', 'Yesterday evening, the France 2 news was interrupted around 20:15 about a society unusual treatment. Following the release of this report on social inequalities in French , the presenter ''s crestfallen . Mumbled a few words of apology , so he decided to stop in advance to editing.', '<div>Yesterday evening, the France 2 news was interrupted around 20:15 about a society unusual treatment. Following the release of this report on social inequalities in French , the presenter ''s crestfallen . Mumbled a few words of apology , so he decided to stop in advance to editing.</div><div><br></div><h4>Hostage-taking</h4><div>"Here, little concern as you have seen . Our newspaper was the victim of an intrusion quality that we could not counter . So that it does not happen again , we make the antenna. We can do this log with this threat , " says David Pujadas then .</div><div><br></div><div>The governance of the " 20 Hours " then broadcasts " It''s hot ," the last song of Patrick Sébastien Loop for over 30 minutes before finally send the movie Saw II to 20:45.</div><div><br></div><div>Interruption immediately justified on Twitter by Olivier Siu , one of the Associate Editors : Olivier SIOULE report in question consisted of a very long about 4 minutes alternating points of view , all interspersed with as accurate as relevant comments. All ingredients that were enough to cause panic in the team of JT France 2 .</div><div><br></div><h4>A history in 2002</h4><div>13 October 2002 , David Pujadas and his staff were faced with the same situation. At the time of the intrusion , however, they decided to continue the newspaper, even sending a few minutes later another report to the most honorable quality. A line obviously gone since .</div>', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_article_category`
--

CREATE TABLE IF NOT EXISTS `publishing_article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`category_id`),
  KEY `IDX_9BB25C787294869C` (`article_id`),
  KEY `IDX_9BB25C7812469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `publishing_article_category`
--

INSERT INTO `publishing_article_category` (`article_id`, `category_id`) VALUES
(3, 4),
(4, 3),
(5, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `publishing_article_tag`
--

CREATE TABLE IF NOT EXISTS `publishing_article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `IDX_5EAE58467294869C` (`article_id`),
  KEY `IDX_5EAE5846BAD26311` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `publishing_article_tag`
--

INSERT INTO `publishing_article_tag` (`article_id`, `tag_id`) VALUES
(3, 9),
(3, 11),
(3, 12),
(3, 13),
(4, 6),
(4, 9),
(4, 10),
(5, 4),
(5, 5),
(5, 7),
(6, 1),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `publishing_article_translations`
--

CREATE TABLE IF NOT EXISTS `publishing_article_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_translations_lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `article_translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=85 ;

--
-- Contenu de la table `publishing_article_translations`
--

INSERT INTO `publishing_article_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(15, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'title', '2', 'L''Académie française valide finalement « Ils croivent » et « Faut qu''on voye » '),
(16, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'slug', '2', 'lacademie-francaise-valide-finalement-ils-croivent-et-faut-quon-voye'),
(17, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '2', 'C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».'),
(18, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'content', '2', '<div>C’est un véritable coup de tonnerre qui a eu lieu hier soir dans le cercle très fermé des « Immortels ». En effet, après un long débat de sept heures et trente-cinq minutes, l’Académie a enfin accepté et validé définitivement deux formes de conjugaison inhabituelles mais pourtant couramment utilisées à l’oral : « ils croivent » et « qu''on voye ».</div><div><br></div><div>« On dit bien « Ils boivent » alors il était assez injuste de considérer « Ils croivent » comme une faute de français» observe à juste titre Jean d’Ormesson. Cette décision de l’Académie Française découlerait ainsi d’une volonté de faire évoluer la langue vers sa forme utilisée quotidiennement par ceux qui la pratiquent. Simplifier, clarifier, dépoussiérer la langue française fait partie intégrante des missions salutaires que mène de front l’Académie.</div><div><br></div><h4>Alain Finkielkraut en maître d’œuvre</h4><div><br></div><div>C’est sous la houlette du dernier membre de l’Académie en date, le philosophe Alain Finkielkraut, que l’exploit a pu être réalisé. En effet, coutumier de ces conjugaisons, « il s’est battu bec et ongles et a réussi à mobiliser une majorité de membres derrière lui » commente admiratif Xavier Darcos.</div><div><br></div><div>Ces formes de conjugaison seront acceptées au même titre que les anciennes, afin de ne pas créer de changement trop brutal dans les méthodes d’enseignement. « Faudrait qu’on voye à ce qu’on fait la même chose avec « Comme si que » » a déclaré un Max Gallo épuisé mais satisfait au sortir du débat.</div>'),
(19, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '2', 'L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » '),
(20, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '2', 'L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » '),
(21, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '2', 'L’Académie française valide finalement « Ils croivent » et « Faut qu’on voye » '),
(22, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'title', '2', 'The French Academy finally valid'),
(23, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'slug', '2', 'the-french-academy-finally-valid'),
(24, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '2', 'It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .'),
(25, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'content', '2', '<div>It is a real thunderbolt which took place last night in the very closed circle of " Immortals" . Indeed, after a long debate of seven hours and thirty -five minutes, the Academy has finally accepted and validated definitely unusual combination of two forms yet commonly used oral " croivent they " and " we Voye " .</div><div><br></div><div>" It says" They drink "when it was quite unfair to consider " They croivent "as a lack of French " rightly observes Jean d'' Ormesson . This decision of the French Academy and result from a desire to change the language to shape used daily by those who practice it . Simplify, clarify , dust the French language is an integral part of healthy missions front leads the Academy.</div><div><br></div><h4>Alain Finkielkraut implement master</h4><div><br></div><div>It is led by the latest member of the Academy in time, the philosopher Alain Finkielkraut , the feat has been achieved . Indeed, customary of these conjugations, " he fought tooth and nail and managed to mobilize a majority of members behind him ," commented Xavier Darcos admiration .</div><div><br></div><div>These forms will be accepted much the same way as the old ones, so as not to create too sudden change in teaching methods . " Should we Voye that we do the same with " As if that '' , "said a Max Gallo exhausted but satisfied at the end of the debate.</div>'),
(26, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '2', 'The French Academy finally valid '),
(27, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '2', 'The French Academy finally valid "They croivent" and "Should we Voye"'),
(28, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '2', 'The French Academy finally valid "They croivent" and "Should we Voye"'),
(29, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'title', '3', 'La SNCF aurait commandé 2000 rames de TER trop rapides pour son réseau '),
(30, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'slug', '3', 'la-sncf-aurait-commande-2000-rames-de-ter-trop-rapides-pour-son-reseau'),
(31, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '3', 'C’est une information révélée par le Canard enchaîné ce matin. Selon ses informations, la SNCF aurait passé commande de près de 2000 rames de TER, des rames qui se sont avérées bien trop rapides et ponctuelles pour son réseau.'),
(32, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'content', '3', 'C’est une information révélée par le Canard enchaîné ce matin. Selon ses informations, la SNCF aurait passé commande de près de 2000 rames de TER, des rames qui se sont avérées bien trop rapides et ponctuelles pour son réseau. « Nous avons volonté de perfectionner notre réseau mais là le gain de temps réalisé par les usagers et voyageurs est bien trop important » estime un rapport préliminaire de la société qui a testé plusieurs rames sur le réseau. Une des options retenue par la SNCF pour résoudre le problème serait d’élargir l’éloignement des gares entre elles, mais cela risquerait d’alourdir la facture de plusieurs milliards d’euros. En outre, le problème impacterait grandement les conducteurs de trains. « L’effet de vitesse est trop fort, ils ne sont pas du tout habitués, nous en avons qui ont été rendus malades » raconte un cadre anonyme. Toujours selon le Canard, les rames ne répondraient pas au cahier des charges demandé, étant toutes équipées de sièges confortables et d’une climatisation efficace.'),
(33, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '3', 'La SNCF aurait commandé 2000 rames de TER trop rapides pour son réseau '),
(34, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '3', 'La SNCF aurait commandé 2000 rames de TER trop rapides pour son réseau '),
(35, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '3', 'La SNCF aurait commandé 2000 rames de TER trop rapides pour son réseau '),
(36, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'title', '3', 'SNCF had ordered 2,000 TER trains too fast for network'),
(37, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'slug', '3', 'sncf-had-ordered-2-000-ter-trains-too-fast-for-network'),
(38, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '3', 'This information is revealed by the chained duck this morning. According to his information, the SNCF has ordered nearly 2,000 TER trains, trains that proved too fast and point to its network.'),
(39, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'content', '3', 'This information is revealed by the chained duck this morning. According to his information, the SNCF has ordered nearly 2,000 TER trains , trains that proved too fast and point to its network. "We will improve our network but then the time saved by users and travelers is far too important," said a preliminary report from the company that tested several trains on the network. One used by the SNCF options to solve the problem would be to extend the distance of stations between them, but this may burden the bill of several billion euros . In addition, the problem would impact greatly train drivers . "The effect of speed is too high, they are not at all used , we have been sickened ," says an anonymous setting. Also according to the Duck, trains do not meet the specifications requested , all being equipped with comfortable seats and an effective air conditioning.'),
(40, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '3', 'SNCF had ordered 2,000 TER trains too fast for network'),
(41, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '3', 'SNCF had ordered 2,000 TER trains too fast for network'),
(42, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '3', 'SNCF had ordered 2,000 TER trains too fast for network'),
(43, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'title', '4', 'Drame de la solitude - Un Yorkshire dévoré par une personne âgée '),
(44, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'slug', '4', 'drame-de-la-solitude-un-yorkshire-devore-par-une-personne-agee'),
(45, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '4', 'Dax - Terrible découverte pour les habitants de ce village en périphérie de Dax, dans les Landes. Sans nouvelles de Poppy, un adorable Yorkshire de 8 ans, des proches se sont rendus à son domicile. Hélas, ils n''y ont retrouvé que le cadavre du pauvre chien, en partie dévoré par une personne âgée qui vivait à ses côtés depuis plusieurs années.'),
(46, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'content', '4', '<div>Dax – Terrible découverte pour les habitants de ce village en périphérie de Dax, dans les Landes. Sans nouvelles de Poppy, un adorable Yorkshire de 8 ans, des proches se sont rendus à son domicile. Hélas, ils n’y ont retrouvé que le cadavre du pauvre chien, en partie dévoré par une personne âgée qui vivait à ses côtés depuis plusieurs années.</div><div><br></div><div>« C’est terrible, vraiment terrible » se lamente le maire du village qui connaissait très bien Poppy. D’après les pompiers, le chien serait décédé depuis plusieurs semaines et la personne âgée qui vivait avec Poppy se serait alors nourrie de son cadavre. Aucune trace suspecte n’a été découverte sur le corps du petit chien, ce qui laisse présager une mort naturelle, même si des examens supplémentaires vont être menés pour éliminer tout doute.</div><div><br></div><div>Pour Monsieur le maire, c’est la solitude qui est responsable de ce drame épouvantable. « Peu de gens venaient leur rendre visite, je crois même qu’en dehors des gens du village, ils n’avaient pas vraiment de famille ». Dès lors, sans contact avec l’extérieur, la personne âgée n’a dû sa survie qu’à la consommation régulière des chairs de Poppy. Les secours et services vétérinaires notent cependant que la personne âgée a fait preuve d’intelligence. « Les chairs de Yorkshire sont peu épaisses, mais la personne âgée a su en faire bon usage et bien gérer le stock qu’il y avait, faute de quoi, elle serait aussi décédée en quelques jours. ».</div>'),
(47, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '4', ''),
(48, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '4', ''),
(49, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '4', ''),
(50, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'title', '4', 'Drama of solitude - A Yorkshire devoured by a person'),
(51, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'slug', '4', 'drama-of-solitude-a-yorkshire-devoured-by-a-person'),
(52, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '4', 'Dax - Terrible discovery for the inhabitants of this village on the outskirts of Dax, in the Landes. No news of Poppy, an adorable Yorkshire 8 years, relatives went to his home. Alas, they have not found the corpse of poor dog, partly eaten by a person who lived with him for several years.'),
(53, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'content', '4', '<div>Dax - Terrible discovery for the inhabitants of this village on the outskirts of Dax, in the Landes. No news of Poppy, an adorable Yorkshire 8 years , relatives went to his home. Alas, they have not found the corpse of poor dog , partly eaten by a person who lived with him for several years.</div><div><br></div><div>"It''s terrible , really terrible," laments the village mayor Poppy who knew very well. According to firefighters, the dog would be dead for several weeks and the elderly who lived with Poppy would be nourished by his body . No trace suspect was discovered on the body of the little dog , which suggests a natural death , although further tests will be conducted to eliminate any doubt .</div><div><br></div><div>For Mayor , it is the loneliness that is responsible for this terrible tragedy . "Few people came to visit them, I think that even people outside the village, they had no real family ." Therefore, without contact with the outside , the elderly has been its survival to the regular consumption of flesh Poppy. Relief and veterinary services noted however that the elderly showed intelligence. " The flesh of Yorkshire are very thick , but the senior was able to make good use and manage the stock there was , otherwise , it would also died in a few days. " .</div>'),
(54, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '4', 'Drama of solitude - A Yorkshire devoured by a person'),
(55, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '4', 'Drama of solitude - A Yorkshire devoured by a person'),
(56, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '4', 'Drama of solitude - A Yorkshire devoured by a person'),
(57, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'title', '5', 'Européennes - Les Français choqués d’apprendre qu''un très grand nombre d’entre eux va voter PS '),
(58, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'slug', '5', 'europeennes-les-francais-choques-dapprendre-quun-tres-grand-nombre-dentre-eux-va-voter-ps'),
(59, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '5', 'Paris - Va-t-on vers un nouveau 21 avril pour les partis républicains ? La troisième place du Parti socialiste dans tous les sondages rappelle à tous à quel point les Français sont attirés par les extrêmes et des partis, qui, même minoritaires, peuvent faire basculer une élection. Le PS est-il un vote contestataire ou une véritable force politique en devenir ? Reportage.'),
(60, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'content', '5', '<div>Paris – Va-t-on vers un nouveau 21 avril pour les partis républicains ? La troisième place du Parti socialiste dans tous les sondages rappelle à tous à quel point les Français sont attirés par les extrêmes et des partis, qui, même minoritaires, peuvent faire basculer une élection. Le PS est-il un vote contestataire ou une véritable force politique en devenir ? Reportage.</div><div><br></div><div>Les récents sondages des élections européennes démontrent que le vote PS semble durablement s’installer dans le pays. De plus en plus de Français n’hésitent plus à l’affirmer et à le revendiquer. On ne se cache plus. Comme ce jeune homme de Reims qui dit qu’il va voter PS aux Européennes. « Oui je vais voter PS, parce que je ne fais confiance ni au FN ni à l’UMP. Ce sont des partis du système » explique un jeune homme qui a rejoint le PS récemment. « Au début, je ne voulais pas le dire à mes proches, on a un peu honte » raconte-t-il. « Mais aujourd’hui, les mentalités ont changé, on peut sans crainte se revendiquer socialiste ». Avec des amis, ils militent dans leur quartier, tentent de fédérer. Mais ce n’est pas toujours facile.</div><div><br></div><div>Selon eux, le PS tente encore de sortir de cette phase de diabolisation, une diabolisation fomentée et organisée par les autres partis républicains. « On lit tellement de bêtises dans la presse à notre sujet, c’est triste. » estime Coralie, 31 ans, qui milite au PS depuis plus de dix ans. « On nous caricature, mais nos adhérents et nos électeurs ne sont pas dupes » ajoute-t-elle, soulignant que cette troisième place dans les sondages montre que les Français commencent à ouvrir les yeux. « Il va y avoir de grosses surprises le soir de l’élection » dit-elle avec une pointe de malice en jetant un œil admiratif vers une photo de François Hollande.</div><div><br></div><div>Mais pour de nombreux analystes qui ont analysé en profondeur cette situation inédite et intéressante – faute de quoi nous n’en ferions pas un article entier – c’est un vote qui s’enracine profondément et qui porte une identité forte. « Il y a une sorte de rejet des valeurs établies. Les gens ne se reconnaissent plus dans les politiques, alors ils se tournent vers les extrêmes et donc, logiquement, le socialisme. » commente un responsable de l’IFOP qui note que le PS se maintient désormais comme la potentielle troisième force politique du pays. « C’est quelque chose d’inédit. Il y a clairement un basculement, et les autres partis devraient se méfier ». Mais de l’avis de nombreux experts, l’inexpérience du PS dans la gestion des affaires politiques serait un très sérieux frein à une possible arrivée, un jour, à la tête du pays.</div>'),
(61, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '5', 'Européennes – Les Français choqués d’apprendre qu’un très grand nombre d’entre eux va voter PS '),
(62, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '5', 'Européennes – Les Français choqués d’apprendre qu’un très grand nombre d’entre eux va voter PS '),
(63, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '5', 'Européennes – Les Français choqués d’apprendre qu’un très grand nombre d’entre eux va voter PS '),
(64, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'title', '5', 'Europe - The French shocked to learn that a large number of them will vote PS'),
(65, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'slug', '5', 'europe-the-french-shocked-to-learn-that-a-large-number-of-them-will-vote-ps'),
(66, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '5', 'Paris - Will you to a new April 21 for the Republican party ? Third place in the Socialist Party in polls remind everyone how the French are attracted by extreme and parties, even a minority can tip an election. PS is there a protest vote or a real political force in the making? Report .'),
(67, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'content', '5', '<div>Paris - Will you to a new April 21 for the Republican party ? Third place in the Socialist Party in polls remind everyone how the French are attracted by extreme and parties, even a minority can tip an election. PS is there a protest vote or a real political force in the making? Report .</div><div><br></div><div>Recent polls show that the European elections the PS vote seems to settle permanently in the country. More and more French do not hesitate to assert and claim it. It is no longer hidden . As this young man of Reims who says he will vote for European PS . "Yes PS I will vote because I do not trust either the FN or the UMP. They are left in the system , "said a young man who recently joined the PS . "At first I did not want to tell my family was a little ashamed ," he says . "But today , attitudes have changed, we can safely claim to socialist." With friends, they argue in their neighborhood , trying to unite . But it is not always easy.</div><div><br></div><div>According to them, the PS still trying to get out of this phase of demonization , demonization instigated and organized by other Republican parties . " We read so much rubbish in the press about us, it''s sad. "Says Coralie , 31, who was active in PS for over ten years. " We caricature, but our members and our voters are not fools ," she adds , noting that third place in the polls shows that the French are beginning to open their eyes. " There will be big surprises on election night ," she said with a hint of malice in casting an admiring glance at a picture of Francois Hollande.</div><div><br></div><div>But for many analysts who have thoroughly analyzed this unique and interesting position - otherwise we do not do a whole article - it is a vote that is deeply rooted and bears a strong identity. "There is a kind of rejection of established values ​​. People no longer recognize themselves in policies, then they turn to extreme and therefore , logically , socialism . "Said an official of the FIFG noting that the PS is now maintained as the potential third political force . "This is something new . There is a clear tipping and other parties should be wary . " But in the opinion of many experts, the inexperience of the PS in the management of political affairs would be a very serious obstacle to a possible arrival one day at the head of the country.</div>'),
(68, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '5', 'Europe - The French shocked to learn that a large number of them will vote PS'),
(69, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '5', 'Europe - The French shocked to learn that a large number of them will vote PS'),
(70, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '5', 'Europe - The French shocked to learn that a large number of them will vote PS'),
(71, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'title', '6', 'David Pujadas obligé de rendre l''antenne après la diffusion d’un reportage de qualité '),
(72, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'slug', '6', 'david-pujadas-oblige-de-rendre-lantenne-apres-la-diffusion-dun-reportage-de-qualite'),
(73, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '6', 'Hier soir, le journal de France 2 a été interrompu aux alentours de 20h15 par un sujet de société au traitement inhabituel. Après la diffusion de ce reportage sur les inégalités sociales des Français, le présentateur a la mine déconfite. Bredouillant quelques mots d''excuse, il prend alors la décision de mettre fin en avance à son édition.'),
(74, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'content', '6', 'Hier soir, le journal de France 2 a été interrompu aux alentours de 20h15 par un sujet de société au traitement inhabituel. Après la diffusion de ce reportage sur les inégalités sociales des Français, le présentateur a la mine déconfite. Bredouillant quelques mots d’excuse, il prend alors la décision de mettre fin en avance à son édition.<br><br><h4>Une prise en otage</h4>  <span>«&nbsp;Voilà, petit souci comme vous avez pu le constater. Notre journal a été victime d’une intrusion de qualité que nous n’avons pu contrer. Afin que cela ne se reproduise plus, nous rendons l’antenne. Nous ne pouvons faire ce journal avec cette menace qui pèse&nbsp;», explique alors David Pujadas.<br></span><span><br>La régie du «&nbsp;20 Heures&nbsp;» diffuse alors «&nbsp;Il fait chaud&nbsp;», la dernière chanson de Patrick Sébastien en boucle pendant plus de 30 minutes avant d’envoyer finalement le film Saw II vers 20h45.<br></span><br>Une interruption immédiatement justifiée sur Twitter par Olivier Siou, l’un des rédacteurs en chef adjoints :<a href="http://www.legorafi.fr/wp-content/uploads/2014/05/Olivier-Siou.jpg" target="" rel=""><img width="600" alt="Olivier Siou" src="http://www.legorafi.fr/wp-content/uploads/2014/05/Olivier-Siou.jpg" height="300"></a><br>Le reportage en question consistait en un très long sujet de 4 minutes alternant les points de vue divers, le tout entremêlé de commentaires aussi précis que pertinents. Autant d’ingrédients qui auront suffi à semer la panique dans l’équipe du JT de France 2.<br><br><h4>Un antécédent en 2002</h4><br>  Le 13 octobre 2002, David Pujadas et son staff avaient été confrontés à une situation identique. Au moment de cette intrusion, ils avaient cependant décidé de poursuivre le journal, envoyant même quelques minutes plus tard un autre reportage à la qualité plus qu’honorable. Une ligne visiblement révolue depuis.'),
(75, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '6', 'David Pujadas obligé de rendre l’antenne après la diffusion d’un reportage de qualité '),
(76, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '6', 'David Pujadas obligé de rendre l’antenne après la diffusion d’un reportage de qualité '),
(77, 'fr_FR', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '6', 'David Pujadas obligé de rendre l’antenne après la diffusion d’un reportage de qualité '),
(78, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'title', '6', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality'),
(79, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'slug', '6', 'david-pujadas-obliged-to-make-the-antenna-after-the-broadcast-of-a-report-of-quality'),
(80, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'abstract', '6', 'Yesterday evening, the France 2 news was interrupted around 20:15 about a society unusual treatment. Following the release of this report on social inequalities in French , the presenter ''s crestfallen . Mumbled a few words of apology , so he decided to stop in advance to editing.'),
(81, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'content', '6', '<div>Yesterday evening, the France 2 news was interrupted around 20:15 about a society unusual treatment. Following the release of this report on social inequalities in French , the presenter ''s crestfallen . Mumbled a few words of apology , so he decided to stop in advance to editing.</div><div><br></div><h4>Hostage-taking</h4><div>"Here, little concern as you have seen . Our newspaper was the victim of an intrusion quality that we could not counter . So that it does not happen again , we make the antenna. We can do this log with this threat , " says David Pujadas then .</div><div><br></div><div>The governance of the " 20 Hours " then broadcasts " It''s hot ," the last song of Patrick Sébastien Loop for over 30 minutes before finally send the movie Saw II to 20:45.</div><div><br></div><div>Interruption immediately justified on Twitter by Olivier Siu , one of the Associate Editors : Olivier SIOULE report in question consisted of a very long about 4 minutes alternating points of view , all interspersed with as accurate as relevant comments. All ingredients that were enough to cause panic in the team of JT France 2 .</div><div><br></div><h4>A history in 2002</h4><div>13 October 2002 , David Pujadas and his staff were faced with the same situation. At the time of the intrusion , however, they decided to continue the newspaper, even sending a few minutes later another report to the most honorable quality. A line obviously gone since .</div>'),
(82, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'titleMeta', '6', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality'),
(83, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'descriptionMeta', '6', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality'),
(84, 'en_US', 'PlaygroundPublishing\\Entity\\Article', 'keywordMeta', '6', 'David Pujadas obliged to make the antenna after the broadcast of a report of quality');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_category`
--

CREATE TABLE IF NOT EXISTS `publishing_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_web` tinyint(1) NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `publishing_category`
--

INSERT INTO `publishing_category` (`id`, `is_web`, `is_mobile`, `status`, `created_at`, `updated_at`, `title`, `slug`, `title_meta`, `description_meta`, `keyword_meta`, `description`) VALUES
(1, 1, 0, 1, '2014-05-23 10:15:27', '2014-11-04 22:23:36', 'Politic', 'politic', 'Politic', 'Politic', 'Politic', 'Politic'),
(2, 1, 0, 1, '2014-05-23 10:16:28', '2014-05-23 10:16:28', 'Culture', 'culture', 'Culture', 'Culture', 'Culture', 'Culture'),
(3, 1, 0, 1, '2014-05-23 10:17:21', '2014-05-23 10:17:21', 'Various facts', 'various-facts', 'Various facts', 'Various facts', 'Various facts', 'Various facts'),
(4, 1, 0, 1, '2014-05-23 10:17:43', '2014-05-23 10:17:43', 'Economic', 'economic', 'Economic', 'Economic', 'Economic', 'Economic');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_category_translations`
--

CREATE TABLE IF NOT EXISTS `publishing_category_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_translations_lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `category_translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Contenu de la table `publishing_category_translations`
--

INSERT INTO `publishing_category_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(1, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'title', '1', 'Politique'),
(2, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'slug', '1', 'politique'),
(3, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'description', '1', 'Politique'),
(4, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '1', 'Politique'),
(5, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '1', 'Politique'),
(6, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '1', 'Politique'),
(7, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'title', '1', 'Politic'),
(8, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'slug', '1', 'politic'),
(9, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '1', 'Politic'),
(10, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '1', 'Politic'),
(11, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '1', 'Politic'),
(12, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'description', '1', ''),
(13, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'title', '2', 'Culture'),
(14, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'slug', '2', 'culture'),
(15, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'description', '2', 'Culture'),
(16, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '2', 'Culture'),
(17, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '2', 'Culture'),
(18, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '2', 'Culture'),
(19, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'title', '2', 'Culture'),
(20, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'slug', '2', 'culture'),
(21, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '2', 'Culture'),
(22, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '2', 'Culture'),
(23, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '2', 'Culture'),
(24, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'description', '2', 'Culture'),
(25, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'title', '3', 'Faits divers'),
(26, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'slug', '3', 'faits-divers'),
(27, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'description', '3', 'Faits divers'),
(28, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '3', 'Faits divers'),
(29, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '3', 'Faits divers'),
(30, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '3', 'Faits divers'),
(31, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'title', '3', 'Various facts'),
(32, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'slug', '3', 'various-facts'),
(33, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '3', 'Various facts'),
(34, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '3', 'Various facts'),
(35, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '3', 'Various facts'),
(36, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'description', '3', 'Various facts'),
(37, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'title', '4', 'Economie'),
(38, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'slug', '4', 'economie'),
(39, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'description', '4', 'Economie'),
(40, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '4', 'Economie'),
(41, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '4', 'Economie'),
(42, 'fr_FR', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '4', 'Economie'),
(43, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'title', '4', 'Economic'),
(44, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'slug', '4', 'economic'),
(45, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'titleMeta', '4', 'Economic'),
(46, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'descriptionMeta', '4', 'Economic'),
(47, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'keywordMeta', '4', 'Economic'),
(48, 'en_US', 'PlaygroundPublishing\\Entity\\Category', 'description', '4', 'Economic');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_comment`
--

CREATE TABLE IF NOT EXISTS `publishing_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D5035BA77294869C` (`article_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=97 ;

--
-- Contenu de la table `publishing_comment`
--

INSERT INTO `publishing_comment` (`id`, `article_id`, `name`, `status`, `email`, `locale`, `comment`, `created_at`, `updated_at`) VALUES
(57, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:09:45', '2014-05-23 16:09:45'),
(59, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:10:36', '2014-05-23 16:10:36'),
(60, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:12:33', '2014-05-23 16:12:33'),
(62, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:14:58', '2014-05-23 16:14:58'),
(63, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:17:33', '2014-05-23 16:17:33'),
(64, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:18:30', '2014-05-23 16:18:30'),
(69, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:20:37', '2014-05-23 16:20:37'),
(74, 3, 'Thomas ROGER', 2, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf', '2014-05-23 16:22:25', '2014-10-30 14:57:21'),
(75, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf1212121', '2014-05-23 16:22:32', '2014-05-23 16:22:32'),
(76, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf1212121', '2014-05-23 16:22:51', '2014-05-23 16:22:51'),
(77, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf1212121', '2014-05-23 16:22:57', '2014-05-23 16:22:57'),
(79, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf1212121', '2014-05-23 16:23:12', '2014-05-23 16:23:12'),
(80, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'fr_FR', 'fdfdddf1212121', '2014-05-23 16:23:16', '2014-05-23 16:23:16'),
(81, 3, 'Thomas ROGER', 0, 'thomas.roger@adfab.fr', 'en_US', 'En_US', '2014-05-23 16:25:13', '2014-05-23 16:25:13'),
(82, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:25:38', '2014-05-23 16:25:38'),
(83, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:29:32', '2014-05-23 16:29:32'),
(84, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:33:28', '2014-05-23 16:33:28'),
(85, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:33:44', '2014-05-23 16:33:44'),
(86, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:34:18', '2014-05-23 16:34:18'),
(87, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:39:01', '2014-05-23 16:39:01'),
(88, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:40:30', '2014-05-23 16:40:30'),
(89, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:40:48', '2014-05-23 16:40:48'),
(90, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:40:55', '2014-05-23 16:40:55'),
(91, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:41:15', '2014-05-23 16:41:15'),
(92, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:42:25', '2014-05-23 16:42:25'),
(93, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:43:25', '2014-05-23 16:43:25'),
(94, 3, 'Thomas ROGER', 1, 'thomas.roger@adfab.fr', 'en_US', 'En_US12121', '2014-05-23 16:43:42', '2014-05-23 16:43:42'),
(95, 4, 'troger', 1, 'thomaroger@gmail.com', 'en_US', 'Mon commentaire', '2014-11-04 22:49:19', '2014-11-04 22:49:50'),
(96, 6, 'troger', 1, 'thomaroger@gmail.com', 'fr_FR', 'Mon commentaire', '2014-11-19 22:36:55', '2014-11-19 22:36:55');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_poll`
--

CREATE TABLE IF NOT EXISTS `publishing_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(6) NOT NULL,
  `is_web` tinyint(1) NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `publishing_poll`
--

INSERT INTO `publishing_poll` (`id`, `status`, `is_web`, `is_mobile`, `author`, `start_date`, `end_date`, `created_at`, `updated_at`, `title`, `slug`, `question`, `title_meta`, `description_meta`, `keyword_meta`) VALUES
(1, 1, 1, 0, 'troger', '2014-06-01 00:00:00', '2029-12-31 23:59:59', '2014-06-01 22:07:44', '2014-11-04 22:32:10', 'Do you have a good image of the UMP?', 'do-you-have-a-good-image-of-the-ump', 'Do you have a good image of the UMP?', 'Do you have a good image of the UMP?', 'Do you have a good image of the UMP?', 'Do you have a good image of the UMP?'),
(3, 1, 1, 0, 'troger', '2014-07-24 12:12:12', '2029-12-31 23:59:59', '2014-07-24 23:28:24', '2014-07-24 23:28:24', 'Winter snow tires required: good or bad?', 'winter-snow-tires-required-good-or-bad', 'Winter snow tires required: good or bad?', 'Winter snow tires required: good or bad?', 'Winter snow tires required: good or bad?', 'Winter snow tires required: good or bad?');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_poll_answer`
--

CREATE TABLE IF NOT EXISTS `publishing_poll_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F9E0C5C13C947C0F` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `publishing_poll_answer`
--

INSERT INTO `publishing_poll_answer` (`id`, `poll_id`, `answer`, `count`, `created_at`, `updated_at`) VALUES
(3, 1, 'Good', 5, '2014-07-24 23:28:24', '2014-10-28 00:38:21'),
(4, 3, 'Bad', 1, '2014-07-24 23:28:24', '2014-08-03 02:17:51'),
(5, 1, 'Yes', 0, '2014-10-28 00:38:21', '2014-10-28 00:38:21'),
(6, 1, 'No', 0, '2014-10-28 00:38:21', '2014-10-28 00:38:21');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_poll_answer_translations`
--

CREATE TABLE IF NOT EXISTS `publishing_poll_answer_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `answer_translations_lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `answer_translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `publishing_poll_answer_translations`
--

INSERT INTO `publishing_poll_answer_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(5, 'fr_FR', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '3', 'Ne sait pas'),
(6, 'en_US', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '3', 'Not known'),
(7, 'fr_FR', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '4', 'Pas Bien'),
(8, 'en_US', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '4', 'Bad'),
(9, 'fr_FR', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '5', 'Oui'),
(10, 'en_US', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '5', 'Yes'),
(11, 'fr_FR', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '6', 'Non'),
(12, 'en_US', 'PlaygroundPublishing\\Entity\\Answer', 'answer', '6', 'No');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_poll_translations`
--

CREATE TABLE IF NOT EXISTS `publishing_poll_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_translations_lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `poll_translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Contenu de la table `publishing_poll_translations`
--

INSERT INTO `publishing_poll_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(1, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'title', '1', 'Avez-vous une bonne image de l''UMP?'),
(2, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'slug', '1', 'avez-vous-une-bonne-image-de-lump'),
(3, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'question', '1', 'Avez-vous une bonne image de l''UMP?'),
(4, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'titleMeta', '1', 'Avez-vous une bonne image de l''UMP?'),
(5, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'keywordMeta', '1', 'Avez-vous une bonne image de l''UMP?'),
(6, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'descriptionMeta', '1', 'Avez-vous une bonne image de l''UMP?'),
(7, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'title', '1', 'Do you have a good image of the UMP?'),
(8, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'slug', '1', 'do-you-have-a-good-image-of-the-ump'),
(9, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'question', '1', 'Do you have a good image of the UMP?'),
(10, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'titleMeta', '1', 'Do you have a good image of the UMP?'),
(11, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'descriptionMeta', '1', 'Do you have a good image of the UMP?'),
(12, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'keywordMeta', '1', 'Do you have a good image of the UMP?'),
(25, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'title', '3', 'Pneus neige obligatoires en hiver: bien ou pas bien?'),
(26, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'slug', '3', 'pneus-neige-obligatoires-en-hiver-bien-ou-pas-bien'),
(27, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'question', '3', 'Pneus neige obligatoires en hiver: bien ou pas bien?'),
(28, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'titleMeta', '3', 'Pneus neige obligatoires en hiver: bien ou pas bien?'),
(29, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'keywordMeta', '3', 'Pneus neige obligatoires en hiver: bien ou pas bien?'),
(30, 'fr_FR', 'PlaygroundPublishing\\Entity\\Poll', 'descriptionMeta', '3', 'Pneus neige obligatoires en hiver: bien ou pas bien?'),
(31, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'title', '3', 'Winter snow tires required: good or bad?'),
(32, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'slug', '3', 'winter-snow-tires-required-good-or-bad'),
(33, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'question', '3', 'Winter snow tires required: good or bad?'),
(34, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'titleMeta', '3', 'Winter snow tires required: good or bad?'),
(35, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'descriptionMeta', '3', 'Winter snow tires required: good or bad?'),
(36, 'en_US', 'PlaygroundPublishing\\Entity\\Poll', 'keywordMeta', '3', 'Winter snow tires required: good or bad?');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_tag`
--

CREATE TABLE IF NOT EXISTS `publishing_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(6) NOT NULL,
  `is_web` tinyint(1) NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword_meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `publishing_tag`
--

INSERT INTO `publishing_tag` (`id`, `status`, `is_web`, `is_mobile`, `created_at`, `updated_at`, `title`, `slug`, `title_meta`, `description_meta`, `keyword_meta`) VALUES
(1, 1, 1, 0, '2014-05-23 10:18:12', '2014-11-19 22:35:02', 'France TV', 'france-tv', 'France TV', 'France TV', 'France TV'),
(2, 1, 1, 0, '2014-05-23 10:18:51', '2014-05-23 10:18:51', 'Newscast', 'newscast', 'Newscast', 'Newscast', 'Newscast'),
(3, 1, 1, 0, '2014-05-23 10:20:13', '2014-05-23 10:20:23', 'David PUJADAS', 'david-pujadas', 'David PUJADAS', 'David PUJADAS', 'David PUJADAS'),
(4, 1, 1, 0, '2014-05-23 10:21:20', '2014-05-23 10:21:20', 'European Elections', 'european-elections', 'European Elections', 'European Elections', 'European Elections'),
(5, 1, 1, 0, '2014-05-23 10:21:43', '2014-05-23 10:21:43', 'PS', 'ps', 'PS', 'PS', 'PS'),
(6, 1, 1, 0, '2014-05-23 10:22:09', '2014-05-23 10:22:09', 'Yorkshire', 'yorkshire', 'Yorkshire', 'Yorkshire', 'Yorkshire'),
(7, 1, 1, 0, '2014-05-23 10:22:51', '2014-05-23 10:22:51', '21th April', '21th-april', '21th April', '21th April', '21th April'),
(9, 1, 1, 0, '2014-05-23 10:23:34', '2014-05-23 10:23:34', 'Dax', 'dax', 'Dax', 'Dax', 'Dax'),
(10, 1, 1, 0, '2014-05-23 10:24:43', '2014-05-23 10:24:43', 'Loneliness', 'loneliness', 'Loneliness', 'Loneliness', 'Loneliness'),
(11, 1, 1, 0, '2014-05-23 10:25:06', '2014-05-23 11:07:11', 'SNCF', 'sncf', 'SNCF', 'SNCF', 'SNCF'),
(12, 1, 1, 0, '2014-05-23 10:25:34', '2014-05-23 10:25:34', 'TER', 'ter', 'TER', 'TER', 'TER'),
(13, 1, 1, 0, '2014-05-23 10:26:46', '2014-05-23 10:26:46', 'Fast', 'fast', 'Fast', 'Fast', 'Fast'),
(14, 1, 1, 0, '2014-05-23 10:27:35', '2014-05-23 10:27:35', 'French Academy', 'french-academy', 'French Academy', 'French Academy', 'French Academy'),
(15, 1, 1, 0, '2014-05-23 10:27:59', '2014-05-23 10:27:59', 'Jean d’Ormesson', 'jean-dormesson', 'Jean d’Ormesson', 'Jean d’Ormesson', 'Jean d’Ormesson'),
(16, 1, 1, 0, '2014-05-23 10:28:17', '2014-05-23 10:28:17', 'Alain Finkielkraut', 'alain-finkielkraut', 'Alain Finkielkraut', 'Alain Finkielkraut', 'Alain Finkielkraut'),
(17, 1, 1, 0, '2014-05-23 10:28:58', '2014-05-23 10:28:58', 'Xavier Darcos', 'xavier-darcos', 'Xavier Darcos', 'Xavier Darcos', 'Xavier Darcos'),
(18, 1, 1, 0, '2014-05-23 10:29:18', '2014-05-23 10:29:18', 'Max Gallo', 'max-gallo', 'Max Gallo', 'Max Gallo', 'Max Gallo');

-- --------------------------------------------------------

--
-- Structure de la table `publishing_tag_translations`
--

CREATE TABLE IF NOT EXISTS `publishing_tag_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_translations_lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `tag_translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=181 ;

--
-- Contenu de la table `publishing_tag_translations`
--

INSERT INTO `publishing_tag_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(1, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '1', 'France TV'),
(2, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '1', 'france-tv'),
(3, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '1', 'France TV'),
(4, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '1', 'France TV'),
(5, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '1', 'France TV'),
(6, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '1', 'France TV'),
(7, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '1', 'france-tv'),
(8, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '1', 'France TV'),
(9, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '1', 'France TV'),
(10, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '1', 'France TV'),
(11, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '2', 'Journal télévisé'),
(12, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '2', 'journal-televise'),
(13, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '2', 'Journal télévisé'),
(14, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '2', 'Journal télévisé'),
(15, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '2', 'Journal télévisé'),
(16, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '2', 'Newscast'),
(17, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '2', 'newscast'),
(18, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '2', 'Newscast'),
(19, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '2', 'Newscast'),
(20, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '2', 'Newscast'),
(21, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '3', 'David PUJADAS'),
(22, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '3', 'david-pujadas'),
(23, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '3', 'David PUJADAS'),
(24, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '3', 'David PUJADAS'),
(25, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '3', 'David PUJADAS'),
(26, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '3', 'David PUJADAS'),
(27, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '3', 'david-pujadas'),
(28, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '3', 'David PUJADAS'),
(29, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '3', 'David PUJADAS'),
(30, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '3', 'David PUJADAS'),
(31, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '4', 'Elections Européennes'),
(32, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '4', 'elections-europeennes'),
(33, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '4', 'Elections Européennes'),
(34, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '4', 'Elections Européennes'),
(35, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '4', 'Elections Européennes'),
(36, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '4', 'European Elections'),
(37, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '4', 'european-elections'),
(38, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '4', 'European Elections'),
(39, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '4', 'European Elections'),
(40, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '4', 'European Elections'),
(41, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '5', 'PS'),
(42, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '5', 'ps'),
(43, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '5', 'PS'),
(44, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '5', 'PS'),
(45, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '5', 'PS'),
(46, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '5', 'PS'),
(47, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '5', 'ps'),
(48, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '5', 'PS'),
(49, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '5', 'PS'),
(50, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '5', 'PS'),
(51, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '6', 'Yorkshire'),
(52, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '6', 'yorkshire'),
(53, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '6', 'Yorkshire'),
(54, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '6', 'Yorkshire'),
(55, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '6', 'Yorkshire'),
(56, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '6', 'Yorkshire'),
(57, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '6', 'yorkshire'),
(58, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '6', 'Yorkshire'),
(59, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '6', 'Yorkshire'),
(60, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '6', 'Yorkshire'),
(61, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '7', '21 avril'),
(62, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '7', '21-avril'),
(63, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '7', '21 avril'),
(64, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '7', '21 avril'),
(65, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '7', '21 avril'),
(66, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '7', '21th April'),
(67, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '7', '21th-april'),
(68, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '7', '21th April'),
(69, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '7', '21th April'),
(70, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '7', '21th April'),
(81, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '9', 'Dax'),
(82, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '9', 'dax'),
(83, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '9', 'Dax'),
(84, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '9', 'Dax'),
(85, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '9', 'Dax'),
(86, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '9', 'Dax'),
(87, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '9', 'dax'),
(88, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '9', 'Dax'),
(89, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '9', 'Dax'),
(90, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '9', 'Dax'),
(91, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '10', 'Solitude'),
(92, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '10', 'solitude'),
(93, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '10', 'Solitude'),
(94, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '10', 'Solitude'),
(95, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '10', 'Solitude'),
(96, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '10', 'Loneliness'),
(97, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '10', 'loneliness'),
(98, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '10', 'Loneliness'),
(99, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '10', 'Loneliness'),
(100, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '10', 'Loneliness'),
(101, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '11', 'SNCF'),
(102, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '11', 'sncf'),
(103, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '11', 'SNCF'),
(104, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '11', 'SNCF'),
(105, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '11', 'SNCF'),
(106, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '11', 'SNCF'),
(107, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '11', 'sncf'),
(108, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '11', 'SNCF'),
(109, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '11', 'SNCF'),
(110, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '11', 'SNCF'),
(111, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '12', 'TER'),
(112, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '12', 'ter'),
(113, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '12', 'TER'),
(114, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '12', 'TER'),
(115, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '12', 'TER'),
(116, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '12', 'TER'),
(117, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '12', 'ter'),
(118, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '12', 'TER'),
(119, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '12', 'TER'),
(120, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '12', 'TER'),
(121, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '13', 'Rapide'),
(122, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '13', 'rapide'),
(123, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '13', 'Rapide'),
(124, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '13', 'Rapide'),
(125, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '13', ''),
(126, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '13', 'Fast'),
(127, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '13', 'fast'),
(128, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '13', 'Fast'),
(129, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '13', 'Fast'),
(130, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '13', 'Fast'),
(131, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '14', 'Académie française'),
(132, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '14', 'academie-francaise'),
(133, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '14', 'Académie française'),
(134, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '14', 'Académie française'),
(135, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '14', 'Académie française'),
(136, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '14', 'French Academy'),
(137, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '14', 'french-academy'),
(138, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '14', 'French Academy'),
(139, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '14', 'French Academy'),
(140, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '14', 'French Academy'),
(141, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '15', 'Jean d’Ormesson'),
(142, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '15', 'jean-dormesson'),
(143, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '15', 'Jean d’Ormesson'),
(144, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '15', 'Jean d’Ormesson'),
(145, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '15', 'Jean d’Ormesson'),
(146, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '15', 'Jean d’Ormesson'),
(147, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '15', 'jean-dormesson'),
(148, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '15', 'Jean d’Ormesson'),
(149, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '15', 'Jean d’Ormesson'),
(150, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '15', 'Jean d’Ormesson'),
(151, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '16', 'Alain Finkielkraut'),
(152, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '16', 'alain-finkielkraut'),
(153, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '16', 'Alain Finkielkraut'),
(154, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '16', 'Alain Finkielkraut'),
(155, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '16', 'Alain Finkielkraut'),
(156, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '16', 'Alain Finkielkraut'),
(157, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '16', 'alain-finkielkraut'),
(158, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '16', 'Alain Finkielkraut'),
(159, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '16', 'Alain Finkielkraut'),
(160, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '16', 'Alain Finkielkraut'),
(161, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '17', 'Xavier Darcos'),
(162, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '17', 'xavier-darcos'),
(163, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '17', 'Xavier Darcos'),
(164, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '17', 'Xavier Darcos'),
(165, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '17', 'Xavier Darcos'),
(166, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '17', 'Xavier Darcos'),
(167, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '17', 'xavier-darcos'),
(168, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '17', 'Xavier Darcos'),
(169, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '17', 'Xavier Darcos'),
(170, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '17', 'Xavier Darcos'),
(171, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'title', '18', 'Max Gallo'),
(172, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '18', 'max-gallo'),
(173, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '18', 'Max Gallo'),
(174, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '18', 'Max Gallo'),
(175, 'fr_FR', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '18', 'Max Gallo'),
(176, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'title', '18', 'Max Gallo'),
(177, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'slug', '18', 'max-gallo'),
(178, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'titleMeta', '18', 'Max Gallo'),
(179, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'descriptionMeta', '18', 'Max Gallo'),
(180, 'en_US', 'PlaygroundPublishing\\Entity\\Tag', 'keywordMeta', '18', 'Max Gallo');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `roleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_57698A6AB8C2FD88` (`roleId`),
  KEY `IDX_57698A6A727ACA70` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `parent_id`, `roleId`) VALUES
(1, NULL, 'user'),
(2, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optin` tinyint(1) DEFAULT NULL,
  `optin_partner` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registration_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  KEY `idx_state` (`state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `display_name`, `password`, `state`, `firstname`, `lastname`, `title`, `gender`, `dob`, `avatar`, `telephone`, `mobile`, `address`, `address2`, `postal_code`, `city`, `country`, `optin`, `optin_partner`, `created_at`, `updated_at`, `registration_source`) VALUES
(1, 'admin', 'admin@test.com', NULL, '$2y$14$N6BdwP95.UJimGGS3i4kbOIF4QqCj0tgcaH.JBwmiMcEcRAQ3XvwG', 1, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2014-05-22 20:00:46', '2014-05-22 20:00:46', NULL),
(2, 'troger', 'thomas.roger@adfab.fr', NULL, '$2y$14$PjOr7VoZ1uz4X8/UU43ZPuYKYXopru25xJGFZXRPDTtKRIOKHZfOq', 1, 'Thomas', 'ROGER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2014-05-22 20:00:48', '2014-05-22 20:00:48', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_password_reset`
--

CREATE TABLE IF NOT EXISTS `user_password_reset` (
  `request_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_time` datetime NOT NULL,
  PRIMARY KEY (`request_key`),
  UNIQUE KEY `UNIQ_DA84AD0BA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_provider`
--

CREATE TABLE IF NOT EXISTS `user_provider` (
  `provider_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`provider_id`),
  UNIQUE KEY `UNIQ_7249979CA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_2DE8C6A3A76ED395` (`user_id`),
  KEY `IDX_2DE8C6A3D60322AC` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user_signup_email_verification`
--

CREATE TABLE IF NOT EXISTS `user_signup_email_verification` (
  `request_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_time` datetime NOT NULL,
  PRIMARY KEY (`request_key`),
  UNIQUE KEY `UNIQ_EF4B92EAB08E074E` (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `website`
--

CREATE TABLE IF NOT EXISTS `website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `byDefault` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `website`
--

INSERT INTO `website` (`id`, `name`, `code`, `active`, `byDefault`, `created_at`, `updated_at`) VALUES
(1, 'France', 'FR', 1, 1, '2014-05-22 20:00:44', '2014-05-22 20:00:44'),
(2, 'United State', 'US', 1, 0, '2014-05-22 20:00:44', '2014-05-22 20:00:44');

-- --------------------------------------------------------

--
-- Structure de la table `website_locale`
--

CREATE TABLE IF NOT EXISTS `website_locale` (
  `website_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`website_id`,`locale_id`),
  KEY `IDX_D30522B318F45C82` (`website_id`),
  KEY `IDX_D30522B3E559DFD1` (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `website_locale`
--

INSERT INTO `website_locale` (`website_id`, `locale_id`) VALUES
(1, 1),
(2, 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cms_block_layout_zone`
--
ALTER TABLE `cms_block_layout_zone`
  ADD CONSTRAINT `FK_25E53886D29AF672` FOREIGN KEY (`layoutZone_id`) REFERENCES `cms_layout_zone` (`id`),
  ADD CONSTRAINT `FK_25E53886E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`id`);

--
-- Contraintes pour la table `cms_feed`
--
ALTER TABLE `cms_feed`
  ADD CONSTRAINT `FK_E4D6E9D6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `cms_layout_zone`
--
ALTER TABLE `cms_layout_zone`
  ADD CONSTRAINT `FK_D2495D4A8C22AA1A` FOREIGN KEY (`layout_id`) REFERENCES `cms_layout` (`id`),
  ADD CONSTRAINT `FK_D2495D4A9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `cms_zone` (`id`);

--
-- Contraintes pour la table `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD CONSTRAINT `FK_BA9397EE727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `cms_menu` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formgen`
--
ALTER TABLE `formgen`
  ADD CONSTRAINT `FK_39EE8947E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `locale` (`id`);

--
-- Contraintes pour la table `publishing_article_category`
--
ALTER TABLE `publishing_article_category`
  ADD CONSTRAINT `FK_9BB25C7812469DE2` FOREIGN KEY (`category_id`) REFERENCES `publishing_category` (`id`),
  ADD CONSTRAINT `FK_9BB25C787294869C` FOREIGN KEY (`article_id`) REFERENCES `publishing_article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `publishing_article_tag`
--
ALTER TABLE `publishing_article_tag`
  ADD CONSTRAINT `FK_5EAE58467294869C` FOREIGN KEY (`article_id`) REFERENCES `publishing_article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5EAE5846BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `publishing_tag` (`id`);

--
-- Contraintes pour la table `publishing_comment`
--
ALTER TABLE `publishing_comment`
  ADD CONSTRAINT `FK_D5035BA77294869C` FOREIGN KEY (`article_id`) REFERENCES `publishing_article` (`id`);

--
-- Contraintes pour la table `publishing_poll_answer`
--
ALTER TABLE `publishing_poll_answer`
  ADD CONSTRAINT `FK_F9E0C5C13C947C0F` FOREIGN KEY (`poll_id`) REFERENCES `publishing_poll` (`id`);

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FK_57698A6A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `user_provider`
--
ALTER TABLE `user_provider`
  ADD CONSTRAINT `FK_7249979CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_2DE8C6A3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2DE8C6A3D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `website_locale`
--
ALTER TABLE `website_locale`
  ADD CONSTRAINT `FK_D30522B318F45C82` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D30522B3E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `locale` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
