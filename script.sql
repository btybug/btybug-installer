-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2017 at 02:39 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avatarbug_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_pages`
--

CREATE TABLE `admin_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` tinyint(4) NOT NULL DEFAULT '0',
  `main_content` text COLLATE utf8_unicode_ci,
  `header` tinyint(4) NOT NULL DEFAULT '1',
  `footer` tinyint(4) NOT NULL DEFAULT '0',
  `page_icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'individual',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '1',
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_pages`
--

INSERT INTO `admin_pages` (`id`, `module_id`, `title`, `url`, `permission`, `redirect_to`, `slug`, `layout_id`, `content_type`, `main_content`, `header`, `footer`, `page_icon`, `child_status`, `parent_id`, `is_default`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dashboard Page', '/admin', 'admin', '', 'dashboard', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 1, NULL, NULL, '2017-08-21 06:18:57'),
(18, 'sahak.avatar/console', 'console', '/admin/console', 'admin.console', '', '5996e84a31d03', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:14:50', '2017-08-21 09:31:52'),
(19, 'sahak.avatar/console', 'modules', '/admin/console/modules', 'admin.console.modules', '', '5996e84a372ac', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 18, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(20, 'sahak.avatar/console', 'optimisation', '/admin/console/optimisation', 'admin.console.optimisation', '', '5996e84a3b7ef', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 18, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(21, 'sahak.avatar/console', 'general', '/admin/console/general', 'admin.console.general', '', '5996e84a3fe87', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 18, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(22, 'sahak.avatar/console', 'trigger-events', '/admin/console/general/trigger-events', 'admin.console.general.trigger-events', '', '5996e84a44389', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 21, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(23, 'sahak.avatar/console', 'structure', '/admin/console/structure', 'admin.console.structure', '', '5996e84a48a03', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 18, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(24, 'sahak.avatar/console', 'pages', '/admin/console/structure/pages', 'admin.console.structure.pages', '', '5996e84a4d075', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(25, 'sahak.avatar/console', '{param}', '/admin/console/structure/pages/settings/{param}', 'admin.console.structure.pages.settings.{param}', '', '5996e84a54dcc', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(26, 'sahak.avatar/console', 'urls', '/admin/console/structure/urls', 'admin.console.structure.urls', '', '5996e84a597fc', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(27, 'sahak.avatar/console', 'classify', '/admin/console/structure/classify', 'admin.console.structure.classify', '', '5996e84a5db58', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(28, 'sahak.avatar/console', 'tables', '/admin/console/structure/tables', 'admin.console.structure.tables', '', '5996e84a62438', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(29, 'sahak.avatar/console', 'fields', '/admin/console/structure/fields', 'admin.console.structure.fields', '', '5996e84a66c6a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(30, 'sahak.avatar/console', 'create', '/admin/console/structure/fields/create', 'admin.console.structure.fields.create', '', '5996e84a6b47d', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 29, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(31, 'sahak.avatar/console', 'create-new', '/admin/console/structure/fields/create-new', 'admin.console.structure.fields.create-new', '', '5996e84a70122', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 29, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(32, 'sahak.avatar/console', '{param}', '/admin/console/structure/fields/edit/{param}', 'admin.console.structure.fields.edit.{param}', '', '5996e84a7507e', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 29, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(33, 'sahak.avatar/console', 'edit-forms', '/admin/console/structure/edit-forms', 'admin.console.structure.edit-forms', '', '5996e84a798a5', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(34, 'sahak.avatar/console', 'get-default-html', '/admin/console/structure/get-default-html', 'admin.console.structure.get-default-html', '', '5996e84a7e5af', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(35, 'sahak.avatar/console', 'forms', '/admin/console/structure/forms', 'admin.console.structure.forms', '', '5996e84a829cb', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(36, 'sahak.avatar/console', '{param}', '/admin/console/structure/forms/edit/{param}', 'admin.console.structure.forms.edit.{param}', '', '5996e84a86f54', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(37, 'sahak.avatar/console', '{param}', '/admin/console/structure/forms/entries/{param}', 'admin.console.structure.forms.entries.{param}', '', '5996e84a8b7c9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(38, 'sahak.avatar/console', '{param}', '/admin/console/structure/forms/view-entries/{param}', 'admin.console.structure.forms.view-entries.{param}', '', '5996e84a8fd6a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(39, 'sahak.avatar/console', '{param}', '/admin/console/structure/forms/settings/{param}', 'admin.console.structure.forms.settings.{param}', '', '5996e84a9449e', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(40, 'sahak.avatar/console', 'create', '/admin/console/structure/forms/create', 'admin.console.structure.forms.create', '', '5996e84a98fff', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(41, 'sahak.avatar/console', '{param}', '/admin/console/structure/forms/edit-custom/{param}', 'admin.console.structure.forms.edit-custom.{param}', '', '5996e84a9d580', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(42, 'sahak.avatar/console', 'create-advanced', '/admin/console/structure/forms/create-advanced', 'admin.console.structure.forms.create-advanced', '', '5996e84aa1c06', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(43, 'sahak.avatar/console', 'get-add-field-modal', '/admin/console/structure/forms/get-add-field-modal', 'admin.console.structure.forms.get-add-field-modal', '', '5996e84aa61d0', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(44, 'sahak.avatar/console', 'add-field-modal', '/admin/console/structure/forms/add-field-modal', 'admin.console.structure.forms.add-field-modal', '', '5996e84aaa86b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(45, 'sahak.avatar/console', 'get-unit-render', '/admin/console/structure/forms/get-unit-render', 'admin.console.structure.forms.get-unit-render', '', '5996e84aaef8b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 35, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(46, 'sahak.avatar/console', 'settings', '/admin/console/structure/settings', 'admin.console.structure.settings', '', '5996e84ab32b9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(47, 'sahak.avatar/console', 'menus', '/admin/console/structure/menus', 'admin.console.structure.menus', '', '5996e84ab765c', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 23, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(48, 'sahak.avatar/console', '{param}', '/admin/console/structure/menus/edit/{param}/{param}', 'admin.console.structure.menus.edit.{param}.{param}', '', '5996e84abbf0f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 47, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(49, 'sahak.avatar/console', 'backend', '/admin/console/backend', 'admin.console.backend', '', '5996e84ac1a6b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 18, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(50, 'sahak.avatar/console', 'page-section', '/admin/console/backend/page-section', 'admin.console.backend.page-section', '', '5996e84ac6294', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(51, 'sahak.avatar/console', '{param}', '/admin/console/backend/page-section/settings/{param}', 'admin.console.backend.page-section.settings.{param}', '', '5996e84aca798', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 50, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(52, 'sahak.avatar/console', 'h-f', '/admin/console/backend/h-f', 'admin.console.backend.h-f', '', '5996e84acee05', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(53, 'sahak.avatar/console', 'front-themes', '/admin/console/backend/h-f/front-themes', 'admin.console.backend.h-f.front-themes', '', '5996e84ad3240', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 52, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(54, 'sahak.avatar/console', '{param}', '/admin/console/backend/h-f/front-themes-activate/{param}', 'admin.console.backend.h-f.front-themes-activate.{param}', '', '5996e84ad7a2c', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 52, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(55, 'sahak.avatar/console', '{param}', '/admin/console/backend/h-f/tpl-variations/{param}', 'admin.console.backend.h-f.tpl-variations.{param}', '', '5996e84adbf57', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 52, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(56, 'sahak.avatar/console', '{param}', '/admin/console/backend/h-f/delete-variation/{param}', 'admin.console.backend.h-f.delete-variation.{param}', '', '5996e84ae0759', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 52, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(57, 'sahak.avatar/console', '{param}', '/admin/console/backend/h-f/settings-live/{param}', 'admin.console.backend.h-f.settings-live.{param}', '', '5996e84ae58fa', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 52, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(58, 'sahak.avatar/console', '{param}', '/admin/console/backend/h-f/settings-iframe/{param}/{param}/{param}', 'admin.console.backend.h-f.settings-iframe.{param}.{param}.{param}', '', '5996e84ae9e03', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 52, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(59, 'sahak.avatar/console', '{param}', '/admin/console/backend/h-f/settings-edit-theme/{param}/{param}', 'admin.console.backend.h-f.settings-edit-theme.{param}.{param}', '', '5996e84aee513', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 52, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(60, 'sahak.avatar/console', 'layouts', '/admin/console/backend/layouts', 'admin.console.backend.layouts', '', '5996e84af2cec', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:50', '2017-08-18 09:14:50'),
(61, 'sahak.avatar/console', 'main-body', '/admin/console/backend/main-body', 'admin.console.backend.main-body', '', '5996e84b03141', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(62, 'sahak.avatar/console', 'units', '/admin/console/backend/units', 'admin.console.backend.units', '', '5996e84b076fb', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(63, 'sahak.avatar/console', '{param}', '/admin/console/backend/units/settings/{param}', 'admin.console.backend.units.settings.{param}', '', '5996e84b0bc31', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 62, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(64, 'sahak.avatar/console', '{param}', '/admin/console/backend/units/settings-iframe/{param}/{param}', 'admin.console.backend.units.settings-iframe.{param}.{param}', '', '5996e84b10432', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 62, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(65, 'sahak.avatar/console', 'general-fields', '/admin/console/backend/general-fields', 'admin.console.backend.general-fields', '', '5996e84b14bcc', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(66, 'sahak.avatar/console', '{param}', '/admin/console/backend/general-fields/settings/{param}', 'admin.console.backend.general-fields.settings.{param}', '', '5996e84b19392', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 65, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(67, 'sahak.avatar/console', '{param}', '/admin/console/backend/general-fields/settings-iframe/{param}/{param}', 'admin.console.backend.general-fields.settings-iframe.{param}.{param}', '', '5996e84b1e6da', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 65, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(68, 'sahak.avatar/console', 'special-fields', '/admin/console/backend/special-fields', 'admin.console.backend.special-fields', '', '5996e84b24624', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(69, 'sahak.avatar/console', 'sections', '/admin/console/backend/sections', 'admin.console.backend.sections', '', '5996e84b28dc1', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(70, 'sahak.avatar/console', '{param}', '/admin/console/backend/sections/settings/{param}', 'admin.console.backend.sections.settings.{param}', '', '5996e84b2d6c4', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 69, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(71, 'sahak.avatar/console', '{param}', '/admin/console/backend/sections/settings-iframe/{param}/{param}', 'admin.console.backend.sections.settings-iframe.{param}.{param}', '', '5996e84b31d00', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 69, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(72, 'sahak.avatar/console', 'templates', '/admin/console/backend/templates', 'admin.console.backend.templates', '', '5996e84b36c4b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(73, 'sahak.avatar/console', '{param}', '/admin/console/backend/templates/settings/{param}', 'admin.console.backend.templates.settings.{param}', '', '5996e84b3b95d', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 72, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(74, 'sahak.avatar/console', '{param}', '/admin/console/backend/templates/settings-iframe/{param}/{param}', 'admin.console.backend.templates.settings-iframe.{param}.{param}', '', '5996e84b3ff34', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 72, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(75, 'sahak.avatar/console', 'theme', '/admin/console/backend/theme', 'admin.console.backend.theme', '', '5996e84b449cd', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(76, 'sahak.avatar/console', '{param}', '/admin/console/backend/theme/settings/{param}', 'admin.console.backend.theme.settings.{param}', '', '5996e84b48e4c', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 75, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(77, 'sahak.avatar/console', '{param}', '/admin/console/modules/{param}', 'admin.console.modules.{param}', '', '5996e84b4d8e4', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 19, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(78, 'sahak.avatar/console', 'general', '/admin/console/modules/{param}/general', 'admin.console.modules.{param}.general', '', '5996e84b525db', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(79, 'sahak.avatar/console', 'gears', '/admin/console/modules/{param}/gears', 'admin.console.modules.{param}.gears', '', '5996e84b56df2', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(80, 'sahak.avatar/console', 'assets', '/admin/console/modules/{param}/assets', 'admin.console.modules.{param}.assets', '', '5996e84b5b88e', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(81, 'sahak.avatar/console', 'permission', '/admin/console/modules/{param}/permission', 'admin.console.modules.{param}.permission', '', '5996e84b60140', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(82, 'sahak.avatar/console', 'code', '/admin/console/modules/{param}/code', 'admin.console.modules.{param}.code', '', '5996e84b64799', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(83, 'sahak.avatar/console', 'tables', '/admin/console/modules/{param}/tables', 'admin.console.modules.{param}.tables', '', '5996e84b68fc7', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(84, 'sahak.avatar/console', 'views', '/admin/console/modules/{param}/views', 'admin.console.modules.{param}.views', '', '5996e84b6d553', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(85, 'sahak.avatar/console', 'build', '/admin/console/modules/{param}/build', 'admin.console.modules.{param}.build', '', '5996e84b71843', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 77, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(86, 'sahak.avatar/console', 'pages', '/admin/console/modules/{param}/build/pages', 'admin.console.modules.{param}.build.pages', '', '5996e84b75f59', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 85, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(87, 'sahak.avatar/console', 'urls', '/admin/console/modules/{param}/build/urls', 'admin.console.modules.{param}.build.urls', '', '5996e84b7a76c', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 85, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(88, 'sahak.avatar/console', 'classify', '/admin/console/modules/{param}/build/classify', 'admin.console.modules.{param}.build.classify', '', '5996e84b7f03a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 85, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(89, 'sahak.avatar/console', 'menus', '/admin/console/modules/{param}/build/menus', 'admin.console.modules.{param}.build.menus', '', '5996e84b83834', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 85, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(90, 'sahak.avatar/console', '{param}', '/admin/console/modules/{param}/build/menus/edit/{param}/{param}', 'admin.console.modules.{param}.build.menus.edit.{param}.{param}', '', '5996e84b87fd7', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 89, 0, NULL, '2017-08-18 09:14:51', '2017-08-18 09:14:51'),
(91, 'sahak.avatar/manage', 'manage', '/admin/manage', 'admin.manage', '', '5996e85661af6', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(92, 'sahak.avatar/manage', 'event', '/admin/manage/event', 'admin.manage.event', '', '5996e85667048', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 91, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(93, 'sahak.avatar/manage', '{param}', '/admin/manage/test/{param}', 'admin.manage.test.{param}', '', '5996e8566b841', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 91, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(94, 'sahak.avatar/manage', '{param}', '/admin/manage/test-unit/{param}', 'admin.manage.test-unit.{param}', '', '5996e8567005c', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 91, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(95, 'sahak.avatar/manage', 'structure', '/admin/manage/structure', 'admin.manage.structure', '', '5996e856748f4', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 91, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(96, 'sahak.avatar/manage', 'system', '/admin/manage/system', 'admin.manage.system', '', '5996e8567a766', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 91, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(97, 'sahak.avatar/manage', 'login-registration', '/admin/manage/system/login-registration', 'admin.manage.system.login-registration', '', '5996e8567ecf1', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 96, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(98, 'sahak.avatar/manage', 'notifications', '/admin/manage/system/notifications', 'admin.manage.system.notifications', '', '5996e85683775', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 96, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(99, 'sahak.avatar/manage', 'url-menger', '/admin/manage/system/url-menger', 'admin.manage.system.url-menger', '', '5996e85687ecf', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 96, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(100, 'sahak.avatar/manage', 'adminemails', '/admin/manage/system/adminemails', 'admin.manage.system.adminemails', '', '5996e8568c823', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 96, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(101, 'sahak.avatar/manage', 'lang', '/admin/manage/system/lang', 'admin.manage.system.lang', '', '5996e85691670', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 96, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(102, 'sahak.avatar/manage', 'api-settings', '/admin/manage/system/api-settings', 'admin.manage.system.api-settings', '', '5996e856974ef', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 96, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(103, 'sahak.avatar/manage', 'general', '/admin/manage/frontend/general', 'admin.manage.frontend.general', '', '5996e8569bcf8', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(104, 'sahak.avatar/manage', 'filters', '/admin/manage/frontend/filters', 'admin.manage.frontend.filters', '', '5996e856a03cf', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(105, 'sahak.avatar/manage', 'pages', '/admin/manage/frontend/pages', 'admin.manage.frontend.pages', '', '5996e856a4b1e', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(106, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/settings/{param}', 'admin.manage.frontend.pages.settings.{param}', '', '5996e856a9345', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(107, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/general/{param}', 'admin.manage.frontend.pages.general.{param}', '', '5996e856ada68', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(108, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/new/{param}', 'admin.manage.frontend.pages.new.{param}', '', '5996e856b2465', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(109, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/page-test-preview/{param}', 'admin.manage.frontend.pages.page-test-preview.{param}', '', '5996e856b8439', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(110, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/preview/{param}/{param}', 'admin.manage.frontend.pages.preview.{param}.{param}', '', '5996e856bcaea', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(111, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/delete/{param}', 'admin.manage.frontend.pages.delete.{param}', '', '5996e856c14a8', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(112, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/template/{param}/{param}', 'admin.manage.frontend.pages.template.{param}.{param}', '', '5996e856c5c4b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(113, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/pages/update/{param}', 'admin.manage.frontend.pages.update.{param}', '', '5996e856caff8', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(114, 'sahak.avatar/manage', 'classify', '/admin/manage/frontend/classify', 'admin.manage.frontend.classify', '', '5996e856cf6fb', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(115, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/classify/delete/{param}', 'admin.manage.frontend.classify.delete.{param}', '', '5996e856d3dfb', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 114, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(116, 'sahak.avatar/manage', 'data', '/admin/manage/frontend/classify/data', 'admin.manage.frontend.classify.data', '', '5996e856d8a86', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 114, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(117, 'sahak.avatar/manage', 'menus', '/admin/manage/frontend/menus', 'admin.manage.frontend.menus', '', '5996e856dcf02', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(118, 'sahak.avatar/manage', 'create', '/admin/manage/frontend/menus/create', 'admin.manage.frontend.menus.create', '', '5996e856e1d6f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 117, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(119, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/menus/update/{param}', 'admin.manage.frontend.menus.update.{param}', '', '5996e856e67ab', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 117, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(120, 'sahak.avatar/manage', 'html', '/admin/manage/frontend/menus/html', 'admin.manage.frontend.menus.html', '', '5996e856eb058', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 117, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(121, 'sahak.avatar/manage', '{param}', '/admin/manage/frontend/menus/delete/{param}', 'admin.manage.frontend.menus.delete.{param}', '', '5996e856ef83f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 117, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(122, 'sahak.avatar/manage', 'data', '/admin/manage/frontend/menus/data', 'admin.manage.frontend.menus.data', '', '5996e856f4020', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 117, 0, NULL, '2017-08-18 09:15:02', '2017-08-18 09:15:02'),
(123, 'sahak.avatar/manage', 'menufile', '/admin/manage/frontend/menus/menufile', 'admin.manage.frontend.menus.menufile', '', '5996e85704563', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 117, 0, NULL, '2017-08-18 09:15:03', '2017-08-18 09:15:03'),
(124, 'sahak.avatar/manage', 'sidebarmenus', '/admin/manage/frontend/menus/sidebarmenus', 'admin.manage.frontend.menus.sidebarmenus', '', '5996e85708d2a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 117, 0, NULL, '2017-08-18 09:15:03', '2017-08-18 09:15:03'),
(125, 'sahak.avatar/uploads', 'uploads', '/admin/uploads', 'admin.uploads', '', '5996e8841ad2f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(126, 'sahak.avatar/uploads', 'optimisation', '/admin/uploads/optimisation', 'admin.uploads.optimisation', '', '5996e88420be8', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 125, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(127, 'sahak.avatar/uploads', 'assets', '/admin/uploads/assets', 'admin.uploads.assets', '', '5996e884257bc', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 125, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(128, 'sahak.avatar/uploads', 'profiles', '/admin/uploads/assets/profiles', 'admin.uploads.assets.profiles', '', '5996e8842a121', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 127, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(129, 'sahak.avatar/uploads', '{param}', '/admin/uploads/assets/profiles/edit/{param}', 'admin.uploads.assets.profiles.edit.{param}', '', '5996e8842e5b6', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(130, 'sahak.avatar/uploads', '{param}', '/admin/uploads/assets/profiles/edit/{param}/style_preview/{param}', 'admin.uploads.assets.profiles.edit.{param}.style_preview.{param}', '', '5996e88432c6d', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 129, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(131, 'sahak.avatar/uploads', 'files', '/admin/uploads/assets/files', 'admin.uploads.assets.files', '', '5996e884371da', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 127, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(132, 'sahak.avatar/uploads', 'styles', '/admin/uploads/assets/styles', 'admin.uploads.assets.styles', '', '5996e8843bc45', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 127, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(133, 'sahak.avatar/uploads', 'optimize', '/admin/uploads/assets/styles/optimize', 'admin.uploads.assets.styles.optimize', '', '5996e88440b6b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 132, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(134, 'sahak.avatar/uploads', '{param}', '/admin/uploads/assets/styles/create-sub/{param}', 'admin.uploads.assets.styles.create-sub.{param}', '', '5996e884453a9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 132, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(135, 'sahak.avatar/uploads', '{param}', '/admin/uploads/assets/styles/delete/{param}', 'admin.uploads.assets.styles.delete.{param}', '', '5996e88449c79', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 132, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(136, 'sahak.avatar/uploads', '{param}', '/admin/uploads/assets/styles/make-default/{param}/{param}', 'admin.uploads.assets.styles.make-default.{param}.{param}', '', '5996e8844e9b2', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 132, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(137, 'sahak.avatar/uploads', '{param}', '/admin/uploads/assets/styles/style_preview/{param}/{param}', 'admin.uploads.assets.styles.style_preview.{param}.{param}', '', '5996e88452fee', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 132, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(138, 'sahak.avatar/uploads', 'modules', '/admin/uploads/modules', 'admin.uploads.modules', '', '5996e88457919', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 125, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(139, 'sahak.avatar/uploads', 'test', '/admin/uploads/modules/test', 'admin.uploads.modules.test', '', '5996e8845c8d2', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 138, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(140, 'sahak.avatar/uploads', 'units', '/admin/uploads/units', 'admin.uploads.units', '', '5996e88464a1f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 125, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(141, 'sahak.avatar/uploads', 'backend', '/admin/uploads/units/backend', 'admin.uploads.units.backend', '', '5996e88469121', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 140, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(142, 'sahak.avatar/uploads', 'frontend', '/admin/uploads/units/frontend', 'admin.uploads.units.frontend', '', '5996e8846d872', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 140, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(143, 'sahak.avatar/uploads', '{param}', '/admin/uploads/units/units-variations/{param}', 'admin.uploads.units.units-variations.{param}', '', '5996e88472401', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 140, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(144, 'sahak.avatar/uploads', '{param}', '/admin/uploads/units/delete-variation/{param}', 'admin.uploads.units.delete-variation.{param}', '', '5996e88476c3d', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 140, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(145, 'sahak.avatar/uploads', '{param}', '/admin/uploads/units/live-settings/{param}', 'admin.uploads.units.live-settings.{param}', '', '5996e8847b3b7', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 140, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(146, 'sahak.avatar/uploads', '{param}', '/admin/uploads/units/make-default/{param}', 'admin.uploads.units.make-default.{param}', '', '5996e8847f9e1', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 140, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(147, 'sahak.avatar/uploads', '{param}', '/admin/uploads/units/make-default-variation/{param}', 'admin.uploads.units.make-default-variation.{param}', '', '5996e88484135', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 140, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(148, 'sahak.avatar/uploads', 'gears', '/admin/uploads/gears', 'admin.uploads.gears', '', '5996e88488f77', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 125, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(149, 'sahak.avatar/uploads', 'h-f', '/admin/uploads/gears/h-f', 'admin.uploads.gears.h-f', '', '5996e8848d8f9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(150, 'sahak.avatar/uploads', 'front-themes', '/admin/uploads/gears/h-f/front-themes', 'admin.uploads.gears.h-f.front-themes', '', '5996e884921b9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 149, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(151, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/h-f/front-themes-activate/{param}', 'admin.uploads.gears.h-f.front-themes-activate.{param}', '', '5996e88496da3', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 149, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(152, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/h-f/tpl-variations/{param}', 'admin.uploads.gears.h-f.tpl-variations.{param}', '', '5996e8849b42c', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 149, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(153, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/h-f/settings/{param}', 'admin.uploads.gears.h-f.settings.{param}', '', '5996e8849fcdf', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 149, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(154, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/h-f/settings-iframe/{param}/{param}/{param}', 'admin.uploads.gears.h-f.settings-iframe.{param}.{param}.{param}', '', '5996e884a439f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 149, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(155, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/h-f/settings-edit-theme/{param}/{param}', 'admin.uploads.gears.h-f.settings-edit-theme.{param}.{param}', '', '5996e884a8cae', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 149, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(156, 'sahak.avatar/uploads', 'page-sections', '/admin/uploads/gears/page-sections', 'admin.uploads.gears.page-sections', '', '5996e884ad37b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(157, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/page-sections/settings/{param}', 'admin.uploads.gears.page-sections.settings.{param}', '', '5996e884b2084', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 156, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(158, 'sahak.avatar/uploads', 'sections', '/admin/uploads/gears/sections', 'admin.uploads.gears.sections', '', '5996e884b6a34', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(159, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/sections/settings/{param}', 'admin.uploads.gears.sections.settings.{param}', '', '5996e884bb957', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 158, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(160, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/sections/settings-iframe/{param}/{param}', 'admin.uploads.gears.sections.settings-iframe.{param}.{param}', '', '5996e884bff32', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 158, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(161, 'sahak.avatar/uploads', 'units', '/admin/uploads/gears/units', 'admin.uploads.gears.units', '', '5996e884c467a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(162, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/units/test/{param}', 'admin.uploads.gears.units.test.{param}', '', '5996e884c92cb', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 161, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(163, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/units/settings/{param}', 'admin.uploads.gears.units.settings.{param}', '', '5996e884cdad0', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 161, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(164, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/units/settings-iframe/{param}/{param}', 'admin.uploads.gears.units.settings-iframe.{param}.{param}', '', '5996e884d27e2', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 161, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(165, 'sahak.avatar/uploads', 'component', '/admin/uploads/gears/component', 'admin.uploads.gears.component', '', '5996e884d71ac', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(166, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/component/test/{param}', 'admin.uploads.gears.component.test.{param}', '', '5996e884dbdc8', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 165, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(167, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/component/settings/{param}', 'admin.uploads.gears.component.settings.{param}', '', '5996e884e0649', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 165, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(168, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/component/settings-iframe/{param}/{param}', 'admin.uploads.gears.component.settings-iframe.{param}.{param}', '', '5996e884e54d9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 165, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(169, 'sahak.avatar/uploads', 'main-body', '/admin/uploads/gears/main-body', 'admin.uploads.gears.main-body', '', '5996e884e9f66', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:48', '2017-08-18 09:15:48'),
(170, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/main-body/settings/{param}', 'admin.uploads.gears.main-body.settings.{param}', '', '5996e88501908', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 169, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(171, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/main-body/settings-iframe/{param}/{param}', 'admin.uploads.gears.main-body.settings-iframe.{param}.{param}', '', '5996e885062f9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 169, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(172, 'sahak.avatar/uploads', 'layouts', '/admin/uploads/gears/layouts', 'admin.uploads.gears.layouts', '', '5996e8850acf6', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(173, 'sahak.avatar/uploads', 'back-end', '/admin/uploads/gears/back-end', 'admin.uploads.gears.back-end', '', '5996e8850f83e', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(174, 'sahak.avatar/uploads', 'front-end', '/admin/uploads/gears/front-end', 'admin.uploads.gears.front-end', '', '5996e8851435a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(175, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/gears-variations/{param}', 'admin.uploads.gears.gears-variations.{param}', '', '5996e88518f62', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(176, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/settings/{param}', 'admin.uploads.gears.settings.{param}', '', '5996e8851d66d', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(177, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/settings-live/{param}', 'admin.uploads.gears.settings-live.{param}', '', '5996e88521e6a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(178, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/settings-iframe/{param}/{param}', 'admin.uploads.gears.settings-iframe.{param}.{param}', '', '5996e8853693d', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(179, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/delete-variation/{param}', 'admin.uploads.gears.delete-variation.{param}', '', '5996e885422c2', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(180, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/make-default/{param}', 'admin.uploads.gears.make-default.{param}', '', '5996e88548bb0', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(181, 'sahak.avatar/uploads', '{param}', '/admin/uploads/gears/make-default-variation/{param}', 'admin.uploads.gears.make-default-variation.{param}', '', '5996e8854dc7f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 148, 0, NULL, '2017-08-18 09:15:49', '2017-08-18 09:15:49'),
(334, 'sahak.avatar/user', 'users', '/admin/users', 'admin.users', '', '599a8da765aa5', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(335, 'sahak.avatar/user', 'create', '/admin/users/create', 'admin.users.create', '', '599a8da7696a9', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(336, 'sahak.avatar/user', 'edit', '/admin/users/edit/{param}', 'admin.users.edit.{param}', '', '599a8da76c726', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(337, 'sahak.avatar/user', 'show', '/admin/users/show/{param}', 'admin.users.show.{param}', '', '599a8da76f621', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(338, 'sahak.avatar/user', 'settings', '/admin/users/settings', 'admin.users.settings', '', '599a8da7721cf', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(339, 'sahak.avatar/user', 'profile', '/admin/users/profile', 'admin.users.profile', '', '599a8da775085', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(340, 'sahak.avatar/user', 'registration', '/admin/users/registration', 'admin.users.registration', '', '599a8da777b32', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(341, 'sahak.avatar/user', 'admins', '/admin/users/admins', 'admin.users.admins', '', '599a8da77a4e3', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(342, 'sahak.avatar/user', 'create', '/admin/users/admins/create', 'admin.users.admins.create', '', '599a8da77d51b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 341, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(343, 'sahak.avatar/user', 'edit', '/admin/users/admins/edit/{param}', 'admin.users.admins.edit.{param}', '', '599a8da7801dc', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 341, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(344, 'sahak.avatar/user', 'memberships', '/admin/users/memberships', 'admin.users.memberships', '', '599a8da783186', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(345, 'sahak.avatar/user', 'create', '/admin/users/memberships/create', 'admin.users.memberships.create', '', '599a8da78636f', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 344, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(346, 'sahak.avatar/user', 'edit', '/admin/users/memberships/edit/{param}', 'admin.users.memberships.edit.{param}', '', '599a8da789197', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 344, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(347, 'sahak.avatar/user', 'permissions', '/admin/users/memberships/permissions/{param}', 'admin.users.memberships.permissions.{param}', '', '599a8da78c048', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 344, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(348, 'sahak.avatar/user', 'roles', '/admin/users/roles', 'admin.users.roles', '', '599a8da791930', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(349, 'sahak.avatar/user', 'create', '/admin/users/roles/create', 'admin.users.roles.create', '', '599a8da79477a', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 348, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(350, 'sahak.avatar/user', 'edit', '/admin/users/roles/edit/{param}', 'admin.users.roles.edit.{param}', '', '599a8da797320', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 348, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(351, 'sahak.avatar/user', 'permissions', '/admin/users/roles/permissions/{param}', 'admin.users.roles.permissions.{param}', '', '599a8da799fa4', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 348, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(352, 'sahak.avatar/user', 'statuses', '/admin/users/statuses', 'admin.users.statuses', '', '599a8da79ce29', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(353, 'sahak.avatar/user', 'create', '/admin/users/statuses/create', 'admin.users.statuses.create', '', '599a8da7a2b4b', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 352, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11');
INSERT INTO `admin_pages` (`id`, `module_id`, `title`, `url`, `permission`, `redirect_to`, `slug`, `layout_id`, `content_type`, `main_content`, `header`, `footer`, `page_icon`, `child_status`, `parent_id`, `is_default`, `settings`, `created_at`, `updated_at`) VALUES
(354, 'sahak.avatar/user', 'edit', '/admin/users/statuses/edit/{param}', 'admin.users.statuses.edit.{param}', '', '599a8da7a5c31', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 352, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(355, 'sahak.avatar/user', 'conditions', '/admin/users/conditions', 'admin.users.conditions', '', '599a8da7a8949', 'default_page_section.main_v', 0, NULL, 1, 1, NULL, 'individual', 334, 0, NULL, '2017-08-21 03:37:11', '2017-08-21 03:37:11'),
(402, 'sahak.avatar/framework', 'framework', '/admin/framework', 'admin.framework', '', '59a5b2e888ff0', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-08-29 14:31:04', '2017-08-29 14:31:04'),
(403, 'sahak.avatar/framework', 'settings', '/admin/framework/settings', 'admin.framework.settings', '', '59a5b2e89cf5a', NULL, 0, NULL, 1, 1, NULL, 'individual', 402, 0, NULL, '2017-08-29 14:31:04', '2017-08-29 14:31:04'),
(404, 'sahak.avatar/framework', 'frontend', '/admin/framework/settings/frontend', 'admin.framework.settings.frontend', '', '59a5b2e8a3272', NULL, 0, NULL, 1, 1, NULL, 'individual', 403, 0, NULL, '2017-08-29 14:31:04', '2017-08-29 14:31:04'),
(405, 'sahak.avatar/framework', 'assets', '/admin/framework/assets', 'admin.framework.assets', '', '59a5bde263609', NULL, 0, NULL, 1, 1, NULL, 'individual', 402, 0, NULL, '2017-08-29 17:17:54', '2017-08-29 17:17:54'),
(406, 'sahak.avatar/framework', 'main-js', '/admin/framework/main-js', 'admin.framework.main-js', '', '59ad0131ccf88', NULL, 0, NULL, 1, 1, NULL, 'individual', 402, 0, NULL, '2017-09-04 05:30:57', '2017-09-04 05:30:57'),
(407, 'sahak.avatar/framework', 'profiles', '/admin/framework/profiles', 'admin.framework.profiles', '', '59ae951d77a0b', NULL, 0, NULL, 1, 1, NULL, 'individual', 402, 0, NULL, '2017-09-05 10:14:21', '2017-09-05 10:14:21'),
(408, 'sahak.avatar/framework', 'js', '/admin/framework/js', 'admin.framework.js', '', '59ae951d83949', NULL, 0, NULL, 1, 1, NULL, 'individual', 402, 0, NULL, '2017-09-05 10:14:21', '2017-09-05 10:14:21'),
(409, 'sahak.avatar/framework', 'css', '/admin/framework/css', 'admin.framework.css', '', '59ae951d86b6b', NULL, 0, NULL, 1, 1, NULL, 'individual', 402, 0, NULL, '2017-09-05 10:14:21', '2017-09-05 10:14:21'),
(410, 'sahak.avatar/framework', 'fonts', '/admin/framework/fonts', 'admin.framework.fonts', '', '59ae951d89d51', NULL, 0, NULL, 1, 1, NULL, 'individual', 402, 0, NULL, '2017-09-05 10:14:21', '2017-09-05 10:14:21'),
(411, 'sahak.avatar/uploads', 'variations', '/admin/uploads/gears/page-sections/variations/{param}', 'admin.uploads.gears.page-sections.variations.{param}', '', '59c1160950414', NULL, 0, NULL, 1, 1, NULL, 'individual', 156, 0, NULL, '2017-09-19 11:05:13', '2017-09-19 11:05:13'),
(412, 'sahak.avatar/uploads', 'aaa', '/admin/uploads/assets/aaa', 'admin.uploads.assets.aaa', '', '59c116095d14a', NULL, 0, NULL, 1, 1, NULL, 'individual', 127, 0, NULL, '2017-09-19 11:05:13', '2017-09-19 11:05:13'),
(413, 'sahak.avatar/manage', 'form-test', '/admin/manage/system/form-test', 'admin.manage.system.form-test', '', '59cde78cdb4d7', NULL, 0, NULL, 1, 1, NULL, 'individual', 96, 0, NULL, '2017-09-29 04:26:20', '2017-09-29 04:26:20'),
(414, 'sahak.avatar/manage', 'hooks', '/admin/manage/frontend/hooks', 'admin.manage.frontend.hooks', '', '59cde78ce694b', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-09-29 04:26:20', '2017-09-29 04:26:20'),
(415, 'sahak.avatar/manage', 'live', '/admin/manage/frontend/pages/live/{param}', 'admin.manage.frontend.pages.live.{param}', '', '59cde78ceaac2', NULL, 0, NULL, 1, 1, NULL, 'individual', 105, 0, NULL, '2017-09-29 04:26:20', '2017-09-29 04:26:20'),
(416, 'sahak.avatar/avatar', 'menus', '/admin/menus', 'admin.menus', '', '59ce311c6d4b4', NULL, 0, NULL, 1, 1, NULL, 'individual', 1, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(417, 'sahak.avatar/avatar', 'notes', '/admin/notes', 'admin.notes', '', '59ce311c74557', NULL, 0, NULL, 1, 1, NULL, 'individual', 1, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(418, 'sahak.avatar/avatar', 'functions', '/admin/functions', 'admin.functions', '', '59ce311c779e4', NULL, 0, NULL, 1, 1, NULL, 'individual', 1, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(419, 'sahak.avatar/avatar', 'templates', '/admin/templates', 'admin.templates', '', '59ce311c9f1fe', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(420, 'sahak.avatar/avatar', 'front-themes', '/admin/templates/front-themes', 'admin.templates.front-themes', '', '59ce311ca07f1', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(421, 'sahak.avatar/avatar', 'front-themes-activate', '/admin/templates/front-themes-activate/{param}', 'admin.templates.front-themes-activate.{param}', '', '59ce311ca297a', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(422, 'sahak.avatar/avatar', 'tpl-variations', '/admin/templates/tpl-variations/{param}', 'admin.templates.tpl-variations.{param}', '', '59ce311ca4ab4', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(423, 'sahak.avatar/avatar', 'delete-variation', '/admin/templates/delete-variation/{param}', 'admin.templates.delete-variation.{param}', '', '59ce311ca6aec', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(424, 'sahak.avatar/avatar', 'settings-live', '/admin/templates/settings-live/{param}', 'admin.templates.settings-live.{param}', '', '59ce311ca8b97', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(425, 'sahak.avatar/avatar', '{param}', '/admin/templates/settings-iframe/{param}/{param}/{param}', 'admin.templates.settings-iframe.{param}.{param}.{param}', '', '59ce311caada0', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(426, 'sahak.avatar/avatar', '{param}', '/admin/templates/settings-edit-theme/{param}/{param}', 'admin.templates.settings-edit-theme.{param}.{param}', '', '59ce311cacdff', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(427, 'sahak.avatar/avatar', 'settings-live-layout', '/admin/templates/settings-live-layout/{param}', 'admin.templates.settings-live-layout.{param}', '', '59ce311cbc93e', NULL, 0, NULL, 1, 1, NULL, 'individual', 419, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(428, 'sahak.avatar/avatar', 'gears', '/admin/modules/gears', 'admin.modules.gears', '', '59ce311ccb737', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(429, 'sahak.avatar/avatar', 'frontend-end', '/admin/modules/gears/frontend-end', 'admin.modules.gears.frontend-end', '', '59ce311ccd312', NULL, 0, NULL, 1, 1, NULL, 'individual', 428, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(430, 'sahak.avatar/avatar', 'back-end', '/admin/modules/gears/back-end', 'admin.modules.gears.back-end', '', '59ce311ccf3a6', NULL, 0, NULL, 1, 1, NULL, 'individual', 428, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(431, 'sahak.avatar/avatar', 'modules', '/admin/modules', 'admin.modules', '', '59ce311cd19ee', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(432, 'sahak.avatar/avatar', 'optimisation', '/admin/modules/optimisation', 'admin.modules.optimisation', '', '59ce311cd36d6', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(433, 'sahak.avatar/avatar', 'generate', '/admin/modules/generate', 'admin.modules.generate', '', '59ce311cd566f', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(434, 'sahak.avatar/avatar', 'tables', '/admin/modules/tables', 'admin.modules.tables', '', '59ce311cd76c0', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(435, 'sahak.avatar/avatar', 'edit', '/admin/modules/tables/edit/{param}', 'admin.modules.tables.edit.{param}', '', '59ce311cd981c', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(436, 'sahak.avatar/avatar', 'add-column', '/admin/modules/tables/add-column/{param}', 'admin.modules.tables.add-column.{param}', '', '59ce311cdb897', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(437, 'sahak.avatar/avatar', '{param}', '/admin/modules/tables/edit-column/{param}/{param}', 'admin.modules.tables.edit-column.{param}.{param}', '', '59ce311cdd8e7', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(438, 'sahak.avatar/avatar', '{param}', '/admin/modules/tables/delete-column/{param}/{param}', 'admin.modules.tables.delete-column.{param}.{param}', '', '59ce311cdf8ce', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(439, 'sahak.avatar/avatar', '{param}', '/admin/modules/tables/render-column-field/{param}/{param}', 'admin.modules.tables.render-column-field.{param}.{param}', '', '59ce311ce1a59', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(440, 'sahak.avatar/avatar', '{param}', '/admin/modules/tables/column-field-iframe/{param}/{param}', 'admin.modules.tables.column-field-iframe.{param}.{param}', '', '59ce311ce3aa3', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(441, 'sahak.avatar/avatar', '{param}', '/admin/modules/tables/column-field-search-iframe/{param}/{param}', 'admin.modules.tables.column-field-search-iframe.{param}.{param}', '', '59ce311ce5d44', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(442, 'sahak.avatar/avatar', 'table-names', '/admin/modules/tables/table-names', 'admin.modules.tables.table-names', '', '59ce311ce7c00', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(443, 'sahak.avatar/avatar', 'optimize', '/admin/modules/tables/optimize', 'admin.modules.tables.optimize', '', '59ce311ce9da3', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(444, 'sahak.avatar/avatar', 'create', '/admin/modules/tables/create', 'admin.modules.tables.create', '', '59ce311cebec9', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(445, 'sahak.avatar/avatar', '{param}', '/admin/modules/tables/fields/{param}/{param}', 'admin.modules.tables.fields.{param}.{param}', '', '59ce311cedf08', NULL, 0, NULL, 1, 1, NULL, 'individual', 434, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(446, 'sahak.avatar/avatar', 'backend-theme', '/admin/modules/backend-theme', 'admin.modules.backend-theme', '', '59ce311cf0ad5', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(447, 'sahak.avatar/avatar', 'forms', '/admin/modules/forms', 'admin.modules.forms', '', '59ce311cf3bcd', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:12', '2017-09-29 09:40:12'),
(448, 'sahak.avatar/avatar', 'menus', '/admin/modules/menus', 'admin.modules.menus', '', '59ce311d01eee', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(449, 'sahak.avatar/avatar', 'list', '/admin/modules/pages/list', 'admin.modules.pages.list', '', '59ce311d08cea', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(450, 'sahak.avatar/avatar', 'render', '/admin/modules/forms/render/{param}', 'admin.modules.forms.render.{param}', '', '59ce311d0c307', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(451, 'sahak.avatar/avatar', 'create', '/admin/modules/forms/create', 'admin.modules.forms.create', '', '59ce311d0e349', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(452, 'sahak.avatar/avatar', 'theme', '/admin/modules/theme', 'admin.modules.theme', '', '59ce311d10491', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(453, 'sahak.avatar/avatar', 'front-themes-activate', '/admin/modules/theme/front-themes-activate/{param}', 'admin.modules.theme.front-themes-activate.{param}', '', '59ce311d12503', NULL, 0, NULL, 1, 1, NULL, 'individual', 452, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(454, 'sahak.avatar/avatar', 'variations', '/admin/modules/theme/variations/{param}', 'admin.modules.theme.variations.{param}', '', '59ce311d14578', NULL, 0, NULL, 1, 1, NULL, 'individual', 452, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(455, 'sahak.avatar/avatar', 'settings-live-layout', '/admin/modules/theme/settings-live-layout/{param}', 'admin.modules.theme.settings-live-layout.{param}', '', '59ce311d1680a', NULL, 0, NULL, 1, 1, NULL, 'individual', 452, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(456, 'sahak.avatar/avatar', 'settings-iframe-layout', '/admin/modules/theme/settings-iframe-layout/{param}', 'admin.modules.theme.settings-iframe-layout.{param}', '', '59ce311d186a0', NULL, 0, NULL, 1, 1, NULL, 'individual', 452, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(457, 'sahak.avatar/avatar', 'avatar', '/admin/avatar', 'admin.avatar', '', '59ce311d1d178', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(458, 'sahak.avatar/avatar', 'composer', '/admin/avatar/composer', 'admin.avatar.composer', '', '59ce311d203ee', NULL, 0, NULL, 1, 1, NULL, 'individual', 457, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(459, 'sahak.avatar/avatar', 'modules', '/admin/avatar/modules', 'admin.avatar.modules', '', '59ce311d229b1', NULL, 0, NULL, 1, 1, NULL, 'individual', 457, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(460, 'sahak.avatar/avatar', 'explore', '/admin/avatar/modules/{param}/{param}/explore', 'admin.avatar.modules.{param}.{param}.explore', '', '59ce311d24b54', NULL, 0, NULL, 1, 1, NULL, 'individual', 459, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(461, 'sahak.avatar/avatar', 'plugins', '/admin/avatar/plugins', 'admin.avatar.plugins', '', '59ce311d26ac6', NULL, 0, NULL, 1, 1, NULL, 'individual', 457, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(462, 'sahak.avatar/avatar', 'explore', '/admin/avatar/plugins/{param}/{param}/explore', 'admin.avatar.plugins.{param}.{param}.explore', '', '59ce311d28cc1', NULL, 0, NULL, 1, 1, NULL, 'individual', 461, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(463, 'sahak.avatar/avatar', 'market', '/admin/avatar/market', 'admin.avatar.market', '', '59ce311d2ac17', NULL, 0, NULL, 1, 1, NULL, 'individual', 457, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(464, 'sahak.avatar/avatar', 'testview', '/admin/modules/testview', 'admin.modules.testview', '', '59ce311dbb46f', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(465, 'sahak.avatar/avatar', 'view', '/admin/modules/view/{param}', 'admin.modules.view.{param}', '', '59ce311dbf5c3', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(466, 'sahak.avatar/avatar', 'extra', '/admin/modules/extra/{param}', 'admin.modules.extra.{param}', '', '59ce311dc0e56', NULL, 0, NULL, 1, 1, NULL, 'individual', 431, 0, NULL, '2017-09-29 09:40:13', '2017-09-29 09:40:13'),
(467, 'sahak.avatar/provaldation', 'auto-validator', '/admin/auto-validator', 'admin.auto-validator', '', '59cf2d09d1245', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(468, 'sahak.avatar/provaldation', 'validator.js', '/admin/auto-validator/validator.js', 'admin.auto-validator.validator.js', '', '59cf2d09dc96b', NULL, 0, NULL, 1, 1, NULL, 'individual', 467, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(469, 'sahak.avatar/provaldation', 'lists', '/admin/auto-validator/lists', 'admin.auto-validator.lists', '', '59cf2d09e0117', NULL, 0, NULL, 1, 1, NULL, 'individual', 467, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(470, 'sahak.avatar/provaldation', 'create-validation', '/admin/auto-validator/create-validation', 'admin.auto-validator.create-validation', '', '59cf2d09e28c5', NULL, 0, NULL, 1, 1, NULL, 'individual', 467, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(471, 'sahak.avatar/provaldation', 'settings', '/admin/auto-validator/settings', 'admin.auto-validator.settings', '', '59cf2d09e492b', NULL, 0, NULL, 1, 1, NULL, 'individual', 467, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(472, 'sahak.avatar/provaldation', 'copy', '/admin/auto-validator/copy', 'admin.auto-validator.copy', '', '59cf2d09e69af', NULL, 0, NULL, 1, 1, NULL, 'individual', 467, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(473, 'sahak.avatar/provaldation', 'lists', '/admin/auto-validator/copy/lists', 'admin.auto-validator.copy.lists', '', '59cf2d09e8b49', NULL, 0, NULL, 1, 1, NULL, 'individual', 472, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(474, 'sahak.avatar/provaldation', 'create-validation', '/admin/auto-validator/copy/create-validation', 'admin.auto-validator.copy.create-validation', '', '59cf2d09eab7d', NULL, 0, NULL, 1, 1, NULL, 'individual', 472, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(475, 'sahak.avatar/provaldation', 'settings', '/admin/auto-validator/copy/settings', 'admin.auto-validator.copy.settings', '', '59cf2d09ecc88', NULL, 0, NULL, 1, 1, NULL, 'individual', 472, 0, NULL, '2017-09-30 03:35:05', '2017-09-30 03:35:05'),
(476, 'sahak.avatar/manage', 'edit', '/admin/manage/frontend/hooks/edit/{param}', 'admin.manage.frontend.hooks.edit.{param}', '', '59cfd94c430de', NULL, 0, NULL, 1, 1, NULL, 'individual', 414, 0, NULL, '2017-09-30 15:50:04', '2017-09-30 15:50:04'),
(477, 'terakyan/blog-hook', 'blog', '/admin/blog', 'admin.blog', '', '59d37386b1a47', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-10-03 09:24:54', '2017-10-03 09:24:54'),
(478, 'terakyan/blog-hook', 'posts', '/admin/blog/posts', 'admin.blog.posts', '', '59d37386ba8f3', NULL, 0, NULL, 1, 1, NULL, 'individual', 477, 0, NULL, '2017-10-03 09:24:54', '2017-10-03 09:24:54'),
(479, 'terakyan/blog-hook', 'new-post', '/admin/blog/new-post', 'admin.blog.new-post', '', '59d37386bcbcd', NULL, 0, NULL, 1, 1, NULL, 'individual', 477, 0, NULL, '2017-10-03 09:24:54', '2017-10-03 09:24:54'),
(480, 'terakyan/blog-hook', 'settings', '/admin/blog/settings', 'admin.blog.settings', '', '59d37386bed14', NULL, 0, NULL, 1, 1, NULL, 'individual', 477, 0, NULL, '2017-10-03 09:24:54', '2017-10-03 09:24:54'),
(481, 'terakyan/blog-hook', 'form-bulder', '/admin/blog/form-bulder', 'admin.blog.form-bulder', '', '59d7cb0520935', NULL, 0, NULL, 1, 1, NULL, 'individual', 477, 0, NULL, '2017-10-06 16:27:17', '2017-10-06 16:27:17'),
(482, 'sahak.avatar/provaldation', 'delete-variation', '/admin/uploads/gears/units/delete-variation/{param}', 'admin.uploads.gears.units.delete-variation.{param}', '', '59e68beb0179b', NULL, 0, NULL, 1, 1, NULL, 'individual', 161, 0, NULL, '2017-10-17 21:02:03', '2017-10-17 21:02:03'),
(483, 'sahak.avatar/provaldation', 'delete-variation', '/admin/uploads/gears/page-sections/delete-variation/{param}', 'admin.uploads.gears.page-sections.delete-variation.{param}', '', '59e753cd84d76', NULL, 0, NULL, 1, 1, NULL, 'individual', 156, 0, NULL, '2017-10-18 11:14:53', '2017-10-18 11:14:53'),
(484, 'sahak.avatar/studios', 'studios', '/admin/studios', 'admin.studios', '', '59f08eb81cc05', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-10-25 11:16:40', '2017-10-25 11:16:40'),
(485, 'sahak.avatar/studios', 'create', '/admin/studios/create', 'admin.studios.create', '', '59f08eb829fd5', NULL, 0, NULL, 1, 1, NULL, 'individual', 484, 0, NULL, '2017-10-25 11:16:40', '2017-10-25 11:16:40'),
(486, 'sahak.avatar/studios', 'classes', '/admin/studios/create/classes/{param}', 'admin.studios.create.classes.{param}', '', '59f08eb82c677', NULL, 0, NULL, 1, 1, NULL, 'individual', 484, 0, NULL, '2017-10-25 11:16:40', '2017-10-25 11:16:40'),
(487, 'sahak.avatar/studios', '{param}', '/admin/studios/{param}/{param}', 'admin.studios.{param}.{param}', '', '59f08eb82e6ee', NULL, 0, NULL, 1, 1, NULL, 'individual', 484, 0, NULL, '2017-10-25 11:16:40', '2017-10-25 11:16:40'),
(488, 'sahak.avatar/studios', 'test', '/admin/studios/test', 'admin.studios.test', '', '59f9b36db0fd5', NULL, 0, NULL, 1, 1, NULL, 'individual', 484, 0, NULL, '2017-11-01 10:43:41', '2017-11-01 10:43:41'),
(489, 'sahak.avatar/provaldation', 'core-packages', '/admin/avatar/core-packages', 'admin.avatar.core-packages', '', '59fa0d4aa2f7b', NULL, 0, NULL, 1, 1, NULL, 'individual', 457, 0, NULL, '2017-11-01 17:07:06', '2017-11-01 17:07:06'),
(490, 'sahak.avatar/provaldation', 'explore', '/admin/avatar/core-packages/{param}/{param}/explore', 'admin.avatar.core-packages.{param}.{param}.explore', '', '59fa0d4aa8346', NULL, 0, NULL, 1, 1, NULL, 'individual', 489, 0, NULL, '2017-11-01 17:07:06', '2017-11-01 17:07:06'),
(491, 'sahak.avatar/provaldation', 'extra-packages', '/admin/avatar/extra-packages', 'admin.avatar.extra-packages', '', '59fa0d4aab50b', NULL, 0, NULL, 1, 1, NULL, 'individual', 457, 0, NULL, '2017-11-01 17:07:06', '2017-11-01 17:07:06'),
(492, 'sahak.avatar/provaldation', 'explore', '/admin/avatar/extra-packages/{param}/{param}/explore', 'admin.avatar.extra-packages.{param}.{param}.explore', '', '59fa0d4aae401', NULL, 0, NULL, 1, 1, NULL, 'individual', 491, 0, NULL, '2017-11-01 17:07:06', '2017-11-01 17:07:06'),
(493, 'sahak.avatar/provaldation', 'apps', '/admin/avatar/apps', 'admin.avatar.apps', '', '59fa0d4ab15ad', NULL, 0, NULL, 1, 1, NULL, 'individual', 457, 0, NULL, '2017-11-01 17:07:06', '2017-11-01 17:07:06'),
(494, 'sahak.avatar/provaldation', 'explore', '/admin/avatar/apps/{param}/{param}/explore', 'admin.avatar.apps.{param}.{param}.explore', '', '59fa0d4ab45f9', NULL, 0, NULL, 1, 1, NULL, 'individual', 493, 0, NULL, '2017-11-01 17:07:06', '2017-11-01 17:07:06'),
(495, 'terakyan/css-maker', 'studio', '/admin/studio', 'admin.studio', '', '59fa22db57d84', NULL, 0, NULL, 1, 1, NULL, 'individual', 0, 0, NULL, '2017-11-01 18:39:07', '2017-11-01 18:39:07'),
(496, 'terakyan/css-maker', 'css-maker', '/admin/studio/css-maker', 'admin.studio.css-maker', '', '59fa22db60a4f', NULL, 0, NULL, 1, 1, NULL, 'individual', 495, 0, NULL, '2017-11-01 18:39:07', '2017-11-01 18:39:07'),
(497, 'sahak.avatar/provaldation', 'settings', '/admin/console/backend/settings', 'admin.console.backend.settings', '', '5a03059e40223', NULL, 0, NULL, 1, 1, NULL, 'individual', 49, 0, NULL, '2017-11-08 12:24:46', '2017-11-08 12:24:46'),
(498, 'terakyan/blog-hook', 'js', '/admin/uploads/assets/js', 'admin.uploads.assets.js', '', '5a0439bf5c749', NULL, 0, NULL, 1, 0, NULL, 'individual', 127, 0, NULL, '2017-11-09 10:19:27', '2017-11-09 10:19:27'),
(499, 'terakyan/blog-hook', 'css', '/admin/uploads/assets/css', 'admin.uploads.assets.css', '', '5a0439bf65b90', NULL, 0, NULL, 1, 0, NULL, 'individual', 127, 0, NULL, '2017-11-09 10:19:27', '2017-11-09 10:19:27'),
(500, 'terakyan/blog-hook', 'fonts', '/admin/uploads/assets/fonts', 'admin.uploads.assets.fonts', '', '5a0439bf6882a', NULL, 0, NULL, 1, 0, NULL, 'individual', 127, 0, NULL, '2017-11-09 10:19:27', '2017-11-09 10:19:27'),
(501, 'terakyan/blog-hook', 'explore', '/admin/uploads/modules/{param}/{param}/explore', 'admin.uploads.modules.{param}.{param}.explore', '', '5a044b2a9b7d9', NULL, 0, NULL, 1, 0, NULL, 'individual', 138, 0, NULL, '2017-11-09 11:33:46', '2017-11-09 11:33:46'),
(502, 'terakyan/blog-hook', 'extra', '/admin/uploads/modules/extra', 'admin.uploads.modules.extra', '', '5a044b2aa8f86', NULL, 0, NULL, 1, 0, NULL, 'individual', 138, 0, NULL, '2017-11-09 11:33:46', '2017-11-09 11:33:46'),
(503, 'terakyan/blog-hook', 'explore', '/admin/uploads/modules/extra/{param}/{param}/explore', 'admin.uploads.modules.extra.{param}.{param}.explore', '', '5a044b2aaba49', NULL, 0, NULL, 1, 0, NULL, 'individual', 502, 0, NULL, '2017-11-09 11:33:46', '2017-11-09 11:33:46'),
(504, 'terakyan/blog-hook', 'apps', '/admin/uploads/apps', 'admin.uploads.apps', '', '5a044b2aad9b6', NULL, 0, NULL, 1, 0, NULL, 'individual', 125, 0, NULL, '2017-11-09 11:33:46', '2017-11-09 11:33:46'),
(505, 'terakyan/blog-hook', 'explore', '/admin/uploads/apps/{param}/{param}/explore', 'admin.uploads.apps.{param}.{param}.explore', '', '5a044b2aafbcb', NULL, 0, NULL, 1, 0, NULL, 'individual', 504, 0, NULL, '2017-11-09 11:33:46', '2017-11-09 11:33:46'),
(506, 'terakyan/blog-hook', 'extra', '/admin/uploads/apps/extra', 'admin.uploads.apps.extra', '', '5a044b2ab1bfb', NULL, 0, NULL, 1, 0, NULL, 'individual', 504, 0, NULL, '2017-11-09 11:33:46', '2017-11-09 11:33:46'),
(507, 'terakyan/blog-hook', 'explore', '/admin/uploads/apps/extra/{param}/{param}/explore', 'admin.uploads.apps.extra.{param}.{param}.explore', '', '5a044b2ab3c10', NULL, 0, NULL, 1, 0, NULL, 'individual', 506, 0, NULL, '2017-11-09 11:33:46', '2017-11-09 11:33:46'),
(508, 'terakyan/blog-hook', 'units-variations', '/admin/uploads/gears/units-variations/{param}', 'admin.uploads.gears.units-variations.{param}', '', '5a0451922c850', NULL, 0, NULL, 1, 0, NULL, 'individual', 148, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(509, 'terakyan/blog-hook', 'live-settings', '/admin/uploads/gears/live-settings/{param}', 'admin.uploads.gears.live-settings.{param}', '', '5a0451923a952', NULL, 0, NULL, 1, 0, NULL, 'individual', 148, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(510, 'terakyan/blog-hook', 'gears1', '/admin/uploads/gears1', 'admin.uploads.gears1', '', '5a0451923e124', NULL, 0, NULL, 1, 0, NULL, 'individual', 125, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(511, 'terakyan/blog-hook', 'page-sections', '/admin/uploads/gears1/page-sections', 'admin.uploads.gears1.page-sections', '', '5a04519240d1c', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(512, 'terakyan/blog-hook', 'settings', '/admin/uploads/gears1/page-sections/settings/{param}', 'admin.uploads.gears1.page-sections.settings.{param}', '', '5a04519243d74', NULL, 0, NULL, 1, 0, NULL, 'individual', 511, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(513, 'terakyan/blog-hook', 'variations', '/admin/uploads/gears1/page-sections/variations/{param}', 'admin.uploads.gears1.page-sections.variations.{param}', '', '5a04519246d74', NULL, 0, NULL, 1, 0, NULL, 'individual', 511, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(514, 'terakyan/blog-hook', 'delete-variation', '/admin/uploads/gears1/page-sections/delete-variation/{param}', 'admin.uploads.gears1.page-sections.delete-variation.{param}', '', '5a04519249ba7', NULL, 0, NULL, 1, 0, NULL, 'individual', 511, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(515, 'terakyan/blog-hook', 'units', '/admin/uploads/gears1/units', 'admin.uploads.gears1.units', '', '5a0451924d057', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(516, 'terakyan/blog-hook', 'delete-variation', '/admin/uploads/gears1/units/delete-variation/{param}', 'admin.uploads.gears1.units.delete-variation.{param}', '', '5a0451924ffeb', NULL, 0, NULL, 1, 0, NULL, 'individual', 515, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(517, 'terakyan/blog-hook', 'test', '/admin/uploads/gears1/units/test/{param}', 'admin.uploads.gears1.units.test.{param}', '', '5a04519253227', NULL, 0, NULL, 1, 0, NULL, 'individual', 515, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(518, 'terakyan/blog-hook', 'settings', '/admin/uploads/gears1/units/settings/{param}', 'admin.uploads.gears1.units.settings.{param}', '', '5a04519256122', NULL, 0, NULL, 1, 0, NULL, 'individual', 515, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(519, 'terakyan/blog-hook', '{param}', '/admin/uploads/gears1/units/settings-iframe/{param}/{param}', 'admin.uploads.gears1.units.settings-iframe.{param}.{param}', '', '5a04519259372', NULL, 0, NULL, 1, 0, NULL, 'individual', 515, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(520, 'terakyan/blog-hook', 'layouts', '/admin/uploads/gears1/layouts', 'admin.uploads.gears1.layouts', '', '5a0451925c326', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(521, 'terakyan/blog-hook', 'back-end', '/admin/uploads/gears1/back-end', 'admin.uploads.gears1.back-end', '', '5a0451925f520', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(522, 'terakyan/blog-hook', 'front-end', '/admin/uploads/gears1/front-end', 'admin.uploads.gears1.front-end', '', '5a0451926246f', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(523, 'terakyan/blog-hook', 'gears-variations', '/admin/uploads/gears1/gears-variations/{param}', 'admin.uploads.gears1.gears-variations.{param}', '', '5a0451926598e', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(524, 'terakyan/blog-hook', 'settings', '/admin/uploads/gears1/settings/{param}', 'admin.uploads.gears1.settings.{param}', '', '5a04519268839', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(525, 'terakyan/blog-hook', 'settings-live', '/admin/uploads/gears1/settings-live/{param}', 'admin.uploads.gears1.settings-live.{param}', '', '5a0451926ba5f', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(526, 'terakyan/blog-hook', '{param}', '/admin/uploads/gears1/settings-iframe/{param}/{param}', 'admin.uploads.gears1.settings-iframe.{param}.{param}', '', '5a0451926e90c', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(527, 'terakyan/blog-hook', 'delete-variation', '/admin/uploads/gears1/delete-variation/{param}', 'admin.uploads.gears1.delete-variation.{param}', '', '5a04519271b01', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(528, 'terakyan/blog-hook', 'make-default', '/admin/uploads/gears1/make-default/{param}', 'admin.uploads.gears1.make-default.{param}', '', '5a04519274a4a', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(529, 'terakyan/blog-hook', 'make-default-variation', '/admin/uploads/gears1/make-default-variation/{param}', 'admin.uploads.gears1.make-default-variation.{param}', '', '5a04519277cad', NULL, 0, NULL, 1, 0, NULL, 'individual', 510, 0, NULL, '2017-11-09 12:01:06', '2017-11-09 12:01:06'),
(530, 'terakyan/blog-hook', 'layouts', '/admin/uploads/layouts', 'admin.uploads.layouts', '', '5a0456f4742e0', NULL, 0, NULL, 1, 0, NULL, 'individual', 125, 0, NULL, '2017-11-09 12:24:04', '2017-11-09 12:24:04'),
(531, 'terakyan/blog-hook', 'front-end', '/admin/uploads/layouts/front-end', 'admin.uploads.layouts.front-end', '', '5a0456f47e410', NULL, 0, NULL, 1, 0, NULL, 'individual', 530, 0, NULL, '2017-11-09 12:24:04', '2017-11-09 12:24:04'),
(532, 'terakyan/blog-hook', 'settings', '/admin/uploads/layouts/settings/{param}', 'admin.uploads.layouts.settings.{param}', '', '5a0456f480e7b', NULL, 0, NULL, 1, 0, NULL, 'individual', 530, 0, NULL, '2017-11-09 12:24:04', '2017-11-09 12:24:04'),
(533, 'terakyan/blog-hook', 'variations', '/admin/uploads/layouts/variations/{param}', 'admin.uploads.layouts.variations.{param}', '', '5a0456f482f43', NULL, 0, NULL, 1, 0, NULL, 'individual', 530, 0, NULL, '2017-11-09 12:24:04', '2017-11-09 12:24:04'),
(534, 'terakyan/blog-hook', 'delete-variation', '/admin/uploads/layouts/delete-variation/{param}', 'admin.uploads.layouts.delete-variation.{param}', '', '5a0456f485058', NULL, 0, NULL, 1, 0, NULL, 'individual', 530, 0, NULL, '2017-11-09 12:24:04', '2017-11-09 12:24:04'),
(535, 'sahak.avatar/manage', 'front-pages', '/admin/manage/structure/front-pages', 'admin.manage.structure.front-pages', '', '5a04597cd3fee', NULL, 0, NULL, 1, 0, NULL, 'individual', 95, 0, NULL, '2017-11-09 12:34:52', '2017-11-09 12:34:52'),
(536, 'sahak.avatar/manage', 'settings', '/admin/manage/structure/front-pages/settings/{param}', 'admin.manage.structure.front-pages.settings.{param}', '', '5a04597ce457e', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:52', '2017-11-09 12:34:52'),
(537, 'sahak.avatar/manage', 'general', '/admin/manage/structure/front-pages/general/{param}', 'admin.manage.structure.front-pages.general.{param}', '', '5a04597ce7d54', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:52', '2017-11-09 12:34:52'),
(538, 'sahak.avatar/manage', 'new', '/admin/manage/structure/front-pages/new/{param}', 'admin.manage.structure.front-pages.new.{param}', '', '5a04597cea941', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:52', '2017-11-09 12:34:52'),
(539, 'sahak.avatar/manage', 'page-test-preview', '/admin/manage/structure/front-pages/page-test-preview/{param}', 'admin.manage.structure.front-pages.page-test-preview.{param}', '', '5a04597cee6ec', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:52', '2017-11-09 12:34:52'),
(540, 'sahak.avatar/manage', 'live', '/admin/manage/structure/front-pages/live/{param}', 'admin.manage.structure.front-pages.live.{param}', '', '5a04597cf0a3b', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:52', '2017-11-09 12:34:52'),
(541, 'sahak.avatar/manage', '{param}', '/admin/manage/structure/front-pages/preview/{param}/{param}', 'admin.manage.structure.front-pages.preview.{param}.{param}', '', '5a04597cf3f6c', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:52', '2017-11-09 12:34:52'),
(542, 'sahak.avatar/manage', 'delete', '/admin/manage/structure/front-pages/delete/{param}', 'admin.manage.structure.front-pages.delete.{param}', '', '5a04597d029a4', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:53', '2017-11-09 12:34:53'),
(543, 'sahak.avatar/manage', '{param}', '/admin/manage/structure/front-pages/template/{param}/{param}', 'admin.manage.structure.front-pages.template.{param}.{param}', '', '5a04597d08d9c', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:53', '2017-11-09 12:34:53'),
(544, 'sahak.avatar/manage', 'update', '/admin/manage/structure/front-pages/update/{param}', 'admin.manage.structure.front-pages.update.{param}', '', '5a04597d0c075', NULL, 0, NULL, 1, 0, NULL, 'individual', 535, 0, NULL, '2017-11-09 12:34:53', '2017-11-09 12:34:53'),
(545, 'terakyan/blog-hook', 'composer', '/admin/uploads/composer', 'admin.uploads.composer', '', '5a049f30ca450', NULL, 0, NULL, 1, 0, NULL, 'individual', 125, 0, NULL, '2017-11-09 17:32:16', '2017-11-09 17:32:16'),
(546, 'terakyan/blog-hook', 'market', '/admin/uploads/market', 'admin.uploads.market', '', '5a049f30d3d3c', NULL, 0, NULL, 1, 0, NULL, 'individual', 125, 0, NULL, '2017-11-09 17:32:16', '2017-11-09 17:32:16'),
(547, 'sahak.avatar/manage', 'classify', '/admin/manage/structure/classify', 'admin.manage.structure.classify', '', '5a059195536b8', NULL, 0, NULL, 1, 0, NULL, 'individual', 95, 0, NULL, '2017-11-10 07:46:29', '2017-11-10 07:46:29'),
(548, 'sahak.avatar/manage', 'delete', '/admin/manage/structure/classify/delete/{param}', 'admin.manage.structure.classify.delete.{param}', '', '5a0591956ee0c', NULL, 0, NULL, 1, 0, NULL, 'individual', 547, 0, NULL, '2017-11-10 07:46:29', '2017-11-10 07:46:29'),
(549, 'sahak.avatar/manage', 'data', '/admin/manage/structure/classify/data', 'admin.manage.structure.classify.data', '', '5a05919575221', NULL, 0, NULL, 1, 0, NULL, 'individual', 547, 0, NULL, '2017-11-10 07:46:29', '2017-11-10 07:46:29'),
(550, 'sahak.avatar/manage', 'menus', '/admin/manage/structure/menus', 'admin.manage.structure.menus', '', '5a05944cd80a4', NULL, 0, NULL, 1, 0, NULL, 'individual', 95, 0, NULL, '2017-11-10 07:58:04', '2017-11-10 07:58:04'),
(551, 'sahak.avatar/manage', 'create', '/admin/manage/structure/menus/create', 'admin.manage.structure.menus.create', '', '5a05944ce6c86', NULL, 0, NULL, 1, 0, NULL, 'individual', 550, 0, NULL, '2017-11-10 07:58:04', '2017-11-10 07:58:04'),
(552, 'sahak.avatar/manage', 'update', '/admin/manage/structure/menus/update/{param}', 'admin.manage.structure.menus.update.{param}', '', '5a05944ceed0f', NULL, 0, NULL, 1, 0, NULL, 'individual', 550, 0, NULL, '2017-11-10 07:58:04', '2017-11-10 07:58:04'),
(553, 'sahak.avatar/manage', 'html', '/admin/manage/structure/menus/html', 'admin.manage.structure.menus.html', '', '5a05944d0412b', NULL, 0, NULL, 1, 0, NULL, 'individual', 550, 0, NULL, '2017-11-10 07:58:05', '2017-11-10 07:58:05'),
(554, 'sahak.avatar/manage', 'delete', '/admin/manage/structure/menus/delete/{param}', 'admin.manage.structure.menus.delete.{param}', '', '5a05944d0dafe', NULL, 0, NULL, 1, 0, NULL, 'individual', 550, 0, NULL, '2017-11-10 07:58:05', '2017-11-10 07:58:05'),
(555, 'sahak.avatar/manage', 'data', '/admin/manage/structure/menus/data', 'admin.manage.structure.menus.data', '', '5a05944d15ea3', NULL, 0, NULL, 1, 0, NULL, 'individual', 550, 0, NULL, '2017-11-10 07:58:05', '2017-11-10 07:58:05'),
(556, 'sahak.avatar/manage', 'menufile', '/admin/manage/structure/menus/menufile', 'admin.manage.structure.menus.menufile', '', '5a05944d1dcda', NULL, 0, NULL, 1, 0, NULL, 'individual', 550, 0, NULL, '2017-11-10 07:58:05', '2017-11-10 07:58:05'),
(557, 'sahak.avatar/manage', 'sidebarmenus', '/admin/manage/structure/menus/sidebarmenus', 'admin.manage.structure.menus.sidebarmenus', '', '5a05944d26367', NULL, 0, NULL, 1, 0, NULL, 'individual', 550, 0, NULL, '2017-11-10 07:58:05', '2017-11-10 07:58:05'),
(558, 'terakyan/blog-hook', 'settings', '/admin/console/settings', 'admin.console.settings', '', '5a05980f95080', NULL, 0, NULL, 1, 0, NULL, 'individual', 18, 0, NULL, '2017-11-10 08:14:07', '2017-11-10 08:14:07'),
(559, 'terakyan/blog-hook', 'front-site', '/admin/front-site', 'admin.front-site', '', '5a0599412c67a', NULL, 0, NULL, 1, 0, NULL, 'individual', 0, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(560, 'terakyan/blog-hook', 'event', '/admin/front-site/event', 'admin.front-site.event', '', '5a05994137556', NULL, 0, NULL, 1, 0, NULL, 'individual', 559, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(561, 'terakyan/blog-hook', 'test', '/admin/front-site/test/{param}', 'admin.front-site.test.{param}', '', '5a0599413f5f1', NULL, 0, NULL, 1, 0, NULL, 'individual', 559, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(562, 'terakyan/blog-hook', 'test-unit', '/admin/front-site/test-unit/{param}', 'admin.front-site.test-unit.{param}', '', '5a05994148ffb', NULL, 0, NULL, 1, 0, NULL, 'individual', 559, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(563, 'terakyan/blog-hook', 'structure', '/admin/front-site/structure', 'admin.front-site.structure', '', '5a05994153fdb', NULL, 0, NULL, 1, 0, NULL, 'individual', 559, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(564, 'terakyan/blog-hook', 'front-pages', '/admin/front-site/structure/front-pages', 'admin.front-site.structure.front-pages', '', '5a0599415f7fa', NULL, 0, NULL, 1, 0, NULL, 'individual', 563, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(565, 'terakyan/blog-hook', 'settings', '/admin/front-site/structure/front-pages/settings/{param}', 'admin.front-site.structure.front-pages.settings.{param}', '', '5a05994169b3f', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(566, 'terakyan/blog-hook', 'general', '/admin/front-site/structure/front-pages/general/{param}', 'admin.front-site.structure.front-pages.general.{param}', '', '5a059941755eb', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(567, 'terakyan/blog-hook', 'new', '/admin/front-site/structure/front-pages/new/{param}', 'admin.front-site.structure.front-pages.new.{param}', '', '5a0599417fb5e', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(568, 'terakyan/blog-hook', 'page-test-preview', '/admin/front-site/structure/front-pages/page-test-preview/{param}', 'admin.front-site.structure.front-pages.page-test-preview.{param}', '', '5a0599418d48e', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(569, 'terakyan/blog-hook', 'live', '/admin/front-site/structure/front-pages/live/{param}', 'admin.front-site.structure.front-pages.live.{param}', '', '5a0599419955c', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(570, 'terakyan/blog-hook', '{param}', '/admin/front-site/structure/front-pages/preview/{param}/{param}', 'admin.front-site.structure.front-pages.preview.{param}.{param}', '', '5a059941a4477', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(571, 'terakyan/blog-hook', 'delete', '/admin/front-site/structure/front-pages/delete/{param}', 'admin.front-site.structure.front-pages.delete.{param}', '', '5a059941ac953', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(572, 'terakyan/blog-hook', '{param}', '/admin/front-site/structure/front-pages/template/{param}/{param}', 'admin.front-site.structure.front-pages.template.{param}.{param}', '', '5a059941b4d93', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(573, 'terakyan/blog-hook', 'update', '/admin/front-site/structure/front-pages/update/{param}', 'admin.front-site.structure.front-pages.update.{param}', '', '5a059941bcdb9', NULL, 0, NULL, 1, 0, NULL, 'individual', 564, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(574, 'terakyan/blog-hook', 'classify', '/admin/front-site/structure/classify', 'admin.front-site.structure.classify', '', '5a059941c67db', NULL, 0, NULL, 1, 0, NULL, 'individual', 563, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(575, 'terakyan/blog-hook', 'delete', '/admin/front-site/structure/classify/delete/{param}', 'admin.front-site.structure.classify.delete.{param}', '', '5a059941d17de', NULL, 0, NULL, 1, 0, NULL, 'individual', 574, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(576, 'terakyan/blog-hook', 'data', '/admin/front-site/structure/classify/data', 'admin.front-site.structure.classify.data', '', '5a059941dcea6', NULL, 0, NULL, 1, 0, NULL, 'individual', 574, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(577, 'terakyan/blog-hook', 'menus', '/admin/front-site/structure/menus', 'admin.front-site.structure.menus', '', '5a059941ece63', NULL, 0, NULL, 1, 0, NULL, 'individual', 563, 0, NULL, '2017-11-10 08:19:13', '2017-11-10 08:19:13'),
(578, 'terakyan/blog-hook', 'create', '/admin/front-site/structure/menus/create', 'admin.front-site.structure.menus.create', '', '5a05994207078', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(579, 'terakyan/blog-hook', 'update', '/admin/front-site/structure/menus/update/{param}', 'admin.front-site.structure.menus.update.{param}', '', '5a0599420f885', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(580, 'terakyan/blog-hook', 'html', '/admin/front-site/structure/menus/html', 'admin.front-site.structure.menus.html', '', '5a05994221aba', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(581, 'terakyan/blog-hook', 'delete', '/admin/front-site/structure/menus/delete/{param}', 'admin.front-site.structure.menus.delete.{param}', '', '5a059942402b9', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(582, 'terakyan/blog-hook', 'data', '/admin/front-site/structure/menus/data', 'admin.front-site.structure.menus.data', '', '5a0599424819c', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(583, 'terakyan/blog-hook', 'menufile', '/admin/front-site/structure/menus/menufile', 'admin.front-site.structure.menus.menufile', '', '5a05994257dfa', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(584, 'terakyan/blog-hook', 'sidebarmenus', '/admin/front-site/structure/menus/sidebarmenus', 'admin.front-site.structure.menus.sidebarmenus', '', '5a0599426001a', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(585, 'terakyan/blog-hook', 'settings', '/admin/front-site/settings', 'admin.front-site.settings', '', '5a0599426ce11', NULL, 0, NULL, 1, 0, NULL, 'individual', 559, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(586, 'terakyan/blog-hook', 'login-registration', '/admin/front-site/settings/login-registration', 'admin.front-site.settings.login-registration', '', '5a059942814d1', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(587, 'terakyan/blog-hook', 'notifications', '/admin/front-site/settings/notifications', 'admin.front-site.settings.notifications', '', '5a059942947a7', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(588, 'terakyan/blog-hook', 'url-menger', '/admin/front-site/settings/url-menger', 'admin.front-site.settings.url-menger', '', '5a0599429f35c', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(589, 'terakyan/blog-hook', 'adminemails', '/admin/front-site/settings/adminemails', 'admin.front-site.settings.adminemails', '', '5a059942abafb', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(590, 'terakyan/blog-hook', 'lang', '/admin/front-site/settings/lang', 'admin.front-site.settings.lang', '', '5a059942b680b', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(591, 'terakyan/blog-hook', 'api-settings', '/admin/front-site/settings/api-settings', 'admin.front-site.settings.api-settings', '', '5a059942c169c', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(592, 'terakyan/blog-hook', 'general', '/admin/front-site/settings/general', 'admin.front-site.settings.general', '', '5a059942cc547', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(593, 'terakyan/blog-hook', 'filters', '/admin/front-site/frontend/filters', 'admin.front-site.frontend.filters', '', '5a059942d6dd9', NULL, 0, NULL, 1, 0, NULL, 'individual', 0, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(594, 'terakyan/blog-hook', 'hooks', '/admin/front-site/frontend/hooks', 'admin.front-site.frontend.hooks', '', '5a059942e1cc1', NULL, 0, NULL, 1, 0, NULL, 'individual', 0, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(595, 'terakyan/blog-hook', 'edit', '/admin/front-site/frontend/hooks/edit/{param}', 'admin.front-site.frontend.hooks.edit.{param}', '', '5a059942ecf68', NULL, 0, NULL, 1, 0, NULL, 'individual', 594, 0, NULL, '2017-11-10 08:19:14', '2017-11-10 08:19:14'),
(596, 'terakyan/blog-hook', 'menus', '/admin/front-site/frontend/menus', 'admin.front-site.frontend.menus', '', '5a0599430c287', NULL, 0, NULL, 1, 0, NULL, 'individual', 0, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(597, 'terakyan/blog-hook', 'create', '/admin/front-site/frontend/menus/create', 'admin.front-site.frontend.menus.create', '', '5a05994315f6b', NULL, 0, NULL, 1, 0, NULL, 'individual', 596, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(598, 'terakyan/blog-hook', 'update', '/admin/front-site/frontend/menus/update/{param}', 'admin.front-site.frontend.menus.update.{param}', '', '5a05994322389', NULL, 0, NULL, 1, 0, NULL, 'individual', 596, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(599, 'terakyan/blog-hook', 'html', '/admin/front-site/frontend/menus/html', 'admin.front-site.frontend.menus.html', '', '5a0599432f4fc', NULL, 0, NULL, 1, 0, NULL, 'individual', 596, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(600, 'terakyan/blog-hook', 'delete', '/admin/front-site/frontend/menus/delete/{param}', 'admin.front-site.frontend.menus.delete.{param}', '', '5a05994337991', NULL, 0, NULL, 1, 0, NULL, 'individual', 596, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(601, 'terakyan/blog-hook', 'data', '/admin/front-site/frontend/menus/data', 'admin.front-site.frontend.menus.data', '', '5a05994341f6f', NULL, 0, NULL, 1, 0, NULL, 'individual', 596, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(602, 'terakyan/blog-hook', 'menufile', '/admin/front-site/frontend/menus/menufile', 'admin.front-site.frontend.menus.menufile', '', '5a0599434a509', NULL, 0, NULL, 1, 0, NULL, 'individual', 596, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(603, 'terakyan/blog-hook', 'sidebarmenus', '/admin/front-site/frontend/menus/sidebarmenus', 'admin.front-site.frontend.menus.sidebarmenus', '', '5a05994352565', NULL, 0, NULL, 1, 0, NULL, 'individual', 596, 0, NULL, '2017-11-10 08:19:15', '2017-11-10 08:19:15'),
(604, 'terakyan/css-maker', 'form-test', '/admin/front-site/settings/form-test', 'admin.front-site.settings.form-test', '', '5a05994422ac3', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 08:19:16', '2017-11-10 08:19:16');
INSERT INTO `admin_pages` (`id`, `module_id`, `title`, `url`, `permission`, `redirect_to`, `slug`, `layout_id`, `content_type`, `main_content`, `header`, `footer`, `page_icon`, `child_status`, `parent_id`, `is_default`, `settings`, `created_at`, `updated_at`) VALUES
(605, 'terakyan/blog-hook', 'general', '/admin/front-site/frontend/general', 'admin.front-site.frontend.general', '', '5a059b3712768', NULL, 0, NULL, 1, 0, NULL, 'individual', 0, 0, NULL, '2017-11-10 08:27:35', '2017-11-10 08:27:35'),
(606, 'terakyan/blog-hook', 'hooks', '/admin/front-site/structure/hooks', 'admin.front-site.structure.hooks', '', '5a05a0d290661', NULL, 0, NULL, 1, 0, NULL, 'individual', 563, 0, NULL, '2017-11-10 08:51:30', '2017-11-10 08:51:30'),
(607, 'terakyan/blog-hook', 'edit', '/admin/front-site/structure/hooks/edit/{param}', 'admin.front-site.structure.hooks.edit.{param}', '', '5a05a0d29bda2', NULL, 0, NULL, 1, 0, NULL, 'individual', 606, 0, NULL, '2017-11-10 08:51:30', '2017-11-10 08:51:30'),
(608, 'terakyan/blog-hook', 'filters', '/admin/front-site/structure/filters', 'admin.front-site.structure.filters', '', '5a05a0d2a41ac', NULL, 0, NULL, 1, 0, NULL, 'individual', 563, 0, NULL, '2017-11-10 08:51:30', '2017-11-10 08:51:30'),
(609, 'terakyan/blog-hook', 'frontend', '/admin/front-site/settings/frontend', 'admin.front-site.settings.frontend', '', '5a05e89685cb7', NULL, 0, NULL, 1, 0, NULL, 'individual', 585, 0, NULL, '2017-11-10 13:57:42', '2017-11-10 13:57:42'),
(610, 'terakyan/blog-hook', 'css-js', '/admin/console/backend/css-js', 'admin.console.backend.css-js', '', '5a05f08083452', NULL, 0, NULL, 1, 0, NULL, 'individual', 49, 0, NULL, '2017-11-10 14:31:28', '2017-11-10 14:31:28'),
(611, 'terakyan/blog-hook', 'edit', '/admin/console/structure/menus/edit/{param}', 'admin.console.structure.menus.edit.{param}', '', '5a09708c478a6', NULL, 0, NULL, 1, 0, NULL, 'individual', 47, 0, NULL, '2017-11-13 06:14:36', '2017-11-13 06:14:36'),
(612, 'terakyan/blog-hook', 'edit', '/admin/front-site/structure/menus/edit/{param}', 'admin.front-site.structure.menus.edit.{param}', '', '5a098376e0603', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-13 07:35:18', '2017-11-13 07:35:18'),
(615, 'terakyan/blog-hook', 'edit', '/admin/front-site/structure/menus/edit', 'admin.front-site.structure.menus.edit', '', '5a098a25a73de', NULL, 0, NULL, 1, 0, NULL, 'individual', 577, 0, NULL, '2017-11-13 08:03:49', '2017-11-13 08:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_profiles`
--

