-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2014 at 07:42 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_sheet`
--

CREATE TABLE IF NOT EXISTS `answer_sheet` (
  `test_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `q_id` int(5) NOT NULL,
  `q_shown` tinyint(2) NOT NULL DEFAULT '0',
  `q_ans1` tinyint(2) NOT NULL,
  `q_ans2` tinyint(2) NOT NULL,
  `q_ans3` tinyint(2) NOT NULL,
  `q_ans4` tinyint(2) NOT NULL,
  `q_ans5` tinyint(2) NOT NULL,
  PRIMARY KEY (`test_id`,`user_id`,`q_id`)
) ENGINE=MyISAM DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `q_id` int(5) NOT NULL AUTO_INCREMENT,
  `s_id` int(5) NOT NULL,
  `q_ques` varchar(2000) NOT NULL,
  `q_o1` varchar(1000) NOT NULL,
  `q_o2` varchar(1000) NOT NULL,
  `q_o3` varchar(1000) NOT NULL,
  `q_o4` varchar(1000) NOT NULL,
  `q_o5` varchar(1000) NOT NULL,
  `q_ans1` tinyint(2) NOT NULL,
  `q_ans2` tinyint(2) NOT NULL,
  `q_ans3` tinyint(2) NOT NULL,
  `q_ans4` tinyint(2) NOT NULL,
  `q_ans5` tinyint(2) NOT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `s_id`, `q_ques`, `q_o1`, `q_o2`, `q_o3`, `q_o4`, `q_o5`, `q_ans1`, `q_ans2`, `q_ans3`, `q_ans4`, `q_ans5`) VALUES
