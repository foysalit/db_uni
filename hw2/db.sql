SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_hw_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `BOOKING`
--

CREATE TABLE IF NOT EXISTS `BOOKING` (
  `TCCode` int(11) NOT NULL,
  `SCCode` int(11) NOT NULL,
  `TPId` int(11) NOT NULL,
  `Date` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `BId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`BId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `SPORTS-COMPLEX`
--

CREATE TABLE IF NOT EXISTS `SPORTS-COMPLEX` (
  `SCCode` int(11) NOT NULL AUTO_INCREMENT,
  `SCName` varchar(255) NOT NULL,
  `Municipality` varchar(255) NOT NULL,
  `Province` varchar(255) NOT NULL,
  PRIMARY KEY (`SCCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `TENNIS-COURT`
--

CREATE TABLE IF NOT EXISTS `TENNIS-COURT` (
  `TCCode` int(11) NOT NULL AUTO_INCREMENT,
  `SCCode` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  PRIMARY KEY (`TCCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `TENNIS-PLAYER`
--

CREATE TABLE IF NOT EXISTS `TENNIS-PLAYER` (
  `TPId` int(11) NOT NULL AUTO_INCREMENT,
  `TPName` varchar(255) NOT NULL,
  PRIMARY KEY (`TPId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

