-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `probevilwizard`;
CREATE TABLE `probevilwizard` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `probevilwizard` (`id`, `pw`) VALUES
('guest',	'fsdajklfe835nl1'),
('admin',	'f1dd54ed');

DROP TABLE IF EXISTS `probhellfire`;
CREATE TABLE `probhellfire` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `probhellfire` (`id`, `pw`) VALUES
('admin',	'wwwwwwwwwwoooooowwwwwwwwwwwGoodJobNiceHackerrrrrrrrzzzzzzzzzzzzYouDidThisShitLOLLLLLLLLLLLLLLLLLLLLLLL'),
('guest',	'fdshn18213a');

DROP TABLE IF EXISTS `prob_assassin`;
CREATE TABLE `prob_assassin` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_assassin` (`id`, `pw`) VALUES
('guest',	'90d2fe10'),
('admin',	'902efd10');

DROP TABLE IF EXISTS `prob_bugbear`;
CREATE TABLE `prob_bugbear` (
  `no` int(11) NOT NULL,
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_bugbear` (`no`, `id`, `pw`) VALUES
(1,	'guest',	'fjdga094t30jia4weklfkyrtj'),
(2,	'admin',	'52dc3991');

DROP TABLE IF EXISTS `prob_cobolt`;
CREATE TABLE `prob_cobolt` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_cobolt` (`id`, `pw`) VALUES
('rubiya',	'riry278qy1hcmjdjfhqjik'),
('admin',	'ihj47812uhfdjkdskjnsdfjhq');

DROP TABLE IF EXISTS `prob_darkelf`;
CREATE TABLE `prob_darkelf` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_darkelf` (`id`, `pw`) VALUES
('guest',	'dfj8035u8yhertjklnnklf'),
('admin',	'jdf08i3r25j8i0awefmkl');

DROP TABLE IF EXISTS `prob_darkknight`;
CREATE TABLE `prob_darkknight` (
  `no` int(11) NOT NULL,
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_darkknight` (`no`, `id`, `pw`) VALUES
(1,	'guest',	'dfjiasjf34567jil3542'),
(2,	'admin',	'0b70ea1f');

DROP TABLE IF EXISTS `prob_dark_eyes`;
CREATE TABLE `prob_dark_eyes` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_dark_eyes` (`id`, `pw`) VALUES
('guest',	'fdj843hhnkldgsjkly08246'),
('admin',	'5a2f5d3c');

DROP TABLE IF EXISTS `prob_dragon`;
CREATE TABLE `prob_dragon` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_dragon` (`id`, `pw`) VALUES
('guest',	'djfioaoijhfg08y9u235'),
('admin',	'dsafjio89y5342guhbjkfsdaaa');

DROP TABLE IF EXISTS `prob_giant`;
CREATE TABLE `prob_giant` (
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_giant` (`no`) VALUES
(1);

DROP TABLE IF EXISTS `prob_goblin`;
CREATE TABLE `prob_goblin` (
  `no` int(11) NOT NULL,
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_goblin` (`no`, `id`, `pw`) VALUES
(1,	'guest',	'jdkfjslkdfjoiwqaeojrwoqe'),
(2,	'admin',	'sdf3454iyuesrhj');

DROP TABLE IF EXISTS `prob_golem`;
CREATE TABLE `prob_golem` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_golem` (`id`, `pw`) VALUES
('guest',	'dfjiaskdjoew094'),
('admin',	'77d6290b');

DROP TABLE IF EXISTS `prob_gremlin`;
CREATE TABLE `prob_gremlin` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_gremlin` (`id`, `pw`) VALUES
('admin',	'jkdfiw841jgkfdhiwer938das');

DROP TABLE IF EXISTS `prob_iron_golem`;
CREATE TABLE `prob_iron_golem` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_iron_golem` (`id`, `pw`) VALUES
('admin',	'루비꺼야!빼애애애애애애애액!!!');

DROP TABLE IF EXISTS `prob_nightmare`;
CREATE TABLE `prob_nightmare` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_nightmare` (`id`, `pw`) VALUES
('admin',	'fjiaol8970235aertq64');

DROP TABLE IF EXISTS `prob_orc`;
CREATE TABLE `prob_orc` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_orc` (`id`, `pw`) VALUES
('guest',	'djfksioeuyr8235'),
('admin',	'095a9852');

DROP TABLE IF EXISTS `prob_orge`;
CREATE TABLE `prob_orge` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_orge` (`id`, `pw`) VALUES
('guest',	'dfjskoa89352hiokl'),
('admin',	'7b751aec');

DROP TABLE IF EXISTS `prob_skeleton`;
CREATE TABLE `prob_skeleton` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_skeleton` (`id`, `pw`) VALUES
('guest',	'dfjkasfjoiwqejtnklqwe41'),
('admin',	'jdfaeiut0238914aw');

DROP TABLE IF EXISTS `prob_succubus`;
CREATE TABLE `prob_succubus` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_succubus` (`id`, `pw`) VALUES
('admin',	'dsfjiafg89053ergy8904t');

DROP TABLE IF EXISTS `prob_troll`;
CREATE TABLE `prob_troll` (
  `id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_troll` (`id`) VALUES
('admin');

DROP TABLE IF EXISTS `prob_umaru`;
CREATE TABLE `prob_umaru` (
  `id` varchar(32) NOT NULL,
  `flag` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `prob_vampire`;
CREATE TABLE `prob_vampire` (
  `id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_vampire` (`id`) VALUES
('admin');

DROP TABLE IF EXISTS `prob_wolfman`;
CREATE TABLE `prob_wolfman` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_wolfman` (`id`, `pw`) VALUES
('guest',	'jdfksajfoiwe31'),
('admin',	'jfasdij23895u90dfg');

DROP TABLE IF EXISTS `prob_xavis`;
CREATE TABLE `prob_xavis` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_xavis` (`id`, `pw`) VALUES
('admin',	'우왕굳'),
('guest',	'fnfmfkalfnfmffnfmf');

DROP TABLE IF EXISTS `prob_zombie_assassin`;
CREATE TABLE `prob_zombie_assassin` (
  `id` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prob_zombie_assassin` (`id`, `pw`) VALUES
('guest',	'djfsklasdaghjlsdag234'),
('admin',	'u9gr980u43thio436knl43ty');

DROP TABLE IF EXISTS `user_db`;
CREATE TABLE `user_db` (
  `id` varchar(32) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `pw` varchar(32) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `lastauth` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2015-08-02 12:10:09