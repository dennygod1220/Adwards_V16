-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018-05-11 13:34:29
-- 伺服器版本: 5.6.37
-- PHP 版本： 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `Adonis_invoice`
--

-- --------------------------------------------------------

--
-- 資料表結構 `store_infos`
--

CREATE TABLE IF NOT EXISTS `store_infos` (
  `id` int(10) unsigned NOT NULL,
  `store_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店櫃區域',
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店櫃名稱',
  `sotre_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店櫃地址',
  `store_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '店櫃電話',
  `can_reserve_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '可預約時段',
  `time_id` int(11) DEFAULT NULL COMMENT '可預約時段代號',
  `store_num` int(11) DEFAULT NULL COMMENT '店櫃編號',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `store_infos`
--

INSERT INTO `store_infos` (`id`, `store_area`, `store_name`, `sotre_address`, `store_phone`, `can_reserve_time`, `time_id`, `store_num`, `created_at`, `updated_at`) VALUES
(1, '基隆', 'EASY SHOP 基隆義一店', '基隆市中正區義一路4號', '02-24287870', '13:00~18:00', 5, 910228, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(2, '台北', 'EASY SHOP 台北士東店', '台北市士林區士東路93號', '02-28730169', '13:00~18:00\r\n19:00~21:00', 7, 910512, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(3, '台北', 'Audrey 台北西藏店', '台北市萬華區西藏路117號1F', '02-23033492', '13:00~18:00\r\n19:00~21:00', 7, 910870, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(4, '台北', 'EASY SHOP 台北龍江店', '台北市中山區龍江路319號', '02-25172313', '13:00~18:00', 5, 910535, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(5, '台北', 'EASY SHOP 台北林森店', '台北市中山區林森北路588號', '02-25852484', '13:00~18:00', 5, 910575, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(6, '台北', 'EASY SHOP 台北南東店', '台北市松山區南京東路五段36號1F', '02-27421027', '13:00~18:00', 5, 910466, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(7, '台北', 'EASY SHOP 台北東湖店', '台北市內湖區五分街1號1樓', '02-26309817', '13:00~18:00', 5, 910897, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(8, '台北', 'EASY SHOP 台北長安店', '台北市大同區長安西路147、149號', '02-25593186', '13:00-18:00', 5, 910600, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(9, '新北', 'EASY SHOP 永和中正店', '新北市永和區中正路254號', '02-89411921', '13:00-18:00', 5, 910125, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(10, '新北', 'EASY SHOP 中和景新店', '新北市中和區景新街412,414號', '02-29438522', '14:00-19:00', 8, 910455, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(11, '新北', 'EASY SHOP 新莊復興店', '新北市新莊區復興路一段12號1F', '02-22766947', '13:00-18:00', 5, 910555, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(12, '新北', 'EASY SHOP 樹林中山店', '新北市樹林區中山路1段193號', '02-26816113', '13:00~17:00', 4, 910524, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(13, '中壢', 'EASY SHOP 中壢中山店', '桃園市中壢區中山路101,103號1F', '03-4252835', '13:00~18:00', 5, 910501, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(14, '中壢', 'EASY SHOP 中壢中正店', '桃園市中壢區中正路195號(1F~3F)', '03-2805513', '13:00~18:00', 5, 910557, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(15, '桃園', 'EASY SHOP 桃園成功店', '桃園市桃園區成功路二段24,26號', '03-3393570', '13:00~17:00', 4, 910514, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(16, '桃園', 'EASY SHOP 桃園中山店', '桃園市桃園區中山路888,890號', '03-3695835', '13:00~17:00', 4, 910726, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(17, '新竹', 'EASY SHOP 竹北博愛店', '新竹縣竹北市博愛街199號', '03-5554816', '13:00~17:00', 4, 910753, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(18, '台中', 'EASY SHOP 沙鹿中山店', '台中市沙鹿區中山路435號1F', '04-26620913', '13:00~18:00', 5, 910481, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(19, '台中', 'EASY SHOP 豐原向陽店', '台中市豐原區向陽路158號', '04-25231148', '13:00~17:00', 4, 910489, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(20, '台中', 'EASY SHOP 台中大墩店', '台中市南屯區大墩路552號 ', '04-23206045 ', '13:00~17:00', 4, 910725, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(21, '台中', 'EASY SHOP 台中崇德店', '台中市北屯區崇德路二段35,37號', '04-22365974', '13:00~18:00', 5, 910858, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(22, '台中', 'EASY SHOP 台中昌平店', '台中市北屯區昌平路一段107之13號', '04-22439792', '11:00~20:00', 1, 911004, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(23, '台中', 'EASY SHOP 大里大明店', '台中市大里區大明路317巷2號', '04-24824313', '13:00~18:00', 5, 911006, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(24, '彰化', 'EASY SHOP 彰化三民店', '彰化縣彰化市三民路252號1F', '04-7282480', '13:00~18:00', 5, 910516, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(25, '彰化', 'EASY SHOP 員林三民店', '彰化縣員林市三民東街277號', '04-8390507', '13:00~18:00', 5, 910853, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(26, '嘉義', 'EASY SHOP 嘉義興業店', '嘉義市西區興業西路309號', '05-2365810', '13:00~18:00', 5, 910496, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(27, '台南', 'EASY SHOP 台南府前店', '台南市中西區府前路二段198號1F,2F', '06-2263489', '11:00-19:00', 0, 910477, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(28, '台南', 'EASY SHOP 台南崇明店', '台南市東區崇明路478號', '06-2896648', '11:00-19:00', 0, 910531, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(29, '台南', 'EASY SHOP 台南公園店', '台南市北區公園路902號', '06-2523735', '11:00-20:00', 1, 910616, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(30, '高雄', 'EASY SHOP 岡山柳橋店', '高雄市岡山區柳橋東路35號1F,2F', '07-6219345', '13:00-20:00', 6, 910708, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(31, '高雄', 'EASY SHOP 高雄明誠店', '高雄市左營區明誠二路498號', '07-5568694', '12:00~21:30', 3, 910566, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(32, '高雄', 'EASY SHOP 鳳山五甲二店', '高雄市鳳山區五甲二路732號', '07-7684638', '13:00~18:00', 5, 910655, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(33, '高雄', 'EASY SHOP 高雄中山店', '高雄市苓雅區中山二路314號', '07-3385375', '16:00~20:00', 10, 910513, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(34, '高雄', 'EASY SHOP 高雄光華店', '高雄市苓雅區光華一路148之23號1F', '07-7162410', '13:00~17:00', 4, 910468, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(35, '高雄', 'EASY SHOP 高雄明誠二店', '高雄市三民區明誠一路690號', '', '11:00~20:00', 1, 911011, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(36, '高雄', 'EASY SHOP 鳳山青年店', '高雄縣鳳山區文橫里青年路二段306號', '', '6/10-6/14\r\n6/16-6/18\r\n(13:00-18:00)', 11, 911012, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(37, '屏東', 'EASY SHOP 屏東民生店', '屏東縣屏東市民生路292號', '08-7341911', '12:00~18:00', 2, 910456, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(38, '台東', 'EASY SHOP 台東更生店', '台東市更生路136號', '089-335410', 'PM14:00~20:00', 9, 910553, '2018-04-30 00:00:00', '2018-04-30 00:00:00'),
(39, '花蓮', 'EASY SHOP 花蓮中山店', '花蓮市中山路566號 ', '038-580614', 'PM13:00~21:00', 7, 910473, '2018-04-30 00:00:00', '2018-04-30 00:00:00');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `store_infos`
--
ALTER TABLE `store_infos`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `store_infos`
--
ALTER TABLE `store_infos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
