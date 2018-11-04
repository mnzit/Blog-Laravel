-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 02:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Java', '2018-10-21 21:51:59', '2018-10-21 21:51:59'),
(2, 'Wordpress', '2018-10-21 21:52:03', '2018-10-21 21:52:03'),
(3, 'JavaScript', '2018-10-21 21:52:09', '2018-10-21 21:52:09'),
(4, 'ASP.NET', '2018-10-21 21:52:14', '2018-10-21 21:52:14'),
(5, 'VB.NET', '2018-10-21 21:52:20', '2018-10-21 21:52:20'),
(6, 'Python', '2018-10-21 21:52:23', '2018-10-21 21:52:23'),
(7, 'Ruby on Rails', '2018-10-21 21:52:29', '2018-10-21 21:52:29'),
(8, 'GoLang', '2018-10-21 21:52:37', '2018-10-21 21:52:37'),
(9, 'PHP', '2018-10-21 21:52:47', '2018-10-21 21:52:47'),
(10, 'Scala', '2018-10-21 21:52:55', '2018-10-21 21:52:55'),
(11, 'Programming Language', '2018-10-21 21:56:41', '2018-10-21 21:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_17_123839_create_posts_table', 1),
(4, '2018_10_17_124126_create_categories_table', 1),
(5, '2018_10_18_065919_create_tags_table', 1),
(6, '2018_10_18_070354_create_post_tag_table', 1),
(7, '2018_10_18_090355_create_profiles_table', 1),
(8, '2018_10_18_135454_create_settings_table', 1),
(9, '2018_10_19_173632_insert_user_id_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Java 10\'s difference with Java 9', 'java-10s-difference-with-java-9', '<section name=\"5a5c\" class=\"section section--body section--first\" style=\"position: relative; clear: both; padding-top: 0px; margin-top: 20px; color: rgba(0, 0, 0, 0.84); font-family: medium-content-sans-serif-font, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 20px;\"><div class=\"section-content\"><div class=\"section-inner sectionLayout--insetColumn\" style=\"position: relative; max-width: 740px; width: 740px; margin: 0px auto; padding-left: 20px; padding-right: 20px;\"><h1 name=\"5a7b\" id=\"5a7b\" class=\"graf graf--h3 graf--leading graf--title\" style=\"font-size: 42px; margin-top: 0px; margin-bottom: 0px; margin-left: -2.63px; font-family: medium-content-sans-serif-font, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, &quot;Lucida Sans&quot;, Geneva, Arial, sans-serif; letter-spacing: -0.015em; font-weight: 600; color: rgba(0, 0, 0, 0.84); --margin-top-multiplier:0; line-height: 1.04; padding-top: 5px !important;\">Java 10 And Cross References In Asciidoctor</h1><h2 name=\"c1b4\" id=\"c1b4\" class=\"graf graf--h4 graf-after--h3 graf--subtitle\" style=\"font-family: medium-content-sans-serif-font, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, &quot;Lucida Sans&quot;, Geneva, Arial, sans-serif; letter-spacing: -0.012em; margin: 5px 0px 22px -1.75px; color: rgba(0, 0, 0, 0.54); --baseline-multiplier:0.22; font-size: 28px; line-height: 1.22;\">CodeFX Weekly #43 — 11th of November&nbsp;2017</h2><p name=\"ad79\" id=\"ad79\" class=\"graf graf--p graf-after--h4\" style=\"margin-top: 10px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">Hi everyone,</p><p name=\"76e9\" id=\"76e9\" class=\"graf graf--p graf-after--p\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\"><a href=\"https://medium.com/codefx-weekly/java-10-is-coming-e6807eb5de6e\" data-href=\"https://medium.com/codefx-weekly/java-10-is-coming-e6807eb5de6e\" class=\"markup--anchor markup--p-anchor\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">last week</a>&nbsp;I got all excited about Java 10 and claimed that it would contain pattern matching. Yeay! Unfortunately, I got that wrong. Booh! So I took the last week to reign in the excitement and cool down. I am now prepared to offer you a more reasoned introduction to Java’s next release.</p><p name=\"dd15\" id=\"dd15\" class=\"graf graf--p graf-after--p\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">And then there’s some background on auto-numbering cross references in Asciidoctor.</p><p name=\"973e\" id=\"973e\" class=\"graf graf--p graf-after--p graf--trailing\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\"><em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">I send this newsletter out every Friday. Yes, as an actual email.&nbsp;</em><a href=\"http://blog.codefx.org/newsletter/\" data-href=\"http://blog.codefx.org/newsletter/\" class=\"markup--anchor markup--p-anchor\" rel=\"nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener noopener nofollow noopener noopener nofollow noopener nofollow noopener noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\"><span class=\"markup--strong markup--p-strong\" style=\"font-weight: 700;\"><em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">Subscribe</em></span></a><em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">!</em></p></div></div></section><section name=\"e776\" class=\"section section--body\" style=\"position: relative; clear: both; color: rgba(0, 0, 0, 0.84); font-family: medium-content-sans-serif-font, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 20px;\"><div class=\"section-divider\"><hr class=\"section-divider\" style=\"border-top: 0px; text-align: center; overflow: visible; margin-top: 52px; margin-bottom: 42px;\"></div><div class=\"section-content\"><div class=\"section-inner sectionLayout--insetColumn\" style=\"position: relative; max-width: 740px; width: 740px; margin: 0px auto; padding-left: 20px; padding-right: 20px;\"><h3 name=\"4b19\" id=\"4b19\" class=\"graf graf--h3 graf--leading\" style=\"font-family: medium-content-sans-serif-font, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, &quot;Lucida Sans&quot;, Geneva, Arial, sans-serif; letter-spacing: -0.015em; font-weight: 600; margin: 53px 0px 0px -2.13px; color: rgba(0, 0, 0, 0.84); --baseline-multiplier:0.22; font-size: 34px; line-height: 1.15;\">Java 10, this time for&nbsp;real</h3><p name=\"d3e3\" id=\"d3e3\" class=\"graf graf--p graf-after--h3\" style=\"margin-top: 8px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">JDK 10 has&nbsp;<a href=\"http://openjdk.java.net/projects/jdk/10/\" data-href=\"http://openjdk.java.net/projects/jdk/10/\" class=\"markup--anchor markup--p-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">its own project site</a>, which lists known and proposed features (more on that later) and gives the schedule:</p><ul class=\"postList\" style=\"margin: 29px 0px 0px; padding: 0px; list-style: none none; counter-reset: post 0;\"><li name=\"0898\" id=\"0898\" class=\"graf graf--li graf-after--p\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">14 Dec 2017: Rampdown Phase One (deadline for merging new features)</li><li name=\"e299\" id=\"e299\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">11 Jan 2018: All Tests Run</li><li name=\"f6e7\" id=\"f6e7\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">18 Jan 2018: Rampdown Phase Two</li><li name=\"992d\" id=\"992d\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">22 Feb 2018: Final Release Candidate</li><li name=\"f173\" id=\"f173\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">20 Mar 2018: General Availability</li></ul><div name=\"c0ae\" id=\"c0ae\" class=\"graf graf--mixtapeEmbed graf-after--li\" style=\"letter-spacing: 0px; font-size: 15px; position: relative; overflow: hidden; max-height: 280px; color: rgba(0, 0, 0, 0.54); box-shadow: rgba(0, 0, 0, 0.04) 0px 1px 4px, rgba(0, 0, 0, 0.09) 0px 0px 0px 1px inset; display: table; width: 700px; margin-top: 43px;\"><a href=\"http://openjdk.java.net/projects/jdk/10/\" data-href=\"http://openjdk.java.net/projects/jdk/10/\" class=\"markup--anchor markup--mixtapeEmbed-anchor\" title=\"http://openjdk.java.net/projects/jdk/10/\" rel=\"nofollow\" style=\"background: rgba(255, 255, 255, 0); color: inherit; -webkit-tap-highlight-color: transparent; display: table-cell; vertical-align: middle; padding: 20px;\"><span class=\"markup--strong markup--mixtapeEmbed-strong\" style=\"letter-spacing: 0px; font-size: 18px; line-height: 1.3; color: rgba(0, 0, 0, 0.9); display: block; margin-bottom: -8px;\">JDK 10</span><br><span class=\"markup--em markup--mixtapeEmbed-em\" style=\"font-size: 16px; color: rgba(0, 0, 0, 0.68); display: block; margin-top: -1px; margin-bottom: 10px; max-height: 120px; overflow: hidden;\">Main-line development continues in the existing JDK 10 repositories until 02:30 UTC on Sunday, 5 November, at which…</span>openjdk.java.net</a><a href=\"http://openjdk.java.net/projects/jdk/10/\" class=\"js-mixtapeImage mixtapeImage mixtapeImage--empty u-ignoreBlock\" data-media-id=\"201085c97831ebd4d2d942816211724a\" style=\"color: inherit; -webkit-tap-highlight-color: transparent; display: table-cell; vertical-align: middle; width: 0px; height: 0px; background-size: cover; background-repeat: no-repeat; background-position: center center; box-shadow: rgba(0, 0, 0, 0.09) 0px 0px 0px 1px inset;\"></a></div><p name=\"f86f\" id=\"f86f\" class=\"graf graf--p graf-after--mixtapeEmbed\" style=\"margin-top: 38px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">You can already get&nbsp;<a href=\"http://jdk.java.net/10/\" data-href=\"http://jdk.java.net/10/\" class=\"markup--anchor markup--p-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">Java 10 early-access builds</a>.</p><p name=\"6ed4\" id=\"6ed4\" class=\"graf graf--p graf-after--p\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">IDEs supporting Java 9 should allow experimenting with Java 10 as well, as there aren’t any fundamental changes (you may get compile errors if using&nbsp;<code class=\"markup--code markup--p-code\" style=\"font-family: Menlo, Monaco, &quot;Courier New&quot;, Courier, monospace; font-size: 16px; background: rgba(0, 0, 0, 0.05); padding-top: 3px; padding-bottom: 3px; margin: 0px 2px;\">var</code>, though). Likewise it should be no problem to use build tools on such projects. In fact, I just started&nbsp;<a href=\"https://github.com/CodeFX-org/demo-java-10\" data-href=\"https://github.com/CodeFX-org/demo-java-10\" class=\"markup--anchor markup--p-anchor\" rel=\"noopener nofollow\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">a Java 10 demo project</a>, which works fine in IntelliJ and Maven.</p><div name=\"d315\" id=\"d315\" class=\"graf graf--mixtapeEmbed graf-after--p\" style=\"letter-spacing: 0px; font-size: 15px; position: relative; overflow: hidden; max-height: 280px; color: rgba(0, 0, 0, 0.54); box-shadow: rgba(0, 0, 0, 0.04) 0px 1px 4px, rgba(0, 0, 0, 0.09) 0px 0px 0px 1px inset; display: table; width: 700px; margin-top: 43px;\"><a href=\"https://github.com/CodeFX-org/demo-java-10\" data-href=\"https://github.com/CodeFX-org/demo-java-10\" class=\"markup--anchor markup--mixtapeEmbed-anchor\" title=\"https://github.com/CodeFX-org/demo-java-10\" rel=\"nofollow\" style=\"background: rgba(255, 255, 255, 0); color: inherit; -webkit-tap-highlight-color: transparent; display: table-cell; vertical-align: middle; padding: 20px;\"><span class=\"markup--strong markup--mixtapeEmbed-strong\" style=\"letter-spacing: 0px; font-size: 18px; line-height: 1.3; color: rgba(0, 0, 0, 0.9); display: block; margin-bottom: -8px;\">CodeFX-org/demo-java-10</span><br><span class=\"markup--em markup--mixtapeEmbed-em\" style=\"font-size: 16px; color: rgba(0, 0, 0, 0.68); display: block; margin-top: -1px; margin-bottom: 10px; max-height: 120px; overflow: hidden;\">demo-java-10 - Demonstrates Java 10\'s new features</span>github.com</a><a href=\"https://github.com/CodeFX-org/demo-java-10\" class=\"js-mixtapeImage mixtapeImage u-ignoreBlock\" data-media-id=\"57f4475c44ee895edfa692332d1466a2\" data-thumbnail-img-id=\"0*BWgnjhUyaYzwLGm2.\" style=\"color: inherit; -webkit-tap-highlight-color: transparent; display: table-cell; vertical-align: middle; width: 160px; height: 160px; background-size: cover; background-repeat: no-repeat; background-position: center center; box-shadow: rgba(0, 0, 0, 0.09) 0px 0px 0px 1px inset; background-image: url(&quot;https://cdn-images-1.medium.com/fit/c/160/160/0*BWgnjhUyaYzwLGm2.&quot;);\"></a></div><h4 name=\"7bae\" id=\"7bae\" class=\"graf graf--h4 graf-after--mixtapeEmbed\" style=\"font-family: medium-content-sans-serif-font, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, &quot;Lucida Sans&quot;, Geneva, Arial, sans-serif; letter-spacing: -0.012em; font-weight: 600; margin: 39px 0px 0px -1.63px; color: rgba(0, 0, 0, 0.84); --baseline-multiplier:0.22; font-size: 26px; line-height: 1.22;\">Features</h4><p name=\"5a21\" id=\"5a21\" class=\"graf graf--p graf-after--h4\" style=\"margin-top: 6px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">So which features can you expect to be using in March? Here’s the current list (I removed those that are mostly internal):</p><p name=\"2ea1\" id=\"2ea1\" class=\"graf graf--p graf-after--p\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">Targeted to JDK 10:</p><ul class=\"postList\" style=\"margin: 29px 0px 0px; padding: 0px; list-style: none none; counter-reset: post 0;\"><li name=\"97aa\" id=\"97aa\" class=\"graf graf--li graf-after--p\" style=\"margin-left: 30px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">Local-Variable Type Inference (<a href=\"http://openjdk.java.net/jeps/286\" data-href=\"http://openjdk.java.net/jeps/286\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">JEP 286</a>; I’m working on a post about this)</li></ul><p name=\"ce0e\" id=\"ce0e\" class=\"graf graf--p graf-after--li\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">Proposed to target JDK 10:</p><ul class=\"postList\" style=\"margin: 29px 0px 0px; padding: 0px; list-style: none none; counter-reset: post 0;\"><li name=\"1ddc\" id=\"1ddc\" class=\"graf graf--li graf-after--p\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">Parallel Full GC for G1 (<a href=\"http://openjdk.java.net/jeps/307\" data-href=\"http://openjdk.java.net/jeps/307\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">JEP 307</a>)</li><li name=\"6cd2\" id=\"6cd2\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">Thread-Local Handshakes (<a href=\"http://openjdk.java.net/jeps/312\" data-href=\"http://openjdk.java.net/jeps/312\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">JEP 312</a>)</li></ul><p name=\"4071\" id=\"4071\" class=\"graf graf--p graf-after--li\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">Keep in mind that this list might grow for another five weeks until December 14th. Also note that pattern matching (<a href=\"http://openjdk.java.net/jeps/305\" data-href=\"http://openjdk.java.net/jeps/305\" class=\"markup--anchor markup--p-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">JEP 305</a>) is not on the list, so maybe&nbsp;<a href=\"https://medium.com/codefx-weekly/java-10-is-coming-e6807eb5de6e#f6c4\" data-href=\"https://medium.com/codefx-weekly/java-10-is-coming-e6807eb5de6e#f6c4\" class=\"markup--anchor markup--p-anchor\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">check out Vavr after all</a>.</p><h4 name=\"9d20\" id=\"9d20\" class=\"graf graf--h4 graf-after--p\" style=\"font-family: medium-content-sans-serif-font, &quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, &quot;Lucida Sans&quot;, Geneva, Arial, sans-serif; letter-spacing: -0.012em; font-weight: 600; margin: 30px 0px 0px -1.63px; color: rgba(0, 0, 0, 0.84); --baseline-multiplier:0.22; font-size: 26px; line-height: 1.22;\">Talks at&nbsp;Devoxx</h4><p name=\"0b44\" id=\"0b44\" class=\"graf graf--p graf-after--h4\" style=\"margin-top: 6px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">There were a few interesting talks at Devoxx Belgium 2017 that covered Java’s present and future:</p><ul class=\"postList\" style=\"margin: 29px 0px 0px; padding: 0px; list-style: none none; counter-reset: post 0;\"><li name=\"0131\" id=\"0131\" class=\"graf graf--li graf-after--p\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\"><a href=\"https://www.youtube.com/watch?v=x7pkWlost64\" data-href=\"https://www.youtube.com/watch?v=x7pkWlost64\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">Moving Java Forward Faster (Keynote; Reinhold, Goetz)</a></li><li name=\"9d5e\" id=\"9d5e\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\"><a href=\"https://www.youtube.com/watch?v=qul2B8iPC-o\" data-href=\"https://www.youtube.com/watch?v=qul2B8iPC-o\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">All Aboard Project Amber (Goetz)</a></li><li name=\"61b6\" id=\"61b6\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\"><a href=\"https://www.youtube.com/watch?v=LI8rpkOGU3c\" data-href=\"https://www.youtube.com/watch?v=LI8rpkOGU3c\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">Collections Refueled</a>&nbsp;(there’s&nbsp;<a href=\"https://www.youtube.com/watch?v=LI8rpkOGU3c&amp;t=40m6s\" data-href=\"https://www.youtube.com/watch?v=LI8rpkOGU3c&amp;t=40m6s\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">a “in the future” part</a>; Marks)</li><li name=\"1f37\" id=\"1f37\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\"><a href=\"https://www.youtube.com/watch?v=FdkPHShh628\" data-href=\"https://www.youtube.com/watch?v=FdkPHShh628\" class=\"markup--anchor markup--li-anchor\" rel=\"nofollow noopener\" target=\"_blank\" style=\"color: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.54); background-image: linear-gradient(rgba(0, 0, 0, 0.68) 50%, rgba(0, 0, 0, 0) 50%); background-repeat: repeat-x; background-size: 2px 0.1em; background-position: 0px 1.07em;\">Ask the JDK Architects (Bateman, Goetz, Marks, Buckley, Reinhold)</a></li></ul><p name=\"c1d1\" id=\"c1d1\" class=\"graf graf--p graf-after--li\" style=\"margin-top: 29px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">I highly recommend the&nbsp;<em class=\"markup--em markup--p-em\" style=\"font-feature-settings: &quot;liga&quot;, &quot;salt&quot;;\">Ask the JDK Architects</em>&nbsp;session. Two interesting details:</p><ul class=\"postList\" style=\"margin: 29px 0px 0px; padding: 0px; list-style: none none; counter-reset: post 0;\"><li name=\"bf8b\" id=\"bf8b\" class=\"graf graf--li graf-after--p\" style=\"margin-left: 30px; margin-bottom: 14px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">the&nbsp;<code class=\"markup--code markup--li-code\" style=\"font-family: Menlo, Monaco, &quot;Courier New&quot;, Courier, monospace; font-size: 16px; background: rgba(0, 0, 0, 0.05); padding-top: 3px; padding-bottom: 3px; margin: 0px 2px;\">--illegal-access</code>&nbsp;option will likely have&nbsp;<code class=\"markup--code markup--li-code\" style=\"font-family: Menlo, Monaco, &quot;Courier New&quot;, Courier, monospace; font-size: 16px; background: rgba(0, 0, 0, 0.05); padding-top: 3px; padding-bottom: 3px; margin: 0px 2px;\">warn</code>&nbsp;as default in Java 11</li><li name=\"cd9c\" id=\"cd9c\" class=\"graf graf--li graf-after--li\" style=\"margin-left: 30px; margin-bottom: 0px; --baseline-multiplier:0.17; font-family: medium-content-serif-font, Georgia, Cambria, &quot;Times New Roman&quot;, Times, serif; font-size: 21px; line-height: 1.58; letter-spacing: -0.003em;\">in some future Java version, method references can be used in annotations</li></ul></div></div></section>', 1, 'uploads/posts/15401798411_E4CO83SmCCrvRrge7U3Ahw.jpeg', '2018-11-04 04:04:48', '2018-10-21 21:59:01', '2018-11-04 04:04:48', 1),
(2, 'Wordpress in Depth', 'wordpress-in-depth', '<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p><p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>', 2, 'uploads/posts/1540180024wordpress-bg-medblue.png', NULL, '2018-10-21 22:02:04', '2018-10-21 22:02:04', 1),
(3, 'Java is love', 'java-is-love', '<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p><p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p><p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>', 1, 'uploads/posts/1540180083534639-636141940513337082-16x9.jpg', NULL, '2018-10-21 22:03:03', '2018-10-21 22:03:03', 1),
(4, 'Java in cannot be in 2020', 'java-in-cannot-be-in-2020', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p><p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p><p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>', 1, 'uploads/posts/15401810731.png', NULL, '2018-10-21 22:19:33', '2018-10-21 22:19:33', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, NULL, NULL),
(2, 2, 6, NULL, NULL),
(3, 3, 7, NULL, NULL),
(4, 4, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1540180756avatar2.png', 1, 'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.\"\"', 'http://facebook.com', 'http://youtube.com', '2018-10-21 21:49:10', '2018-10-21 22:14:16'),
(2, 'uploads/avatars/0.png', 2, NULL, NULL, NULL, '2018-10-21 22:14:46', '2018-10-21 22:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Laravel\'s Blog', '9808546858', 'info@laravelblog.com', 'Bholdhoka, Lalitpur', '2018-10-21 21:46:59', '2018-10-21 21:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'UX', '2018-10-21 21:53:20', '2018-10-21 21:53:20'),
(2, 'UI', '2018-10-21 21:53:24', '2018-10-21 21:53:24'),
(3, 'Design', '2018-10-21 21:53:28', '2018-10-21 21:53:28'),
(4, 'Framework', '2018-10-21 21:53:31', '2018-10-21 21:53:31'),
(5, 'Dependency Injection', '2018-10-21 21:53:44', '2018-10-21 21:53:44'),
(6, 'CMS', '2018-10-21 21:53:48', '2018-10-21 21:53:48'),
(7, 'Programming', '2018-10-21 21:57:11', '2018-10-21 21:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Manjit Shakya', 'mnzitshakya@gmail.com', 1, '$2y$10$Yj7zRv3jvCWZx4WjHlJ7qeH2TgrkF3U9QqpPeHpDbcXApbGQAUbnu', 'vCBATj1HMOXzCBTQQeNj8WJAPTndsPLJO7Q73uvTl3qJhaU6rVS88XcLLNyg', '2018-10-21 21:49:10', '2018-10-21 21:49:10'),
(2, 'Sandesh Maharjan', 'sandeshmhrzn@gmail.com', 0, '$2y$10$M.xfR.xdBvOpTtKLxwbHa.2bxLXfWj0fQrECQEVsL.Qs2TAa1wzNu', 'fVbKUhnazuBC96MLsZVVSYyOf4S9oQRS2enzozrPap5MTHohAU8DgAObcgkW', '2018-10-21 22:14:46', '2018-10-21 22:14:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