CREATE TABLE `admin_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `json_settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `theme_css` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_profiles`
--

INSERT INTO `admin_profiles` (`id`, `role`, `json_settings`, `theme_css`, `created_at`, `updated_at`) VALUES
(1, '1', '{\"role\":\"1\",\"admin-body-class\":\"sidebar-fluid\",\"user_avatar_parent\":\"Select Class\",\"user_avatar\":\"Select Variation\",\"user_name_parent\":\"Select Class\",\"user_name\":\"Select Variation\",\"right_menu_parent\":\"Select Class\",\"right_menu\":\"Select Variation\",\"left_menu_parent\":\"Select Class\",\"left_menu\":\"Select Variation\",\"background_parent\":\"Select Class\",\"background\":\"Select Variation\",\"sidebarCollapsible\":\"1\",\"sidebarBehaviour\":\"fluid\",\"sitename_background_parent\":\"11\",\"sitename_background\":\"11\",\"sitename_parent\":\"Select Class\",\"sitename\":\"Select Variation\",\"logo_parent\":\"Select Class\",\"logo\":\"Select Variation\",\"active-widget\":\"on\",\"optional-widget\":\"2\",\"optional-menu-1\":\"Select Menu\",\"optional-menu-2\":\"Select Menu\"}', '[data-select=\'role\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; }[data-select=\'sidebarCollapsible\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; }[data-select=\'sitename_background\']{border-radius:1px; border-width:1px; border-style:none; border-color:#ef0000; background-color:#00abf5; padding:1px; color:#ffffff; }[data-select=\'optional-widget\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; }', NULL, NULL),
(2, '2', '{\"role\":\"2\",\"admin-body-class\":\"\",\"user_avatar_parent\":\"8\",\"user_avatar\":\"8\",\"user_name_parent\":\"1\",\"user_name\":\"1\",\"right_menu_parent\":\"11\",\"right_menu\":\"11\",\"left_menu_parent\":\"Select Class\",\"left_menu\":\"Select Variation\",\"background_parent\":\"Select Class\",\"background\":\"Select Variation\",\"sidebarCollapsible\":\"1\",\"sidebarBehaviour\":\"fixed\",\"sitename_background_parent\":\"11\",\"sitename_background\":\"11\",\"sitename_parent\":\"Select Class\",\"sitename\":\"Select Variation\",\"logo_parent\":\"Select Class\",\"logo\":\"Select Variation\",\"optional-widget\":\"Select Widget\",\"optional-menu-1\":\"Select Menu\",\"optional-menu-2\":\"Select Menu\"}', '[data-select=\'role\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; }[data-select=\'user_avatar\']{border-radius:5px; border-width:3px; border-style:solid; border-color:#ef0000; background-color:#ffffff; padding:13px; color:#992c2c; }[data-select=\'user_name\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; }[data-select=\'right_menu\']{border-radius:1px; border-width:1px; border-style:none; border-color:#ef0000; background-color:#00abf5; padding:1px; color:#ffffff; }[data-select=\'sidebarCollapsible\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; }[data-select=\'sitename_background\']{border-radius:1px; border-width:1px; border-style:none; border-color:#ef0000; background-color:#00abf5; padding:1px; color:#ffffff; }', NULL, NULL),
(3, '3', '{\"role\":\"7\",\"admin-body-class\":\"\",\"user_avatar_parent\":\"8\",\"user_avatar\":\"8\",\"user_name_parent\":\"1\",\"user_name\":\"22\",\"right_menu_parent\":\"Select Class\",\"right_menu\":\"Select Variation\",\"left_menu_parent\":\"Select Class\",\"left_menu\":\"Select Variation\",\"background_parent\":\"Select Class\",\"background\":\"Select Variation\",\"sidebarCollapsible\":\"1\",\"sidebarBehaviour\":\"fluid\",\"sitename_background_parent\":\"Select Class\",\"sitename_background\":\"Select Variation\",\"sitename_parent\":\"Select Class\",\"sitename\":\"Select Variation\",\"logo_parent\":\"Select Class\",\"logo\":\"Select Variation\",\"active-widget\":\"on\",\"optional-widget\":\"Select Widget\",\"optional-menu-1\":\"1\",\"active-menu-2\":\"on\",\"optional-menu-2\":\"11\"}', '[data-select=\'role\']{border-radius:5px; border-width:3px; border-style:solid; border-color:#ef0000; background-color:#ffffff; padding:13px; color:#992c2c; }[data-select=\'user_avatar\']{border-radius:5px; border-width:3px; border-style:solid; border-color:#ef0000; background-color:#ffffff; padding:13px; color:#992c2c; }[data-select=\'user_name\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; \r\n}[data-select=\'sidebarCollapsible\']{font-family:Times New Roman; font-size:18px; color:#3e37d2; }', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assests`
--