(1, 0, 'Random sampling error', 'A. is the difference between a survey that includes only those who responded and a survey that also includes those who failed to respond', 'B. does not occur in nonprobability samples.', 'C. results from the nature of a study''s design and the inappropriate or random administration of the sampling process', 'D. is a technical term that applies only to simple random sampling', 'E. is a function of sample size. ', 0, 0, 0, 0, 1),
(3, 0, 'Which of the following is not a true statement?', 'A. The availability of sampling frames varies in different countries.', 'B. It is difficult for researchers to build sampling frames in Japan and Taiwan, since those governments do not release census information.', 'C. Some nations do not conduct a census of population.', 'D. In some countries, census information is available through the local Inhabitants'' Register.', 'E. All of the above are true', 0, 1, 0, 0, 0),
(4, 0, '3. Name a sampling procedure in which initial respondents are selected by probability methods, and then additional respondents are obtained from information provided by initial respondents.', 'A. Semi-random', 'B. Initial', 'C. Quota', 'D. Snowball ', 'E.None', 0, 0, 0, 1, 0),
(5, 0, '  4. A researcher divides the population of product users into three groups based on degree of use. If the researcher then draws a random sample from each user group independently, she has created a _____ sample.', 'A. random', 'B. stratified', 'C. judgment', 'D. group data', 'E. quota ', 0, 1, 0, 0, 0),
(6, 0, '5. Stratified samples may be distinguished from quota samples because with a stratified sample, sample elements are selected', 'A. randomly', 'B. judgmentally', 'C. proportionately', 'D. sequentially.', 'E. Sample elements are selected in the same manner for both types of samples. ', 1, 0, 0, 0, 0),
(7, 0, '  6. If a researcher wishing to draw a sample from sequentially numbered invoices uses a random starting point, then draws every 50th invoice, he has thus drawn a _____ sample.', 'A. simple random', 'B. sequential', 'C. stratified', 'D. systematic', 'E. none of the above ', 0, 0, 0, 1, 0),
(8, 0, '7. When a sampling frame has a systematic pattern in the listing of sampling units, rather than a random pattern,7. When a sampling frame has a systematic pattern in the listing of sampling units, rather than a random pattern,', 'A. a systematic sample must be drawn.', 'B. the problem of periodicity exists.', 'C. a random error occurs.', 'D. a cluster sample must be used', 'E. a sampling frame error occurs.', 0, 1, 0, 0, 0),
(9, 0, '8. Suppose a researcher is concerned with a nominal scale that identifies users versus nonusers of bank credit cards. The measure of central tendency appropriate to this scale is the', 'A. mean.', 'B. median', 'C. mode', 'D. average.', 'E. range', 0, 0, 1, 0, 0),
(10, 0, 'The variance', 'A. is a poor index of the degree of dispersion.', 'B. has a major drawback because it reflects a unit of measurement that has been squared.', 'C. is the squared root of the standard deviation.', 'D. is the average deviation squared', 'E. None', 0, 1, 0, 0, 0),
(11, 0, '. The formula ? =  ?  ? a sampling error', 'A.	expresses the idea of the cetral limit theorem.', 'B.	Expresses the idea of the confidence interval.', 'C.	Expresses the idea that a sample frame is not a perfect representation of the population.', 'D.	None of the above.', 'E.    All of above', 0, 1, 0, 0, 0),
(12, 0, ' 11. Which of the following is not needed in calculating a confidence interval for a population mean?', 'A. a point estimate of the population mean', 'B. an estimate of the population variance', 'C. a confidence level', 'D. All of the above are needed', 'E. None of the above is needed', 0, 0, 0, 1, 0),
(13, 0, ' 12. A specific range of numbers within which a population mean should lie is', 'A. the range.', 'B. the confidence coefficient.', 'C. the confidence interval.', 'D. the confidence level. ', 'E. None', 0, 0, 1, 0, 0),
(14, 0, '13. Which of the following factors is not necessary in determining sample size?', 'A. estimated standard deviation of the population', 'B. magnitude of acceptable error', 'C. confidence level', 'D. All of the above are necessary. ', 'E, None', 0, 0, 0, 1, 0),
(15, 0, '14. Constructing a frequency distribution', 'A. is one of the most common means of summarizing data.', 'B. begins by recording the number of times a particular value occurs.', 'C. is the basis for construction of a percentage distribution.', 'D. all of the above', 'E. none of the above ', 0, 0, 0, 1, 0),
(16, 0, ' 15. If you wish to estimate the mean of a particular population, doubling the range of acceptable error will reduce sample size to _____ its original size.', 'A. one-half.', 'B. one-fourth.', 'C. twice.', 'D. It cannot be determined', 'E. There is no relationship between changes in sample size and changes in acceptable error. ', 0, 1, 0, 0, 0),
(17, 0, '16. Before a confidence interval can be constructed around a sample proportion', 'A. the sample mean must be calculated.', 'B. an estimate of the standard error of the proportion (Sp) must be calculated.', 'C. the standard error of the mean is divided by the square root of n.', 'D. none of the above ', 'E. All', 0, 1, 0, 0, 0),
(18, 0, '17. Using the standardized normal table supplied with this exam determine what Z value would be used to set up a confidence interval at the 99 percent confidence level.', 'A. .01', 'B. 1.01', 'C. 1.65', 'D. 1.96', 'E. 2.57 ', 0, 0, 0, 0, 1),
(19, 0, '18. Using the standardized normal table supplied with this exam determine what Z value would be used to set up a confidence interval at the 95 percent confidence level.', 'A. .05', 'B. 1.05', 'C. 1.65', 'D. 1.96', 'E. 2.57 ', 0, 0, 0, 1, 0),
(20, 0, '19.The standard deviation', 'A. is the most valuable measure of spread or dispersion.', 'B. does not have the limitations of the average deviation.', 'C. does not have the drawbacks of the variance because its unit of measure is not squared, but is in the same unit of measure as the mean', 'D. all of the above', 'E. none of the above ', 0, 0, 0, 1, 0),
(21, 0, '20.The practical result of the central limit theorem is that', 'A. researchers must take a large number of samples before inferences about the population can be made', 'B. the researcher must know the shape of the population distribution before inferences about the population can be made.', 'C. small-sized samples should not be used in research.', 'D. the concept of the sampling distribution is unimportant to researchers', 'E. none of the above ', 0, 0, 0, 0, 1),
(22, 0, '21. A frequency distribution (or probability distribution) of all possible values of sample means for a sample size of 200 is the', 'A. population distribution', 'B. sample distribution.', 'C. sampling distribution', 'D. standard normal distribution. ', 'E. None', 0, 0, 1, 0, 0),
(23, 0, ' 22. A _____ distribution is a theoretical probability distribution that shows the functional relationship between the possible values of some summary characteristic of n cases drawn at random and the probability (density) associated with each value over all possible samples of size n from a particular population.', 'A. population', 'B. sample', 'C. sampling', 'D. standardized normal ', 'E. None', 0, 0, 1, 0, 0),
(24, 0, ' 23. Which of the following is not a step in calculation of the chi-square statistic?', 'A. Formulate the null hypothesis and determine the expected frequency of each answer.', 'B. Determine the appropriate significance level.', 'C. Calculate the sample mean.', 'D. Calculate the chi-square value. ', 'E. None', 0, 0, 1, 0, 0),
(25, 0, '24. Hypothesis tests are designed so that the _____ hypothesis will be rejected.', 'A. null', 'B. alternative', 'C. incorrect', 'D. alpha', 'E. beta ', 1, 0, 0, 0, 0),
(26, 0, ' 25. If you wanted to display graphically the relationship of one variable to another, you might use a:', 'A. Pie chart', 'B. Table.', 'C. Line graph', 'D. Data matrix.', 'E. Computer program such as SPSS. ', 0, 0, 1, 0, 0),
(27, 0, '26. In a contingency table, row and column totals are often called', 'A. simple tabulations', 'B. cells.', 'C. marginals.', 'D. boxheads and stubheads respectively. ', 'E. None', 0, 0, 1, 0, 0),
(28, 0, '27. The process of changing the original form of the data to a format suitable to perform a data analysis is', 'A. cheating', 'B. formatting', 'C. data transformation', 'D. normalization', 'E. none of the above ', 0, 0, 1, 0, 0),
(29, 0, '28. In a percentage cross-tabulation the total number of respondents or observations may be used as a(n) _____ for computing the percentage in each cell.', 'A. index', 'B. base', 'C. centroid', 'D. cell total ', 'E. None', 0, 1, 0, 0, 0),
(30, 0, '29. In a percentage cross-tabulation, the conventional rule for determining the direction of the percentages (if the researcher has identified the independent and dependent variables) is to', 'A. compute the percentages in the direction of the independent variable.', 'B. compute the percentages in the direction of the dependent variable.', 'C. perform an elaboration analysis.', 'D. none of the above (there is no conventional rule.) ', 'E. None', 1, 0, 0, 0, 0),
(31, 0, '30. A _____ variable is a third variable that, when introduced into a cross-tabulation analysis, alters or has a contingent effect on the relationship between an independent and a dependent variable.', 'A. matrix', 'B. moderator', 'C. categorical', 'D. marginal ', 'E. None', 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `s_id` int(5) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) NOT NULL,
  `s_desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`s_id`, `s_name`, `s_desc`) VALUES
(1, 'Product', 'Product.'),
(2, 'Disease', 'Disease'),
(3, 'Competition', 'Competition');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) NOT NULL,
  `test_desc` varchar(500) NOT NULL,
  `test_start_date` date NOT NULL,
  `test_done` tinyint(2) NOT NULL DEFAULT '0',
  `test_end_date` date NOT NULL,
  `no_of_question` int(5) NOT NULL,
  `s_id1` int(5) NOT NULL DEFAULT '0',
  `s_id2` int(5) NOT NULL DEFAULT '0',
  `s_id3` int(5) NOT NULL DEFAULT '0',
  `s_id4` int(5) NOT NULL DEFAULT '0',
  `s_id5` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `test_name`, `test_desc`, `test_start_date`, `test_done`, `test_end_date`, `no_of_question`, `s_id1`, `s_id2`, `s_id3`, `s_id4`, `s_id5`) VALUES
(1, 'Graduate Assesment Test', 'Select your option carefully as you will not have a second chance. Remember that when green light appear at the back of green dollar sign it means you have earned one dollar and your answer is correct. If red light light appear on back of red dollar Sign two dollars will be deducted from your earned amount.\nSo Think before you choose\n', '2014-01-03', 0, '2014-01-10', 10, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `tested` tinyint(1) NOT NULL DEFAULT '0',
  `cnic_no` varchar(13) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `emp_id` int(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first_name`, `last_name`, `password`, `email`, `city`, `phone_number`, `user_id`, `tested`, `cnic_no`, `user_name`, `emp_id`) VALUES
