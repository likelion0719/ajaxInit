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

-- 테이블 test.t_prd 구조 내보내기
CREATE TABLE IF NOT EXISTS `t_prd` (
  `PRD_CD` varchar(50) NOT NULL,
  `PRD_NM` varchar(50) DEFAULT NULL,
  `BRAND_CD` varchar(50) DEFAULT NULL,
  `INS_DATE` varchar(50) DEFAULT NULL,
  `INS_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PRD_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 test.t_prd:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `t_prd` DISABLE KEYS */;
INSERT INTO `t_prd` (`PRD_CD`, `PRD_NM`, `BRAND_CD`, `INS_DATE`, `INS_ID`) VALUES
	('P00001', '허라취', 'B00001', '2016-12-10', 'hanq'),
	('P00002', '별점퍼', 'B00002', '2016-12-10', 'hanq'),
	('P00003', '별점퍼2', 'B00003', '2016-12-10', 'hanq'),
	('P00004', '자전거티', 'B00004', '2016-12-10', 'hanq'),
	('P00005', '멋진고글', 'B00005', '2016-12-10', 'hanq'),
	('P00006', '멋진고글2', 'B00006', '2016-12-10', 'hanq');
/*!40000 ALTER TABLE `t_prd` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
