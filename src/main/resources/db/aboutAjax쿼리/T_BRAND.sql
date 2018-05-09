-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.2.12-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 test.t_brand 구조 내보내기
CREATE TABLE IF NOT EXISTS `t_brand` (
  `BRAND_CD` varchar(50) NOT NULL,
  `BRAND_NM` varchar(60) DEFAULT NULL,
  `SORT_NO` int(11) DEFAULT NULL,
  `INS_DATE` varchar(50) DEFAULT NULL,
  `INS_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BRAND_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 test.t_brand:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `t_brand` DISABLE KEYS */;
INSERT INTO `t_brand` (`BRAND_CD`, `BRAND_NM`, `SORT_NO`, `INS_DATE`, `INS_ID`) VALUES
	('B00001', '나이키', 1, '2016-12-10', 'hanq'),
	('B00002', '아디다스', 2, '2016-12-09', 'hanq'),
	('B00003', '빈폴', 3, '2016-12-10', 'system'),
	('B00004', '오클리', 4, '2016-12-09', 'system'),
	('B00005', '농심', 55, '2016-11-10', 'hanq'),
	('B00006', '롯데', 6, '2016-12-10', 'hanq'),
	('B00007', '구찌', 7, '2016-12-14', 'hanq');
/*!40000 ALTER TABLE `t_brand` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