('kgtld', 'lkfsl', 'ifra', 'iframasroor@gmail.com', 'klffks', '23940', 1, 1, '94039', 'ifra', 0),
('ali', 'ali', 'ali', 'ali@gmail.com', 'karachi', '2147483647', 3, 1, '-2147483648', 'ali', 0),
('jdkaj', 'jkad', 'kali', 'jajkd@gmail.com', 'jdksda', '1310349091', 7, 1, '2147483647', 'kali', 0),
('ahmed', 'ali', 'ahmed', 'ahmed@gmail.com', 'multan', '2147483647', 9, 1, '2147483647', 'ahmed', 0),
('haskh', 'kjhdakjh', 'hhhh', 'jjjj@gmail.com', 'hjdkh', '2147483647', 10, 1, '2147483647', 'hhhh', 0),
('jerh', 'jhfajh', 'kkk', 'khjfjhfa@gmail.com', 'mfeh', '2147483647', 11, 1, '2147483647', 'kkk', 11),
('kjtwrk', 'jkfsk', 'jjj', 'kkk@gmail.com', 'hfjak', '0313621225', 12, 1, '8923874739', 'jjj', 77),
('jdjak', 'jdfhsj', 'kkkk', 'hdjfs@gmail.com', 'dhsj', '03136543126', 13, 1, '387418747431', 'kkkk', 0),
('hfajh', 'jhdajh', 'ifif', 'hhh@gmail.com', 'jhjfa', '03136212225', 14, 1, '28921891898', 'ifif', 0),
('mndsam', 'mnbdamn', 'ehan', 'mmm@gmail.com', 'jeah', '031345678901', 15, 0, '837174187873', 'ehan', 0),
('anni', 'lksa', 'bbb', 'ksaj@gmail.com', 'jfha', '02156789012', 16, 1, '39842988432', 'bbb', 88);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