CREATE TABLE `assests` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `site_link` text COLLATE utf8_unicode_ci NOT NULL,
  `snippets` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assests`
--

INSERT INTO `assests` (`id`, `group_id`, `theme_id`, `title`, `section`, `folder`, `status`, `description`, `site_link`, `snippets`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'jQuery Ui', '', '', 1, 'jQuery UI is a curated set of user interface interactions, effects, widgets, and themes built on top of the jQuery JavaScript Library. Whether you\'re building highly interactive web applications or you just need to add a date picker to a form control, jQuery UI is the perfect choice.', 'https://jqueryui.com/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(2, 2, 0, 'bootboxjs - Bootstrap modals made easy.', '', '', 0, 'Bootbox.js is a small JavaScript library which allows you to create programmatic dialog boxes using Bootstrap modals, without having to worry about creating, managing or removing any of the required DOM elements or JS event handlers.', 'http://bootboxjs.com/', 'a:1:{i:0;s:1:\"e\";}', '2016-02-04 09:16:43', '2016-06-28 02:34:15'),
(3, 3, 0, 'Bootstrap Colorpicker 2.3', '', '', 1, 'Colorpicker plugin for the Twitter Bootstrap toolkit. It basically adds a color picker to a field or any other element.can be used as a component alpha picker multiple formats: hex, rgb, rgba, hsl, hsla', 'http://mjolnic.com/bootstrap-colorpicker/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(4, 3, 0, 'X-editable', '', '', 0, 'In-place editing with Twitter Bootstrap, jQuery UI or pure jQuery.', 'https://github.com/vitalets/x-editable', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(5, 0, 0, 'Bootstrap Switch', '', '', 0, 'Turn checkboxes,  and radio buttons in toggle switches', 'http://www.bootstrap-switch.org/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(6, 0, 0, 'DropzoneJS', '', '', 0, 'DropzoneJS is an open source library that provides drag�n�drop file uploads with image previews.', 'http://www.dropzonejs.com/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(7, 0, 0, 'Nestable js', '', '', 0, 'Drag & drop hierarchical list with mouse and touch compatibility (jQuery plugin)', 'https://github.com/dbushell/Nestable', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(8, 0, 0, 'bxslider - Responsive slider', '', '', 0, 'The Responsive jQuery Content Slider Why should I use this slider? Fully responsive - will adapt to any device Horizontal, vertical, and fade modes Slides can contain images, video, or HTML content Advanced touch / swipe support built-in Uses CSS transitions for slide animation (native hardware acceleration!) Full callback API and public methods Small file size, fully themed, simple to implement Browser support: Firefox, Chrome, Safari, iOS, Android, IE7+ Tons of configuration options', 'http://bxslider.com/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(9, 0, 0, 'Datepicker for Bootstrap', '', '', 0, 'Add datepicker picker to field or to any other elemen', 'http://www.eyecon.ro/bootstrap-datepicker/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(10, 0, 0, 'Magnific Popup', '', '', 0, 'Magnific Popup is a responsive lightbox & dialog script with focus on performance and providing best experience for user with any device', 'http://dimsemenov.com/plugins/magnific-popup/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(11, 0, 0, 'http://silviomoreto.github.io/bootstrap-select/', '', '', 0, 'Bootstrap-select is a jQuery plugin that utilizes Bootstrap\'s dropdown.js to style and bring additional functionality to normal select boxes.', 'http://silviomoreto.github.io/bootstrap-select/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(12, 0, 0, 'Bootstrap �Validator - From', '', '', 0, 'A simple and user-friendly form validator plugin for Bootstrap 3', 'http://1000hz.github.io/bootstrap-validator/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(13, 0, 0, 'FlexSlider', '', '', 0, 'An awesome, fully responsive jQuery slider toolkit.Simple, semantic markup Supported in all major browsers Horizontal/vertical slide and fade animations Multiple slider support, Callback API, and more Hardware accelerated touch swipe support Custom navigation options Compatible with the latest version of jQuery', 'https://www.woothemes.com/flexslider/', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(14, 0, 0, 'metisMenu', '', '', 0, 'metisMenu - A jQuery menu plugin', 'https://github.com/onokumus/metisMenu', '', '2016-02-04 09:16:43', '2016-02-04 09:16:43'),
(15, 0, 0, 'fabric', 'libs', 'fabric', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(16, 0, 0, 'canvas2image', 'libs', 'canvas2image', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(17, 0, 0, 'jquery.nestable', 'libs', 'jquery.nestable', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(18, 0, 0, 'bootstrapDatetimepicker', 'libs', 'bootstrap-datetimepicker', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(19, 0, 0, 'bootstrapTouchspin', 'libs', 'bootstrap-touchspin', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(20, 0, 0, 'fontAwesome', 'libs', 'font-awesome', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(21, 0, 0, 'bootstrapEditable', 'libs', 'bootstrap-editable', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(22, 0, 0, 'tagIt', 'libs', 'tag-it', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(23, 0, 0, 'datatable', 'libs', 'datatable', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(24, 0, 0, 'bootstrapFormBuilder3', 'libs', 'Bootstrap-Form-Builder3', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(25, 0, 0, 'bootstrapSwitch', 'libs', 'bootstrap-switch', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(26, 0, 0, 'animate', 'libs', 'animate', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(27, 0, 0, 'editor', 'libs', 'editor', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(28, 0, 0, 'jquery.jplayer', 'libs', 'jquery.jplayer', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(29, 0, 0, 'jquery.easing', 'libs', 'jquery.easing', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(30, 0, 0, 'bootstrapNotify', 'libs', 'bootstrap-notify', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(31, 0, 0, 'wizard', 'libs', 'wizard', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(32, 0, 0, 'dropzone', 'libs', 'dropzone', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(33, 0, 0, 'bootstrapSelect', 'libs', 'bootstrap-select', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(34, 0, 0, 'jqueryDotdotdot', 'libs', 'jquery-dotdotdot', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(35, 0, 0, 'select2', 'libs', 'select2', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(36, 0, 0, 'jqueryFileTree', 'libs', 'jqueryFileTree', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(37, 0, 0, 'caman', 'libs', 'caman', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(38, 0, 0, 'bootstrapValidator', 'libs', 'bootstrap-validator', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(39, 0, 0, 'lodash', 'libs', 'lodash', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(40, 0, 0, 'gridstack', 'libs', 'gridstack', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(41, 0, 0, 'clipboard', 'libs', 'clipboard', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(42, 0, 0, 'jqueryui', 'libs', 'jqueryui', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(43, 0, 0, 'prettify', 'libs', 'prettify', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(44, 0, 0, 'metisMenu', 'libs', 'metisMenu', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(45, 0, 0, 'bootstrapStarRating', 'libs', 'bootstrap-star-rating', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(46, 0, 0, 'nestedSortable', 'libs', 'nestedSortable', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(47, 0, 0, 'bootbox', 'libs', 'bootbox', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(48, 0, 0, 'data', 'libs', 'data', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(49, 0, 0, 'jquery.mCustomScrollbar', 'libs', 'jquery.mCustomScrollbar', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(50, 0, 0, 'html2canvas', 'libs', 'html2canvas', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(51, 0, 0, 'bootstrapColorpicker', 'libs', 'bootstrap-colorpicker', 0, '', '', '', '2016-06-28 02:33:48', '2016-06-28 02:33:48'),
(52, 0, 0, 'jqueryUiTouch', 'libs', 'jquery-ui-touch', 0, '', '', '', '2016-07-01 18:31:35', '2016-07-01 18:31:35'),
(53, 0, 0, 'bootstrapFileinput', 'libs', 'bootstrap-fileinput', 0, '', '', '', '2016-08-10 07:56:47', '2016-08-10 07:56:47'),
(54, 0, 0, 'fabric', 'js', 'fabric', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(55, 0, 0, 'canvas2image', 'js', 'canvas2image', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(56, 0, 0, 'jquery.nestable', 'js', 'jquery.nestable', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(57, 0, 0, 'bootstrapDatetimepicker', 'js', 'bootstrap-datetimepicker', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(58, 0, 0, 'bootstrapTouchspin', 'js', 'bootstrap-touchspin', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(59, 0, 0, 'fontAwesome', 'js', 'font-awesome', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(60, 0, 0, 'bootstrapEditable', 'js', 'bootstrap-editable', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(61, 0, 0, 'formBuilder', 'js', 'form-builder', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(62, 0, 0, 'tagIt', 'js', 'tag-it', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(63, 0, 0, 'datatable', 'js', 'datatable', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(64, 0, 0, 'bootstrapFormBuilder3', 'js', 'Bootstrap-Form-Builder3', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(65, 0, 0, 'bootstrapSwitch', 'js', 'bootstrap-switch', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(66, 0, 0, 'animate', 'js', 'animate', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(67, 0, 0, 'tinymice', 'js', 'tinymice', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(68, 0, 0, 'editor', 'js', 'editor', 0, '', '', '', '2016-11-28 05:55:26', '2016-11-28 05:55:26'),
(69, 0, 0, 'forms', 'js', 'forms', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(70, 0, 0, 'jquery.jplayer', 'js', 'jquery.jplayer', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(71, 0, 0, 'bootstrapFileinput', 'js', 'bootstrap-fileinput', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(72, 0, 0, 'jquery.easing', 'js', 'jquery.easing', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(73, 0, 0, 'bootstrapNotify', 'js', 'bootstrap-notify', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(74, 0, 0, 'wizard', 'js', 'wizard', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(75, 0, 0, 'menumaker', 'js', 'menumaker', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(76, 0, 0, 'dropzone', 'js', 'dropzone', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(77, 0, 0, 'bootstrapSelect', 'js', 'bootstrap-select', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(78, 0, 0, 'jqueryDotdotdot', 'js', 'jquery-dotdotdot', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(79, 0, 0, 'select2', 'js', 'select2', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(80, 0, 0, 'jqueryFileTree', 'js', 'jqueryFileTree', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(81, 0, 0, 'caman', 'js', 'caman', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(82, 0, 0, 'bootstrapValidator', 'js', 'bootstrap-validator', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(83, 0, 0, 'uiElements', 'js', 'UiElements', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(84, 0, 0, 'lodash', 'js', 'lodash', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(85, 0, 0, 'codeEditor', 'js', 'code_editor', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(86, 0, 0, 'gridstack', 'js', 'gridstack', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(87, 0, 0, 'clipboard', 'js', 'clipboard', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(88, 0, 0, 'jqueryui', 'js', 'jqueryui', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(89, 0, 0, 'prettify', 'js', 'prettify', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(90, 0, 0, 'metisMenu', 'js', 'metisMenu', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(91, 0, 0, 'bootstrapStarRating', 'js', 'bootstrap-star-rating', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(92, 0, 0, 'components', 'js', 'components', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(93, 0, 0, 'nestedSortable', 'js', 'nestedSortable', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(94, 0, 0, 'bootbox', 'js', 'bootbox', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(95, 0, 0, 'data', 'js', 'data', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(96, 0, 0, 'jquery.mCustomScrollbar', 'js', 'jquery.mCustomScrollbar', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(97, 0, 0, 'html2canvas', 'js', 'html2canvas', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(98, 0, 0, 'bootstrapColorpicker', 'js', 'bootstrap-colorpicker', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27'),
(99, 0, 0, 'jqueryUiTouch', 'js', 'jquery-ui-touch', 0, '', '', '', '2016-11-28 05:55:27', '2016-11-28 05:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `all_pages_main_view` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `single_pages_main_view` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `form_settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classifiers`
--

CREATE TABLE `classifiers` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classifiers`
--

INSERT INTO `classifiers` (`id`, `title`, `slug`, `description`, `image`, `icon`, `filter`, `created_at`, `updated_at`) VALUES
('1', 'Media', 'media', 'This is for handling folder structures', NULL, NULL, 0, '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
('58b1ba67587a7', 'Cars', '', 'This is multiple cars select', NULL, '', 0, '2017-02-25 13:09:59', '2017-02-25 13:09:59'),
('58b83a9face2d', 'Armenia universities', 'armenia-universities', 'Armenian universities list', NULL, '', 0, '2017-03-02 11:30:39', '2017-03-02 11:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `classifier_items`
--

CREATE TABLE `classifier_items` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classifier_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classifier_items`
--

INSERT INTO `classifier_items` (`id`, `title`, `slug`, `description`, `image`, `icon`, `parent_id`, `classifier_id`, `created_at`, `updated_at`) VALUES
('58b1cbe0d2994', 'SUV cars', '', '', NULL, '', '', '58b1ba67587a7', '2017-02-25 14:24:32', '2017-02-25 14:24:32'),
('58b1cbef4d84b', 'Sport cars', '', '', NULL, '', '', '58b1ba67587a7', '2017-02-25 14:24:47', '2017-02-25 14:24:47'),
('58b1cc009cb0c', 'Hatchback', '', '', NULL, '', '', '58b1ba67587a7', '2017-02-25 14:25:04', '2017-02-25 14:25:04'),
('58b1cc0eadcee', 'Range rover', '', '', NULL, '', '', '58b1ba67587a7', '2017-02-25 14:25:18', '2017-02-25 14:25:18'),
('58b1cc3895726', 'German', '', '', NULL, '', '', '58b1ba67587a7', '2017-02-25 14:26:00', '2017-02-25 14:26:00'),
('58b66d9423798', 'Mercedes', '', 'Mercedes auto', NULL, '', '58b1cc3895726', '58b1ba67587a7', '2017-03-01 02:43:32', '2017-03-01 02:43:32'),
('58b66d9e22f23', 'Lamborgini', '', 'lamborgini', NULL, '', '58b1cbef4d84b', '58b1ba67587a7', '2017-03-01 02:43:42', '2017-03-01 02:43:42'),
('58b66daecbcdc', 'BMW', '', 'BMW auto', NULL, '', '58b1cc3895726', '58b1ba67587a7', '2017-03-01 02:43:58', '2017-03-01 02:43:58'),
('58b66db457c6e', 'Ferarri', '', 'Ferarri', NULL, '', '58b1cbef4d84b', '58b1ba67587a7', '2017-03-01 02:44:04', '2017-03-01 02:44:04'),
('58b66dd0b5bd1', 'Audi', '', 'Audi Motors', NULL, '', '58b1cc3895726', '58b1ba67587a7', '2017-03-01 02:44:32', '2017-03-01 02:44:32'),
('58b66e1766480', 'S class', '', '', NULL, '', '58b66d9423798', '58b1ba67587a7', '2017-03-01 02:45:43', '2017-03-01 02:45:43'),
('58b66e2b01230', 'E55', '', '', NULL, '', '58b66d9423798', '58b1ba67587a7', '2017-03-01 02:46:02', '2017-03-01 02:46:02'),
('58b83ab0db57f', 'YSU', '/all-classify/armenia-universities/ysu', 'Yerevan State University', NULL, '', NULL, '58b83a9face2d', '2017-03-02 11:30:56', '2017-03-02 11:30:56'),
('58b83adeaef98', 'SEUA', '/all-classify/armenia-universities/seua', 'National Polytechnic University of Armenia', NULL, '', NULL, '58b83a9face2d', '2017-03-02 11:31:42', '2017-03-02 11:31:42'),
('58b83b1884d35', 'ASUE', '/all-classify/armenia-universities/asue', 'Armenian State University of Economics', NULL, '', NULL, '58b83a9face2d', '2017-03-02 11:32:40', '2017-03-02 11:32:40'),
('58b83b5ec7ce9', 'Informatics and Applied Mathematics', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics', 'The Faculty of Informatics and Applied Mathematics', NULL, '', '58b83ab0db57f', '58b83a9face2d', '2017-03-02 11:33:50', '2017-03-02 11:35:26'),
('58b83ba02ebd6', 'Faculty of Physics', '/all-classify/armenia-universities/ysu/faculty-of-physics', 'Faculty of Physics', NULL, '', '58b83ab0db57f', '58b83a9face2d', '2017-03-02 11:34:56', '2017-03-02 11:34:56'),
('58b83bb2d0693', 'Faculty of Law', '/all-classify/armenia-universities/ysu/faculty-of-law', 'Faculty of Law', NULL, '', '58b83ab0db57f', '58b83a9face2d', '2017-03-02 11:35:14', '2017-03-02 11:35:14'),
('58b83c067d808', 'Chair of Discrete Mathematics and Theoretical Informatics', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-discrete-mathematics-and-theoretical-informatics', 'Chair of Discrete Mathematics and Theoretical Informatics', NULL, '', '58b83b5ec7ce9', '58b83a9face2d', '2017-03-02 11:36:38', '2017-03-02 11:36:38'),
('58b83c32858f8', 'Chair of Numerical Analysis and Mathematical Modelling', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-numerical-analysis-and-mathematical-modelling', 'Chair of Numerical Analysis and Mathematical Modelling	', NULL, '', '58b83b5ec7ce9', '58b83a9face2d', '2017-03-02 11:37:22', '2017-03-02 11:37:22'),
('58b83c496d55e', 'Chair of Programming and Information Technologies', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-programming-and-information-technologies', 'Chair of Programming and Information Technologies', NULL, '', '58b83b5ec7ce9', '58b83a9face2d', '2017-03-02 11:37:45', '2017-03-02 11:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `classify_items_pages`
--

CREATE TABLE `classify_items_pages` (
  `front_page_id` int(10) UNSIGNED NOT NULL,
  `classifier_id` varchar(100) NOT NULL,
  `classifier_item_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classify_items_pages`
--

INSERT INTO `classify_items_pages` (`front_page_id`, `classifier_id`, `classifier_item_id`, `created_at`, `updated_at`) VALUES
(17, '58b81ed37d935', NULL, '2017-03-02 09:32:03', '2017-03-02 09:32:03'),
(18, '58b83a9face2d', NULL, '2017-03-02 11:30:39', '2017-03-02 11:30:39'),
(19, '58b83a9face2d', '58b83ab0db57f', '2017-03-02 11:30:56', '2017-03-02 11:30:56'),
(20, '58b83a9face2d', '58b83adeaef98', '2017-03-02 11:31:42', '2017-03-02 11:31:42'),
(21, '58b83a9face2d', '58b83b1884d35', '2017-03-02 11:32:40', '2017-03-02 11:32:40'),
(22, '58b83a9face2d', '58b83b5ec7ce9', '2017-03-02 11:33:50', '2017-03-02 11:33:50'),
(23, '58b83a9face2d', '58b83ba02ebd6', '2017-03-02 11:34:56', '2017-03-02 11:34:56'),
(24, '58b83a9face2d', '58b83bb2d0693', '2017-03-02 11:35:14', '2017-03-02 11:35:14'),
(25, '58b83a9face2d', '58b83c067d808', '2017-03-02 11:36:38', '2017-03-02 11:36:38'),
(26, '58b83a9face2d', '58b83c32858f8', '2017-03-02 11:37:22', '2017-03-02 11:37:22'),
(27, '58b83a9face2d', '58b83c496d55e', '2017-03-02 11:37:45', '2017-03-02 11:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'custom',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `data`, `active`, `type`, `is_default`, `created_at`, `updated_at`) VALUES
(3, 'custom_collections', '{\"p\":{\"$default-text-old\":{\"display_name\":\"Default text\",\"classes\":\" text-opacity  panel-default \"},\"$text-custom\":{\"display_name\":\"Text custom\",\"classes\":\" text-wide  card-default \"}},\"button\":{\"$btn-save-default\":{\"display_name\":\"save button\",\"classes\":\" text-shadow  panel-default \"}},\"span\":{\"$badge-custom\":{\"display_name\":\"Badge Custom\",\"classes\":\" text-wide  form-field \"}},\"form\":{\"$form-stacked-custom\":{\"display_name\":\"Form stacked \",\"classes\":\" text-shadow  panel-default \"}}}', 1, 'custom', 0, '2017-04-19 05:37:04', '2017-04-19 05:37:04'),
(4, '58f73dd048d2e', '{\"p\":{\"$test-text-class\":{\"display_name\":\"Test\",\"classes\":\" text-opacity  panel-default \"},\"$text-intro\":{\"display_name\":\"Text intro\",\"classes\":\" text-wide  card-default \"}},\"button\":{\"$btn-save\":{\"display_name\":\"save button\",\"classes\":\" text-shadow  panel-default \"}},\"span\":{\"$badge\":{\"display_name\":\"Badge\",\"classes\":\" text-wide  form-field \"}},\"form\":{\"$form-stacked\":{\"display_name\":\"Form stacked \",\"classes\":\" text-shadow  panel-default \"}}}', 1, 'master', 0, '2017-04-19 05:37:04', '2017-04-27 02:45:49'),
(5, 'master collection new', '{\"a\":{\"$button-a-tag-master\":{\"display_name\":\"Buttons\",\"classes\":\" text-opacity  panel-default \"},\"$link-a-tag-master\":{\"display_name\":\"Links\",\"classes\":\" text-wide  card-default \"}},\"label\":{\"$form-label-master\":{\"display_name\":\"Form Label\",\"classes\":\" text-shadow  panel-default \"}},\"span\":{\"$badge-default\":{\"display_name\":\"Badge\",\"classes\":\" text-wide  form-field \"}},\"form\":{\"$form-stacked-default\":{\"display_name\":\"Form stacked \",\"classes\":\" text-shadow  panel-default \"}}}', 1, 'master', 0, '2017-04-19 05:51:07', '2017-04-19 06:35:44'),
(7, 'master collection extra', '{\"input\":{\"text-input-new\":{\"display_name\":\"Text Input\",\"classes\":\" text-opacity  panel-default \"},\"$email-input-new\":{\"display_name\":\"Email Input\",\"classes\":\" text-wide  card-default \"}},\"ul\":{\"$dropdown-ul\":{\"display_name\":\"dropdown ul\",\"classes\":\" text-shadow  panel-default \"},\"$links-ul\":{\"display_name\":\"Links list\",\"classes\":\" text-shadow  panel-default \"}},\"textarea\":{\"$textarea-description\":{\"display_name\":\"Description\",\"classes\":\" text-opacity  panel-default \"},\"$textarea-short-desc\":{\"display_name\":\"Short Description\",\"classes\":\" text-wide  card-default \"}},\"select\":{\"$form-select-new\":{\"display_name\":\"Form select \",\"classes\":\" text-shadow  panel-default \"}}}', 1, 'master', 0, '2017-04-19 05:53:48', '2017-04-19 06:35:45'),
(8, 'master collection custom', '{\"a\":{\"$button-a-tag\":{\"display_name\":\"Buttons\",\"classes\":\" text-opacity  panel-default \"},\"$link-a-tag\":{\"display_name\":\"Links\",\"classes\":\" text-wide  card-default \"}},\"div\":{\"$container-div\":{\"display_name\":\"Container\",\"classes\":\" text-shadow  panel-default \"},\"$box-div\":{\"display_name\":\"Box\",\"classes\":\" text-shadow  panel-default \"}},\"p\":{\"$text-class\":{\"display_name\":\"Text Default\",\"classes\":\" text-opacity  panel-default \"},\"$text-main\":{\"display_name\":\"Text main\",\"classes\":\" text-wide  card-default \"}},\"select\":{\"$form-select\":{\"display_name\":\"Form select \",\"classes\":\" text-shadow  panel-default \"}}}', 1, 'master', 0, '2017-04-19 05:54:28', '2017-04-19 07:19:18'),
(9, 'master_collection_default', '{\"p\":{\"$default-text\":{\"display_name\":\"Default text\",\"classes\":\"t-color-black absolute\"},\"$text-custom\":{\"display_name\":\"Text custom\",\"classes\":\" text-wide  card-default \"}},\"button\":{\"$btn-save-default\":{\"display_name\":\"save button\",\"classes\":\" text-shadow  panel-default \"}},\"span\":{\"$badge-custom\":{\"display_name\":\"Badge Custom\",\"classes\":\" text-wide  form-field \"}},\"form\":{\"$form-stacked-custom\":{\"display_name\":\"Form stacked \",\"classes\":\" text-shadow  panel-default \"}}}', 2, 'master', 1, '2017-04-19 08:01:12', '2017-05-30 05:37:06'),
(10, 'custom_collections_vers2', '{\"a\":{\"$button-a-tag\":{\"display_name\":\"Buttons\",\"classes\":\"text-opacitypanel-default\"},\"$link-a-tag\":{\"display_name\":\"Links\",\"classes\":\"text-widecard-default\"}},\"div\":{\"$container-div\":{\"display_name\":\"Container\",\"classes\":\"text-shadowpanel-default\"},\"$box-div\":{\"display_name\":\"Box\",\"classes\":\"text-shadowpanel-default\"}},\"p\":{\"$text-class-main\":{\"display_name\":\"TextDefault\",\"classes\":\"text-opacitypanel-default\"},\"$text-main\":{\"display_name\":\"Textmain\",\"classes\":\"text-widecard-default\"}},\"select\":{\"$form-select\":{\"display_name\":\"Formselect\",\"classes\":\"text-shadowpanel-default\"}}}', 1, 'custom', 0, '2017-04-19 05:37:04', '2017-04-19 05:37:04'),
(11, 'custom_collections_vers3', '{\"a\":{\"$button-a-tag-master\":{\"display_name\":\"Buttons\",\"classes\":\"text-opacitypanel-default\"},\"$link-a-tag-master\":{\"display_name\":\"Links\",\"classes\":\"text-widecard-default\"}},\"label\":{\"$form-label-master\":{\"display_name\":\"FormLabel\",\"classes\":\"text-shadowpanel-default\"}},\"span\":{\"$badge-default\":{\"display_name\":\"Badge\",\"classes\":\"text-wideform-field\"}},\"form\":{\"$form-stacked-default\":{\"display_name\":\"Formstacked\",\"classes\":\"text-shadowpanel-default\"}}}', 1, 'custom', 0, '2017-04-19 05:37:04', '2017-04-19 05:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unapproved',
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `guest_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments_meta`
--

CREATE TABLE `comments_meta` (
  `meta_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages`
--

CREATE TABLE `core_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_url` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `system_page` tinyint(4) NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `page_type` enum('core','custom','plugin') COLLATE utf8_unicode_ci NOT NULL,
  `plugin` text COLLATE utf8_unicode_ci,
  `blog_id` int(11) DEFAULT NULL,
  `user_group` text COLLATE utf8_unicode_ci,
  `layout_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_option` enum('layout-except-body','layout-except-body-extra','layout-except-body-side-bar','free-page') COLLATE utf8_unicode_ci NOT NULL,
  `data_option` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `core_pages`
--

INSERT INTO `core_pages` (`id`, `title`, `code`, `slug`, `view_url`, `system_page`, `status`, `visibility`, `parent_id`, `page_type`, `plugin`, `blog_id`, `user_group`, `layout_id`, `layout_option`, `data_option`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', NULL, '/', 1, 'published', '', NULL, 'core', NULL, 0, NULL, '546578688', 'layout-except-body', '{\"main_body\":\"57b898d60de63.57b898d66d423\"}', NULL, NULL),
(2, 'Login', 'login', NULL, '/login', 1, 'published', '', NULL, 'core', NULL, 0, NULL, NULL, 'layout-except-body', '', NULL, NULL),
(3, 'Register', 'register', NULL, '/register', 1, 'published', '', NULL, 'core', NULL, 0, NULL, NULL, 'layout-except-body', '', NULL, NULL),
(4, 'Error', 'error', NULL, '', 1, 'published', '', NULL, 'core', NULL, 0, NULL, NULL, 'layout-except-body', '', NULL, NULL),
(5, 'Term & conditions', 'terms_condition', NULL, '/terms_conditions', 1, 'published', '', NULL, 'core', NULL, 0, NULL, '546578688', 'layout-except-body', '{\"3\":13,\"main_body\":\"57bb54e83f948.57bb54e86ff38\"}', NULL, NULL),
(6, 'Privacy', 'privacy', NULL, '/pages/privacy', 1, 'published', '', NULL, 'core', NULL, 0, NULL, '546578688', 'layout-except-body', '{\"main_body\":\"57bb55595bdb4.57bb555960203\"}', NULL, NULL),
(7, 'Profile', 'profile', NULL, '/profile', 1, 'published', '', NULL, 'core', NULL, 0, NULL, '546578688', 'layout-except-body', '{\"main_body\":\"57bb556b66106.57bb556b69dd4\"}', NULL, NULL),
(8, 'About', 'about', NULL, '/about', 1, 'published', '', NULL, 'core', NULL, 0, NULL, '546578688', 'layout-except-body', '{\"main_body\":\"57bb5a7df1acc.57bb5a7e0bb7c\"}', NULL, NULL),
(9, 'abokamal', 'abokamal', NULL, 'abokamal', 0, '', 'yes', 0, 'core', NULL, NULL, NULL, '0', 'layout-except-body', NULL, '2016-12-06 00:38:17', '2016-12-06 00:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `cs_comments_profile`
--

CREATE TABLE `cs_comments_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `like_system` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allow_reply` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_embedding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allow_sorting_filter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_options` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_type` int(11) NOT NULL DEFAULT '0',
  `avatar_variation_id` int(11) NOT NULL DEFAULT '0',
  `comment_allowed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_comment_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `border_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `border_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `border_prop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_type` int(11) NOT NULL DEFAULT '0',
  `username_variation_id` int(11) NOT NULL DEFAULT '0',
  `date_type` int(11) NOT NULL DEFAULT '0',
  `date_variation_id` int(11) NOT NULL DEFAULT '0',
  `description_type` int(11) NOT NULL DEFAULT '0',
  `description_variation_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cs_comments_profile`
--

INSERT INTO `cs_comments_profile` (`id`, `created_by`, `profile_name`, `like_system`, `allow_reply`, `site_embedding`, `allow_sorting_filter`, `users_options`, `avatar_type`, `avatar_variation_id`, `comment_allowed`, `show_comment_date`, `border_num`, `border_unit`, `border_prop`, `bg_color`, `username_type`, `username_variation_id`, `date_type`, `date_variation_id`, `description_type`, `description_variation_id`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'default', 'enabled', 'yes', 'a:3:{i:0;s:7:\"youtube\";i:1;s:10:\"soundcloud\";i:2;s:10:\"othersites\";}', 'yes', 'both', 0, 0, 'all', 'yes', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_classes`
--

CREATE TABLE `custom_classes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_classes`
--

INSERT INTO `custom_classes` (`id`, `name`, `data`, `active`, `created_at`, `updated_at`) VALUES
(2, 'custom classes', '{\"hi\":{\"name\":\"hi\",\"item_name\":\"hi\",\"css_data\":\".hi{color:black;}\",\"section\":\"basic\",\"type\":\"color\",\"data_type\":\"css\",\"sub_type\":\"text\",\"classtype\":null},\"classname\":{\"name\":\"Testbyashok\",\"item_name\":\"classname\",\"css_data\":\".classname{line-height:13px; font-size:15px; }\",\"section\":\"global\",\"type\":null,\"data_type\":\"css\",\"sub_type\":\"text\",\"classtype\":\"normal\"}}', 1, '2017-04-19 05:37:04', '2017-04-26 02:10:00'),
(3, 'custom classes', '{\"hi\":{\"name\":\"hi\",\"item_name\":\"hi\",\"css_data\":\".hi{color:black;}\",\"section\":\"basic\",\"type\":\"color\",\"data_type\":\"css\",\"sub_type\":\"text\",\"classtype\":null},\"classname\":{\"name\":\"Testbyashok\",\"item_name\":\"classname\",\"css_data\":\".classname{line-height:13px; font-size:15px; }\",\"section\":\"global\",\"type\":null,\"data_type\":\"css\",\"sub_type\":\"text\",\"classtype\":\"normal\"}}', 1, '2017-04-21 07:44:59', '2017-04-26 02:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `demo_menus`
--

CREATE TABLE `demo_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'core',
  `place` varchar(20) NOT NULL DEFAULT 'backend',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `demo_menus`
--

INSERT INTO `demo_menus` (`id`, `creator_id`, `name`, `module`, `type`, `place`, `created_at`, `updated_at`) VALUES
(1, 1, 'TEST1', NULL, 'core', 'backend', '2017-02-21 11:56:16', '0000-00-00 00:00:00'),
(2, 1, 'TEST2', NULL, 'custom', 'backend', '2017-02-21 05:47:48', '2017-02-21 05:47:48'),
(3, 1, 'for test', NULL, 'custom', 'backend', '2017-02-23 05:44:13', '2017-02-23 05:44:13'),
(4, 1, 'Front Menu 1', NULL, 'custom', 'frontend', '2017-02-23 05:44:13', '2017-02-23 05:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `demo_menu_items`
--

CREATE TABLE `demo_menu_items` (
  `id` varchar(100) NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `parent_id` varchar(100) DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` text,
  `icon` varchar(50) DEFAULT NULL,
  `sort` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `demo_menu_items`
--

INSERT INTO `demo_menu_items` (`id`, `menu_id`, `page_id`, `parent_id`, `role_id`, `title`, `url`, `icon`, `sort`, `created_at`, `updated_at`) VALUES
('1', 1, 985, '0', 1, 'title', NULL, NULL, 1, '2017-02-21 12:00:34', NULL),
('2', 1, 986, '0', 1, 'title2', NULL, NULL, 2, '2017-02-21 12:00:34', NULL),
('3', 1, 987, '2', 1, 'title3', NULL, NULL, 3, '2017-02-21 12:00:34', NULL),
('338c948c4cdd', 6, 8, '0', 1, 'about as', '/about', NULL, 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('4', 1, 985, '0', 2, 'title4', NULL, NULL, 1, '2017-02-21 12:00:34', NULL),
('5', 1, 986, '0', 2, 'title5', NULL, NULL, 2, '2017-02-21 12:00:34', NULL),
('58aebc36a6694', 2, 66, '0', 1, 'Admin Settings', 'admin/backend/settings', NULL, 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('58aebc36ab4b0', 2, 67, '58aebc36a6694', 1, 'Admin Settings edit', 'admin/backend/settings/update/{param}', NULL, 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('58aebc36ac4bd', 2, 68, '0', 1, 'Back end Menu', 'admin/backend/menu', NULL, 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('58aebc36ad932', 2, 69, '58aebc36ac4bd', 1, 'Back end Menu variations', 'admin/backend/menu/variation/{param}', NULL, 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('58aebc36aef01', 2, 70, '58aebc36ac4bd', 1, 'Menu update variations', 'admin/backend/menu/update-variation/{param}', NULL, 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('58aebc36ascsdc', 4, 5, '0', 1, 'terms and conditions', '/terms-conditions', 'fa fa-info', 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('611ebc36ascsdc', 4, 6, '0', 1, 'privacy', '/privacy', 'fa fa-bug', 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54'),
('dscdsc151c5sd1c', 4, 1, '0', 1, 'Home', '/', 'fa fa-home', 0, '2017-02-23 03:40:54', '2017-02-23 03:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `drive_folders`
--

CREATE TABLE `drive_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploader_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drive_folders`
--

INSERT INTO `drive_folders` (`id`, `name`, `prefix`, `uploader_slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'drive', NULL, NULL, 0, '2017-07-04 12:23:18', '2017-07-04 12:23:18'),
(2, 'qaq', NULL, NULL, 1, '2017-07-04 12:27:34', '2017-07-04 12:27:34'),
(3, 'qaq', NULL, NULL, 2, '2017-07-04 12:30:51', '2017-07-05 03:36:06'),
(4, 'ec', NULL, NULL, 1, '2017-07-04 23:03:04', '2017-07-04 23:03:04'),
(5, 'mediaplus', NULL, NULL, 0, '2017-07-06 04:21:21', '2017-07-06 06:24:25'),
(6, 'qaq', NULL, NULL, 5, '2017-07-07 04:29:49', '2017-07-07 04:29:49'),
(7, 'qaq1', NULL, NULL, 6, '2017-07-07 04:30:01', '2017-07-07 04:30:01'),
(8, 'testnhg', NULL, NULL, 5, '2017-07-12 13:14:23', '2017-07-12 13:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `drive_items`
--

CREATE TABLE `drive_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `original_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drive_items`
--

INSERT INTO `drive_items` (`id`, `original_name`, `real_name`, `extension`, `size`, `folder_id`, `created_at`, `updated_at`) VALUES
(1, '2015_12_03_0029.png', 'test.png', 'png', '250341', 7, '2017-07-07 04:31:08', '2017-07-12 12:13:08'),
(2, '9723fa727874e8fbd7ed4fbf3f5b87f9.jpg', 'pzik.jpg', 'jpg', '61405', 6, '2017-07-07 04:31:08', '2017-07-10 12:10:33'),
(5, '2000px_Roadsign___Cellphone.svg.png', 'kapo.png', 'png', '73461', 7, '2017-07-07 04:38:01', '2017-07-12 12:13:33'),
(8, 'd0a05967aa59ab1936df30ead5efb525.png', 'aharjan.png', 'png', '112525', 7, '2017-07-10 03:26:23', '2017-07-10 04:08:27'),
(11, '95b0af7ffa5c714027d255b655e1548d.png', 'aro.png', 'png', '26604', 7, '2017-07-10 04:25:21', '2017-07-12 03:00:06'),
(12, '68376f4f8e4d2ea1d530945eb5dbbadc.jpg', 'dikobraz_680.jpg', 'jpg', '150389', 5, '2017-07-12 13:15:32', '2017-07-12 13:15:32'),
(13, '5515a07750e00c0777c9fdedc333f576.png', 'baboon.png', 'png', '651142', 5, '2017-07-12 13:15:32', '2017-07-12 13:15:32'),
(14, 'd829babd329796d59e88cffbc4f1b004.png', 'baboon_copy.png', 'png', '651142', 5, '2017-07-12 13:16:08', '2017-07-12 13:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `drive_settings`
--

CREATE TABLE `drive_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all_access',
  `uploader_data` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drive_settings`
--

INSERT INTO `drive_settings` (`id`, `function`, `slug`, `folder_id`, `action`, `uploader_data`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'drive', 1, 'all_access', NULL, NULL, '2017-07-04 12:23:18', '2017-07-04 12:23:18'),
(3, NULL, 'qaq1', 2, 'all_access', NULL, NULL, '2017-07-04 12:27:34', '2017-07-04 12:27:34'),
(4, NULL, 'qaq1', 3, 'all_access', NULL, NULL, '2017-07-04 12:30:51', '2017-07-04 12:30:51'),
(5, NULL, 'ec1', 4, 'all_access', NULL, NULL, '2017-07-04 23:03:04', '2017-07-04 23:03:04'),
(6, NULL, 'qaq5', 6, 'all_access', NULL, NULL, '2017-07-07 04:29:49', '2017-07-07 04:29:49'),
(7, NULL, 'qaq16', 7, 'all_access', NULL, NULL, '2017-07-07 04:30:01', '2017-07-07 04:30:01'),
(8, NULL, 'testnhg5', 8, 'all_access', NULL, NULL, '2017-07-12 13:14:23', '2017-07-12 13:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `form_id` int(11) NOT NULL,
  `emails` enum('admin','user') COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_days` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_id_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `when_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `custom_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trigger_on_form` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `to_` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `bcc` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `replyto` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `notify_to` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `settings` text COLLATE utf8_unicode_ci,
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `group_id`, `form_id`, `emails`, `custom_days`, `name`, `form_id_type`, `from_`, `when_`, `custom_time`, `event_code`, `trigger_on_form`, `to_`, `cc`, `bcc`, `replyto`, `attachment`, `notify_to`, `priority`, `content_type`, `template_id`, `variation_id`, `subject`, `content`, `settings`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, 0, 'Welcome', 'user', 'info@avatarbugs.com', 'immediate', '', 'form_submited', '58vg8d7vw4nhn1', 'Signup User', '', '', 'info@avatarbugs.com', '', '', 0, 'iwysiwyg', 8, 6, 'Welcome To Our Site', '<p>[special key=id] &nbsp;[mail_receiver_email] Hi [mail_receiver_user_name]</p>\r\n<p><br />This is First&nbsp; Email</p>\r\n<p>&nbsp;</p>\r\n<p>Thanks</p>', NULL, 0, '2016-12-28 01:57:45', '2017-06-23 04:44:54'),
(2, 2, 0, NULL, 0, 'Activated', NULL, 'info@avatarbugs.com', 'immediate', '', 'account.activated', '0', 'Logged  User', '', '', '', '', '', 0, 'wysiwyg', 0, 0, 'Account Activated', NULL, NULL, 0, '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(3, 2, 0, NULL, 0, 'Forgot password', NULL, 'info@avatarbugs.com', 'immediate', '11/05/2016', 'forgot.password', '0', 'Requested Email', '', '', '', '', '', 0, 'wysiwyg', 0, 0, 'Forgot Password', '', NULL, 0, '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(4, 3, 2, NULL, 0, 'Profile Update', 'admin', 'info@avatarbugs.com', 'immediate', '', 'form.was.submit', '0', 'administrator', '', '', 'info@avatarbugs.com', '', '', 0, 'wysiwyg', 0, 0, 'Profile Update', '', NULL, 0, '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(5, 3, 2, NULL, 0, 'Profile Update', 'user', 'info@avatarbugs.com', 'immediate', '', 'form.was.submit', '0', 'Logged  User', '', '', 'info@avatarbugs.com', '', '', 0, 'wysiwyg', 0, 0, 'Profile Update', '', NULL, 0, '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(6, 2, 1, NULL, 0, 'New User Register', 'admin', 'info@avatarbugs.com', 'immediate', '', 'user.register', '0', 'administrator', '', '', 'info@avatarbugs.com', '', '', 0, 'wysiwyg', 0, 7, 'New User Register', '', NULL, 0, '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(7, 2, 1, NULL, 0, 'Activate your Account', 'user', 'info@avatarbugs.com', 'immediate', '', 'CustomFormSubmittedEvent', '0', 'Signup User', '', '', 'info@avatarbugs.com', '', '', 0, 'wysiwyg', 8, 6, 'Welcome To Our Site', '<p>Hi [mail_receiver_user_name]</p>\r\n<p><br />This is First&nbsp; Email</p>\r\n<p>&nbsp;</p>\r\n<p>Thanks</p>', NULL, 0, '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(8, 4, 0, NULL, 0, 'dcdc', NULL, 'support@avatarbugs.com', 'immediate', '', '', '0', '', '', '', 'info@avatarbugs.com', '', '', 0, 'wysiwyg', 0, 0, '', '', NULL, 1, '2016-12-28 14:05:04', '2016-12-28 14:06:45'),
(9, 1, 0, NULL, 0, 'Testing ', NULL, 'info@avatarbugs.com', 'custom_time', '', 'form_submited', '594a4369402d8', 'ededed@cdcdc.cd', '', '', 'info@avatarbugs.com', '', '', 0, 'iwysiwyg', 0, 0, 'ddddddddddddddd', '<p>dddddddddddddddddddddddddddd</p>', NULL, 0, '2017-06-23 01:03:39', '2017-06-23 01:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `email_groups`
--

CREATE TABLE `email_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('core','custom') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_groups`
--

INSERT INTO `email_groups` (`id`, `name`, `type`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'General', 'core', 'general', '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(2, 'Login & Registration', 'core', 'login_registration', '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(3, 'Form Submit', 'core', 'form_submit', '2016-12-28 01:57:45', '2016-12-28 01:57:45'),
(4, 'ccc', 'custom', 'ccc', '2016-12-28 14:04:52', '2016-12-28 14:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `code`, `created_at`, `updated_at`) VALUES
(1, 'User Login', 'auth.login', '2016-11-27 04:19:46', '2016-11-27 04:19:46'),
(2, 'User Logout', 'auth.logout', '2016-11-27 04:19:46', '2016-11-27 04:19:46'),
(3, 'User Register', 'user.register', '2016-11-27 04:19:46', '2016-11-27 04:19:46'),
(4, 'Forgot Password', 'forgot.password', '2016-11-27 04:19:46', '2016-11-27 04:19:46'),
(5, 'Account Activate', 'account.activated', '2016-11-27 04:19:46', '2016-11-27 04:19:46'),
(6, 'Form Was Submit', 'CustomFormSubmittedEvent', '2016-11-27 04:19:46', '2016-11-27 04:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `available_for_users` tinyint(1) NOT NULL DEFAULT '0',
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `before_save` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tooltip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `json_data` text COLLATE utf8_unicode_ci,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_html` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `custom_html` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `structured_by` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'core',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `slug`, `table_name`, `column_name`, `second_table`, `second_column`, `required`, `visibility`, `available_for_users`, `default_value`, `before_save`, `label`, `icon`, `placeholder`, `tooltip`, `json_data`, `unit`, `field_html`, `custom_html`, `structured_by`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Page url', '5930c0a15be6f', 'frontend_pages', 'id', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '\"\"', '591d7c9fcdfcb.591d7c9fe9e32', 'custom', '591d8aea698f7.591d8aea75e54', 'custom', 1, 0, '2017-06-01 20:34:25', '2017-06-02 02:54:41'),
(2, 'page title-abokamal ', '5931093b55256', 'frontend_pages', 'title', NULL, NULL, 0, 1, 0, NULL, NULL, 'page title-abokamal ', NULL, NULL, NULL, '\"\"', '59099fa81074d.592fe3ca24d9d', 'custom', '591d7c9fcdfcb.592fa0b89c8f4', 'custom', 1, 1, '2017-06-02 01:44:11', '2017-06-13 06:10:42'),
(3, 'page content-Abokamal', '5931e52d22e51', 'frontend_pages', 'id', NULL, NULL, 0, 1, 0, NULL, NULL, 'label content-abokamal ', NULL, NULL, NULL, '\"\"', '592d0e0300c39.592d0e032f3c4', 'no', NULL, 'custom', 1, 1, '2017-06-02 17:22:37', '2017-06-13 06:10:55'),
(4, 'Page Author-abokamal', '59350d93c458b', 'frontend_pages', 'user_id', NULL, NULL, 0, 0, 0, NULL, NULL, 'Select Author', NULL, NULL, NULL, '\"\"', '5930135dc427d.5930135dd73ce', 'custom', '591d7c9fcdfcb.592fa0b89c8f4', 'custom', 1, 1, '2017-06-05 02:51:47', '2017-06-05 06:30:04'),
(5, 'Page Autor', '59350e1e88646', 'frontend_pages', 'user_id', NULL, NULL, 0, 0, 0, NULL, NULL, 'Page Author', NULL, 'Select Author', NULL, '\"\"', '5930135dc427d.59350dc5bc6ae', 'default', NULL, 'custom', 1, 1, '2017-06-05 02:54:06', '2017-06-05 03:12:48'),
(6, 'special field', '59364d06d7b05', 'frontend_pages', 'user_id', NULL, NULL, 0, 0, 0, NULL, NULL, 'author special', NULL, NULL, NULL, '\"{\\\"name\\\":\\\"special field\\\",\\\"slug\\\":\\\"59364d06d7b05\\\",\\\"table_name\\\":\\\"frontend_pages\\\",\\\"column_name\\\":\\\"user_id\\\",\\\"form_group\\\":\\\"frontend_pages\\\",\\\"validation\\\":\\\"digits:10\\\",\\\"created_by\\\":1,\\\"structured_by\\\":\\\"custom\\\",\\\"unit\\\":\\\"58db8f2890f88.58db93159cc6e\\\",\\\"label\\\":\\\"author special\\\",\\\"placeholder\\\":null,\\\"icon\\\":null,\\\"tooltip\\\":null,\\\"custom_html\\\":null,\\\"field_html\\\":\\\"no\\\"}\"', '58db8f2890f88.58db93159cc6e', 'no', NULL, 'custom', 1, 1, '2017-06-06 01:34:46', '2017-06-06 01:34:49'),
(9, 'email', '593fb1c63a9e7', 'users', 'email', NULL, NULL, 1, 1, 1, NULL, NULL, 'Email', NULL, 'Enter email', NULL, '\"\"', '59099fa81074d.592565a4bf848', 'default', '591065593a076.591065594b957', 'custom', 1, 1, '2017-06-13 04:35:02', '2017-06-16 04:17:07'),
(10, 'username', '593fb2fb059d4', 'users', 'username', NULL, NULL, 1, 1, 1, NULL, NULL, 'Username', NULL, 'Enter username', NULL, '\"\"', '59099fa81074d.592565a4bf848', 'default', NULL, 'custom', 1, 1, '2017-06-13 04:40:11', '2017-06-16 04:17:38'),
(11, 'password', '593fba97df0f4', 'users', 'password', NULL, NULL, 1, 1, 1, NULL, 'bcrypt', 'Password', NULL, NULL, NULL, '\"\"', '59099fa81074d.592565a4bf848', 'default', NULL, 'custom', 1, 1, '2017-06-13 05:12:39', '2017-06-16 05:19:04'),
(12, 'url', '593fbc46633c9', 'frontend_pages', 'url', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '\"{\\\"name\\\":\\\"url\\\",\\\"slug\\\":\\\"593fbc46633c9\\\",\\\"table_name\\\":\\\"frontend_pages\\\",\\\"column_name\\\":\\\"url\\\",\\\"validation\\\":\\\"required|max:65535\\\",\\\"created_by\\\":1,\\\"structured_by\\\":\\\"custom\\\",\\\"unit\\\":\\\"591d7c9fcdfcb.591d7c9fe9e32\\\",\\\"label\\\":null,\\\"placeholder\\\":null,\\\"icon\\\":null,\\\"tooltip\\\":null,\\\"custom_html\\\":null,\\\"field_html\\\":\\\"no\\\",\\\"second_table\\\":null,\\\"second_column\\\":null,\\\"required\\\":\\\"0\\\",\\\"visibility\\\":\\\"1\\\",\\\"default_value\\\":null,\\\"available_for_users\\\":\\\"0\\\"}\"', '591d7c9fcdfcb.591d7c9fe9e32', 'no', NULL, 'custom', 1, 1, '2017-06-13 05:19:50', '2017-06-13 06:43:54'),
(13, 'user membership', '593fd02450874', 'users', 'membership_id', NULL, NULL, 1, 1, 1, NULL, NULL, 'Membership', NULL, NULL, NULL, '\"{\\\"name\\\":\\\"user membership\\\",\\\"slug\\\":\\\"593fd02450874\\\",\\\"table_name\\\":\\\"users\\\",\\\"column_name\\\":\\\"membership_id\\\",\\\"validation\\\":\\\"digits:10\\\",\\\"created_by\\\":1,\\\"structured_by\\\":\\\"custom\\\",\\\"unit\\\":\\\"5530135dc421x.593fcd754e90e\\\",\\\"label\\\":\\\"Membership\\\",\\\"placeholder\\\":null,\\\"icon\\\":null,\\\"tooltip\\\":null,\\\"custom_html\\\":null,\\\"field_html\\\":\\\"default\\\",\\\"second_table\\\":null,\\\"second_column\\\":null,\\\"required\\\":\\\"1\\\",\\\"visibility\\\":\\\"1\\\",\\\"default_value\\\":null,\\\"available_for_users\\\":\\\"1\\\"}\"', '5530135dc421x.593fcd754e90e', 'default', NULL, 'custom', 1, 1, '2017-06-13 06:44:36', '2017-06-13 06:54:47'),
(14, 'roles', '593fd053a1a69', 'users', 'role_id', NULL, NULL, 1, 1, 3, 'BBGetDefaultFrontendRoleId', '', 'Roles', NULL, 'select Role', NULL, '\"\"', '5530135dc421x.593fcee4af08f', 'default', NULL, 'custom', 1, 1, '2017-06-13 06:45:23', '2017-06-19 01:42:31'),
(15, 'user status', '593fd18feaf1a', 'users', 'status', NULL, NULL, 1, 1, 3, 'BBGetDefaultStatusName', '', 'Status', NULL, NULL, NULL, '\"\"', '5530135dc421x.5942598e5589d', 'default', NULL, 'custom', 1, 1, '2017-06-13 06:50:39', '2017-06-19 02:46:52'),
(16, 'Phone', '594a3508ded2c', 'users_profile', 'phone', NULL, NULL, 0, 1, 1, NULL, '', 'Phone number', NULL, 'Enter phone', NULL, '\"{\\\"name\\\":\\\"Phone\\\",\\\"slug\\\":\\\"594a3508ded2c\\\",\\\"table_name\\\":\\\"users_profile\\\",\\\"column_name\\\":\\\"phone\\\",\\\"validation\\\":\\\"max:30\\\",\\\"created_by\\\":1,\\\"structured_by\\\":\\\"custom\\\",\\\"unit\\\":\\\"59099fa81074d.592565a4bf848\\\",\\\"label\\\":\\\"Phone number\\\",\\\"placeholder\\\":\\\"Enter phone\\\",\\\"icon\\\":null,\\\"tooltip\\\":null,\\\"custom_html\\\":null,\\\"field_html\\\":\\\"default\\\",\\\"second_table\\\":null,\\\"second_column\\\":null,\\\"required\\\":\\\"0\\\",\\\"visibility\\\":\\\"1\\\",\\\"default_value\\\":null,\\\"available_for_users\\\":\\\"1\\\",\\\"before_save\\\":\\\"\\\"}\"', '59099fa81074d.592565a4bf848', 'default', NULL, 'custom', 1, 1, '2017-06-21 01:57:44', '2017-06-21 02:02:16'),
(17, 'User id', '594a3811b2046', 'users_profile', 'user_id', NULL, NULL, 0, 0, 3, 'BBGetAuthUserID', '', NULL, NULL, NULL, NULL, '\"\"', '591d7c9fcdfcb.591d7c9fe9e32', 'no', NULL, 'custom', 1, 1, '2017-06-21 02:10:41', '2017-06-21 02:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `default_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8_unicode_ci,
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'core',
  `fields_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_builder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_fields` text COLLATE utf8_unicode_ci,
  `form_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `slug`, `default_field`, `settings`, `blocked`, `created_at`, `updated_at`, `type`, `created_by`, `fields_type`, `form_builder`, `required_fields`, `form_type`) VALUES
(1, 'Registration Form', '58vg8d7vw4nhn1', NULL, '\"{\\\"message\\\":\\\"Congratulations !!! you have successfully registered, welcome to our Magic CMS\\\",\\\"is_ajax\\\":null,\\\"event\\\":\\\"App\\\\\\\\Events\\\\\\\\FormSubmit\\\"}\"', 0, '2017-05-10 12:37:39', '2017-06-30 02:59:19', 'new', 'core', 'users', 'CustomBuilder', '[\"email\",\"password\",\"status\",\"username\"]', 'user'),
(2, 'Form Blog', 'blog_form', NULL, NULL, 0, '2017-05-10 12:41:23', '2017-05-10 12:41:23', 'new', 'plugin', 'blogs', NULL, NULL, NULL),
(3, 'Create Page', 'CustomBuilder', NULL, '\"{\\\"message\\\":\\\"Custom\\\",\\\"is_ajax\\\":null}\"', 0, '2017-05-15 13:13:19', '2017-06-14 05:10:42', 'new', 'core', 'frontend_pages', 'CustomBuilder', NULL, NULL),
(4, 'User profile', '4c4sd5c4d5s', NULL, '\"{\\\"message\\\":\\\"\\\",\\\"redirect_Page\\\":\\\"alert\\\"}\"', 0, '2017-05-15 13:13:19', '2017-06-19 01:45:42', 'new', 'core', 'users', 'CustomBuilder', NULL, NULL),
(8, 'Create User Form', 'csdcdscdscsdc', NULL, '\"{\\\"message\\\":\\\"\\\",\\\"is_ajax\\\":\\\"no\\\"}\"', 0, '2017-05-10 12:37:39', '2017-06-13 06:47:47', 'new', 'core', 'users', 'CustomBuilder', '[\"email\",\"password\",\"status\",\"username\"]', 'admin'),
(9, 'Testing name', '5948f32fc0306', NULL, '\"{\\\"message\\\":\\\"\\\",\\\"redirect_Page\\\":\\\"alert\\\"}\"', 0, '2017-06-20 03:04:31', '2017-06-20 04:50:04', 'edit', 'custom', 'users', 'CustomBuilder', NULL, 'user'),
(10, 'Profile', '594a362c4735f', NULL, '\"{\\\"message\\\":\\\"\\\",\\\"redirect_Page\\\":\\\"alert\\\"}\"', 0, '2017-06-21 02:02:36', '2017-06-21 02:02:36', 'edit', 'custom', 'users_profile', 'CustomBuilder', NULL, 'user'),
(11, 'Profile new', '594a4369402d8', NULL, '\"{\\\"message\\\":\\\"\\\",\\\"redirect_Page\\\":\\\"alert\\\"}\"', 0, '2017-06-21 02:59:05', '2017-06-21 02:59:05', 'edit', 'custom', 'users_profile', 'CustomBuilder', NULL, 'user'),
(12, 'Edit Users', 'user_edit_form', NULL, '\"{\\\"message\\\":\\\"\\\",\\\"redirect_Page\\\":\\\"alert\\\"}\"', 0, '2017-06-26 10:22:52', '2017-06-26 10:22:52', 'edit', 'custom', 'users', 'CustomBuilder', NULL, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `form_entries`
--

CREATE TABLE `form_entries` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `data` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_entries`
--

INSERT INTO `form_entries` (`id`, `form_id`, `user_id`, `ip`, `data`, `created_at`, `updated_at`) VALUES
(3, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";a:5:{s:5:\"email\";s:29:\"edo.terccccakyan@gmail.comccc\";s:8:\"username\";s:13:\"csdcdscdscsdc\";s:8:\"password\";s:60:\"$2y$10$okSx8NvbCmfPf1DnXBBPOu0556QXI0VGiC7u3Qa1I2qPiz67wY41.\";s:6:\"status\";s:8:\"inactive\";s:7:\"role_id\";s:1:\"6\";}}', '2017-06-22 02:52:17', '2017-06-22 02:52:17'),
(4, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";a:5:{s:5:\"email\";s:13:\"dede@ccdc.cdc\";s:8:\"username\";s:11:\"vrvrvrfvrfv\";s:8:\"password\";s:60:\"$2y$10$jYnltWeQtyh6h6Gu4wbNWOW4jBSw.lLmJIUTs7g5m3XBNOeb2ceFG\";s:6:\"status\";s:8:\"inactive\";s:7:\"role_id\";s:1:\"6\";}}', '2017-06-23 01:56:46', '2017-06-23 01:56:46'),
(5, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";a:5:{s:5:\"email\";s:13:\"dede@ccdc.cdc\";s:8:\"username\";s:11:\"vrvrvrfvrfv\";s:8:\"password\";s:60:\"$2y$10$M3KjzeOpHrPzXMJZrzMsQOdb/8mGGV5DJEWSDr.WEwikgcNpJrza.\";s:6:\"status\";s:8:\"inactive\";s:7:\"role_id\";s:1:\"6\";}}', '2017-06-23 01:57:21', '2017-06-23 01:57:21'),
(6, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";a:5:{s:5:\"email\";s:13:\"dede@ccdc.cdc\";s:8:\"username\";s:11:\"vrvrvrfvrfv\";s:8:\"password\";s:60:\"$2y$10$6ydVy39f6cxr2xV1mnhEjuOVU.1iifLiRovdnVuZDXm3AeopJU0Ly\";s:6:\"status\";s:8:\"inactive\";s:7:\"role_id\";s:1:\"6\";}}', '2017-06-23 01:57:43', '2017-06-23 01:57:43'),
(7, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";a:5:{s:5:\"email\";s:13:\"dede@ccdc.cdc\";s:8:\"username\";s:11:\"vrvrvrfvrfv\";s:8:\"password\";s:60:\"$2y$10$fLxlUyfi2LFcxFXCEZylM.viUyWc.433dqBwzKd7SYJ4SHNtBmxoe\";s:6:\"status\";s:8:\"inactive\";s:7:\"role_id\";s:1:\"6\";}}', '2017-06-23 01:58:12', '2017-06-23 01:58:12'),
(8, 12, 1, '127.0.0.1', 'a:0:{}', '2017-06-25 22:35:45', '2017-06-26 10:35:45'),
(9, 12, 1, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:39;s:5:\"email\";s:19:\"rcdccrcrc2@kcd.cdcd\";s:8:\"username\";s:9:\"rrrrrrrrr\";s:8:\"password\";s:60:\"$2y$10$844B/iAXldmxHyX.sDl6TOEGKZ2dxf1OdvpzNHvtE3L2WYmLhbw3e\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:6:\"active\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-25 23:01:42', '2017-06-26 11:01:42'),
(10, 12, 1, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:40;s:5:\"email\";s:12:\"vgvgv@jjj.cc\";s:8:\"username\";s:9:\"cdcdee223\";s:8:\"password\";s:60:\"$2y$10$Z8YGpih1Gg6xk/pOsFXoKuKhcR1Nhd5M5n.mE6/bjP2z0WMWAVLPm\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:6:\"active\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-25 23:02:14', '2017-06-26 11:02:14'),
(11, 12, 1, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:44;s:5:\"email\";s:20:\"rcrcrc2@kcd.cdcddddd\";s:8:\"username\";s:14:\"dcdcdccccccccc\";s:8:\"password\";s:60:\"$2y$10$ZJkPzP5BJ4N1FTGKuUmOROmWaooppBYiJPh1j0zcG.V8s2KwcXtKW\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:6:\"active\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-25 23:04:32', '2017-06-26 11:04:32'),
(12, 12, 1, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:45;s:5:\"email\";s:19:\"rcrcrc2@kcd.cdcdddd\";s:8:\"username\";s:9:\"dcdcdcccc\";s:8:\"password\";s:60:\"$2y$10$W1knNjM10fRVqMBpSn//2uaoEiL0KD4EtgOczyzxI7rjPmt/jarqG\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:6:\"active\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-25 23:24:51', '2017-06-26 11:24:51'),
(13, 12, 1, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:24;s:5:\"email\";s:23:\"rcrcrc2@kcd.ggggggggggg\";s:8:\"username\";s:15:\"yyyyyyyyyyyyyyy\";s:8:\"password\";s:60:\"$2y$10$6RhYIszvs4JZbwArr4oWceiq4TOcahU5a34iSt.mMsmF8R/Knu/VG\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:6:\"active\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-27 00:18:16', '2017-06-27 00:18:16'),
(14, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:46;s:5:\"email\";s:17:\"eeeeeeee@cccc.ccc\";s:8:\"username\";s:13:\"cdecdecedcedc\";s:8:\"password\";s:60:\"$2y$10$wL7IzKmeSITHrTOi9fJCCesPQK3G.6dX3QhDSFsuh7jjU0ynaMxsS\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:8:\"inactive\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-30 03:06:16', '2017-06-30 03:06:16'),
(15, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:47;s:5:\"email\";s:17:\"eeeeeeee@cccc.ccc\";s:8:\"username\";s:13:\"cdecdecedcedc\";s:8:\"password\";s:60:\"$2y$10$/R5KvuDsFLIsZmHxVwbJY.KRuJL59yZfElSx3HRfEmVuGrFcQt7fi\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:8:\"inactive\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-30 03:07:59', '2017-06-30 03:07:59'),
(16, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:48;s:5:\"email\";s:17:\"eeeeeeee@cccc.ccc\";s:8:\"username\";s:13:\"cdecdecedcedc\";s:8:\"password\";s:60:\"$2y$10$aweJZSgjW3/dz4xs.n1t/OJkspYiDBY9tIQhkFKJ8aYwZSpQHKRE2\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:8:\"inactive\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-30 03:08:44', '2017-06-30 03:08:44'),
(17, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:49;s:5:\"email\";s:17:\"eeeeeeee@cccc.ccc\";s:8:\"username\";s:13:\"cdecdecedcedc\";s:8:\"password\";s:60:\"$2y$10$m1cVrGUm6ULO0UC.BxnPZeoW/q95QKuDXzNcVLyznYonMNSoxHQcK\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:8:\"inactive\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-30 03:09:19', '2017-06-30 03:09:19'),
(18, 1, 0, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:50;s:5:\"email\";s:17:\"eeeeeeee@cccc.ccc\";s:8:\"username\";s:13:\"cdecdecedcedc\";s:8:\"password\";s:60:\"$2y$10$vFE97.FB5JO0e21Pz2cm3efGUky.d9DBogu/4qje36a5Ac9qGycsi\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:8:\"inactive\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-06-30 03:09:52', '2017-06-30 03:09:52'),
(19, 12, 1, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:24;s:5:\"email\";s:23:\"rcrcrc2@kcd.ggggggggggg\";s:8:\"username\";s:15:\"yyyyyyyyyyyyyyy\";s:8:\"password\";s:60:\"$2y$10$2hkHqLk3qbEbrYEhLyn8Peyz2/PpLx0vXiFrfMOUYSRXO3QgiMfG6\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:6:\"active\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-07-04 00:38:06', '2017-07-04 00:38:06'),
(20, 12, 1, '127.0.0.1', 'a:1:{s:5:\"users\";O:8:\"stdClass\":11:{s:2:\"id\";i:24;s:5:\"email\";s:19:\"rcrcrc2@kcd.gggggdr\";s:8:\"username\";s:15:\"yyyyyyyyyyyyyyy\";s:8:\"password\";s:60:\"$2y$10$T3FnpHfYqW3ICcoNmJ9S7uKPF7G5OuoPcwHEZL1pdyru6ZAF2cURi\";s:13:\"membership_id\";i:0;s:7:\"role_id\";i:6;s:6:\"status\";s:6:\"active\";s:5:\"token\";N;s:14:\"remember_token\";N;s:10:\"created_at\";N;s:10:\"updated_at\";N;}}', '2017-07-04 00:38:18', '2017-07-04 00:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `form_id` int(10) NOT NULL,
  `field_slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`form_id`, `field_slug`, `created_at`, `updated_at`) VALUES
(3, '5931e52d22e51', '2017-06-14 07:59:38', '2017-06-14 07:59:38'),
(8, '593fb1c63a9e7', '2017-06-15 03:14:56', '2017-06-15 03:14:56'),
(8, '593fd18feaf1a', '2017-06-15 03:14:56', '2017-06-15 03:14:56'),
(8, '593fb1c63a9e7', '2017-06-15 03:14:56', '2017-06-15 03:14:56'),
(4, '593fb1c63a9e7', '2017-06-19 01:45:42', '2017-06-19 01:45:42'),
(4, '593fb2fb059d4', '2017-06-19 01:45:42', '2017-06-19 01:45:42'),
(4, '593fba97df0f4', '2017-06-19 01:45:42', '2017-06-19 01:45:42'),
(4, '593fd18feaf1a', '2017-06-19 01:45:42', '2017-06-19 01:45:42'),
(4, '593fd053a1a69', '2017-06-19 01:45:42', '2017-06-19 01:45:42'),
(1, '593fb1c63a9e7', '2017-06-19 01:46:02', '2017-06-19 01:46:02'),
(1, '593fb2fb059d4', '2017-06-19 01:46:02', '2017-06-19 01:46:02'),
(1, '593fba97df0f4', '2017-06-19 01:46:02', '2017-06-19 01:46:02'),
(1, '593fd18feaf1a', '2017-06-19 01:46:02', '2017-06-19 01:46:02'),
(1, '593fd053a1a69', '2017-06-19 01:46:02', '2017-06-19 01:46:02'),
(9, '593fb1c63a9e7', '2017-06-20 04:50:04', '2017-06-20 04:50:04'),
(9, '593fb2fb059d4', '2017-06-20 04:50:04', '2017-06-20 04:50:04'),
(9, '593fd18feaf1a', '2017-06-20 04:50:04', '2017-06-20 04:50:04'),
(10, '594a3508ded2c', '2017-06-21 02:56:52', '2017-06-21 02:56:52'),
(10, '594a3811b2046', '2017-06-21 02:56:52', '2017-06-21 02:56:52'),
(11, '594a3508ded2c', '2017-06-21 03:04:57', '2017-06-21 03:04:57'),
(11, '594a3811b2046', '2017-06-21 03:04:57', '2017-06-21 03:04:57'),
(12, '593fd053a1a69', '2017-06-27 00:00:20', '2017-06-27 00:00:20'),
(12, '593fba97df0f4', '2017-06-27 00:00:20', '2017-06-27 00:00:20'),
(12, '593fb1c63a9e7', '2017-06-27 00:00:20', '2017-06-27 00:00:20'),
(12, '593fb2fb059d4', '2017-06-27 00:00:20', '2017-06-27 00:00:20'),
(12, '593fd18feaf1a', '2017-06-27 00:00:20', '2017-06-27 00:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `form_settings`
--

CREATE TABLE `form_settings` (
  `id` int(10) NOT NULL,
  `form_id` varchar(255) NOT NULL,
  `default_settings` text,
  `additional_settings` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_settings`
--

INSERT INTO `form_settings` (`id`, `form_id`, `default_settings`, `additional_settings`, `created_at`, `updated_at`) VALUES
(1, '58e21be5a8bd8', NULL, '{\"units\":[\"58e3713a9b729.58e3713aea18c\",\"58e39364ed38d.58e3936517320\"]}', '2017-04-03 00:16:18', '2017-04-04 08:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `frameworks`
--

CREATE TABLE `frameworks` (
  `id` int(10) NOT NULL,
  `version` varchar(20) NOT NULL,
  `additional_data` text,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frameworks`
--

INSERT INTO `frameworks` (`id`, `version`, `additional_data`, `active`, `created_at`, `updated_at`) VALUES
(12, 'framwork21', NULL, 0, '2017-04-26 07:40:54', '2017-08-29 04:07:11'),
(14, '0.04', NULL, 0, '2017-04-27 02:40:37', '2017-08-29 04:07:20'),
(21, 'framework_0.07', NULL, 0, '2017-04-28 05:24:42', '2017-08-29 04:07:27'),
(28, 'framework_0.11', NULL, 1, '2017-04-28 07:16:00', '2017-04-28 07:19:47'),
(31, 'framework_0.03', NULL, 2, '2017-04-28 08:11:15', '2017-05-30 05:37:06'),
(34, 'framework_0.12', NULL, 1, '2017-04-28 09:01:56', '2017-05-10 08:54:14'),
(39, 'framework_0.15', NULL, 1, '2017-05-11 04:53:06', '2017-05-12 06:03:25'),
(40, 'framework_0.16', NULL, 1, '2017-05-12 06:03:10', '2017-05-26 08:18:35'),
(41, 'framework_0.17', NULL, 1, '2017-05-26 08:07:34', '2017-05-30 05:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_pages`
--

CREATE TABLE `frontend_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `page_access` tinyint(4) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `edited_by` int(10) UNSIGNED DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `page_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_layout_settings` text COLLATE utf8_unicode_ci,
  `main_content` longtext COLLATE utf8_unicode_ci,
  `header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'editor',
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_pages`
--

INSERT INTO `frontend_pages` (`id`, `module_id`, `user_id`, `title`, `slug`, `url`, `status`, `page_access`, `type`, `edited_by`, `permission`, `parent_id`, `page_layout`, `page_layout_settings`, `main_content`, `header`, `footer`, `settings`, `content_type`, `template`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Home', 'home', '/', 'published', 0, 'core', 1, '', NULL, 'front_layout_with_2_col.cccccccccc', '{\"sidebar_place_holder_left\":\"frontend_sidebar_3434343434.rrededed4\"}', '<div> </div>\r\n\r\n \r\n\r\n\r\n\r\n<div> </div>\r\n\r\n \r\n\r\n\r\n\r\n<div class=\"container-fluid\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"row\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-md-12\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"jumbotron\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<h2>Hello, world! abokamal</h2>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nThis is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.\r\n\r\n\r\n\r\n[url=#]Learn more[/url]\r\n[img]http://lorempixel.com/output/people-q-c-600-200-1.jpg[/img]</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"row\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-md-4\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"thumbnail\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"caption\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<h3>Thumbnail label</h3>\r\n\r\n\r\n\r\n\r\n\r\n\r\nCras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\n\r\n\r\n[url=#]Action[/url] [url=#]Action[/url]\r\n\r\n</div>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-md-4\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"thumbnail\">[img]http://lorempixel.com/output/city-q-c-600-200-1.jpg[/img]\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"caption\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<h3>Thumbnail label</h3>\r\n\r\n\r\n\r\n\r\n\r\n\r\nCras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\n\r\n\r\n[url=#]Action[/url] [url=#]Action[/url]</div>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-md-4\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"thumbnail\">[img]http://lorempixel.com/output/sports-q-c-600-200-1.jpg[/img]\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"caption\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<h3>Thumbnail label</h3>\r\n\r\n\r\n\r\n\r\n\r\n\r\nCras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\n\r\n\r\n[url=#]Action[/url] [url=#]Action[/url]\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"media\">[url=#][img]http://lorempixel.com/64/64/[/img][/url]\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"media-body\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<h4 class=\"media-heading\">sted media heading</h4>\r\n\r\n\r\n\r\n\r\n\r\n\r\nCras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"media\">[url=#][img]http://lorempixel.com/64/64/[/img][/url]\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"media-body\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n<h4 class=\"media-heading\">ted media heading</h4>\r\n\r\n\r\n\r\n\r\n\r\n\r\namet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"panel panel-default\">\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"panel-heading\">\r\n\r\n\r\n\r\n\r\n\r\n<h3 class=\"panel-title\">Panel title</h3>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"panel-body\">Panel content</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"panel-footer\">Panel footer</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"row\"> </div>\r\n</div>\r\n\r\n \r\n\r\n\r\n\r\n<div> </div>', '1', '1', '{\"main-wrapper-color\":\"#28d5ed\",\"main_style\":\"class_container_new_black\",\"top_section_event\":\"1\",\"sidebar_place_holder_first\":\"\",\"sidebar_place_holder_first_style\":\"cms-maincontainer-light\",\"right_section_event\":\"1\",\"sidebar_place_holder_second\":\"\",\"sidebar_place_holder_second_style\":\"cms-panelcontainer-heading\",\"unit_event\":\"1\",\"unit_placholder\":\"\",\"unit_style\":\"cms-maincontainer-light\",\"header\":\"1\",\"footer\":\"1\",\"layout_id\":\"58a5e002cd23c.58a73c3c4d97b\",\"pl_live_settings\":\"page_live\",\"page_id\":\"1\"}', 'template', '6556bfc723af88.5rft5726367m', '2017-02-14 20:00:00', '2017-10-18 09:54:12'),
(2, NULL, 1, 'Login', 'login', '/login-test', 'published', 1, 'core', NULL, '', NULL, '59085b9b20526.59087192b63db', NULL, '', '0', '0', NULL, 'editor', NULL, NULL, '2017-06-07 13:41:10'),
(3, NULL, 1, 'Register', 'register', '/register', 'published', 1, 'core', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, NULL, NULL),
(4, NULL, 1, 'Error', 'error', '', 'published', 1, 'core', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, NULL, NULL),
(5, NULL, 1, 'Term & conditions', 'tc', '/terms-conditions', 'published', 1, 'core', NULL, '', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '1', '1', NULL, 'editor', NULL, NULL, '2017-09-13 16:29:00'),
(6, NULL, 1, 'Privacy', 'privacy', '/privacy', 'published', 1, 'core', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, NULL, NULL),
(7, NULL, 1, 'Profile', 'profile', '/profile', 'published', 1, 'core', NULL, '', NULL, '59085b9b20526.59087192b63db', '{\"sidebar_place_holder_left\":\"\",\"sidebar_place_holder_right\":\"\"}', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table class=\"table table-bordered\">\r\n<tbody id=\"field_list\">\r\n<tr class=\"field-row\">\r\n<td>\r\n[edit-form slug=594a4369402d8 edit=user_id]\r\n\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', '1', '1', NULL, 'editor', NULL, NULL, '2017-06-26 03:03:52'),
(8, NULL, 1, 'About', 'about', '/about', 'published', 1, 'core', NULL, '', NULL, '59085b9b20526.59087192b63db', '{\"sidebar_place_holder_left\":\"5914005a86671.5914005b03a5d\",\"sidebar_place_holder_right\":\"59140174286e2.591401749ae5d\"}', '<form accept-charset=\"UTF-8\" action=\"http://dev.bootydev.co.uk/save-form\" method=\"POST\"><input name=\"_token\" type=\"hidden\" value=\"OGGD3Nb8duTp4mZcxx6rh29oo9TGT6IkYzuPgBan\" /> <input name=\"form_id\" type=\"hidden\" value=\"1\" />\r\n<div class=\"row\">\r\n<div class=\"col-xs-12 text-right \"><button class=\"btn btn-success\" type=\"submit\">Save</button></div>\r\n<div class=\"col-xs-12 col-sm-9 connected ui-sortable\" style=\"min-height: 200px;\" data-bbsortable=\"target\">\r\n<div class=\"panel hide panel-default custompanel m-t-20 ui-sortable-handle\">\r\n<div class=\"panel-heading\">Page Tags</div>\r\n<div class=\"panel-body\">\r\n<div class=\"row\">ss</div>\r\n</div>\r\n</div>\r\n<div class=\"panel panel-default custompanel m-t-20\" data-fieldid=\"7\" data-fieldslug=\"5937c720c3e81\">\r\n<div class=\"panel-heading\">Email</div>\r\n<div class=\"panel-body\">\r\n<div data-class=\"setting\" data-type=\"text\" data-size=\"col-sm-12\">\r\n<div class=\"row fieldrow \" data-fieldpreview=\"maincontainerclass\" data-control=\"class\"><label class=\"col-sm-4 fieldlabel\" for=\"singleline\" data-fcontrol=\"label\"> <span data-fieldpreview=\"label\" data-control=\"html\">Email</span> </label>\r\n<div class=\"col-sm-6\" data-fcontrol=\"input\"><input name=\"users_email\" type=\"text\" /></div>\r\n<div class=\"col-sm-2\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"panel panel-default custompanel m-t-20\" data-fieldid=\"8\" data-fieldslug=\"5937c75923760\">\r\n<div class=\"panel-heading\">Password</div>\r\n<div class=\"panel-body\">\r\n<div data-class=\"setting\" data-type=\"text\" data-size=\"col-sm-12\">\r\n<div class=\"row fieldrow \" data-fieldpreview=\"maincontainerclass\" data-control=\"class\"><label class=\"col-sm-4 fieldlabel\" for=\"singleline\" data-fcontrol=\"label\"> <span data-fieldpreview=\"label\" data-control=\"html\">Password</span> </label>\r\n<div class=\"col-sm-6\" data-fcontrol=\"input\"><input name=\"users_password\" type=\"text\" /></div>\r\n<div class=\"col-sm-2\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-12 col-sm-3 create connected ui-sortable\" style=\"min-height: 200px;\" data-bbsortable=\"source\">\r\n<div class=\"panel panel-default custompanel m-t-20 ui-sortable-handle\">\r\n<div class=\"panel-heading\">Page Tags</div>\r\n<div class=\"panel-body\">\r\n<div class=\"row\">ss</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div data-exportwithjs=\"js\">&nbsp;</div>\r\n</form>', '0', '0', NULL, 'editor', NULL, NULL, '2017-06-08 04:01:10'),
(9, NULL, 1, 'All Classify', 'all-classify', '/all-classify', 'published', 1, 'classify', 1, NULL, NULL, '0', NULL, NULL, '1', '1', '{\"header\":\"1\",\"footer\":\"1\",\"layout_id\":\"0\",\"page_id\":\"9\"}', 'editor', NULL, '2017-03-02 06:28:00', '2017-03-02 02:29:33'),
(10, NULL, 1, 'All Tags', 'all-tags', '/all-tags', 'published', 1, 'tags', NULL, NULL, NULL, '58b423ffc5f8d.58b472610410a', NULL, NULL, '1', '1', '{\"main-wrapper-color\":\"#00AABB\",\"place_holder_main_view\":\"58b7c3f28061e.58b7c3fdac61b\",\"header\":\"1\",\"footer\":\"1\",\"layout_id\":\"58b423ffc5f8d.58b472610410a\",\"pl_live_settings\":\"page_live\",\"page_id\":\"10\"}', 'editor', NULL, '2017-03-02 06:40:40', '2017-03-02 03:23:39'),
(15, NULL, 1, 'test', '58a5eb66e5670', '/test', 'published', 0, 'custom', 1, NULL, NULL, 'front_layout_with_2_col.cccccccccc', '{\"sidebar_place_holder_left\":\"frontend_sidebar_3434343434.rrededed4\"}', '<div> </div>\r\n \r\n\r\n<div> </div>\r\n\r\n\r\n\r\n\r\n<div> </div>', '1', '1', '{\"header\":\"1\",\"footer\":\"0\",\"layout_id\":\"0\",\"page_id\":\"15\"}', 'template', '6556bfc723tt66.profilecontent', '2017-02-16 11:11:50', '2017-10-14 18:40:10'),
(16, NULL, 1, 'Edo', '58ac7a740acd7', '/edo-test', 'published', 1, 'custom', 1, NULL, NULL, '59085b9b20526.59085b9b57989', '{\"sidebar_place_holder_left\":\"\",\"sidebar_place_holder_right\":\"\"}', '<div class=\"panel panel-default\">\r\n<div class=\"panel-heading\">Panel heading without title</div>\r\n<div class=\"panel-body\">Panel content</div>\r\n</div>\r\n<div class=\"panel panel-default\">\r\n<div class=\"panel-heading\">\r\n<h3 class=\"panel-title\">Panel title</h3>\r\n</div>\r\n<div class=\"panel-body\">Panel content</div>\r\n<div class=\"panel-body\">&nbsp;</div>\r\n<div class=\"panel-body\">&nbsp;</div>\r\n<div class=\"panel-body\"><span style=\"color: #262626; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">[form slug=58vg8d7vw4nhn1]</span></div>\r\n<div class=\"panel-body\">&nbsp;</div>\r\n</div>', '1', '1', '{\"header\":\"1\",\"footer\":\"1\",\"layout_id\":\"58ff3b3617954.58ff47bde6091\",\"mw\":\"58b7c3f28061e.58b7c3f2b356b\",\"pl_live_settings\":\"page_live\",\"page_id\":\"16\"}', 'editor', NULL, '2017-02-21 13:35:48', '2017-06-08 04:01:19'),
(17, NULL, 1, 'abokamal', '58b81ed3894d7', '/all-classify/abokamal', 'draft', 1, 'classify', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 09:32:03', '2017-03-02 09:32:03'),
(18, NULL, 1, 'Armenia universities', '58b83a9fb2a8a', '/all-classify/armenia-universities', 'draft', 1, 'classify', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:30:39', '2017-03-02 11:30:39'),
(19, NULL, 1, 'YSU', '58b83ab0eb5db', '/all-classify/armenia-universities/ysu', 'draft', 1, 'classify', NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:30:56', '2017-03-02 11:30:56'),
(20, NULL, 1, 'SEUA', '58b83adeba455', '/all-classify/armenia-universities/seua', 'draft', 1, 'classify', NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:31:42', '2017-03-02 11:31:42'),
(21, NULL, 1, 'ASUE', '58b83b1891b8c', '/all-classify/armenia-universities/asue', 'draft', 1, 'classify', NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:32:40', '2017-03-02 11:32:40'),
(22, NULL, 1, 'Informatics and Applied Mathematics', '58b83b5ed2035', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics', 'draft', 1, 'classify', NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:33:50', '2017-03-02 11:35:26'),
(23, NULL, 1, 'Faculty of Physics', '58b83ba0396bb', '/all-classify/armenia-universities/ysu/faculty-of-physics', 'draft', 1, 'classify', NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:34:56', '2017-03-02 11:34:56'),
(24, NULL, 1, 'Faculty of Law', '58b83bb2dba90', '/all-classify/armenia-universities/ysu/faculty-of-law', 'draft', 1, 'classify', NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:35:14', '2017-03-02 11:35:14'),
(25, NULL, 1, 'Chair of Discrete Mathematics and Theoretical Informatics', '58b83c0698656', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-discrete-mathematics-and-theoretical-informatics', 'draft', 1, 'classify', NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:36:38', '2017-03-02 11:36:38'),
(26, NULL, 1, 'Chair of Numerical Analysis and Mathematical Modelling', '58b83c328dd42', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-numerical-analysis-and-mathematical-modelling', 'draft', 1, 'classify', NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:37:22', '2017-03-02 11:37:22'),
(27, NULL, 1, 'Chair of Programming and Information Technologies', '58b83c4975449', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-programming-and-information-technologies', 'draft', 1, 'classify', NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-02 11:37:45', '2017-03-02 11:37:45'),
(29, NULL, 1, 'New Page', '58bfe59b2a0c1', '', 'draft', 1, 'custom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'editor', NULL, '2017-03-08 07:06:03', '2017-03-08 07:06:03'),
(32, NULL, 1, 'no-css', '58bff66f862d8', '/no-css', 'published', 1, 'custom', 1, NULL, NULL, '58b423ffc5f8d.58b458402de69', NULL, '58fddb9fed935.58fddbbb04782', '0', '0', '{\"main-wrapper-color\":\"#00AABB\",\"place_holder_main_view\":\"58b40e580adcf.58b421e358486\",\"layout_id\":\"58b423ffc5f8d.58b458402de69\",\"mw\":\"58fddb9fed935.58fddbbb04782\",\"pl_live_settings\":\"page_live\",\"page_id\":\"32\"}', 'editor', NULL, '2017-03-08 08:17:51', '2017-04-24 06:36:52'),
(33, NULL, 1, 'all abokamal', 'abokamal_all_post', 'abokamal', 'published', 1, 'plugin', NULL, NULL, NULL, NULL, NULL, '58bd50b3af890.58bd50b3af89222', '1', NULL, NULL, 'editor', NULL, '2017-03-09 13:30:57', '2017-03-09 13:30:57'),
(34, NULL, 1, 'single abokamal', 'abokamal_single_post', '/abokamal/{param}', 'published', 1, 'plugin', 1, NULL, 33, NULL, NULL, '58c1bb81b27e4.58c1bb81eecd8', '1', '1', NULL, 'editor', NULL, '2017-03-09 13:30:57', '2017-03-10 14:53:02'),
(39, NULL, 1, 'all Auto', 'auto_all_post', '/auto', 'published', 1, 'plugin', 1, NULL, NULL, NULL, NULL, '58c694e586b9c.58c69b59b03db', '1', '1', NULL, 'editor', NULL, '2017-03-13 09:21:07', '2017-03-13 09:23:19'),
(40, NULL, 1, 'single Auto', 'auto_single_post', 'auto/{param}', 'published', 1, 'plugin', NULL, NULL, 39, NULL, NULL, '58c2ee34a873f.58c2eec08f7ea', NULL, NULL, NULL, 'editor', NULL, '2017-03-13 09:21:07', '2017-03-13 09:21:07'),
(41, NULL, 1, 'all expo', 'expo_all_post', 'expo', 'published', 1, 'plugin', NULL, NULL, NULL, NULL, NULL, '58c694e586b9c.58c97e456f9fd', NULL, NULL, NULL, 'editor', NULL, '2017-03-15 13:46:05', '2017-03-15 13:48:13'),
(42, NULL, 1, 'single expo', 'expo_single_post', 'expo/{param}', 'published', 1, 'plugin', NULL, NULL, 41, NULL, NULL, '58c2ee34a873f.58c2eec08f7ea', NULL, NULL, NULL, 'editor', NULL, '2017-03-15 13:46:05', '2017-03-15 13:46:05'),
(43, NULL, 1, 'all bike', 'bike_all_post', 'bike', 'published', 1, 'plugin', NULL, NULL, NULL, NULL, NULL, '58c694e586b9c.58c694e5b19b5', NULL, NULL, NULL, 'editor', NULL, '2017-03-22 13:14:00', '2017-03-22 13:14:00'),
(44, NULL, 1, 'single bike', 'bike_single_post', 'bike/{param}', 'published', 1, 'plugin', NULL, NULL, 43, NULL, NULL, '58c1bb81b27e4.58c1bb81eecd8', NULL, NULL, NULL, 'editor', NULL, '2017-03-22 13:14:00', '2017-03-22 13:14:00'),
(45, NULL, 1, 'all render', 'render_all_post', 'render', 'published', 1, 'plugin', NULL, NULL, NULL, NULL, NULL, '58c694e586b9c.58d50ba20610f', NULL, NULL, NULL, 'editor', NULL, '2017-03-24 08:04:13', '2017-03-24 08:06:19'),
(46, NULL, 1, 'single render', 'render_single_post', 'render/{param}', 'published', 1, 'plugin', NULL, NULL, 45, NULL, NULL, '58c1bb81b27e4.58d50b0eb055a', NULL, NULL, NULL, 'editor', NULL, '2017-03-24 08:04:13', '2017-03-24 08:04:13'),
(66, NULL, 1, 'New Page', '592cfef559281', '/new-page(66)', 'draft', 1, 'custom', NULL, NULL, NULL, 'pages_body/frontend_pages/592cfef559281.json', NULL, NULL, '1', '0', NULL, 'editor', NULL, '2017-05-30 00:11:17', '2017-05-30 00:11:17'),
(67, NULL, 1, 'my account', 'my-account', '/my-account', 'published', 1, 'core', 1, '', NULL, NULL, NULL, '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\r\n[unit slug=594bfc723af75.594c06bccf55e]\r\n</body><br /></html>', '0', '0', '', 'editor', NULL, '2017-02-14 20:00:00', '2017-09-14 09:09:47'),
(68, NULL, 1, 'general', 'myaccount-general', '/my-account/general', 'published', 1, 'core', 1, '', 67, '59085b9b20526.59087192b63db', '{\"sidebar_place_holder_left\":null,\"sidebar_place_holder_right\":null}', '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\r\nContent\r\n</body><br /></html>', '1', '1', '', 'editor', NULL, '2017-02-14 20:00:00', '2017-09-03 12:06:59'),
(69, NULL, 1, 'New Page', '5950dbc29c52b', '/new-page(69)', 'draft', 1, 'custom', NULL, NULL, NULL, '59085b9b20526.59087192b63db', NULL, NULL, '1', '0', NULL, 'editor', NULL, '2017-06-26 03:02:42', '2017-06-26 03:02:42'),
(70, NULL, 1, 'Alkash', '59b2cb52910fd', '/alkash', 'published', 1, 'custom', NULL, NULL, NULL, '59085b9b20526.59087192b63db', '{\"sidebar_place_holder_left\":null,\"sidebar_place_holder_right\":null}', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '1', '0', NULL, 'template', '6556bfc723af75.5rft5726367b', '2017-09-08 14:54:42', '2017-09-08 14:58:31'),
(71, NULL, 1, 'New Page', '59b3c3a24db63', '/new-page(71)', 'draft', 1, 'custom', NULL, NULL, NULL, '59085b9b20526.59087192b63db', NULL, NULL, '1', '0', NULL, 'editor', NULL, '2017-09-09 08:34:10', '2017-09-09 08:34:10'),
(72, NULL, 1, 'profile', '59bd5810e9e8b', '/profile', 'draft', 1, 'custom', NULL, NULL, NULL, 'front_layout.dc5dcd5c', '{\"sidebar_place_holder_left\":\"2345f2d9858ae.2345f2d9858au\",\"sidebar_place_holder_right\":\"frontend_sidebar_3434343434.rrededed4\"}', '<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\r\n\r\n</body><br /></html>', '1', '1', NULL, 'template', NULL, '2017-09-16 14:57:52', '2017-09-16 15:34:16'),
(73, 'terakyan/blog-hook', 1, 'All Posts', 'all-posts', '/all-posts', 'published', 0, 'plugin', 1, '', NULL, 'front_layout_with_2_col.cccccccccc', NULL, 'all_post.default', '1', '1', NULL, 'template', '6556bfc723af88.5rft5726367m', '2017-02-14 20:00:00', '2017-10-04 08:51:52'),
(74, 'terakyan/blog-hook', 1, 'Single Post', 'single-post', '/all-posts/{param}', 'published', 0, 'plugin', 1, '', 73, 'front_layout_with_2_col.cccccccccc', NULL, 'single_post.default', '1', '1', NULL, 'template', '6556bfc723af88.5rft5726367m', '2017-02-14 20:00:00', '2017-09-26 15:03:49'),
(75, NULL, 1, 'New Page', 'react-app', 'studios/react-app', 'published', 1, 'plugin', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '{\"file_path\":\"studios\\/src\\/Resources\\/Views\\/assets\\/EdoSahak\\/index.php\",\"edit_url\":\"\\/admin\\/studios\\/test-edit\"}', 'special', NULL, '2017-11-01 12:25:38', '2017-11-01 12:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_pages_tags`
--

CREATE TABLE `frontend_pages_tags` (
  `id` varchar(100) NOT NULL,
  `frontend_page_id` int(10) UNSIGNED NOT NULL,
  `tags_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_admin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `num_admin`, `created_at`, `updated_at`) VALUES
(1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hooks`
--

CREATE TABLE `hooks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'layout',
  `help_text` text,
  `slug` varchar(100) NOT NULL,
  `data` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hooks`
--

INSERT INTO `hooks` (`id`, `name`, `tag`, `author_id`, `type`, `help_text`, `slug`, `data`, `created_at`, `updated_at`) VALUES
(4, 'dgh', 'dsfth', 1, 'layout', NULL, 'b328357fc4add3f249a6e510f287422c', NULL, '2017-09-30 11:38:03', '2017-09-30 11:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE `mapping` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `json_data` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mapping`
--

INSERT INTO `mapping` (`id`, `name`, `json_data`, `created_at`, `updated_at`) VALUES
(1, 'New One', '{\"data_source\":\"file\",\"file-unit\":\"584060b0906df\",\"data_source_type_val\":\"english_name\",\"data_source_type_key\":\"english_name\",\"data_source_type_default\":\"Andorra\"}', '2016-12-09 12:02:26', '2016-12-09 12:02:26'),
(2, 'second', '{\"data_source\":\"related\",\"data_source_table_name\":\"users\",\"data_source_columns\":\"username\"}', '2016-12-09 16:05:20', '2016-12-09 16:05:20'),
(3, 'membership', '{\"data_source\":\"related\",\"data_source_table_name\":\"memberships\",\"data_source_columns\":\"id\"}', '2016-12-20 11:05:35', '2016-12-20 11:05:35'),
(5, 'FILE map', '{\"data_source\":\"file\",\"file-unit\":\"584060b0906df\",\"data_source_type_val\":\"english_name\",\"data_source_type_key\":\"english_name\",\"data_source_type_default\":\"Antigua and Barbuda\"}', '2016-12-21 03:50:50', '2016-12-21 03:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active_variation` int(11) NOT NULL,
  `ext` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alt_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `alt_text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `special` enum('all-access','no-access') COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `slug`, `special`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 'basic', NULL, 'Basic desc', NULL, '2016-12-05 06:24:22', '2016-12-05 03:23:23'),
(2, 'Pro', 'pro', NULL, 'Pro description', NULL, '2017-03-27 12:47:19', '2017-03-27 12:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `membership_permission`
--

CREATE TABLE `membership_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `membership_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `membership_permission`
--

INSERT INTO `membership_permission` (`id`, `page_id`, `membership_id`, `created_at`, `updated_at`) VALUES
(2, 39, 1, '2017-06-12 02:48:13', '2017-06-12 02:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `member_groups`
--

CREATE TABLE `member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT '0',
  `statuses` text COLLATE utf8_unicode_ci,
  `restrictions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_variation`
--

CREATE TABLE `menu_variation` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` int(10) UNSIGNED NOT NULL,
  `user_role` int(10) UNSIGNED NOT NULL,
  `menus_id` int(10) UNSIGNED NOT NULL,
  `is_core` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_variation`
--

INSERT INTO `menu_variation` (`id`, `title`, `class`, `user_role`, `menus_id`, `is_core`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Left Navbar Core - superadmin', 0, 1, 1, 1, 0, NULL, NULL),
(2, 'User Menu Core - superadmin', 0, 1, 2, 1, 0, NULL, NULL),
(3, 'Left Header Core - superadmin', 0, 1, 3, 1, 0, NULL, NULL),
(4, 'Right Header Core - superadmin', 0, 1, 4, 1, 0, NULL, NULL),
(5, 'Left Navbar Core - admin', 0, 2, 1, 1, 0, NULL, NULL),
(6, 'User Menu Core - admin', 0, 2, 2, 1, 0, NULL, NULL),
(7, 'Left Header Core - admin', 23, 2, 3, 1, 0, NULL, NULL),
(8, 'Right Header Core - admin', 0, 2, 4, 1, 0, NULL, NULL),
(9, 'Left Navbar Core - manager', 0, 10, 1, 1, 0, NULL, NULL),
(10, 'User Menu Core - manager', 0, 10, 2, 1, 0, NULL, NULL),
(11, 'Left Header Core - manager', 0, 10, 3, 1, 0, NULL, NULL),
(12, 'Right Header Core - manager', 0, 10, 4, 1, 0, NULL, NULL),
(13, 'Left Header Core - admin-copy', 0, 2, 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_02_10_145728_notification_categories', 1),
(2, '2014_08_01_210813_create_notification_groups_table', 1),
(3, '2014_08_01_211045_create_notification_category_notification_group_table', 1),
(4, '2015_01_20_084450_create_roles_table', 1),
(5, '2015_01_20_084455_users', 1),
(6, '2015_01_20_084525_create_role_user_table', 1),
(7, '2015_01_24_080208_create_permissions_table', 1),
(8, '2015_01_24_080433_create_permission_role_table', 1),
(9, '2015_05_05_212549_create_notifications_table', 1),
(10, '2015_06_06_211555_change_type_to_extra_in_notifications_table', 1),
(11, '2015_06_07_211555_alter_category_name_to_unique', 1),
(12, '2016_01_04_180640_create_layout_table', 1),
(13, '2016_01_27_184655_email_groups', 1),
(14, '2016_01_27_185016_emails', 1),
(15, '2016_03_01_065128_create_assests_table', 1),
(16, '2016_03_01_070558_create_core_pages_table', 1),
(17, '2016_03_01_072145_create_generalsettings_table', 1),
(18, '2016_03_01_072248_create_media_table', 1),
(19, '2016_03_01_072332_create_menus_table', 1),
(20, '2016_03_01_072359_create_modules_table', 1),
(21, '2016_03_01_101625_create_sdn_settings_table', 1),
(22, '2016_03_01_102012_create_sysevents_table', 1),
(23, '2016_03_01_102142_create_sysevent_template_table', 1),
(24, '2016_03_01_102213_create_tags_table', 1),
(25, '2016_03_01_102604_create_widgets_table', 1),
(26, '2016_03_03_103029_create_settings_table', 1),
(27, '2016_03_14_110040_create_themes_table', 1),
(28, '2016_03_14_110055_create_theme_pages_table', 1),
(29, '2016_03_14_110110_create_theme_setting_table', 1),
(30, '2016_04_13_155145_create_pagesettings_table', 1),
(31, '2016_04_22_085489_create_cs_comments_profile_table', 1),
(32, '2016_05_09_184800_create_sidebar_types_table', 1),
(33, '2016_05_09_184801_create_sidebars_table', 1),
(34, '2016_05_09_191524_create_sidebar_variations_table', 1),
(35, '2016_05_13_110403_users_profile_table', 1),
(36, '2016_05_25_065917_create_events_table', 1),
(37, '2016_06_06_065800_create_docs_table', 1),
(38, '2016_06_27_122433_urlmanager', 1),
(39, '2016_08_16_055900_create_notfound_table', 1),
(40, '2016_08_17_110110_create_theme_settings_table', 1),
(41, '2016_09_06_090405_create_statuses_table', 1),
(42, '2016_09_07_085416_create_members_table', 1),
(43, '2016_09_07_165026_create_restrictions_table', 1),
(44, '2016_09_26_191229_create_admin_pages_table', 1),
(45, '2016_09_30_121042_create_admin_profiles_table', 1),
(46, '2016_09_30_123039_create_menu_data_table', 1),
(47, '2016_09_30_123124_create_menu_variation_table', 1),
(48, '2016_10_11_095608_create_styles_table', 1),
(49, '2016_10_11_095622_create_style_items_table', 1),
(50, '2016_10_20_123039_create_menu_table', 1),
(51, '2016_11_09_185831_creat_taxonomy_table', 1),
(52, '2016_11_09_191131_createte_terms_table', 1),
(53, '2016_11_19_153132_create_fields_table', 1),
(54, '2016_11_27_120932_create_forms_table', 1),
(55, '2016_11_27_121108_create_form_field_table', 1),
(56, '2015_01_20_084446_create_memberships_table', 2),
(57, '2015_01_24_080434_create_membership_permission_table', 3),
(58, '2016_10_12_095607_create_profiles_table', 4),
(59, '2016_10_12_095608_create_profile_styles_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `folder_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author_site` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('core','custom') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'core',
  `is_deleteable` tinyint(4) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `plugin_data` text COLLATE utf8_unicode_ci NOT NULL,
  `have_setting` tinyint(4) NOT NULL,
  `setting_contents` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `parent_id`, `title`, `slug`, `status`, `folder_name`, `version`, `author`, `author_site`, `type`, `is_deleteable`, `description`, `plugin_data`, `have_setting`, `setting_contents`, `created_at`, `updated_at`) VALUES
(1, 0, 'Packege', 'packeges', 'true', 'Packeges', '1.0', '', '', 'core', 1, 'packeges', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(2, 0, 'Users', 'users', 'true', 'Users', '1.0', '', '', 'core', 1, 'Users', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(3, 0, 'Media', 'media', 'true', 'Media', '1.0', '', '', 'core', 1, 'media', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(4, 0, 'Create', 'create', 'true', 'Create', '1.0', '', '', 'core', 1, 'create', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(5, 0, 'Settings', 'settings', 'true', 'Settings', '1.0', '', '', 'core', 1, 'settings', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(6, 0, 'Assets', 'assets', 'true', 'Assets', '1.0', '', '', 'core', 1, 'assets', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(7, 0, 'Tools', 'tools', 'true', 'Tools', '1.0', '', '', 'core', 1, 'Tools', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(8, 0, 'Extra', 'extra', 'true', 'Extra', '1.0', '', '', 'core', 1, 'Extra', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(9, 0, 'Sections', 'sections', 'true', 'Sections', '1.0', '', '', 'core', 1, 'Sections', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(10, 0, 'Cashier', 'cashier', 'true', 'Cashier', 'V 1.0', 'Edo', 'http://edo.bootydev.co.uk/', 'core', 1, 'Laravel Cashier provides an expressive, fluent interface to Stripe\'s subscription billing services.', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(11, 0, 'Cloud', 'cloud', 'false', 'Cloud', 'V 1', 'Eduard Terakyan', 'http://edo.bootydev.co.uk', 'custom', 1, 'This is Cloud Module description', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(12, 0, 'Backend', 'backend', 'true', 'Backend', 'V 1', 'core', 'http://edo.bootydev.co.uk/', 'custom', 1, 'this is Backend module description ', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(13, 3, 'Extramedia', 'extramedia', 'true', 'Media', '1.0.0', 'muz', 'muz', 'custom', 1, 'asd asd sadf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdfsadfs', 'a:2:{s:5:\"files\";a:5:{i:0;s:61:\"appdata/app/Modules/Media/AddonSidebar/ExtramediaExtender.php\";i:1;s:58:\"appdata/app/Modules/Media/ExtraRoutes/extramediaroutes.php\";i:2;s:67:\"appdata/app/Modules/Media/Http/Controllers/ExtramediaController.php\";i:3;s:69:\"appdata/app/Modules/Media/Database/Seeds/ExtramediaDatabaseSeeder.php\";i:4;s:62:\"appdata/app/Modules/Media/Resources/Views/extramedia.blade.php\";}s:5:\"links\";a:2:{i:0;s:12:\"/admin/media\";i:1;s:20:\"/admin/media/setting\";}}', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(14, 0, 'CommentsSystem', 'commentssystem', '1', 'CommentsSystem', 'v 1', 'core', 'cccccc', 'core', 1, '', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(15, 0, 'Modules', 'modules', '1', 'Modules', 'v 1', 'core', 'modules', 'core', 1, 'this is modules module description ', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(16, 0, 'Frontend', 'frontend', 'true', 'Frontend', '1', 'edo', 'edo.com', 'core', 1, '', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(17, 0, 'Membership', 'membership', 'true', 'Membership', 'v 1', 'Edo', 'http://edo.bootydev.co.uk/', 'core', 1, '', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(18, 0, 'Connector', 'connector', 'true', 'Connector', 'v 1', 'Edo', 'http://edo.bootydev.co.uk/', 'core', 1, 'Connector', '', 0, '', '2016-11-27 04:19:45', '2016-11-27 04:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `footer` tinyint(4) NOT NULL DEFAULT '0',
  `header` tinyint(4) NOT NULL DEFAULT '0',
  `body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` int(11) NOT NULL,
  `page` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `footer`, `header`, `body`, `layout`, `page`, `created_at`, `updated_at`) VALUES
(1, 0, 0, NULL, 1, 'dashboard', NULL, NULL),
(2, 0, 0, NULL, 2, 'pages', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'roles',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `parent`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'users-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(2, 'All Users', 'users', 1, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(3, 'Configuration', 'users.configuration', 1, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(4, 'Packeges', 'packeges-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(5, 'Plugins', 'plugins', 4, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(6, 'Templates', 'templates', 4, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(7, 'Media', 'media-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(8, 'All Media', 'media', 7, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(9, 'Settings', 'media.setting', 7, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(10, 'Create', 'create-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(11, 'Widgets', 'create.widgets', 10, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(12, 'Menus', 'create.menu', 10, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(13, 'Taxonomy', 'create.taxonomy', 10, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(14, 'Tags', 'create.tag', 10, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(15, 'Forms', 'create.form', 10, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(16, 'Fields', 'create.form-fields', 10, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(17, 'Settings', 'settings-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(18, 'Emails', 'settings.email.core', 17, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(19, 'Language', 'settings.lang', 17, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(20, 'Back End', 'settings.backgeneral', 17, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(21, 'System', 'settings.system', 17, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(22, 'Api', 'api-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(23, 'Get Token', 'api', 22, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(24, 'List', 'api.list', 22, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(25, 'Builder', 'builder-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(26, 'Mini Builder', 'builders.mini', 25, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(27, 'Form Builder', 'builders.forms', 25, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(28, 'Classes', 'builders.classes', 25, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(29, 'Extra', 'builders.extra', 25, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(30, 'Assets builders', 'builders.panel', 25, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(31, 'Page Builder', 'builders.page', 25, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(32, 'Cashier', 'cashier', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(33, 'My Sections', 'my_sections-module', 0, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(34, 'Create new section', 'sections.sections', 33, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(35, 'Add User', 'users.add-member', 2, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(36, 'Edit Users', 'users.edit-users.{params}', 2, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(37, 'View User profile', 'profile.{params}', 2, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(38, 'Delete users', 'users.deleteMember.{params}', 2, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(39, 'Admins', 'users.admins', 2, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(40, 'Edit admins', 'users.editAdmins.{params}', 2, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(41, 'Create Admin', 'users.create-admin', 2, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(42, 'New Role', 'users.role', 3, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(43, 'Edit role', 'users.edit-role', 3, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(44, 'Delete Role', 'users.role.{params}', 3, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(45, 'Access', 'users.configuration.access.{params}', 3, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(46, 'Remove Access', 'users.configuration.remove-access', 3, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45'),
(47, 'Add Access', 'users.configuration.add-access', 3, NULL, 'roles', '2016-11-27 04:19:45', '2016-11-27 04:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `page_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'back',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `short description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `short description`, `author_id`, `title`, `description`, `image`, `slug`, `url`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 1, 'etrh6', 'First test post description', 'images/posts/59d37452af028.jpg', 'etrh6', NULL, NULL, NULL, 'published', '2017-10-03 09:28:18', '2017-10-03 09:28:18'),
(2, '', 1, 'Test post', 'Niki Postingan Sing Kepisan Njeh, Perdana Ngoten', 'images/posts/59d3745a59864.png', 'Test-post', NULL, NULL, NULL, 'published', '2017-10-03 09:28:26', '2017-10-03 09:28:26'),
(3, '', 1, 'Our Team Test Post', 'Hello Team Entrepreneurs are generally perceived as insane risk-takers. A surreal combination of Wolverine and Batman. Aggressive, yet calm, intuitive, yet rational and reckless and brave at the same time. But here’s the moot question: if only five per cent of entrepreneurs end up working on their original idea, only two per cent entrepreneurs end up providing value and only 0.5 per cent see monetary success, how should this dream really be pursued?  image   Jump off the cliff without a rope  In the movie The Dark Knight Rises, superhero Batman learns that you can go full throttle only when there is no back-up. Entrepreneurship teaches you to put all your eggs, fruits, hair-dryer, mobile phone and everything else into one basket. If you have a back-up, it’s you who has failed and not your startup. In any case, unless you took unreasonable risks while pursuing your startup, dealing with its failure will be an unpleasant and a ridiculously boring affair. It’s more like a step along the journey.', 'images/posts/59d3cbcd88273.jpg', 'Our-Team-Test-Post', NULL, NULL, NULL, 'published', '2017-10-03 15:41:33', '2017-10-03 15:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_default` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `user_id`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'new', 1, 1, NULL, '2017-01-26 12:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `profile_styles`
--

CREATE TABLE `profile_styles` (
  `profile_id` int(10) UNSIGNED NOT NULL,
  `style_item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile_styles`
--

INSERT INTO `profile_styles` (`profile_id`, `style_item_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(9, 1, NULL, NULL),
(9, 2, NULL, NULL),
(9, 3, NULL, NULL),
(9, 4, NULL, NULL),
(9, 5, NULL, NULL),
(9, 6, NULL, NULL),
(9, 11, NULL, NULL),
(9, 30, NULL, NULL),
(9, 35, NULL, NULL),
(9, 217, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pro_validator`
--

CREATE TABLE `pro_validator` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_validator`
--

INSERT INTO `pro_validator` (`id`, `title`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'test', 'integer|between:6,23|nullable', 'good code', '2017-05-22 06:59:28', '2017-05-22 06:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `special` enum('all-access','no-access') COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `special`, `access`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin', 'all-access', 0, 'Site Super Admin', NULL, NULL, NULL),
(2, 'admin', 'administrator', NULL, 0, 'Site administrator, can assign user roles', NULL, NULL, NULL),
(4, 'Staff', 'staff', NULL, 0, 'This is Staff Role, not good role', NULL, NULL, NULL),
(5, 'sdgr', 'drth', NULL, 0, '', NULL, '2017-06-13 00:54:33', '2017-06-13 00:54:33'),
(6, 'xxxxxxxx', 'xxxxxxxxxxx', NULL, 2, 'xxxxxxxxxxx', NULL, '2017-06-19 02:05:52', '2017-06-19 02:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `sdn_settings`
--

CREATE TABLE `sdn_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `zip` tinyint(4) NOT NULL DEFAULT '0',
  `download` tinyint(4) NOT NULL DEFAULT '0',
  `small_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medium_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `large_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Q6kXad8nmEmdVPpCwJmqplZnnyrLokCQVxiTJyCq', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicldZbFNIQ09kRUd5amR6SFVaZ2pvQlpzZmhCQnEyS0sybXdOVGducyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9hdmF0YXJidWcuZGV2L2Zhdmljb24uaWNvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjExOiJhbGVydC1jbGFzcyI7czoxMzoiYWxlcnQtc3VjY2VzcyI7czo3OiJtZXNzYWdlIjtzOjExOiJIZWxsbyB3b3JsZCI7czo2OiJjdXN0b20iO2E6MDp7fX0=', 1510650503);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `section` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settingkey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `val` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `section`, `settingkey`, `val`, `created_at`, `updated_at`) VALUES
(61, 'media', 'allowed_img_ext', 'PNG,JPG,JPEG', NULL, NULL),
(62, 'media', 'img_max_size', '50000', NULL, NULL),
(63, 'media', 'allowed_vid_ext', 'mp4,FLV,OGV', NULL, NULL),
(64, 'media', 'vid_max_size', '50000', NULL, NULL),
(65, 'media', 'allowed_music_ext', 'MP3,M4A', NULL, NULL),
(66, 'media', 'music_max_size', '50000', NULL, NULL),
(67, 'media', 'allowed_doc_ext', 'ZIP,RAR,DOCX,XLSX,TXT,PDF', NULL, NULL),
(68, 'media', 'doc_max_size', '50000', NULL, NULL),
(69, 'media', 'allow_download', '1', NULL, NULL),
(70, 'media', 'thumbs', 'a:3:{i:0;a:3:{s:5:\"title\";s:11:\"Small thumb\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}i:1;a:3:{s:5:\"title\";s:11:\"Small thumb\";s:5:\"width\";s:3:\"160\";s:6:\"height\";s:3:\"160\";}i:2;a:3:{s:5:\"title\";s:5:\"large\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";}}', NULL, NULL),
(71, 'setting_system', 'login_timeout', '6000', NULL, '2017-06-19 02:06:11'),
(72, 'setting_system', 'enable_registration', '1', NULL, '2017-06-19 02:06:11'),
(73, 'setting_system', 'email_activation', '1', NULL, '2017-05-18 11:48:26'),
(74, 'setting_system', 'browser_close', '0', NULL, '2017-06-19 02:06:11'),
(75, 'setting_system', 'email_on_register', '0', NULL, '2017-05-18 11:48:26'),
(76, 'setting_system', 'default_language', 'en', NULL, '2017-01-24 12:24:26'),
(77, 'setting_system', 'timezone_id', '113', NULL, '2017-01-24 12:24:26'),
(78, 'setting_system', 'direction', 'ltr', NULL, '2017-01-24 12:24:26'),
(79, 'setting_system', 'error_display', '1', NULL, '2017-01-24 12:24:26'),
(80, 'setting_system', 'date_format', 'd, M y', NULL, '2017-01-24 12:24:26'),
(81, 'setting_system', 'time_format', '12hrs', NULL, '2017-01-24 12:24:26'),
(82, 'setting_system', 'time_format', '12hrs', NULL, NULL),
(83, 'setting_system', 'site_name', 'BootyDev9', NULL, '2017-05-18 11:47:24'),
(84, 'setting_system', 'site_log', 'logo.png', NULL, NULL),
(85, 'setting_system', 'site_desc', 'Advanced CMS', NULL, '2017-05-18 11:47:25'),
(86, 'admin_emails', 'info', 'info@avatarbugs.com', NULL, NULL),
(87, 'admin_emails', 'support', 'support@avatarbugs.com', NULL, NULL),
(88, 'admin_emails', 'admin', 'admin@avatarbugs.com', NULL, NULL),
(89, 'admin_emails', 'sales', 'sales@avatarbugs.com', NULL, NULL),
(90, 'admin_emails', 'technical_staff', 'tech@avatarbugs.com', NULL, NULL),
(91, 'setting_system', 'header_tpl', '7564i2d9858ae.6789f2d9a94pd', '2016-12-06 02:57:11', '2017-09-26 19:47:04'),
(92, 'setting_system', 'footer_tpl', '5445f2d9858ae.r5gtf2d9a95df', '2016-12-06 02:57:11', '2017-09-08 07:21:18'),
(93, 'setting_system', 'layout', '', '2016-12-06 02:57:11', '2017-02-15 12:37:52'),
(94, 'setting_system', 'sidebar1', 'sidebar-4_582312757fsfs7.58231275a3a89', '2016-12-06 02:57:11', '2017-01-27 10:18:32'),
(95, 'setting_system', 'sidebar2', 'sidebar-4_582312757fsfs7.58231275a3a89', '2016-12-06 02:57:11', '2017-01-27 10:18:32'),
(96, 'setting_system', 'site_logo', 'wwf-logo-design.jpg', '2016-12-06 02:57:11', '2017-05-18 11:47:25'),
(97, 'setting_system', 'active_profile', '', '2017-01-27 00:31:02', '2017-09-08 07:21:18'),
(98, 'setting_system', 'frontend_page_section', '59085b9b20526.59087192b63db', '2017-02-16 15:39:31', '2017-05-19 08:03:16'),
(99, 'setting_system', 'backend_header', '58d0f2d9858ae.58d0f2d9a95df', '2017-03-21 08:49:51', '2017-03-21 14:50:17'),
(100, 'setting_system', 'backend_left_bar', '58d166ae1246f.58d166ae3d705', '2017-03-21 08:49:51', '2017-03-21 14:50:17'),
(101, 'setting_system', 'default_field_html', '591d7c9fcdfcb.591d7c9fe9e32', '2017-05-09 22:51:31', '2017-05-19 08:03:16'),
(102, 'setting_system', 'header_enabled', '1', '2017-05-12 09:28:43', '2017-05-19 08:03:16'),
(103, 'setting_system', 'footer_enabled', '0', '2017-05-12 09:28:43', '2017-05-19 08:03:16'),
(104, 'setting_system', 'enable_login', '0', '2017-05-18 11:48:26', '2017-05-18 11:48:26'),
(105, 'setting_system', 'enable_member_access', '0', '2017-05-18 11:48:26', '2017-05-18 11:48:26'),
(106, 'setting_system', 'default_frontend_role', '6', '2017-06-19 02:06:11', '2017-06-19 02:06:11'),
(107, 'setting_system', 'default_user_status', '2', '2017-06-19 02:06:11', '2017-06-19 02:06:11'),
(108, 'mail_settings', 'driver', 'smtp', '2017-06-26 05:13:10', '2017-06-26 05:13:10'),
(109, 'mail_settings', 'host', 'smtp.sendgrid.net', '2017-06-26 05:13:10', '2017-06-26 05:13:10'),
(110, 'mail_settings', 'port', '587', '2017-06-26 05:13:10', '2017-06-26 05:13:10'),
(111, 'mail_settings', 'from_address', 'edo.terakyan@gmail.com', '2017-06-26 05:13:10', '2017-06-26 05:13:10'),
(112, 'mail_settings', 'from_name', 'Edo', '2017-06-26 05:13:10', '2017-06-26 05:13:10'),
(113, 'mail_settings', 'username', 'abokamal', '2017-06-26 05:13:10', '2017-06-26 05:13:10'),
(114, 'mail_settings', 'password', 'supersahak123', '2017-06-26 05:13:10', '2017-06-26 05:13:10'),
(115, 'mail_settings', 'is_invalid', '0', '2017-06-26 05:13:10', '2017-06-26 05:13:26'),
(116, 'media', 'directory_default_max_size', '5', '2017-07-05 04:42:46', '2017-07-05 05:19:36'),
(117, 'media', 'directory_default_extension', '.*', '2017-07-05 04:42:46', '2017-07-05 05:19:36'),
(118, 'media', 'directory_default_uploader', '5947ae0ba319b', '2017-07-05 04:42:46', '2017-07-05 05:19:36'),
(119, 'folder_settings', 'directory_default_max_size', '5', '2017-07-05 05:30:35', '2017-07-05 05:30:35'),
(120, 'folder_settings', 'directory_default_extension', '.*', '2017-07-05 05:30:35', '2017-07-05 05:30:35'),
(121, 'folder_settings', 'directory_default_uploader', '5947ae0ba319b', '2017-07-05 05:30:35', '2017-07-05 05:30:35'),
(122, 'media_plus', 'ui_settings', '{\"display_item\":\"pagination\",\"per_page_item_count\":\"10\",\"allow_folder\":{\"create\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"delete\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"edit\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"copy\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"sub\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"download\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]}},\"allow_item\":{\"upload\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"delete\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"edit\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"copy\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]},\"download\":{\"enabled\":\"1\",\"roles\":[\"superadmin\"]}}}', '2017-07-12 01:30:35', '2017-07-12 13:14:57'),
(123, 'media_plus', 'sorting_settings', '{\"sorting\":{\"new\":{\"enabled\":\"1\"},\"old\":{\"enabled\":\"1\"},\"small\":{\"enabled\":\"1\"},\"big\":{\"enabled\":\"1\"}}}', '2017-07-12 01:30:47', '2017-07-13 06:19:31'),
(124, 'media_plus', 'search_bar_media', '59673713af844.5967385dc09c0', '2017-07-13 06:21:38', '2017-07-13 06:21:38'),
(125, 'backend_settings', 'backend_settings', '{\"header_unit\":\"5a040d77ee9bc.5a040d785ef33\",\"footer_unit\":\"backend_footer.59dc5s5cd15w\",\"footer_enabled\":\"0\",\"footer\":\"1\",\"page_icon\":\"fa-address-book\",\"backend_page_section\":\"backend_two_cols.two_def_4d4d4d4d\",\"placeholders\":{\"left_bar\":\"58d166ae1246f.58d166ae3d705\"}}', '2017-08-24 18:05:32', '2017-11-09 09:43:28'),
(130, 'versions', 'frontend', '{\"css_version\":[\"4\"],\"font_version\":null}', '2017-09-08 14:42:59', '2017-11-08 08:57:23'),
(131, 'setting_system', 'selcteunit', 'Nothing selected', '2017-09-13 18:07:25', '2017-09-26 19:47:04'),
(132, 'setting_system', 'page_layout', '', '2017-09-13 18:08:36', '2017-09-26 19:47:04'),
(133, 'setting_system', 'placeholders', '{\"sidebar_place_holder_left\":\"2345f2d9858ae.2345f2d9858au\",\"sidebar_place_holder_right\":\"frontend_sidebar_3434343434.rrededed4\"}', '2017-09-13 18:08:36', '2017-09-13 18:08:36'),
(134, 'setting_system', 'page_layout_settings', '{\"sidebar_place_holder_left\":\"2345f2d9858ae.2345f2d9858au\",\"sidebar_place_holder_right\":\"frontend_sidebar_3434343434.rrededed4\"}', '2017-09-14 05:17:07', '2017-09-14 05:17:07'),
(135, 'terakyan_blog', 'form_field_settings', '{\"form_field_settings\":{\"blog_short_desc_field\":{\"short_desc\":\"slug\",\"tags\":\"slug\"}}}', '2017-10-09 11:19:59', '2017-10-09 11:19:59'),
(136, 'versions', 'backend', '{\"css_version\":[\"4\"],\"font_version\":null}', '2017-10-24 07:04:23', '2017-11-08 08:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_core` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `is_core`, `created_at`, `updated_at`) VALUES
(1, 'active', 0, '2017-06-13 08:12:49', '2017-06-13 08:12:49'),
(2, 'inactive', 0, '2017-06-13 08:12:57', '2017-06-13 08:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_meta`
--

CREATE TABLE `tags_meta` (
  `meta_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_types`
--

CREATE TABLE `tag_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional_data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urlmanager`
--

CREATE TABLE `urlmanager` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) DEFAULT NULL,
  `front_page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `urlmanager`
--

INSERT INTO `urlmanager` (`id`, `page_id`, `front_page_id`, `type`, `url`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'core_page', '/', 0, '2016-11-27 04:19:46', '2017-08-24 16:36:10'),
(2, NULL, 8, 'core_page', '/about', 0, '2016-11-27 04:19:46', '2017-06-08 03:56:02'),
(3, NULL, 7, 'core_page', '/profile', 0, '2016-11-27 04:19:46', '2017-06-26 03:03:52'),
(4, NULL, 5, 'core_page', '/terms-conditions', 0, '2016-11-27 04:19:46', '2017-09-13 16:29:00'),
(5, NULL, 6, 'core_page', '/pages/privacy', 0, '2016-11-27 04:19:46', '2016-11-27 04:19:46'),
(6, NULL, 9, 'custom_page', '/all-classify', 0, '2016-12-06 00:38:17', '2017-03-02 02:29:21'),
(7, 87, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-24 15:39:59', '2016-12-24 15:39:59'),
(8, 88, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-24 15:40:13', '2016-12-24 15:40:13'),
(9, 89, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-24 12:41:00', '2016-12-24 12:41:00'),
(10, 90, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-24 15:41:06', '2016-12-24 15:41:06'),
(11, 86, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-25 11:29:54', '2016-12-25 11:29:54'),
(12, 87, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:03:47', '2016-12-26 11:03:47'),
(13, 88, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:04:56', '2016-12-26 11:04:56'),
(14, 89, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:23:03', '2016-12-26 11:23:03'),
(15, 90, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:24:36', '2016-12-26 11:24:36'),
(16, 91, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:31:41', '2016-12-26 11:31:41'),
(17, 92, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:37:06', '2016-12-26 11:37:06'),
(18, 93, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:50:16', '2016-12-26 11:50:16'),
(19, 94, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 11:51:33', '2016-12-26 11:51:33'),
(20, 95, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 12:35:19', '2016-12-26 12:35:19'),
(21, 96, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 13:35:26', '2016-12-26 13:35:26'),
(22, 97, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 13:36:42', '2016-12-26 13:36:42'),
(23, 98, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 13:44:15', '2016-12-26 13:44:15'),
(24, 99, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 13:45:20', '2016-12-26 13:45:20'),
(25, 100, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 13:46:25', '2016-12-26 13:46:25'),
(26, 101, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 13:47:05', '2016-12-26 13:47:05'),
(27, 102, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-26 13:48:25', '2016-12-26 13:48:25'),
(28, 103, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-28 05:42:08', '2016-12-28 05:42:08'),
(29, 104, NULL, 'plugin_page', '/admin/media/drive', 0, '2016-12-28 05:59:55', '2016-12-28 05:59:55'),
(30, 105, NULL, 'plugin_page', '/admin/general/emails/core', 0, '2016-12-28 13:57:45', '2016-12-28 13:57:45'),
(31, 106, NULL, 'plugin_page', '/admin/general/emails/custom', 0, '2016-12-28 13:57:45', '2016-12-28 13:57:45'),
(32, 107, NULL, 'plugin_page', '/admin/general/emails/settings', 0, '2016-12-28 13:57:45', '2016-12-28 13:57:45'),
(33, 108, NULL, 'plugin_page', '/admin/general/emails/update/{param}', 0, '2016-12-28 13:57:45', '2016-12-28 13:57:45'),
(34, 109, NULL, 'plugin_page', '/admin/modules/Frontend/assets', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(35, 110, NULL, 'plugin_page', '/admin/modules/Frontend/info', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(36, 111, NULL, 'plugin_page', '/admin/modules/Frontend/tables', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(37, 112, NULL, 'plugin_page', '/admin/modules/Frontend/permission', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(38, 113, NULL, 'plugin_page', '/admin/modules/Frontend/codes', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(39, 114, NULL, 'plugin_page', '/admin/modules/Frontend/gears', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(40, 115, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(41, 116, NULL, 'plugin_page', '/admin/modules/Frontend/buildb', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(42, 117, NULL, 'plugin_page', '/admin/modules/Frontend/build', 0, '2017-01-10 13:17:27', '2017-01-10 13:17:27'),
(43, 118, NULL, 'plugin_page', '/admin/modules/Frontend/assets', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(44, 119, NULL, 'plugin_page', '/admin/modules/Frontend/info', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(45, 120, NULL, 'plugin_page', '/admin/modules/Frontend/tables', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(46, 121, NULL, 'plugin_page', '/admin/modules/Frontend/permission', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(47, 122, NULL, 'plugin_page', '/admin/modules/Frontend/codes', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(48, 123, NULL, 'plugin_page', '/admin/modules/Frontend/gears', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(49, 124, NULL, 'plugin_page', '/admin/modules/Frontend/gears/layouts', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(50, 125, NULL, 'plugin_page', '/admin/modules/Frontend/gears/units', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(51, 126, NULL, 'plugin_page', '/admin/modules/Frontend/gears/h-f', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(52, 127, NULL, 'plugin_page', '/admin/modules/Frontend/gears/main_body', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(53, 128, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(54, 129, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/layouts', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(55, 130, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/units', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(56, 131, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/h-f', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(57, 132, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/main_body', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(58, 133, NULL, 'plugin_page', '/admin/modules/Frontend/buildb', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(59, 134, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/pages', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(60, 135, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/menus', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(61, 136, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/classify', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(62, 137, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/tags', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(63, 138, NULL, 'plugin_page', '/admin/modules/Frontend/build', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(64, 139, NULL, 'plugin_page', '/admin/modules/Frontend/build/pages', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(65, 140, NULL, 'plugin_page', '/admin/modules/Frontend/build/menus', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(66, 141, NULL, 'plugin_page', '/admin/modules/Frontend/build/classify', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(67, 142, NULL, 'plugin_page', '/admin/modules/Frontend/build/tags', 0, '2017-01-10 13:24:31', '2017-01-10 13:24:31'),
(68, 143, NULL, 'plugin_page', '/admin/modules/Frontend/assets', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(69, 144, NULL, 'plugin_page', '/admin/modules/Frontend/info', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(70, 145, NULL, 'plugin_page', '/admin/modules/Frontend/tables', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(71, 146, NULL, 'plugin_page', '/admin/modules/Frontend/permission', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(72, 147, NULL, 'plugin_page', '/admin/modules/Frontend/codes', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(73, 148, NULL, 'plugin_page', '/admin/modules/Frontend/gears', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(74, 149, NULL, 'plugin_page', '/admin/modules/Frontend/gears/layouts', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(75, 150, NULL, 'plugin_page', '/admin/modules/Frontend/gears/units', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(76, 151, NULL, 'plugin_page', '/admin/modules/Frontend/gears/h-f', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(77, 152, NULL, 'plugin_page', '/admin/modules/Frontend/gears/main_body', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(78, 153, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(79, 154, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/layouts', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(80, 155, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/units', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(81, 156, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/h-f', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(82, 157, NULL, 'plugin_page', '/admin/modules/Frontend/gearsb/main_body', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(83, 158, NULL, 'plugin_page', '/admin/modules/Frontend/buildb', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(84, 159, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/pages', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(85, 160, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/menus', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(86, 161, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/classify', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(87, 162, NULL, 'plugin_page', '/admin/modules/Frontend/buildb/tags', 0, '2017-01-10 13:29:52', '2017-01-10 13:29:52'),
(88, 163, NULL, 'plugin_page', '/admin/modules/Frontend/build', 0, '2017-01-10 13:29:53', '2017-01-10 13:29:53'),
(89, 164, NULL, 'plugin_page', '/admin/modules/Frontend/build/pages', 0, '2017-01-10 13:29:53', '2017-01-10 13:29:53'),
(90, 165, NULL, 'plugin_page', '/admin/modules/Frontend/build/menus', 0, '2017-01-10 13:29:53', '2017-01-10 13:29:53'),
(91, 166, NULL, 'plugin_page', '/admin/modules/Frontend/build/classify', 0, '2017-01-10 13:29:53', '2017-01-10 13:29:53'),
(92, 167, NULL, 'plugin_page', '/admin/modules/Frontend/build/tags', 0, '2017-01-10 13:29:53', '2017-01-10 13:29:53'),
(93, 168, NULL, 'plugin_page', '/admin/modules/General/assets', 0, '2017-01-10 13:40:13', '2017-01-10 13:40:13'),
(94, 169, NULL, 'plugin_page', '/admin/modules/General/assets', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(95, 170, NULL, 'plugin_page', '/admin/modules/General/info', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(96, 171, NULL, 'plugin_page', '/admin/modules/General/tables', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(97, 172, NULL, 'plugin_page', '/admin/modules/General/permission', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(98, 173, NULL, 'plugin_page', '/admin/modules/General/codes', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(99, 174, NULL, 'plugin_page', '/admin/modules/General/gears', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(100, 175, NULL, 'plugin_page', '/admin/modules/General/gears/layouts', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(101, 176, NULL, 'plugin_page', '/admin/modules/General/gears/units', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(102, 177, NULL, 'plugin_page', '/admin/modules/General/gears/h-f', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(103, 178, NULL, 'plugin_page', '/admin/modules/General/gears/main_body', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(104, 179, NULL, 'plugin_page', '/admin/modules/General/gearsb', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(105, 180, NULL, 'plugin_page', '/admin/modules/General/gearsb/layouts', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(106, 181, NULL, 'plugin_page', '/admin/modules/General/gearsb/units', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(107, 182, NULL, 'plugin_page', '/admin/modules/General/gearsb/h-f', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(108, 183, NULL, 'plugin_page', '/admin/modules/General/gearsb/main_body', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(109, 184, NULL, 'plugin_page', '/admin/modules/General/buildb', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(110, 185, NULL, 'plugin_page', '/admin/modules/General/buildb/pages', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(111, 186, NULL, 'plugin_page', '/admin/modules/General/buildb/menus', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(112, 187, NULL, 'plugin_page', '/admin/modules/General/buildb/classify', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(113, 188, NULL, 'plugin_page', '/admin/modules/General/buildb/tags', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(114, 189, NULL, 'plugin_page', '/admin/modules/General/build', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(115, 190, NULL, 'plugin_page', '/admin/modules/General/build/pages', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(116, 191, NULL, 'plugin_page', '/admin/modules/General/build/menus', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(117, 192, NULL, 'plugin_page', '/admin/modules/General/build/classify', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(118, 193, NULL, 'plugin_page', '/admin/modules/General/build/tags', 0, '2017-01-10 13:40:36', '2017-01-10 13:40:36'),
(119, 194, NULL, 'plugin_page', '/admin/modules/General/assets', 0, '2017-01-10 13:43:41', '2017-01-10 13:43:41'),
(120, 195, NULL, 'plugin_page', '/admin/modules/General/info', 0, '2017-01-10 13:43:41', '2017-01-10 13:43:41'),
(121, 196, NULL, 'plugin_page', '/admin/modules/General/tables', 0, '2017-01-10 13:43:41', '2017-01-10 13:43:41'),
(122, 197, NULL, 'plugin_page', '/admin/modules/General/permission', 0, '2017-01-10 13:43:41', '2017-01-10 13:43:41'),
(123, 198, NULL, 'plugin_page', '/admin/modules/General/codes', 0, '2017-01-10 13:43:41', '2017-01-10 13:43:41'),
(124, 199, NULL, 'plugin_page', '/admin/modules/General/gears', 0, '2017-01-10 13:43:41', '2017-01-10 13:43:41'),
(125, 200, NULL, 'plugin_page', '/admin/modules/General/assets', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(126, 201, NULL, 'plugin_page', '/admin/modules/General/info', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(127, 202, NULL, 'plugin_page', '/admin/modules/General/tables', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(128, 203, NULL, 'plugin_page', '/admin/modules/General/permission', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(129, 204, NULL, 'plugin_page', '/admin/modules/General/codes', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(130, 205, NULL, 'plugin_page', '/admin/modules/General/gears', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(131, 206, NULL, 'plugin_page', '/admin/modules/General/gears/layouts', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(132, 207, NULL, 'plugin_page', '/admin/modules/General/gears/units', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(133, 208, NULL, 'plugin_page', '/admin/modules/General/gears/h-f', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(134, 209, NULL, 'plugin_page', '/admin/modules/General/gears/main_body', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(135, 210, NULL, 'plugin_page', '/admin/modules/General/gearsb', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(136, 211, NULL, 'plugin_page', '/admin/modules/General/gearsb/layouts', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(137, 212, NULL, 'plugin_page', '/admin/modules/General/gearsb/units', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(138, 213, NULL, 'plugin_page', '/admin/modules/General/gearsb/h-f', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(139, 214, NULL, 'plugin_page', '/admin/modules/General/gearsb/main_body', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(140, 215, NULL, 'plugin_page', '/admin/modules/General/buildb', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(141, 216, NULL, 'plugin_page', '/admin/modules/General/buildb/pages', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(142, 217, NULL, 'plugin_page', '/admin/modules/General/buildb/menus', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(143, 218, NULL, 'plugin_page', '/admin/modules/General/buildb/classify', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(144, 219, NULL, 'plugin_page', '/admin/modules/General/buildb/tags', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(145, 220, NULL, 'plugin_page', '/admin/modules/General/build', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(146, 221, NULL, 'plugin_page', '/admin/modules/General/build/pages', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(147, 222, NULL, 'plugin_page', '/admin/modules/General/build/menus', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(148, 223, NULL, 'plugin_page', '/admin/modules/General/build/classify', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(149, 224, NULL, 'plugin_page', '/admin/modules/General/build/tags', 0, '2017-01-10 13:48:30', '2017-01-10 13:48:30'),
(150, 225, NULL, 'plugin_page', '/admin/edo/gears', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(151, 226, NULL, 'plugin_page', '/admin/edo/gears/layouts', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(152, 227, NULL, 'plugin_page', '/admin/edo/gears/units', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(153, 228, NULL, 'plugin_page', '/admin/edo/gears/h-f', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(154, 229, NULL, 'plugin_page', '/admin/edo/gears/main_body', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(155, 230, NULL, 'plugin_page', '/admin/modules/Edo/assets', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(156, 231, NULL, 'plugin_page', '/admin/modules/Edo/info', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(157, 232, NULL, 'plugin_page', '/admin/modules/Edo/tables', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(158, 233, NULL, 'plugin_page', '/admin/modules/Edo/permission', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(159, 234, NULL, 'plugin_page', '/admin/modules/Edo/codes', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(160, 235, NULL, 'plugin_page', '/admin/modules/Edo/gears', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(161, 236, NULL, 'plugin_page', '/admin/modules/Edo/gears/layouts', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(162, 237, NULL, 'plugin_page', '/admin/modules/Edo/gears/units', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(163, 238, NULL, 'plugin_page', '/admin/modules/Edo/gears/h-f', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(164, 239, NULL, 'plugin_page', '/admin/modules/Edo/gears/main_body', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(165, 240, NULL, 'plugin_page', '/admin/modules/Edo/gearsb', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(166, 241, NULL, 'plugin_page', '/admin/modules/Edo/gearsb/layouts', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(167, 242, NULL, 'plugin_page', '/admin/modules/Edo/gearsb/units', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(168, 243, NULL, 'plugin_page', '/admin/modules/Edo/gearsb/h-f', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(169, 244, NULL, 'plugin_page', '/admin/modules/Edo/gearsb/main_body', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(170, 245, NULL, 'plugin_page', '/admin/modules/Edo/buildb', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(171, 246, NULL, 'plugin_page', '/admin/modules/Edo/buildb/pages', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(172, 247, NULL, 'plugin_page', '/admin/modules/Edo/buildb/menus', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(173, 248, NULL, 'plugin_page', '/admin/modules/Edo/buildb/classify', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(174, 249, NULL, 'plugin_page', '/admin/modules/Edo/buildb/tags', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(175, 250, NULL, 'plugin_page', '/admin/modules/Edo/build', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(176, 251, NULL, 'plugin_page', '/admin/modules/Edo/build/pages', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(177, 252, NULL, 'plugin_page', '/admin/modules/Edo/build/menus', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(178, 253, NULL, 'plugin_page', '/admin/modules/Edo/build/classify', 0, '2017-01-11 22:53:04', '2017-01-11 22:53:04'),
(179, 254, NULL, 'plugin_page', '/admin/modules/Edo/build/tags', 0, '2017-01-11 22:53:05', '2017-01-11 22:53:05'),
(180, 255, NULL, 'plugin_page', '/admin/modules/config/General/assets', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(181, 256, NULL, 'plugin_page', '/admin/modules/config/General/info', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(182, 257, NULL, 'plugin_page', '/admin/modules/config/General/tables', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(183, 258, NULL, 'plugin_page', '/admin/modules/config/General/permission', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(184, 259, NULL, 'plugin_page', '/admin/modules/config/General/codes', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(185, 260, NULL, 'plugin_page', '/admin/modules/config/General/gears', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(186, 261, NULL, 'plugin_page', '/admin/modules/config/General/gears/layouts', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(187, 262, NULL, 'plugin_page', '/admin/modules/config/General/gears/units', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(188, 263, NULL, 'plugin_page', '/admin/modules/config/General/gears/h-f', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(189, 264, NULL, 'plugin_page', '/admin/modules/config/General/gears/main_body', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(190, 265, NULL, 'plugin_page', '/admin/modules/config/General/gearsb', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(191, 266, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/layouts', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(192, 267, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/units', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(193, 268, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/h-f', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(194, 269, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/main_body', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(195, 270, NULL, 'plugin_page', '/admin/modules/config/General/buildb', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(196, 271, NULL, 'plugin_page', '/admin/modules/config/General/buildb/pages', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(197, 272, NULL, 'plugin_page', '/admin/modules/config/General/buildb/menus', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(198, 273, NULL, 'plugin_page', '/admin/modules/config/General/buildb/classify', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(199, 274, NULL, 'plugin_page', '/admin/modules/config/General/buildb/tags', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(200, 275, NULL, 'plugin_page', '/admin/modules/config/General/build', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(201, 276, NULL, 'plugin_page', '/admin/modules/config/General/build/pages', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(202, 277, NULL, 'plugin_page', '/admin/modules/config/General/build/menus', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(203, 278, NULL, 'plugin_page', '/admin/modules/config/General/build/classify', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(204, 279, NULL, 'plugin_page', '/admin/modules/config/General/build/tags', 0, '2017-01-12 15:32:42', '2017-01-12 15:32:42'),
(205, 280, NULL, 'plugin_page', '/admin/modules/config/Backend/assets', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(206, 281, NULL, 'plugin_page', '/admin/modules/config/Backend/info', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(207, 282, NULL, 'plugin_page', '/admin/modules/config/Backend/tables', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(208, 283, NULL, 'plugin_page', '/admin/modules/config/Backend/permission', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(209, 284, NULL, 'plugin_page', '/admin/modules/config/Backend/codes', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(210, 285, NULL, 'plugin_page', '/admin/modules/config/Backend/gears', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(211, 286, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/layouts', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(212, 287, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/units', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(213, 288, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/h-f', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(214, 289, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/main_body', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(215, 290, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(216, 291, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/layouts', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(217, 292, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/units', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(218, 293, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/h-f', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(219, 294, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/main_body', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(220, 295, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(221, 296, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/pages', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(222, 297, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/menus', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(223, 298, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/classify', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(224, 299, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/tags', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(225, 300, NULL, 'plugin_page', '/admin/modules/config/Backend/build', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(226, 301, NULL, 'plugin_page', '/admin/modules/config/Backend/build/pages', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(227, 302, NULL, 'plugin_page', '/admin/modules/config/Backend/build/menus', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(228, 303, NULL, 'plugin_page', '/admin/modules/config/Backend/build/classify', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(229, 304, NULL, 'plugin_page', '/admin/modules/config/Backend/build/tags', 0, '2017-01-12 15:33:08', '2017-01-12 15:33:08'),
(230, 305, NULL, 'plugin_page', '/admin/modules/config/Frontend/assets', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(231, 306, NULL, 'plugin_page', '/admin/modules/config/Frontend/info', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(232, 307, NULL, 'plugin_page', '/admin/modules/config/Frontend/tables', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(233, 308, NULL, 'plugin_page', '/admin/modules/config/Frontend/permission', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(234, 309, NULL, 'plugin_page', '/admin/modules/config/Frontend/codes', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(235, 310, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(236, 311, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/layouts', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(237, 312, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/units', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(238, 313, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/h-f', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(239, 314, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/main_body', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(240, 315, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(241, 316, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/layouts', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(242, 317, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/units', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(243, 318, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/h-f', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(244, 319, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/main_body', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(245, 320, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(246, 321, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/pages', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(247, 322, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/menus', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(248, 323, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/classify', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(249, 324, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/tags', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(250, 325, NULL, 'plugin_page', '/admin/modules/config/Frontend/build', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(251, 326, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/pages', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(252, 327, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/menus', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(253, 328, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/classify', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(254, 329, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/tags', 0, '2017-01-12 15:33:19', '2017-01-12 15:33:19'),
(255, 330, NULL, 'plugin_page', '/admin/modules/config/Edo/assets', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(256, 331, NULL, 'plugin_page', '/admin/modules/config/Edo/info', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(257, 332, NULL, 'plugin_page', '/admin/modules/config/Edo/tables', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(258, 333, NULL, 'plugin_page', '/admin/modules/config/Edo/permission', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(259, 334, NULL, 'plugin_page', '/admin/modules/config/Edo/codes', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(260, 335, NULL, 'plugin_page', '/admin/modules/config/Edo/gears', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(261, 336, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/layouts', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(262, 337, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/units', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(263, 338, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/h-f', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(264, 339, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/main_body', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(265, 340, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(266, 341, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/layouts', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(267, 342, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/units', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(268, 343, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/h-f', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(269, 344, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/main_body', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(270, 345, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(271, 346, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/pages', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(272, 347, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/menus', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(273, 348, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/classify', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(274, 349, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/tags', 0, '2017-01-12 15:33:24', '2017-01-12 15:33:24'),
(275, 350, NULL, 'plugin_page', '/admin/modules/config/Edo/build', 0, '2017-01-12 15:33:25', '2017-01-12 15:33:25'),
(276, 351, NULL, 'plugin_page', '/admin/modules/config/Edo/build/pages', 0, '2017-01-12 15:33:25', '2017-01-12 15:33:25'),
(277, 352, NULL, 'plugin_page', '/admin/modules/config/Edo/build/menus', 0, '2017-01-12 15:33:25', '2017-01-12 15:33:25'),
(278, 353, NULL, 'plugin_page', '/admin/modules/config/Edo/build/classify', 0, '2017-01-12 15:33:25', '2017-01-12 15:33:25'),
(279, 354, NULL, 'plugin_page', '/admin/modules/config/Edo/build/tags', 0, '2017-01-12 15:33:25', '2017-01-12 15:33:25'),
(280, 355, NULL, 'plugin_page', '/admin/modules/config/Media/assets', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(281, 356, NULL, 'plugin_page', '/admin/modules/config/Media/info', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(282, 357, NULL, 'plugin_page', '/admin/modules/config/Media/tables', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(283, 358, NULL, 'plugin_page', '/admin/modules/config/Media/permission', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(284, 359, NULL, 'plugin_page', '/admin/modules/config/Media/codes', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(285, 360, NULL, 'plugin_page', '/admin/modules/config/Media/gears', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(286, 361, NULL, 'plugin_page', '/admin/modules/config/Media/gears/layouts', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(287, 362, NULL, 'plugin_page', '/admin/modules/config/Media/gears/units', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(288, 363, NULL, 'plugin_page', '/admin/modules/config/Media/gears/h-f', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(289, 364, NULL, 'plugin_page', '/admin/modules/config/Media/gears/main_body', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(290, 365, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(291, 366, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/layouts', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(292, 367, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/units', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(293, 368, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/h-f', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(294, 369, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/main_body', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(295, 370, NULL, 'plugin_page', '/admin/modules/config/Media/buildb', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(296, 371, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/pages', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(297, 372, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/menus', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(298, 373, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/classify', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(299, 374, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/tags', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(300, 375, NULL, 'plugin_page', '/admin/modules/config/Media/build', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(301, 376, NULL, 'plugin_page', '/admin/modules/config/Media/build/pages', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(302, 377, NULL, 'plugin_page', '/admin/modules/config/Media/build/menus', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(303, 378, NULL, 'plugin_page', '/admin/modules/config/Media/build/classify', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(304, 379, NULL, 'plugin_page', '/admin/modules/config/Media/build/tags', 0, '2017-01-12 15:33:36', '2017-01-12 15:33:36'),
(305, 380, NULL, 'plugin_page', '/admin/modules/config/Modules/assets', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(306, 381, NULL, 'plugin_page', '/admin/modules/config/Modules/info', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(307, 382, NULL, 'plugin_page', '/admin/modules/config/Modules/tables', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(308, 383, NULL, 'plugin_page', '/admin/modules/config/Modules/permission', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(309, 384, NULL, 'plugin_page', '/admin/modules/config/Modules/codes', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(310, 385, NULL, 'plugin_page', '/admin/modules/config/Modules/gears', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(311, 386, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/layouts', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(312, 387, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/units', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(313, 388, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/h-f', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(314, 389, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/main_body', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(315, 390, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(316, 391, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/layouts', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(317, 392, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/units', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(318, 393, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/h-f', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(319, 394, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/main_body', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(320, 395, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(321, 396, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/pages', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(322, 397, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/menus', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(323, 398, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/classify', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(324, 399, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/tags', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(325, 400, NULL, 'plugin_page', '/admin/modules/config/Modules/build', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(326, 401, NULL, 'plugin_page', '/admin/modules/config/Modules/build/pages', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(327, 402, NULL, 'plugin_page', '/admin/modules/config/Modules/build/menus', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(328, 403, NULL, 'plugin_page', '/admin/modules/config/Modules/build/classify', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(329, 404, NULL, 'plugin_page', '/admin/modules/config/Modules/build/tags', 0, '2017-01-12 15:33:45', '2017-01-12 15:33:45'),
(330, 405, NULL, 'plugin_page', '/admin/modules/config/Users/assets', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(331, 406, NULL, 'plugin_page', '/admin/modules/config/Users/info', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(332, 407, NULL, 'plugin_page', '/admin/modules/config/Users/tables', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(333, 408, NULL, 'plugin_page', '/admin/modules/config/Users/permission', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(334, 409, NULL, 'plugin_page', '/admin/modules/config/Users/codes', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(335, 410, NULL, 'plugin_page', '/admin/modules/config/Users/gears', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(336, 411, NULL, 'plugin_page', '/admin/modules/config/Users/gears/layouts', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(337, 412, NULL, 'plugin_page', '/admin/modules/config/Users/gears/units', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(338, 413, NULL, 'plugin_page', '/admin/modules/config/Users/gears/h-f', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(339, 414, NULL, 'plugin_page', '/admin/modules/config/Users/gears/main_body', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(340, 415, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(341, 416, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/layouts', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(342, 417, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/units', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(343, 418, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/h-f', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(344, 419, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/main_body', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(345, 420, NULL, 'plugin_page', '/admin/modules/config/Users/buildb', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(346, 421, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/pages', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(347, 422, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/menus', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(348, 423, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/classify', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(349, 424, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/tags', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(350, 425, NULL, 'plugin_page', '/admin/modules/config/Users/build', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(351, 426, NULL, 'plugin_page', '/admin/modules/config/Users/build/pages', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(352, 427, NULL, 'plugin_page', '/admin/modules/config/Users/build/menus', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(353, 428, NULL, 'plugin_page', '/admin/modules/config/Users/build/classify', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(354, 429, NULL, 'plugin_page', '/admin/modules/config/Users/build/tags', 0, '2017-01-12 15:33:55', '2017-01-12 15:33:55'),
(355, 430, NULL, 'plugin_page', '/admin/modules/config/Backend/assets', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(356, 431, NULL, 'plugin_page', '/admin/modules/config/Backend/info', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(357, 432, NULL, 'plugin_page', '/admin/modules/config/Backend/tables', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(358, 433, NULL, 'plugin_page', '/admin/modules/config/Backend/permission', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(359, 434, NULL, 'plugin_page', '/admin/modules/config/Backend/codes', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(360, 435, NULL, 'plugin_page', '/admin/modules/config/Backend/gears', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(361, 436, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/layouts', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(362, 437, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/units', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(363, 438, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/h-f', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(364, 439, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/main_body', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(365, 440, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(366, 441, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/layouts', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(367, 442, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/units', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(368, 443, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/h-f', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(369, 444, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/main_body', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(370, 445, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(371, 446, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/pages', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(372, 447, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/menus', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(373, 448, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/classify', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(374, 449, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/tags', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(375, 450, NULL, 'plugin_page', '/admin/modules/config/Backend/build', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(376, 451, NULL, 'plugin_page', '/admin/modules/config/Backend/build/pages', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(377, 452, NULL, 'plugin_page', '/admin/modules/config/Backend/build/menus', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(378, 453, NULL, 'plugin_page', '/admin/modules/config/Backend/build/classify', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(379, 454, NULL, 'plugin_page', '/admin/modules/config/Backend/build/tags', 0, '2017-01-12 15:37:07', '2017-01-12 15:37:07'),
(380, 455, NULL, 'plugin_page', '/admin/modules/config/Edo/assets', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(381, 456, NULL, 'plugin_page', '/admin/modules/config/Edo/info', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(382, 457, NULL, 'plugin_page', '/admin/modules/config/Edo/tables', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(383, 458, NULL, 'plugin_page', '/admin/modules/config/Edo/permission', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(384, 459, NULL, 'plugin_page', '/admin/modules/config/Edo/codes', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(385, 460, NULL, 'plugin_page', '/admin/modules/config/Edo/gears', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(386, 461, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/layouts', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(387, 462, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/units', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(388, 463, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/h-f', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(389, 464, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/main_body', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(390, 465, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(391, 466, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/layouts', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(392, 467, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/units', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(393, 468, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/h-f', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(394, 469, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/main_body', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(395, 470, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(396, 471, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/pages', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(397, 472, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/menus', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(398, 473, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/classify', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(399, 474, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/tags', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(400, 475, NULL, 'plugin_page', '/admin/modules/config/Edo/build', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(401, 476, NULL, 'plugin_page', '/admin/modules/config/Edo/build/pages', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(402, 477, NULL, 'plugin_page', '/admin/modules/config/Edo/build/menus', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(403, 478, NULL, 'plugin_page', '/admin/modules/config/Edo/build/classify', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(404, 479, NULL, 'plugin_page', '/admin/modules/config/Edo/build/tags', 0, '2017-01-12 15:37:15', '2017-01-12 15:37:15'),
(405, 480, NULL, 'plugin_page', '/admin/modules/config/Frontend/assets', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(406, 481, NULL, 'plugin_page', '/admin/modules/config/Frontend/info', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(407, 482, NULL, 'plugin_page', '/admin/modules/config/Frontend/tables', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(408, 483, NULL, 'plugin_page', '/admin/modules/config/Frontend/permission', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(409, 484, NULL, 'plugin_page', '/admin/modules/config/Frontend/codes', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(410, 485, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(411, 486, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/layouts', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(412, 487, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/units', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(413, 488, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/h-f', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(414, 489, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/main_body', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(415, 490, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(416, 491, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/layouts', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(417, 492, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/units', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(418, 493, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/h-f', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(419, 494, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/main_body', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(420, 495, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(421, 496, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/pages', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24');
INSERT INTO `urlmanager` (`id`, `page_id`, `front_page_id`, `type`, `url`, `parent_id`, `created_at`, `updated_at`) VALUES
(422, 497, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/menus', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(423, 498, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/classify', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(424, 499, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/tags', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(425, 500, NULL, 'plugin_page', '/admin/modules/config/Frontend/build', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(426, 501, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/pages', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(427, 502, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/menus', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(428, 503, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/classify', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(429, 504, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/tags', 0, '2017-01-12 15:37:24', '2017-01-12 15:37:24'),
(430, 505, NULL, 'plugin_page', '/admin/modules/config/General/assets', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(431, 506, NULL, 'plugin_page', '/admin/modules/config/General/info', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(432, 507, NULL, 'plugin_page', '/admin/modules/config/General/tables', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(433, 508, NULL, 'plugin_page', '/admin/modules/config/General/permission', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(434, 509, NULL, 'plugin_page', '/admin/modules/config/General/codes', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(435, 510, NULL, 'plugin_page', '/admin/modules/config/General/gears', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(436, 511, NULL, 'plugin_page', '/admin/modules/config/General/gears/layouts', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(437, 512, NULL, 'plugin_page', '/admin/modules/config/General/gears/units', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(438, 513, NULL, 'plugin_page', '/admin/modules/config/General/gears/h-f', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(439, 514, NULL, 'plugin_page', '/admin/modules/config/General/gears/main_body', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(440, 515, NULL, 'plugin_page', '/admin/modules/config/General/gearsb', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(441, 516, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/layouts', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(442, 517, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/units', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(443, 518, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/h-f', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(444, 519, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/main_body', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(445, 520, NULL, 'plugin_page', '/admin/modules/config/General/buildb', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(446, 521, NULL, 'plugin_page', '/admin/modules/config/General/buildb/pages', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(447, 522, NULL, 'plugin_page', '/admin/modules/config/General/buildb/menus', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(448, 523, NULL, 'plugin_page', '/admin/modules/config/General/buildb/classify', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(449, 524, NULL, 'plugin_page', '/admin/modules/config/General/buildb/tags', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(450, 525, NULL, 'plugin_page', '/admin/modules/config/General/build', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(451, 526, NULL, 'plugin_page', '/admin/modules/config/General/build/pages', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(452, 527, NULL, 'plugin_page', '/admin/modules/config/General/build/menus', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(453, 528, NULL, 'plugin_page', '/admin/modules/config/General/build/classify', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(454, 529, NULL, 'plugin_page', '/admin/modules/config/General/build/tags', 0, '2017-01-12 15:37:34', '2017-01-12 15:37:34'),
(455, 530, NULL, 'plugin_page', '/admin/modules/config/Modules/assets', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(456, 531, NULL, 'plugin_page', '/admin/modules/config/Modules/info', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(457, 532, NULL, 'plugin_page', '/admin/modules/config/Modules/tables', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(458, 533, NULL, 'plugin_page', '/admin/modules/config/Modules/permission', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(459, 534, NULL, 'plugin_page', '/admin/modules/config/Modules/codes', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(460, 535, NULL, 'plugin_page', '/admin/modules/config/Modules/gears', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(461, 536, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/layouts', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(462, 537, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/units', 0, '2017-01-12 15:38:21', '2017-01-12 15:38:21'),
(463, 538, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/h-f', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(464, 539, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/main_body', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(465, 540, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(466, 541, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/layouts', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(467, 542, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/units', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(468, 543, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/h-f', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(469, 544, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/main_body', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(470, 545, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(471, 546, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/pages', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(472, 547, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/menus', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(473, 548, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/classify', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(474, 549, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/tags', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(475, 550, NULL, 'plugin_page', '/admin/modules/config/Modules/build', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(476, 551, NULL, 'plugin_page', '/admin/modules/config/Modules/build/pages', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(477, 552, NULL, 'plugin_page', '/admin/modules/config/Modules/build/menus', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(478, 553, NULL, 'plugin_page', '/admin/modules/config/Modules/build/classify', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(479, 554, NULL, 'plugin_page', '/admin/modules/config/Modules/build/tags', 0, '2017-01-12 15:38:22', '2017-01-12 15:38:22'),
(480, 555, NULL, 'plugin_page', '/admin/modules/config/Users/assets', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(481, 556, NULL, 'plugin_page', '/admin/modules/config/Users/info', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(482, 557, NULL, 'plugin_page', '/admin/modules/config/Users/tables', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(483, 558, NULL, 'plugin_page', '/admin/modules/config/Users/permission', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(484, 559, NULL, 'plugin_page', '/admin/modules/config/Users/codes', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(485, 560, NULL, 'plugin_page', '/admin/modules/config/Users/gears', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(486, 561, NULL, 'plugin_page', '/admin/modules/config/Users/gears/layouts', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(487, 562, NULL, 'plugin_page', '/admin/modules/config/Users/gears/units', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(488, 563, NULL, 'plugin_page', '/admin/modules/config/Users/gears/h-f', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(489, 564, NULL, 'plugin_page', '/admin/modules/config/Users/gears/main_body', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(490, 565, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(491, 566, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/layouts', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(492, 567, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/units', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(493, 568, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/h-f', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(494, 569, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/main_body', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(495, 570, NULL, 'plugin_page', '/admin/modules/config/Users/buildb', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(496, 571, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/pages', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(497, 572, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/menus', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(498, 573, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/classify', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(499, 574, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/tags', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(500, 575, NULL, 'plugin_page', '/admin/modules/config/Users/build', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(501, 576, NULL, 'plugin_page', '/admin/modules/config/Users/build/pages', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(502, 577, NULL, 'plugin_page', '/admin/modules/config/Users/build/menus', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(503, 578, NULL, 'plugin_page', '/admin/modules/config/Users/build/classify', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(504, 579, NULL, 'plugin_page', '/admin/modules/config/Users/build/tags', 0, '2017-01-12 15:38:33', '2017-01-12 15:38:33'),
(505, 580, NULL, 'plugin_page', '/admin/modules/config', 0, '2017-01-12 15:39:09', '2017-01-12 15:39:09'),
(506, 581, NULL, 'plugin_page', '/admin/modules/config', 0, '2017-01-12 15:51:31', '2017-01-12 15:51:31'),
(507, 582, NULL, 'plugin_page', '/admin/modules/config/Backend', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(508, 583, NULL, 'plugin_page', '/admin/modules/config/Backend/assets', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(509, 584, NULL, 'plugin_page', '/admin/modules/config/Backend/info', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(510, 585, NULL, 'plugin_page', '/admin/modules/config/Backend/tables', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(511, 586, NULL, 'plugin_page', '/admin/modules/config/Backend/permission', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(512, 587, NULL, 'plugin_page', '/admin/modules/config/Backend/codes', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(513, 588, NULL, 'plugin_page', '/admin/modules/config/Backend/gears', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(514, 589, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/layouts', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(515, 590, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/units', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(516, 591, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/h-f', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(517, 592, NULL, 'plugin_page', '/admin/modules/config/Backend/gears/main_body', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(518, 593, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(519, 594, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/layouts', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(520, 595, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/units', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(521, 596, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/h-f', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(522, 597, NULL, 'plugin_page', '/admin/modules/config/Backend/gearsb/main_body', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(523, 598, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(524, 599, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/pages', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(525, 600, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/menus', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(526, 601, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/classify', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(527, 602, NULL, 'plugin_page', '/admin/modules/config/Backend/buildb/tags', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(528, 603, NULL, 'plugin_page', '/admin/modules/config/Backend/build', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(529, 604, NULL, 'plugin_page', '/admin/modules/config/Backend/build/pages', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(530, 605, NULL, 'plugin_page', '/admin/modules/config/Backend/build/menus', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(531, 606, NULL, 'plugin_page', '/admin/modules/config/Backend/build/classify', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(532, 607, NULL, 'plugin_page', '/admin/modules/config/Backend/build/tags', 0, '2017-01-12 15:52:01', '2017-01-12 15:52:01'),
(533, 608, NULL, 'plugin_page', '/admin/modules/config/Edo', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(534, 609, NULL, 'plugin_page', '/admin/modules/config/Edo/assets', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(535, 610, NULL, 'plugin_page', '/admin/modules/config/Edo/info', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(536, 611, NULL, 'plugin_page', '/admin/modules/config/Edo/tables', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(537, 612, NULL, 'plugin_page', '/admin/modules/config/Edo/permission', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(538, 613, NULL, 'plugin_page', '/admin/modules/config/Edo/codes', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(539, 614, NULL, 'plugin_page', '/admin/modules/config/Edo/gears', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(540, 615, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/layouts', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(541, 616, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/units', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(542, 617, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/h-f', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(543, 618, NULL, 'plugin_page', '/admin/modules/config/Edo/gears/main_body', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(544, 619, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(545, 620, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/layouts', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(546, 621, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/units', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(547, 622, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/h-f', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(548, 623, NULL, 'plugin_page', '/admin/modules/config/Edo/gearsb/main_body', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(549, 624, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(550, 625, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/pages', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(551, 626, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/menus', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(552, 627, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/classify', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(553, 628, NULL, 'plugin_page', '/admin/modules/config/Edo/buildb/tags', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(554, 629, NULL, 'plugin_page', '/admin/modules/config/Edo/build', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(555, 630, NULL, 'plugin_page', '/admin/modules/config/Edo/build/pages', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(556, 631, NULL, 'plugin_page', '/admin/modules/config/Edo/build/menus', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(557, 632, NULL, 'plugin_page', '/admin/modules/config/Edo/build/classify', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(558, 633, NULL, 'plugin_page', '/admin/modules/config/Edo/build/tags', 0, '2017-01-12 15:52:07', '2017-01-12 15:52:07'),
(559, 634, NULL, 'plugin_page', '/admin/modules/config/Frontend', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(560, 635, NULL, 'plugin_page', '/admin/modules/config/Frontend/assets', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(561, 636, NULL, 'plugin_page', '/admin/modules/config/Frontend/info', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(562, 637, NULL, 'plugin_page', '/admin/modules/config/Frontend/tables', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(563, 638, NULL, 'plugin_page', '/admin/modules/config/Frontend/permission', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(564, 639, NULL, 'plugin_page', '/admin/modules/config/Frontend/codes', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(565, 640, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(566, 641, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/layouts', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(567, 642, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/units', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(568, 643, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/h-f', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(569, 644, NULL, 'plugin_page', '/admin/modules/config/Frontend/gears/main_body', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(570, 645, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(571, 646, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/layouts', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(572, 647, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/units', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(573, 648, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/h-f', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(574, 649, NULL, 'plugin_page', '/admin/modules/config/Frontend/gearsb/main_body', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(575, 650, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(576, 651, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/pages', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(577, 652, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/menus', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(578, 653, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/classify', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(579, 654, NULL, 'plugin_page', '/admin/modules/config/Frontend/buildb/tags', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(580, 655, NULL, 'plugin_page', '/admin/modules/config/Frontend/build', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(581, 656, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/pages', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(582, 657, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/menus', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(583, 658, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/classify', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(584, 659, NULL, 'plugin_page', '/admin/modules/config/Frontend/build/tags', 0, '2017-01-12 15:52:15', '2017-01-12 15:52:15'),
(585, 660, NULL, 'plugin_page', '/admin/modules/config/General', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(586, 661, NULL, 'plugin_page', '/admin/modules/config/General/assets', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(587, 662, NULL, 'plugin_page', '/admin/modules/config/General/info', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(588, 663, NULL, 'plugin_page', '/admin/modules/config/General/tables', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(589, 664, NULL, 'plugin_page', '/admin/modules/config/General/permission', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(590, 665, NULL, 'plugin_page', '/admin/modules/config/General/codes', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(591, 666, NULL, 'plugin_page', '/admin/modules/config/General/gears', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(592, 667, NULL, 'plugin_page', '/admin/modules/config/General/gears/layouts', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(593, 668, NULL, 'plugin_page', '/admin/modules/config/General/gears/units', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(594, 669, NULL, 'plugin_page', '/admin/modules/config/General/gears/h-f', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(595, 670, NULL, 'plugin_page', '/admin/modules/config/General/gears/main_body', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(596, 671, NULL, 'plugin_page', '/admin/modules/config/General/gearsb', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(597, 672, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/layouts', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(598, 673, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/units', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(599, 674, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/h-f', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(600, 675, NULL, 'plugin_page', '/admin/modules/config/General/gearsb/main_body', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(601, 676, NULL, 'plugin_page', '/admin/modules/config/General/buildb', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(602, 677, NULL, 'plugin_page', '/admin/modules/config/General/buildb/pages', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(603, 678, NULL, 'plugin_page', '/admin/modules/config/General/buildb/menus', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(604, 679, NULL, 'plugin_page', '/admin/modules/config/General/buildb/classify', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(605, 680, NULL, 'plugin_page', '/admin/modules/config/General/buildb/tags', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(606, 681, NULL, 'plugin_page', '/admin/modules/config/General/build', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(607, 682, NULL, 'plugin_page', '/admin/modules/config/General/build/pages', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(608, 683, NULL, 'plugin_page', '/admin/modules/config/General/build/menus', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(609, 684, NULL, 'plugin_page', '/admin/modules/config/General/build/classify', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(610, 685, NULL, 'plugin_page', '/admin/modules/config/General/build/tags', 0, '2017-01-12 15:52:23', '2017-01-12 15:52:23'),
(611, 686, NULL, 'plugin_page', '/admin/modules/config/Media', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(612, 687, NULL, 'plugin_page', '/admin/modules/config/Media/assets', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(613, 688, NULL, 'plugin_page', '/admin/modules/config/Media/info', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(614, 689, NULL, 'plugin_page', '/admin/modules/config/Media/tables', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(615, 690, NULL, 'plugin_page', '/admin/modules/config/Media/permission', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(616, 691, NULL, 'plugin_page', '/admin/modules/config/Media/codes', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(617, 692, NULL, 'plugin_page', '/admin/modules/config/Media/gears', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(618, 693, NULL, 'plugin_page', '/admin/modules/config/Media/gears/layouts', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(619, 694, NULL, 'plugin_page', '/admin/modules/config/Media/gears/units', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(620, 695, NULL, 'plugin_page', '/admin/modules/config/Media/gears/h-f', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(621, 696, NULL, 'plugin_page', '/admin/modules/config/Media/gears/main_body', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(622, 697, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(623, 698, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/layouts', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(624, 699, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/units', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(625, 700, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/h-f', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(626, 701, NULL, 'plugin_page', '/admin/modules/config/Media/gearsb/main_body', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(627, 702, NULL, 'plugin_page', '/admin/modules/config/Media/buildb', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(628, 703, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/pages', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(629, 704, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/menus', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(630, 705, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/classify', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(631, 706, NULL, 'plugin_page', '/admin/modules/config/Media/buildb/tags', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(632, 707, NULL, 'plugin_page', '/admin/modules/config/Media/build', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(633, 708, NULL, 'plugin_page', '/admin/modules/config/Media/build/pages', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(634, 709, NULL, 'plugin_page', '/admin/modules/config/Media/build/menus', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(635, 710, NULL, 'plugin_page', '/admin/modules/config/Media/build/classify', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(636, 711, NULL, 'plugin_page', '/admin/modules/config/Media/build/tags', 0, '2017-01-12 15:52:35', '2017-01-12 15:52:35'),
(637, 712, NULL, 'plugin_page', '/admin/modules/config/Modules', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(638, 713, NULL, 'plugin_page', '/admin/modules/config/Modules/assets', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(639, 714, NULL, 'plugin_page', '/admin/modules/config/Modules/info', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(640, 715, NULL, 'plugin_page', '/admin/modules/config/Modules/tables', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(641, 716, NULL, 'plugin_page', '/admin/modules/config/Modules/permission', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(642, 717, NULL, 'plugin_page', '/admin/modules/config/Modules/codes', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(643, 718, NULL, 'plugin_page', '/admin/modules/config/Modules/gears', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(644, 719, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/layouts', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(645, 720, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/units', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(646, 721, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/h-f', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(647, 722, NULL, 'plugin_page', '/admin/modules/config/Modules/gears/main_body', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(648, 723, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(649, 724, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/layouts', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(650, 725, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/units', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(651, 726, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/h-f', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(652, 727, NULL, 'plugin_page', '/admin/modules/config/Modules/gearsb/main_body', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(653, 728, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(654, 729, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/pages', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(655, 730, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/menus', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(656, 731, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/classify', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(657, 732, NULL, 'plugin_page', '/admin/modules/config/Modules/buildb/tags', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(658, 733, NULL, 'plugin_page', '/admin/modules/config/Modules/build', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(659, 734, NULL, 'plugin_page', '/admin/modules/config/Modules/build/pages', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(660, 735, NULL, 'plugin_page', '/admin/modules/config/Modules/build/menus', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(661, 736, NULL, 'plugin_page', '/admin/modules/config/Modules/build/classify', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(662, 737, NULL, 'plugin_page', '/admin/modules/config/Modules/build/tags', 0, '2017-01-12 15:52:42', '2017-01-12 15:52:42'),
(663, 738, NULL, 'plugin_page', '/admin/modules/config/Users', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(664, 739, NULL, 'plugin_page', '/admin/modules/config/Users/assets', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(665, 740, NULL, 'plugin_page', '/admin/modules/config/Users/info', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(666, 741, NULL, 'plugin_page', '/admin/modules/config/Users/tables', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(667, 742, NULL, 'plugin_page', '/admin/modules/config/Users/permission', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(668, 743, NULL, 'plugin_page', '/admin/modules/config/Users/codes', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(669, 744, NULL, 'plugin_page', '/admin/modules/config/Users/gears', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(670, 745, NULL, 'plugin_page', '/admin/modules/config/Users/gears/layouts', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(671, 746, NULL, 'plugin_page', '/admin/modules/config/Users/gears/units', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(672, 747, NULL, 'plugin_page', '/admin/modules/config/Users/gears/h-f', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(673, 748, NULL, 'plugin_page', '/admin/modules/config/Users/gears/main_body', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(674, 749, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(675, 750, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/layouts', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(676, 751, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/units', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(677, 752, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/h-f', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(678, 753, NULL, 'plugin_page', '/admin/modules/config/Users/gearsb/main_body', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(679, 754, NULL, 'plugin_page', '/admin/modules/config/Users/buildb', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(680, 755, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/pages', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(681, 756, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/menus', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(682, 757, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/classify', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(683, 758, NULL, 'plugin_page', '/admin/modules/config/Users/buildb/tags', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(684, 759, NULL, 'plugin_page', '/admin/modules/config/Users/build', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(685, 760, NULL, 'plugin_page', '/admin/modules/config/Users/build/pages', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(686, 761, NULL, 'plugin_page', '/admin/modules/config/Users/build/menus', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(687, 762, NULL, 'plugin_page', '/admin/modules/config/Users/build/classify', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(688, 763, NULL, 'plugin_page', '/admin/modules/config/Users/build/tags', 0, '2017-01-12 15:52:50', '2017-01-12 15:52:50'),
(689, 791, NULL, 'plugin_page', '/admin/sahak', 0, '2017-01-19 12:24:19', '2017-01-19 12:24:19'),
(690, NULL, 15, 'custom', '/test', 0, '2017-02-16 11:11:50', '2017-02-16 11:12:11'),
(691, NULL, 16, 'custom', '/edo-test', 0, '2017-02-21 13:35:48', '2017-03-09 13:32:32'),
(692, NULL, 9, 'classify', '/all-classify', 0, NULL, NULL),
(693, NULL, 10, 'tags', '/all-tags', 0, NULL, NULL),
(694, NULL, 17, 'custom', '/all-classify/abokamal', 0, '2017-03-02 09:32:03', '2017-03-02 09:32:03'),
(695, NULL, 17, 'classify', '/all-classify/abokamal', 0, '2017-03-02 09:32:03', '2017-03-02 09:32:03'),
(697, NULL, 18, 'classify', '/all-classify/armenia-universities', 0, '2017-03-02 11:30:39', '2017-03-02 11:30:39'),
(701, NULL, 20, 'classify', '/all-classify/armenia-universities/seua', 0, '2017-03-02 11:31:42', '2017-03-02 11:31:42'),
(703, NULL, 21, 'classify', '/all-classify/armenia-universities/asue', 0, '2017-03-02 11:32:40', '2017-03-02 11:32:40'),
(705, NULL, 22, 'classify', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics', 0, '2017-03-02 11:33:50', '2017-03-02 11:33:50'),
(707, NULL, 23, 'classify', '/all-classify/armenia-universities/ysu/faculty-of-physics', 0, '2017-03-02 11:34:56', '2017-03-02 11:34:56'),
(709, NULL, 24, 'classify', '/all-classify/armenia-universities/ysu/faculty-of-law', 0, '2017-03-02 11:35:14', '2017-03-02 11:35:14'),
(711, NULL, 25, 'classify', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-discrete-mathematics-and-theoretical-informatics', 0, '2017-03-02 11:36:38', '2017-03-02 11:36:38'),
(713, NULL, 26, 'classify', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-numerical-analysis-and-mathematical-modelling', 0, '2017-03-02 11:37:22', '2017-03-02 11:37:22'),
(715, NULL, 27, 'classify', '/all-classify/armenia-universities/ysu/informatics-and-applied-mathematics/chair-of-programming-and-information-technologies', 0, '2017-03-02 11:37:45', '2017-03-02 11:37:45'),
(716, NULL, 28, 'all', '/cars', 0, '2017-03-06 18:32:26', '2017-03-13 09:16:15'),
(717, NULL, 33, 'all_posts', 'abokamal', 0, '2017-03-09 13:30:57', '2017-03-09 13:30:57'),
(718, NULL, 34, 'single_post', '/abokamal/{param}', 0, '2017-03-09 13:30:57', '2017-03-10 08:55:53'),
(719, NULL, 35, 'all_posts', '/edo', 0, '2017-03-09 13:31:03', '2017-03-09 15:30:44'),
(720, NULL, 36, 'single_post', 'edo/{param}', 0, '2017-03-09 13:31:03', '2017-03-09 13:31:03'),
(721, NULL, 37, 'plugin', 'ara', 0, '2017-03-10 10:36:39', '2017-03-10 10:36:39'),
(722, NULL, 38, 'plugin', 'ara/{param}', 0, '2017-03-10 10:36:39', '2017-03-10 10:36:39'),
(723, NULL, 39, 'plugin', '/auto', 0, '2017-03-13 09:21:07', '2017-03-13 09:23:19'),
(724, NULL, 40, 'plugin', 'auto/{param}', 0, '2017-03-13 09:21:07', '2017-03-13 09:21:07'),
(725, NULL, 41, 'plugin', 'expo', 0, '2017-03-15 13:46:05', '2017-03-15 13:46:05'),
(726, NULL, 42, 'plugin', 'expo/{param}', 0, '2017-03-15 13:46:05', '2017-03-15 13:46:05'),
(727, NULL, 43, 'plugin', 'bike', 0, '2017-03-22 13:14:00', '2017-03-22 13:14:00'),
(728, NULL, 44, 'plugin', 'bike/{param}', 0, '2017-03-22 13:14:00', '2017-03-22 13:14:00'),
(729, NULL, 45, 'plugin', 'render', 0, '2017-03-24 08:04:13', '2017-03-24 08:04:13'),
(730, NULL, 46, 'plugin', 'render/{param}', 0, '2017-03-24 08:04:13', '2017-03-24 08:04:13'),
(750, NULL, 66, 'custom', '/new-page(66)', 0, '2017-05-30 00:11:17', '2017-05-30 00:11:17'),
(751, NULL, 67, 'core', '/my-account', 0, '2017-06-22 09:56:58', '2017-06-22 09:56:58'),
(752, NULL, 69, 'custom', '/new-page(69)', 0, '2017-06-26 03:02:42', '2017-06-26 03:02:42'),
(753, NULL, 68, 'core', '/my-account/general', 0, '2017-09-03 12:06:59', '2017-09-03 12:06:59'),
(754, NULL, 70, 'custom', '/alkash', 0, '2017-09-08 14:54:42', '2017-09-08 14:58:31'),
(755, NULL, 71, 'custom', '/new-page(71)', 0, '2017-09-09 08:34:10', '2017-09-09 08:34:10'),
(756, NULL, 72, 'custom', '/profile', 0, '2017-09-16 14:57:53', '2017-09-16 14:59:14'),
(757, NULL, 73, 'plugin', '/all-posts', 0, '2017-10-04 08:51:52', '2017-10-04 08:51:52'),
(758, NULL, 75, 'plugin', 'studios/react-app', 0, '2017-11-01 12:25:38', '2017-11-01 12:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `membership_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role_id` int(11) UNSIGNED NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `token` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `membership_id`, `role_id`, `status`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'avatarbugs@gmail.com', 'abokamal', '$2y$10$Zo9sy1L.9NaPDpLuJulLNOfLnIWyu22WiVgCpFhXPFxh7.oKw9aYG', 0, 1, 'active', NULL, '1KfEL48XE5qeuPS92UxQT6oDA3t0ZNTcFim6ZOePEqfvkolWTft3tuB1KO3t', '2016-05-03 22:00:00', '2017-06-30 06:56:01'),
(3, 'avataryyybugs@gmail.com', 'edokamal', '$2y$10$iqYxVgcq.DwaYZBZ/W7v0.5tvQWtrcYcMgm0x9YkfMPhsWwXDq6X.', 1, 0, 'active', NULL, 'ktdUcZbDAEUOW0SmbWVhQU7qd6AfZ81D5NaSNiLS3xChcVbK8RZI5PfwwEjA', NULL, '2017-01-09 23:11:18'),
(4, 'brisa57@kuphal.com', 'kuphal.aylin', '$2y$10$a4KFfStNZpxDfivqD17jS.Cvaw06flEPyuDODVOr9uOwyO6w2d9Z2', 1, 0, 'active', NULL, NULL, '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(5, 'rempel.claude@hotmail.com', 'jermain40', '$2y$10$UyJz4GTyzc3HD6lxmzzNLOphRMvcobb6uqfgUUjizDP4y/DlsQCr.', 1, 0, 'active', NULL, NULL, '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(6, 'schuster.garrick@gmail.com', 'arch.marks', '$2y$10$7XfC1ZgeLMv9C6qfQ2ZP3.JwDu0Ehcs3D6GN8CXeO.IBj0x3vkR4K', 2, 0, 'active', NULL, NULL, '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(7, 'pnolan@rippin.com', 'heloise40', '$2y$10$E.7OvK/HCrPAnItjo6/jgefP5yRIo31YRJ0QVWaE7H3zIXYxmg1dq', 1, 0, 'active', NULL, NULL, '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(8, 'richmond55@gmail.com', 'hsmitham', '$2y$10$1QL8ZTLweuAfV74itIuy1ebj1bFsapV8J2PcMYJkoAHLkW0hXK5rO', 1, 0, 'active', NULL, NULL, '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(9, 'edo.terakyan@gmail.com', 'sahakner', '$2y$10$HHosvokr1o/ksKsZCbFZX.2.bv/bjCsZyrtIprQ9u8hbUJgRiVb5i', 1, 0, 'active', '', NULL, '2017-03-30 08:34:17', '2017-03-30 08:34:25'),
(18, 'simon@ss.cs', 'simon', '$2y$10$WrzD.Z8oTbK.fkxugkornOHmOdF7gL1ClPtjuOJL90waYQKDNsEjm', 0, 0, 'pending', NULL, NULL, NULL, NULL),
(21, 'huyuy@jcjdcj.cc', 'huyuy', '$2y$10$cZOW1RI9hOsheMgwixhjS.raffdWE3Lf/A87zzsaQ6ZN5UCAwsGYW', 0, 0, 'pending', NULL, NULL, NULL, NULL),
(23, 'cdcd@cdccdc,cd', 'ccccccccccc', '$2y$10$PQLvUp/OUi9fHan1wWY79ORdK98h3qs0gjiWjn62aasW6cW1xaXLi', 0, 0, 'active', NULL, NULL, NULL, NULL),
(24, 'rcrcrc2@kcd.gggggdr', 'yyyyyyyyyyyyyyy', '$2y$10$T3FnpHfYqW3ICcoNmJ9S7uKPF7G5OuoPcwHEZL1pdyru6ZAF2cURi', 0, 6, 'active', NULL, NULL, NULL, NULL),
(25, 'od@od.od', 'od', '$2y$10$3LZE1JLdQNXPTAPpqWIqK.jY15pgWrwMthO5nGGmBsRgmWovFsl9.', 0, 6, 'inactive', NULL, NULL, NULL, NULL),
(26, 'funtik@cc.dd', 'ffffff', '$2y$10$e2m7F2NYmm5dwULeTGh1/OQUaIB13rPDUb4hYJV6qP9BmEYmH0ZaO', 0, 6, 'inactive', NULL, NULL, NULL, NULL),
(29, 'edo.terccccakyan@gmail.comccc', 'csdcdscdscsdc', '$2y$10$okSx8NvbCmfPf1DnXBBPOu0556QXI0VGiC7u3Qa1I2qPiz67wY41.', 0, 6, 'inactive', NULL, NULL, NULL, NULL),
(33, 'dede@ccdc.cdc', 'vrvrvrfvrfv', '$2y$10$fLxlUyfi2LFcxFXCEZylM.viUyWc.433dqBwzKd7SYJ4SHNtBmxoe', 0, 6, 'inactive', NULL, NULL, NULL, NULL),
(34, 'wedewew@cdc.dc', 'ecedcedcedc', '$2y$10$WSkytWG4s9N3dlc8FWHOMe9nYQ2yPQiiZWwoMZ0MHo13QF/6ehyYW', 0, 6, 'inactive', NULL, NULL, NULL, NULL),
(35, 'wedewew@cdc.dc34', '433443434', '$2y$10$szZYZTVdIzR243NPIZfJT.lvJqDSWrQzMKP8x7wuau/QZrpDmWkOO', 0, 6, 'inactive', NULL, NULL, NULL, NULL),
(36, 'dcdcdc', NULL, '', 0, 0, 'active', NULL, NULL, NULL, NULL),
(37, 'dcdcdc@cdcd.cd', NULL, '', 0, 0, 'active', NULL, NULL, NULL, NULL),
(39, 'rcdccrcrc2@kcd.cdcd', 'rrrrrrrrr', '$2y$10$844B/iAXldmxHyX.sDl6TOEGKZ2dxf1OdvpzNHvtE3L2WYmLhbw3e', 0, 6, 'active', NULL, NULL, NULL, NULL),
(40, 'vgvgv@jjj.cc', 'cdcdee223', '$2y$10$Z8YGpih1Gg6xk/pOsFXoKuKhcR1Nhd5M5n.mE6/bjP2z0WMWAVLPm', 0, 6, 'active', NULL, NULL, NULL, NULL),
(42, 'rcrcrc2@kcd.cdccdcdc', 'dcdcdcdscdscds', '$2y$10$Mw7IgaZu02o6AVOYvhs/3u8YUVEzzmvDNF7CNBn91V2bU27mqNa/W', 0, 6, 'active', NULL, NULL, NULL, NULL),
(44, 'rcrcrc2@kcd.cdcddddd', 'dcdcdccccccccc', '$2y$10$ZJkPzP5BJ4N1FTGKuUmOROmWaooppBYiJPh1j0zcG.V8s2KwcXtKW', 0, 6, 'active', NULL, NULL, NULL, NULL),
(50, 'eeeeeeee@cccc.ccc', 'cdecdecedcedc', '$2y$10$vFE97.FB5JO0e21Pz2cm3efGUky.d9DBogu/4qje36a5Ac9qGycsi', 0, 6, 'inactive', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `data_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`data_id`, `user_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 8, 'first_name', 'dcdc', '2017-04-04 08:21:57', '2017-04-04 08:21:57'),
(2, 8, 'last_name', 'dcdc', '2017-04-04 08:21:57', '2017-04-04 08:21:57'),
(3, 8, 'address', 'dcdc', '2017-04-04 08:21:57', '2017-04-04 08:21:57'),
(4, 8, 'city', '', '2017-04-04 08:21:57', '2017-04-04 08:21:57'),
(5, 8, 'state', '', '2017-04-04 08:21:57', '2017-04-04 08:21:57'),
(6, 8, 'age', '78', '2017-04-04 08:21:57', '2017-04-04 08:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_first` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_second` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_data` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `user_id`, `first_name`, `last_name`, `avatar`, `cover`, `phone`, `gender`, `city`, `country`, `address_first`, `address_second`, `meta_data`, `created_at`, `updated_at`) VALUES
(2, 3, 'Edo', 'T.', NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL),
(3, 4, 'Shaylee', 'Luettgen', 'http://lorempixel.com/500/500/people/?22202', 'http://lorempixel.com/500/500/?71895', NULL, '', '', '', '', NULL, 'a:3:{s:3:\"job\";s:34:\"Aircraft Cargo Handling Supervisor\";s:3:\"age\";i:50;s:6:\"gender\";s:6:\"female\";}', '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(4, 5, 'Ardith', 'Franecki', 'http://lorempixel.com/500/500/people/?92104', 'http://lorempixel.com/500/500/?28549', NULL, '', '', '', '', NULL, 'a:3:{s:3:\"job\";s:15:\"Camera Operator\";s:3:\"age\";i:77;s:6:\"gender\";s:6:\"female\";}', '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(5, 6, 'Brandy', 'Collier', 'http://lorempixel.com/500/500/people/?38107', 'http://lorempixel.com/500/500/?28606', NULL, '', '', '', '', NULL, 'a:3:{s:3:\"job\";s:11:\"Silversmith\";s:3:\"age\";i:66;s:6:\"gender\";s:6:\"others\";}', '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(6, 7, 'Amiya', 'Zulauf', 'http://lorempixel.com/500/500/people/?80129', 'http://lorempixel.com/500/500/?29249', NULL, '', '', '', '', NULL, 'a:3:{s:3:\"job\";s:9:\"Architect\";s:3:\"age\";i:98;s:6:\"gender\";s:6:\"female\";}', '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(7, 8, 'Spencer', 'Schimmel', 'http://lorempixel.com/500/500/people/?43693', 'http://lorempixel.com/500/500/?84076', NULL, '', '', '', '', NULL, 'a:3:{s:3:\"job\";s:6:\"Rigger\";s:3:\"age\";i:46;s:6:\"gender\";s:6:\"female\";}', '2017-02-27 08:42:38', '2017-02-27 08:42:38'),
(10, 1, NULL, NULL, NULL, NULL, '111114', '', '', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `env` tinyint(4) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `content` longtext,
  `is_generated` tinyint(4) NOT NULL DEFAULT '0',
  `is_generated_front` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `author_id`, `version`, `name`, `type`, `env`, `file_name`, `content`, `is_generated`, `is_generated_front`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'v1', 'affix', 'js', 0, '59b002a723526.js', '7f1eee1a8937cd5c61a9ff7d3f2bf1ee', 1, 0, 1, '2017-09-06 12:13:59', '2017-11-01 11:18:46'),
(2, 1, 'v2', 'affix', 'js', 0, '59b002b046154.js', '996a7883a368ba6554870248686e215f', 0, 0, 0, '2017-09-06 12:14:08', '2017-09-06 12:14:27'),
(3, 1, 'v3', 'affix', 'js', 0, '59b002b9f2429.js', 'bb6f764a2f925e473cd5dcc60aff05a1', 0, 0, 0, '2017-09-06 12:14:17', '2017-09-06 12:14:27'),
(4, 1, 'v1', 'bootstrap Black', 'css', 0, '59b2c80b6000c.css', '27559b93322a733e1ebaadc4f8b418a3', 0, 0, 0, '2017-09-08 14:40:43', '2017-09-08 14:40:43'),
(5, 1, 'v1', 'bootstrap Exotic', 'css', 0, '59b2c82a5c624.css', '27559b93322a733e1ebaadc4f8b418a3', 0, 0, 0, '2017-09-08 14:41:14', '2017-09-08 14:41:14'),
(6, 1, 'v1', 'bootstrap Superhero', 'css', 0, '59b2c862ddafa.css', '27559b93322a733e1ebaadc4f8b418a3', 0, 0, 0, '2017-09-08 14:42:10', '2017-09-08 14:42:10'),
(7, 1, 'v1', 'bootstrap Lumen', 'css', 0, '59b2c888b9a4c.css', '27559b93322a733e1ebaadc4f8b418a3', 0, 0, 0, '2017-09-08 14:42:48', '2017-09-08 14:42:48'),
(8, 1, 'v1', 'custom', 'css', 0, '59b2d05a16f7a.css', '27559b93322a733e1ebaadc4f8b418a3', 0, 0, 0, '2017-09-08 15:16:10', '2017-09-08 15:16:10'),
(9, 1, 'v1', 'bootstrapDefault', 'js', 0, '59ba2c90e5d41.js', '82350585634234852747b8786fa0bb5d', 0, 0, 0, '2017-09-14 05:15:28', '2017-11-01 11:18:33'),
(10, 1, 'bootstrap', 'bootstrapDefault', 'js', 0, '59f9bb90c4de4.js', '1d1c752cca6e6f8f83effc98d2658dfa', 1, 0, 1, '2017-11-01 11:18:24', '2017-11-01 11:19:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_pages`
--
ALTER TABLE `admin_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_pages_slug_unique` (`slug`);

--
-- Indexes for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assests`
--
ALTER TABLE `assests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_author_id_foreign` (`author_id`);

--
-- Indexes for table `classifiers`
--
ALTER TABLE `classifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classifier_items`
--
ALTER TABLE `classifier_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terms_taxonomy_id_foreign` (`classifier_id`);

--
-- Indexes for table `classify_items_pages`
--
ALTER TABLE `classify_items_pages`
  ADD KEY `core_page_id` (`front_page_id`),
  ADD KEY `classifier_item_id` (`classifier_item_id`),
  ADD KEY `classifier_id` (`classifier_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`),
  ADD KEY `comments_author_id_foreign` (`author_id`);

--
-- Indexes for table `comments_meta`
--
ALTER TABLE `comments_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comments_meta_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `core_pages`
--
ALTER TABLE `core_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cs_comments_profile`
--
ALTER TABLE `cs_comments_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_classes`
--
ALTER TABLE `custom_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo_menus`
--
ALTER TABLE `demo_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo_menu_items`
--
ALTER TABLE `demo_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `drive_folders`
--
ALTER TABLE `drive_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drive_folders_name` (`name`);

--
-- Indexes for table `drive_items`
--
ALTER TABLE `drive_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drive_items_folder_id_foreign` (`folder_id`),
  ADD KEY `drive_items_original_name` (`original_name`),
  ADD KEY `drive_items_real_name` (`real_name`),
  ADD KEY `drive_items_extension` (`extension`);

--
-- Indexes for table `drive_settings`
--
ALTER TABLE `drive_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drive_settings_folder_id_foreign` (`folder_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_group_id_foreign` (`group_id`);

--
-- Indexes for table `email_groups`
--
ALTER TABLE `email_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table` (`slug`);

--
-- Indexes for table `form_entries`
--
ALTER TABLE `form_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_settings`
--
ALTER TABLE `form_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_id` (`form_id`);

--
-- Indexes for table `frameworks`
--
ALTER TABLE `frameworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_pages`
--
ALTER TABLE `frontend_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_pages_tags`
--
ALTER TABLE `frontend_pages_tags`
  ADD KEY `frontend_page_id` (`frontend_page_id`),
  ADD KEY `tags_id` (`tags_id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hooks`
--
ALTER TABLE `hooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping`
--
ALTER TABLE `mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `memberships_name_unique` (`name`),
  ADD UNIQUE KEY `memberships_slug_unique` (`slug`);

--
-- Indexes for table `membership_permission`
--
ALTER TABLE `membership_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membership_permission_permission_id_index` (`page_id`),
  ADD KEY `membership_permission_memberships_id_index` (`membership_id`);

--
-- Indexes for table `member_groups`
--
ALTER TABLE `member_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_groups_slug_unique` (`slug`);

--
-- Indexes for table `menu_variation`
--
ALTER TABLE `menu_variation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`),
  ADD KEY `permissions_parent_index` (`parent`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`page_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `profile_styles`
--
ALTER TABLE `profile_styles`
  ADD PRIMARY KEY (`profile_id`,`style_item_id`),
  ADD KEY `profile_styles_style_item_id_foreign` (`style_item_id`);

--
-- Indexes for table `pro_validator`
--
ALTER TABLE `pro_validator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `sdn_settings`
--
ALTER TABLE `sdn_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_type_id_foreign` (`type_id`);

--
-- Indexes for table `tags_meta`
--
ALTER TABLE `tags_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `tags_meta_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tag_types`
--
ALTER TABLE `tag_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urlmanager`
--
ALTER TABLE `urlmanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `users_meta_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_profile_user_id_foreign` (`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_pages`
--
ALTER TABLE `admin_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assests`
--
ALTER TABLE `assests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_meta`
--
ALTER TABLE `comments_meta`
  MODIFY `meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_pages`
--
ALTER TABLE `core_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cs_comments_profile`
--
ALTER TABLE `cs_comments_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_classes`
--
ALTER TABLE `custom_classes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demo_menus`
--
ALTER TABLE `demo_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drive_folders`
--
ALTER TABLE `drive_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `drive_items`
--
ALTER TABLE `drive_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `drive_settings`
--
ALTER TABLE `drive_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_groups`
--
ALTER TABLE `email_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `form_entries`
--
ALTER TABLE `form_entries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `form_settings`
--
ALTER TABLE `form_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frameworks`
--
ALTER TABLE `frameworks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `frontend_pages`
--
ALTER TABLE `frontend_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hooks`
--
ALTER TABLE `hooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mapping`
--
ALTER TABLE `mapping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `membership_permission`
--
ALTER TABLE `membership_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member_groups`
--
ALTER TABLE `member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_variation`
--
ALTER TABLE `menu_variation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pro_validator`
--
ALTER TABLE `pro_validator`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sdn_settings`
--
ALTER TABLE `sdn_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags_meta`
--
ALTER TABLE `tags_meta`
  MODIFY `meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag_types`
--
ALTER TABLE `tag_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urlmanager`
--
ALTER TABLE `urlmanager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `data_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classifier_items`
--
ALTER TABLE `classifier_items`
  ADD CONSTRAINT `classify_id_foregin` FOREIGN KEY (`classifier_id`) REFERENCES `classifiers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classify_items_pages`
--
ALTER TABLE `classify_items_pages`
  ADD CONSTRAINT `front_page_classifier_foreign` FOREIGN KEY (`front_page_id`) REFERENCES `frontend_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments_meta`
--
ALTER TABLE `comments_meta`
  ADD CONSTRAINT `comments_meta_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drive_items`
--
ALTER TABLE `drive_items`
  ADD CONSTRAINT `drive_items_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `drive_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drive_settings`
--
ALTER TABLE `drive_settings`
  ADD CONSTRAINT `drive_settings_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `drive_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `email_groups` (`id`);

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `membership_permission`
--
ALTER TABLE `membership_permission`
  ADD CONSTRAINT `frontend_page_permissions` FOREIGN KEY (`page_id`) REFERENCES `frontend_pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `membership_permission_memberships_id_foreign` FOREIGN KEY (`membership_id`) REFERENCES `memberships` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `tag_types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
