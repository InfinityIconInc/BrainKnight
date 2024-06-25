-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2014 at 02:17 PM
-- Server version: 5.1.62
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brain_knight`
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

--
-- Dumping data for table `answer_sheet`
--

INSERT INTO `answer_sheet` (`test_id`, `user_id`, `q_id`, `q_shown`, `q_ans1`, `q_ans2`, `q_ans3`, `q_ans4`, `q_ans5`) VALUES
(1, 38, 197, 1, 0, 0, 0, 1, 0),
(1, 38, 275, 0, 0, 0, 0, 0, 0),
(1, 38, 255, 1, 0, 0, 0, 0, 0),
(1, 38, 264, 1, 0, 0, 0, 1, 0),
(1, 38, 193, 1, 0, 0, 0, 1, 0),
(1, 38, 144, 1, 0, 0, 0, 0, 0),
(1, 38, 245, 1, 1, 0, 0, 0, 0),
(1, 38, 252, 1, 0, 1, 0, 0, 0),
(1, 38, 170, 1, 0, 0, 0, 0, 0),
(1, 38, 271, 1, 0, 1, 0, 0, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=283 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `s_id`, `q_ques`, `q_o1`, `q_o2`, `q_o3`, `q_o4`, `q_o5`, `q_ans1`, `q_ans2`, `q_ans3`, `q_ans4`, `q_ans5`) VALUES
(150, 0, 'Gastrointestinal bleeding ulceration or perforation, which can be fatal, have been reported with', 'a)	Only a few NSAIDs', 'b)	Only diclofenac', 'c)	Only flurbeporfen', 'd)	All NSAIDs', '', 0, 0, 0, 1, 0),
(151, 0, 'Gastrointestinal events reported with NSAIDs have been seen to be more serious in which particular age group', 'a)	children', 'b)	adolescents', 'c)	Elderly', 'd)	All NSAIDs', '', 0, 0, 1, 0, 0),
(113, 0, 'The systemic availability of diclofenac from Voltral SR 100 is on average about ___% of that achieved with the same dose of Voltral 50', 'a)	75%', 'b)	82%', 'c)	89%', 'd)	90%', '', 0, 1, 0, 0, 0),
(114, 0, 'The systemic availability of diclofenac from Annuva is on average about ___% of that achieved with the same dose of Voltral 50', 'a)	75%', 'b)	82%', 'c)	89%', 'd)	90%', '', 0, 1, 0, 0, 0),
(115, 0, 'Mean peak plasma concentration is reached ___ hours after taking Voltral 50', 'a)	0.5 hours', 'b)	1 hour', 'c)	2 hours', 'd)	4 hours', '', 0, 0, 1, 0, 0),
(116, 0, 'Mean peak plasma concentration is reached ___ hours after taking Voltral 100', 'a)	0.5 hours', 'b)	1 hour', 'c)	2 hours', 'd)	4 hours', '', 0, 0, 0, 1, 0),
(117, 0, 'Mean peak plasma concentration is reached ___ hours after taking Annuva', 'a)	0.5 hours', 'b)	1 hour', 'c)	2 hours', 'd)	4 hours', '', 0, 0, 1, 0, 0),
(118, 0, 'Exfoliative dermatitis, Stevens-Johnson syndrome and toxic epidermal necrolysis are a type of ___________ reactions', 'a.	Stomach', 'b.	Eye', 'c.	Skin', 'd.	foot', '', 0, 0, 1, 0, 0),
(119, 0, 'Shelf life of Voltral Suppository is ________ years', 'a)	1 year', 'b)	2year', 'c)	3 year', 'd)	4 year', '', 0, 0, 1, 0, 0),
(120, 0, 'The recommended initial _________ dose is 100 to 150mg.', 'a.	Selectively', 'b.	Quarterly', 'c.	Daily.', 'd. None', '', 0, 0, 1, 0, 0),
(121, 0, 'Voltral Ampoule contains ____ mg of diclofenac Sodium per mL', 'a.	75', 'b.	25', 'c.	70', 'd.	74', '', 0, 1, 0, 0, 0),
(122, 0, 'Which of the following is not an excipient of Voltral Ampoule', 'a.	Hypromellose', 'b.	Mannitol', 'c.	Benzyl Alochol', 'd.	Propylene Glycol', '', 1, 0, 0, 0, 0),
(123, 0, 'Which of the following is not an approved indication of Voltral IM Ampoule', 'a.	Acute attacks of gout', 'b.	Renal Colic', 'c.	Severe Migraine Attacks', 'd.	All of the above are approved indications', '', 0, 0, 1, 0, 0),
(124, 0, 'Which of the following is not an approved indication of Voltral IV Ampoule', 'a.	Acute attacks of gout', 'b.	Renal Colic', 'c.	Severe Migraine Attacks', 'd.	None of the above are approved indications', '', 0, 0, 0, 1, 0),
(125, 0, 'Which of the following is not an excipient of Voltral Ampoule', 'a.	Hypromellose', 'b.	Mannitol', 'c.	Benzyl Alochol', 'd.	Propylene Glycol', '', 1, 0, 0, 0, 0),
(126, 0, 'Voltral ampoule formulation ', 'a.	Is exactly the same in all countries worldwide', 'b.	Is exactly same everywhere except 1 country', 'c.	May vary between countries', 'd.	Is different in each and every country', '', 0, 0, 1, 0, 0),
(127, 0, 'Voltral IM ampoule is not indicated in which of the following ', 'a.	Acute attacks of gout', 'b.	Severe Migraine attacks', 'c.	Adjuvant in painful ENT conditions', 'd.	Post-operative swelling', '', 0, 0, 1, 0, 0),
(128, 0, 'Voltral IV ampoule is indicated in which of the following ', 'a.	Renal Colic', 'b.	Biliary Colic', 'c.	Acute Attacks of gout', 'd.	None of the above', '', 0, 0, 0, 1, 0),
(129, 0, 'Voltral IV ampoule is indicated in which of the following ', 'a.	Renal Colic', 'b.	Biliary Colic', 'c.	Rhematoid Arthritis', 'd.	Treatment or prevention of post-op pain in a hospital setting', '', 0, 0, 0, 1, 0),
(130, 0, 'Voltral ampoule should not be given for more than ____ days', 'a.	5 days', 'b.	1 day', 'c.	2 days', 'd.	3 days', '', 0, 0, 1, 0, 0),
(131, 0, 'Voltral solution for injection is not suitable for which of the following populations', 'a.	Geriatrics', 'b.	Middle aged women', 'c.	Adolescents', 'd.	Middle aged men', '', 0, 0, 1, 0, 0),
(132, 0, 'Treatment with Voltral is generally not recommended in patients with', 'a.	Uncontrolled hypertension', 'b.	Osteoporosis', 'c.	Painful muscle spasm', 'd.	Motor neuron disease', '', 1, 0, 0, 0, 0),
(133, 0, 'If needed in patients with established cardiovascular disease at doses Voltral should be initially given at', 'a.	Less than 30 mg daily', 'b.	Less than 100 mg daily', 'c.	50 mg daily', 'd.	Less than 150 mg daily', '', 0, 1, 0, 0, 0),
(134, 0, 'Around how many specific studies have been conductedin patients with Renal Impairment', 'a.	None', 'b.	Greater than 10', 'c.	Greater than 100', 'd.	Greater than 1000', '', 1, 0, 0, 0, 0),
(135, 0, 'Voltral ampoule is not contraindicated in which of the following ', 'a.	Hepatic failure', 'b.	Renal failure', 'c.	Severe cardiac failure', 'd.	Uncontrolled hypertension', '', 0, 0, 0, 1, 0),
(136, 0, 'Voltral IMinjection requires specific directions to be followed for application because lack of following directions may NOT lead to ', 'a.	Nerve damage', 'b.	Tissue damage', 'c.	Bone damage', 'd.	None of the above', '', 0, 0, 1, 0, 0),
(137, 0, 'Voltral IM ampoule is injected into ', 'a.	The upper arm muscle', 'b.	Into the vein running in the arm', 'c.	Upper outer quadrant of glutes', 'd.	Lower outer quadrant of  glutes', '', 0, 0, 1, 0, 0),
(138, 0, 'Clinical experience suggests that Voltral ampoule when used for mitigating severe migraine attacks is recommended ', 'y.	Once', 'z.	Twice', 'aa.	Thrice', 'bb.	None of the above', '', 1, 0, 0, 0, 0),
(139, 0, 'Clinical experience suggests that Voltral ampoule when used for mitigating severe migraine attacks is to be followed by ___ suppositories on the same day', 'a.	25 mg', 'b.	50 mg', 'c.	75 mg', 'd.	100 mg', '', 0, 0, 0, 1, 0),
(140, 0, 'Clinical experience suggests that Voltral ampoule when used for mitigating severe migraine attacks is to be followed by suppositories on the first day. Total combined dosage for the day should not exceed ____ mg', 'a.	150 mg', 'b.	200 mg', 'c.	100 mg', 'd.	175 mg', '', 0, 0, 0, 1, 0),
(141, 0, 'Immediately before starting an IV infusion, Voltral Solution for injection must be diluted with____ buffered with sodium bicarbonate', 'a)	0.9% Saline', 'b)	1% Saline', 'c)      1.1% Saline', 'd)      5% Saline', '', 1, 0, 0, 0, 0),
(142, 0, 'Immediately before starting an IV infusion, Voltral Solution for injection must be diluted with_____ buffered with sodium bicarbonate', 'a)	Glucose 4%', 'b)	Glucose 5%', 'c)	Glucose 6%', 'd)	None of the above', '', 0, 1, 0, 0, 0),
(143, 0, 'For the treatment of moderate to severe post-operative pain through Voltral IV, ____ mg should be infused continuously over a period of 30 minutes to 2 hours', 'a)	75 mg', 'b)	100 mg', 'c)	150 mg', 'd)	200 mg', '', 1, 0, 0, 0, 0),
(144, 0, 'For the prevention of post-operative pain, a loading dose of 25 mg to 50 mg should be infused after surgery over 15 minutes to 1 hour, followed by a continuous infusion of about ______  mg per hour', 'a)  75 mg', 'b)  5 mg', 'c)  150 mg', 'd)  100 mg', '', 0, 1, 0, 0, 0),
(145, 0, 'For treatment of post-operative pain IV infusion maximum daily dose should not exceed', 'a)	100 mg', 'b)	175 mg', 'c)	150 mg', 'd)	200 mg', '', 0, 0, 1, 0, 0),
(146, 0, 'For prevention of post-operative pain IV infusion maximum daily dose should not exceed ', 'a.	100 mg', 'b.	150 mg', 'c.	175 mg', 'd.	200 mg', '', 0, 1, 0, 0, 0),
(147, 0, 'Which of the following is not a contra indication of Voltral ampoule', 'a)	Active gastric ulcer', 'b)	Active Intestinal Ulcer', 'c)	Hyper sensitivity to sodium metabisulphate', 'd) 	None of the above', '', 0, 0, 0, 1, 0),
(148, 0, 'Which of the following is not a contra indication of Voltral ampoule', 'a)	Hepatic Failure', 'b)	Renal Failure', 'c)    Last trimester of pregnancy', 'd)	None of the above', '', 0, 0, 0, 1, 0),
(149, 0, 'Acetylsalicylic acid or other NSAID precipitated attacks of _____ are also contraindicated in Voltral', 'a)	asthma', 'b)	urticaria', 'c)	acute rhinitis', 'd)	All of the above', '', 0, 0, 0, 1, 0),
(111, 0, 'What is considered the main mechanism of action of diclofenac', 'a)	Prostaglandin inhibition', 'b)	Prostaglandin synthesis', 'c)	Thromboxane symbiosis', 'd)	Serotonin Surges', '', 1, 0, 0, 0, 0),
(112, 0, 'Voltral SR 100 is targeted towards ', 'a)	teenage girls', 'b)	children', 'c)	 middle aged men', 'd)	old age individuals', '', 0, 0, 0, 1, 0),
(87, 0, 'What is the name of Voltral Product Manager?', 'a)  Sameer Abdul Ghani', 'b)  Syed Mohammad Ali Shah', 'c)  Asif Qureshi', 'd)  Jyoti Kumari', '', 0, 1, 0, 0, 0),
(90, 0, 'What is the retail price of 1 Voren Ampoule?', 'a) Rs 22.8', 'b) Rs 23.8', 'c) Rs 21.8', 'd) Rs 20.8', '', 0, 1, 0, 0, 0),
(91, 0, 'What is the name of the main molecule used in Brufen?', 'a)	Ibuprofen', 'b)	Naproxen', 'c)	Diclofenac', 'd)	Flurbeprofen', '', 1, 0, 0, 0, 0),
(92, 0, 'Annuva has ___ mg of diclofenac free acid?', 'a)	45.5 mg', 'b)	46.0 mg', 'c)	46.5 mg', 'd)	47.0 mg', '', 0, 0, 1, 0, 0),
(93, 0, '46.5 mg of diclofenac free acid is equal to ___ mg of diclofenac sodium?', 'a)	46.5 mg', 'b)	47.0 mg', 'c)	50.0 mg', 'd)	52.5 mg', '', 0, 0, 1, 0, 0),
(94, 0, 'Voltral is indicated as basic therapy in severe painful inflammatory infections of the ear, nose or throat, e.g. pharyngotonsillitis, otitis?', 'a) True', 'b) False', 'c) None', 'd) None of the above', '', 0, 1, 0, 0, 0),
(95, 0, 'A dose of 50 to 100 mg should be given initially and, if necessary, increased over the course of several menstrual cycles up to a maximum of ___ mg/day? ', 'a)	150 mg', 'b)	200 mg', 'c)	250 mg', 'd)	300 mg', '', 0, 1, 0, 0, 0),
(89, 0, 'What is the retail price of 1 Voltral Ampoule?', 'a) Rs 22.8', 'b)Rs 23.8', 'c) Rs 21.8', 'd)Rs 20.8', '', 0, 1, 0, 0, 0),
(88, 0, 'What is not the name of the top 3 competitors of Voltral in the Anti-Rheumatic market?', 'a)	Voren', 'b)	Dicloran', 'c)	Brufen', 'd)	Ansaid', '', 0, 0, 0, 1, 0),
(96, 0, 'What is the Tmax of Voltral (diclofenac sodium) 100 mg SR tabs?', 'a)	2.0 hours', 'b)	3.0 hours', 'c)	3.5 hours', 'd)	4.0 hours', '', 0, 0, 0, 1, 0),
(97, 0, '3 ml of Voltral ampoule contains what quantity of diclofenac?', 'a)	70 mg', 'b)	75 mg', 'c)	80 mg', 'd)	74 mg', '', 0, 1, 0, 0, 0),
(98, 0, 'What is the RP ofone  50 mg Voren tablet?', 'a)	Rs 4.83', 'b)	Rs 3.83', 'c)	Rs 2.83', 'd)	Rs 5.83', '', 1, 0, 0, 0, 0),
(99, 0, 'What is the RP of one 100 mg suppository?', 'a)	Rs 61', 'b)	Rs 60', 'c)	Rs 65', 'd)	Rs 63', '', 0, 0, 0, 1, 0),
(100, 0, 'NSAIDs possess what basic properties? ', 'a)   Anti-pyretic', 'b)   Anti- Inflammatory', 'c)   Analgesic', 'd)   All of the Above', '', 0, 0, 0, 1, 0),
(101, 0, 'Voltral is CONTRAINDICATED in which trimester of pregnancy', 'a.	Last', 'b.	First', 'c.	Second', 'd.	It is not contraindicated in pregnancy', '', 1, 0, 0, 0, 0),
(102, 0, 'What is the RP of Dicloran ampoule', 'a)	Rs 12', 'b)	Rs 16', 'c)	Rs 20', 'd)	Rs 24', '', 0, 1, 0, 0, 0),
(103, 0, 'Voltral is not recommended to use in women attempting to conceive as it may impair female fertility?', 'a) True', 'b) False', 'c) None', 'd) None of the above', '', 1, 0, 0, 0, 0),
(104, 0, 'Voltral suppository needs to be stored at or below what temperature?', 'a) 30 C', 'b) 25 C', 'c) 20 C', 'd) 35 C', '', 1, 0, 0, 0, 0),
(105, 0, 'The global tagline for Voltral brand is?', 'a) Freedom of Movement', 'b) Movement and Freedom', 'c) Care and Cure', 'd) Joy of Movement', '', 1, 0, 0, 0, 0),
(106, 0, 'According to Voltral Ampoule Key Message how long does it take to provide analgesia with voltral ampoule?', 'a) 12mins', 'b) 20 mins', 'c) 15 mins', 'c) 10 mins', '', 0, 0, 1, 0, 0),
(107, 0, 'What is the main ingredient in Annuva?', 'a) Diclofenac free Resinate', 'b) Diclofenac free Sodium', 'c) Diclofenac free Potassium', 'd) Diclofenac free Acid', '', 0, 0, 0, 1, 0),
(108, 0, 'In primary dysmenorrhea diclofenac maybe given up to ___ mg per day?', 'a)	150', 'b)	200', 'c)	250', 'd)	300', '', 0, 1, 0, 0, 0),
(109, 0, 'Voltral 50 is NOT indicated in which of the following', 'a)	Primary dysmenorrhea', 'b)	post-op inflammation', 'c)	adjuvant in painful ENT conditions', 'd)	none of the options', '', 0, 0, 0, 1, 0),
(110, 0, 'Voltral 100 is NOT indicated in which of the following', 'a)	Primary dysmenorrhea', 'b)	post-op inflammation', 'c)	adjuvant in painful ENT conditions', 'd)	none of the options', '', 0, 0, 1, 0, 0),
(152, 0, 'The risk of GI bleeding is higher with _____ NSAID doses', 'a)	increasing', 'b)	consistent', 'c)	decreasing', 'd)	None of the above', '', 1, 0, 0, 0, 0),
(153, 0, 'The risk of GI bleeding is higher in patients with a history of ____', 'a)	Renal failure', 'b)	ulcer', 'c)	hepatic failure', 'd)	osteoporosis', '', 0, 1, 0, 0, 0),
(154, 0, 'To reduce the risk of GI toxicity in Voltral patients with a history of ulcer, particularly if complicated with hemorrhage or perforation, and in the elderly, the treatment should be initiated and maintained at', 'a)	Highest possible dose', 'b)	Lowest effective dose', 'c)	Highest effective dose', 'd)	Lowest possible dose', '', 0, 1, 0, 0, 0),
(155, 0, 'For voltral patients requiring concomitant use of medicinal products containing low-dose acetylsalicylic acid (ASA) combination therapy should be considered with', 'a)	Proton pump inhibitors', 'b)	acetaminophen', 'c)	steroids', 'd)	opioids', '', 1, 0, 0, 0, 0),
(156, 0, 'For Voltral Caution is recommended in patients receiving concomitant medications which could increase the risk of ulceration or bleeding, such as', 'a)	systemic corticosteroids', 'b)	anti-coagulants', 'c)	anti-platelet agents', 'd)	All of the above', '', 0, 0, 0, 1, 0),
(157, 0, 'For voltral close medical surveillance and caution should also be exercized in patients with ulcerative colitis or Crohn’s disease, as their condition may be _____', 'a)	exacerbated', 'b)	mitigated', 'c)	remain unchanged', 'd)	slightly improved', '', 1, 0, 0, 0, 0),
(158, 0, 'Treatment with NSAIDs including diclofenac, particularly at high dose and in long term, may be associated with a _______ risk of serious cardiovascular thrombotic events', 'qq.	Large increased', 'rr.	Small increased', 's.	No change in', 't.	slightly decreased', '', 0, 1, 0, 0, 0),
(159, 0, 'Voltral Patients should remain alert for the signs and symptoms of serious arteriothrombotic events such as _____ which may occur without warning', 'a)	Chest pain', 'b)	Shortness of breath', 'c)	Slurring of speech', 'd)	All of the above', '', 0, 0, 0, 1, 0),
(160, 0, 'During prolonged treatment with Voltral, as with other NSAIDs, monitoring of the blood count is ________', 'uu.	optional', 'vv.	not recommended', 'w.	recommended', 'x.	has no effect', '', 0, 0, 1, 0, 0),
(161, 0, 'Like other NSAIDs, Voltral in its hematologic effects may temporarily inhibit ________', 'a)	Platelet aggregation', 'b)	Platelet disaggregation', 'c)	White blood cell regeneration', 'd)	Red blood cell clotting', '', 1, 0, 0, 0, 0),
(162, 0, 'In patients with asthma reactions on NSAIDs like asthma exacerbations (so-called intolerance to analgesics / analgesics-asthma)are ______ than in other patients', 'a)	More frequent', 'b)	Less frequent', 'c)	as frequent', 'd)	none of the above', '', 1, 0, 0, 0, 0),
(163, 0, 'As with other NSAIDs, including diclofenac, values of one or more liver enzymes may _______', 'a)	Stay the same', 'b)	May decrease significantly', 'c)	May decrease slightly', 'd)	Increase', '', 0, 0, 0, 1, 0),
(164, 0, 'During prolonged treatment with Voltral (e.g. in the form of tablets or suppositories), regular monitoring of hepatic function is indicated as a _____________', 'a)	Precautionary measure', 'b)	Post-event measure', 'c)	Not recommended measure', 'd)	None of the above', '', 1, 0, 0, 0, 0),
(165, 0, 'If abnormal liver function tests persist or worsen, if clinical signs or symptoms consistent with liver disease develop, or if other manifestations occur (e.g. eosinophilia, rash), Voltral may be _________', 'a)	Continued with same dosage', 'b)	Continued with lower dosage', 'c)	Continued with higher dosage', 'd)	Discontinued', '', 0, 0, 0, 1, 0),
(166, 0, 'Hepatitis may occur with use of diclofenac _________ symptoms', 'a)	Without prodromal ', 'b)    With prodormal', 'c)	with abnormal', 'd)	None of the above', '', 1, 0, 0, 0, 0),
(167, 0, 'Serious skin reactions, some of them fatal, including exfoliative dermatitishave been reported _______ in association with the use of NSAIDs, including Voltral', 'q.	Fairly frequently', 'r.	Regularly', 's.	Very Rarely', 't.	Rarely', '', 0, 0, 1, 0, 0),
(168, 0, 'Patients appear to be at highest risk of serious skin reactions _______ in the course of therapy', 'a)	Later', 'b)	Regularly', 'c)	Early', 'd)	Towards the end', '', 0, 0, 1, 0, 0),
(169, 0, 'The onset of serious skin reactions occurs, in the majority of cases, within the ________  of treatment', 'a)	First Trimester of treatment', 'b)	First month', 'c)	Second month', 'd)	Third month', '', 0, 1, 0, 0, 0),
(170, 0, 'In frail elderly patients or those with a low body weight Voltral is recommended with the lowest effective dose', 'a.	Highest possible dose', 'b.	Lowest effective dose', 'c.	Highest effective dose', 'd.	Lowest possible dose', '', 0, 1, 0, 0, 0),
(171, 0, 'The concomitant use of Voltral with systemic NSAIDs including cyclooxygenase-2 selective inhibitors, should be _______', 'a)	continued', 'b)	avoided', 'c)	increased', 'd)	lowered slightly', '', 0, 1, 0, 0, 0),
(172, 0, 'Like other NSAIDs, Voltral may _____ the signs and symptoms of infection due to its pharmacodynamic properties', 'a)	mask', 'b)	exacerbate', 'c)	intensify', 'd)	slightly increase', '', 1, 0, 0, 0, 0),
(173, 0, 'Adverse drug reactions from clinical trials and/or spontaneous or literature cases  are listed by MedDRA system organ class. The category for very commonis defined by the frequency ', 'a)	Greater than 10%', 'b)	Between 1% and 10%', 'c)	Between 0.1% and 1%', 'd)	Between 0.01% and 0.1%', '', 1, 0, 0, 0, 0),
(174, 0, 'Adverse drug reactions from clinical trials and/or spontaneous or literature cases  are listed by MedDRA system organ class. The category for common is defined by the frequency  ', 'a)	Greater than 10%', 'b)	Between 1% and 10%', 'c)	Between 0.1% and 1%', 'd)	Between 0.01% and 0.1%', '', 0, 1, 0, 0, 0),
(175, 0, 'Adverse drug reactions from clinical trials and/or spontaneous or literature cases  are listed by MedDRA system organ class. The category for uncommon is defined by the frequency  ', 'a)	Greater than 10%', 'b)	Between 1% and 10%', 'c)	Between 0.1% and 1%', 'd)	Between 0.01% and 0.1%', '', 0, 0, 1, 0, 0),
(176, 0, 'Adverse drug reactions from clinical trials and/or spontaneous or literature cases  are listed by MedDRA system organ class. The category for rare is defined by the frequency  ', 'a)	Greater than 10%', 'b)	Between 1% and 10%', 'c)	Between 0.1% and 1%', 'd)	Between 0.01% and 0.1%', '', 0, 0, 0, 1, 0),
(177, 0, 'Adverse drug reactions from clinical trials and/or spontaneous or literature cases  are listed by MedDRA system organ class. The category for rare is defined by the frequency  ', 'a)	Between 1% and 10%', 'b)	Between 0.1% and 1%', 'c)	Between 0.001% and 0.01%', 'd)	Between 0.01% and 0.1%', '', 0, 0, 1, 0, 0),
(178, 0, 'For Voltral injection adverse drug reaction ?injection site abscess? is classified as ', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)     None', '', 0, 1, 0, 0, 0),
(179, 0, 'For Voltral adverse drug reactions such as  ?anaphylactic and anaphylactoid? are classified as   ', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)	Very common', '', 1, 0, 0, 0, 0),
(180, 0, 'For Voltral adverse drug reactions such as  ?anxiety? is classified as', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)	Very common ', '', 0, 1, 0, 0, 0),
(181, 0, 'For Voltral adverse drug reactions such as  ?blurred vision? is classified as   ', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)	Very common Very common', '', 0, 1, 0, 0, 0),
(182, 0, 'For Voltral adverse drug reactions such as  ?dizziness? is classified as ', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)	Very common ', '', 0, 0, 1, 0, 0),
(183, 0, 'For Voltral adverse drug reactions such as  ?chest pain? is classified as   ', 'a)	Rare', 'b)	Very Rare', 'c)	Uncommon', 'd)	Very common', '', 0, 0, 1, 0, 0),
(184, 0, 'For Voltral adverse drug reactions such as  ?vertigo? is classified as   ', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)	Very common', '', 0, 0, 1, 0, 0),
(185, 0, 'For Voltral adverse drug reactions such as  ?dyspepsia? is classified as   ', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)	Very common', '', 0, 0, 1, 0, 0),
(186, 0, 'For Voltral adverse drug reactions such as  ?flatulence? is classified as   ', 'a)	Rare', 'b)	Very Rare', 'c)	Common', 'd)	Very common', '', 0, 0, 1, 0, 0),
(187, 0, 'In Pakistan Voltral is most commonly co-prescribedwith', 'a)	Anti-biotics', 'b)	Proton pump inhibitors', 'c)	Anti-hypertensives', 'd)	Diuretics', '', 1, 0, 0, 0, 0),
(188, 0, 'In rheumatic diseases, the anti-inflammatory and analgesic properties of Voltral elicit a clinical response characterized by marked relief from signs and symptoms. Which of the following is not one of these signs and symptoms ', 'a)	Pain at Rest', 'b)	Morning Stiffness', 'c)	Swelling of joints', 'd)	None of the above', '', 0, 0, 0, 1, 0),
(189, 0, 'After administration of 75 mg diclofenac by intramuscular injection, absorption sets in immediately    ', 'a)	25 minutes ', 'b)	15 minutes', 'c)	5 minutes', 'd)	Immediately', '', 0, 0, 0, 1, 0),
(190, 0, 'For Voltral IM, Mean peak plasma concentrations of about 2.5 micrograms/mL (8 micromol/L) are reached after about ______', 'a)	25 minutes ', 'b)	20 minutes', 'c)	5 minutes', 'd)	1 minute', '', 0, 1, 0, 0, 0),
(191, 0, 'When 75 mg diclofenac is administered as an intravenous infusion over 2 hours, mean peak plasma concentrations are about  ______ micrograms/mL', 'a)	1.9', 'b)	2.0', 'c)	5.0', 'd)	1.8', '', 1, 0, 0, 0, 0),
(192, 0, 'When 75 mg diclofenac is administered as an IM, mean peak plasma concentrations are about  ______ micrograms/mL    ', 'a)	2.0', 'b)	2.5', 'c)	3.0', 'd)	3.5?', '', 0, 1, 0, 0, 0),
(193, 0, 'Dicloran belongs to which brand?', 'a) Brookes pharma', 'b) AGP pharma', 'c) Sami pharma', 'd) Macter international', '', 0, 0, 1, 0, 0),
(194, 0, 'What are the S.k.u level for Dicloran?', 'a) Dicloran 50mg, Dicloran SR100mg,DicloranDisperlet, Dicloran INJ 75MG/ML', 'b) Dicloran 50mg, Dicloran SR100mg,DicloranDisperlet, Dicloransusp', 'c) Dicloran 50mg, Dicloran SR100mg', 'd) Dicloran SR100mg,DicloranDisperlet', '', 1, 0, 0, 0, 0),
(195, 0, 'What is the current price for Caflam tab 50 mg (20’s)?', 'a) 160.51', 'b) 160.66', 'c) 170.01', 'd) 158.40', '', 0, 1, 0, 0, 0),
(196, 0, 'Currently what is percentage increase for the NSAIDS market in terms of prices?', 'a) 12%', 'b) 14%', 'c) 13%', 'd) 15%', '', 0, 0, 0, 1, 0),
(197, 0, 'Voren belongs to which company?', 'a) Pharmatec', 'b)GSK', 'c) Asian continental', 'd) Sanofi?Aventis', '', 0, 0, 1, 0, 0),
(198, 0, 'What is the current price for Voren 50 mg (100’s)?', 'a) 483.5', 'b) 556.02', 'c) 500.20', 'd) 525.44', '', 0, 1, 0, 0, 0),
(199, 0, 'What is the generic name for Ansaid 100 mg?', 'a) Ibuprofen', 'b) Flurbiprofen', 'c) Naproxen Sodium', 'd) Thiocolchicoside', '', 0, 1, 0, 0, 0),
(200, 0, 'There are _____ S.K.U of Brufen?', 'a) 8', 'b) 6', 'c) 7', 'd) 5', '', 1, 0, 0, 0, 0),
(201, 0, ' What is the current price for Voltral Tab SR 100 MG?', 'a) 295.88', 'b) 300.10', 'c) 325.66', 'd) 340.26', '', 0, 0, 0, 1, 0),
(202, 0, 'Synflex belongs to which brand?', 'a) Bayer', 'b) Hilton pharma', 'c) Brookes pharma', 'd) ICI Pakistan', '', 0, 0, 0, 1, 0),
(203, 0, 'What is the current price for Brufen plus Tablets (2x10’s)?', 'a) 90', 'b) 95', 'c) 103.5', 'd) 106', '', 0, 0, 1, 0, 0),
(204, 0, 'Dyclo belongs to which company?', 'a) Mass pharma', 'b) Epharm', 'c) Indus pharma', 'd) Abbott', '', 0, 0, 1, 0, 0),
(205, 0, 'Dicofen belongs to which company?', 'a) Amros', 'b) Efroze', 'c) GSK', 'd) Sanofi Aventis', '', 0, 0, 1, 0, 0),
(206, 0, 'Artifen belongs to which company?', 'a) Abbott lab', 'b) Gsk', 'c) Pfizer', 'd) Bayer', '', 1, 0, 0, 0, 0),
(207, 0, 'FROBEN Cap SR is available in what strength?', 'a) 100mg', 'b) 200mg', 'c) 150mg', 'd) 50mg', '', 0, 1, 0, 0, 0),
(208, 0, 'FROBEN belongs to which company?', 'a) Pharmaevo', 'b) Brookes pharma', 'c) Abbott ', 'd) None of the above', '', 0, 0, 1, 0, 0),
(209, 0, 'Profenid contains which ingredient?', '?	Flurbiprofen', '?	Naproxen Sodium', '?	Thiocolchicoside', '?	Ketoprofen', '', 0, 0, 0, 1, 0),
(216, 0, 'Feldene has two strength available for their capsules what are they?', '?	50 mg and 100 mg', '?	10 mg and 20 mg', '?	7.5 mg and 15 mg', '?	25 mg and 50 mg', '', 0, 1, 0, 0, 0),
(211, 0, 'What is strength available for Ponstan flash tabs?', 'a) 200mg', 'b) 250mg', 'c) 300mg', 'd) 150mg', '', 0, 1, 0, 0, 0),
(212, 0, 'Melor belongs to which company?', '?	Sami pharma', '?	Brookes pharma', '?	Pahramaevo', '?	Herbion naturals', '', 1, 0, 0, 0, 0),
(215, 0, 'Feldene contains which ingredient?', '?	Piroxicam', '?	Naproxen Sodium', '?	Ketoprofen', '?	Thiocolchicoside', '', 1, 0, 0, 0, 0),
(214, 0, 'MELOR has two strength available for their product what are they?', '?	10 mg and 15 mg', '?	7.5 mg and 15 mg', '?	25 mg and 50 mg', '?	None of the above', '', 0, 1, 0, 0, 0),
(217, 0, 'Primary dysmenorrhea is a common gynecological disorder that disrupts______ functioning and nighttime sleep quality.', '?	Morning time', '?	Daytime', '?	Evening time', '?	Nighttime', '', 0, 1, 0, 0, 0),
(218, 0, 'Back pain, most often low back pain is common and effects ________ of the population at some time during their lives.', '?	40 t0 50%', '?	40 t0 60%', '?	70 to 80%', '?	60 to 80%', '', 0, 0, 0, 1, 0),
(219, 0, 'Caflam is significantly superior to ibuprofen in acute low back pain management for all measures of efficacy (from folder)', '?	Pain at rest', '?	Pain at moment', '?	Reduction in temperature', '?	None of the above', '', 0, 0, 0, 1, 0),
(220, 0, 'A quick-release formulation of _______, a potent NSAID from the chemical class of oxicams, offers a faster onset of pain relief compared with the standard tablet formulation.', '?	naproxen sodium', '?	Piroxicam', '?	Paracetamol', '?	Lornoxicam', '', 0, 0, 0, 1, 0),
(221, 0, 'Caflam also performed significantly better on swelling and trismus than ______ and _______', '?	Naproxen sodium and etodolac', '?	Naproxen sodium and lornoxicam', '?	Paracetamol and ibruphen', '?	Etodolac and paracetamol', '', 1, 0, 0, 0, 0),
(222, 0, 'The NSAID Diclofenac is a potent inhibitor of _______ and established antipyretic and analgesic agent.', '?	Photosynthesis', '?	Protoplasm synthesis', '?	Prostaglandin synthesis', '?	Granular synthesis', '', 0, 0, 1, 0, 0),
(223, 0, 'Under the title diclofenac potassium in Migraine Diclofenac potassium provides rapid pain relief within (from studies)', '?	15 to 30 minutes', '?	30 t0 60 minutes', '?	60 to 80 minutes', '?	60 to 90 minutes', '', 0, 0, 0, 1, 0),
(224, 0, 'Migraine attacks are often treated with simple analgesics or with ergotamine containing preparation alone or in combination with (from studies)', '?	Anti-pyretic', '?	Anti-emetics', '?	Anti-inflammatory', '?	Anti-Sematic', '', 0, 1, 0, 0, 0),
(225, 0, 'Diclofenac potassium may be more useful for the short term treatment of acute injuries such as ankle sprain due to its rapid and _______ action.(key message from studies)', '?	Fast', '?	Potent', '?	Relief', '?	onset', '', 0, 1, 0, 0, 0),
(226, 0, 'Diclofenac potassium is a potent prostaglandin synthesis inhibitor both ', '?	out vitro and out vivo', '?	out vitro and in vivo', '?	in vitro and out vivo', '?	in vitro and in vivo', '', 0, 0, 0, 1, 0),
(227, 0, 'Why were diclofenac potassium tablets not launched in place of diclofenac free acid?', '?	Not possible to formulate', '?	Did bot disperse', '?	Was causing too many adverse reactions', '?	Was extremely bitter in taste', '', 0, 0, 0, 1, 0),
(228, 0, 'Diclofenac is ________ absorbed after oral administration compared to IV administration as measured by urine recovery.', '?	95%', '?	90%', '?	92%', '?	100%', '', 0, 0, 0, 1, 0),
(229, 0, 'Diclofenac diffuses into and out of the _______ fluid', '?	Aminotic fluid', '?	Pleural fluid', '?	synovial fluid', '?	Pericardial fluid', '', 0, 0, 1, 0, 0),
(230, 0, 'Diclofenac is eliminated through metabolism, urinary and________ excretion of the glucuronide and the sulfate conjugates of the metabolites.', '?	Billary', '?	Bile', '?	Pancreatic', '?	Gastric', '', 1, 0, 0, 0, 0),
(231, 0, 'NSAID medicines should only be used:', '?	exactly as prescribed', '?	at the lowest dose possible ', '?	for the shortest time needed', '?	All of the above', '', 0, 0, 0, 1, 0),
(232, 0, 'When diclofenac potassium tablets are administered with aspirin, its protein binding is ________', '?	Increases', '?	Decreases', '?	Remains same', '?	Don’t know', '', 0, 1, 0, 0, 0),
(233, 0, 'In late pregnancy, as with other NSAIDs, diclofenac potassium tablets should be avoided because it will cause premature closure of the ________', '?	ductusarteriosus', '?	Rheumatoid arthritis ', '?	Osteoporosis', '?	Abdominal pain', '', 1, 0, 0, 0, 0),
(234, 0, 'Naproxen is classified as', '?	Sulphonamide', '?	Corticosteroid', '?	Propionic acid derivative', '?	An anthraquinone', '', 0, 0, 1, 0, 0),
(235, 0, 'What is the recommended dose of paracetamol for a child aged 5 years?', '?	250mg -500mg over 4-6 hour', '?	125mg ? 250mg every 4-6 hour', '?	500mg ? 1000mg every 4-6 hour', '?	100mg ? 250 every 6-8 hour ', '', 1, 0, 0, 0, 0),
(236, 0, 'The first line treatment of Rheumatoid arthritis is', '?	Naproxen sodium', '?	Paracetamol', '?	Diclofenac ', '?	Dexamethasone', '', 0, 0, 1, 0, 0),
(237, 0, 'Which of the following non- steroidal anti inflammatory drugs would be of particular use in a patient with arthritis who also complains of dyspepsia from time to time?', '?	Aspirin', '?	Naproxem', '?	Indometacin', '?	diclofenac', '', 0, 0, 0, 1, 0),
(238, 0, 'Ponstan Forte is a proprietary of _______ a non steroidalanti inflammatory drugs.', '?	Naproxem sodium', '?	Etodolac', '?	Mefenamic acid', '?	None of the above', '', 0, 0, 1, 0, 0),
(239, 0, '_________ is the chemical name for Aspirin.', '?	Acetic acid', '?	Acetylsalicylic acid', '?	Benzoic Acid', '?	Acetophenone acid', '', 0, 1, 0, 0, 0),
(240, 0, 'Acetaminophen is the chemaical name for ________', '?	BRUFEN', '?	Ansaid', '?	Feldene', '?	paracetamol', '', 0, 0, 0, 1, 0),
(241, 0, 'Naproxen a NSAID inhibits prostaglandin release through inhibition of the COX 2 enzyme producing _______________', '?	Analgesic and anti inflammatory effect', '?	Analgesic  and anti pyretic', '?	Anti pyretic and anti inflammatory', '?	Anti pyretic and anti inflammatory and analgesic', '', 1, 0, 0, 0, 0),
(242, 0, 'Caflam cannot be prescribed in patients having ', '1.	Gastric or intestinal ulcer', '2.	Severe renal failure', '3.	Cardiac Failure', '4.	All of the above ', '', 0, 0, 0, 1, 0),
(243, 0, 'Among Caflam adverse events, vertigo is characterized as ', '1.	Common ', '2.	Very common', '3.	Rare ', '4.	Very rare', '', 1, 0, 0, 0, 0),
(244, 0, 'Among Caflam adverse events, gastrointestinal hemorrhage is characterized as', '1.	Common ', '2.	Very common', '3.	Rare ', '4.	Very rare', '', 0, 0, 0, 1, 0),
(245, 0, 'Which among these can be co-prescribed with Caflam?', '1.	Anticoagulants and anti-platelet agents', '2.	Other NSAIDs', '3.	Anti-Diabetics ', '4.	Antimicrobials ', '', 0, 0, 0, 1, 0),
(246, 0, 'Overdosage of Caflam can cause', '1. vomiting, diarrhea, dizziness, tinnitus or convulsions', '2. headache, dizziness, tinnitus or convulsions', '3. gastrointestinal hemorrhage, diarrhea or fever ', '4. all of above ', '', 1, 0, 0, 0, 0),
(247, 0, 'Caflam belongs to Pharmacotherapeutic group with following effects;', '1.	Anti-inflammatory ', '2.	Antirheumatic products', '3.	Non-steroids, acetic acid', '4.	All of above ', '', 0, 0, 0, 1, 0),
(248, 0, 'Mean peak plasma concentrations of ______are attained after 20 to 60 minutes after ingestion of one tablet of 50 mg', '1.	3.2 micro mol/L', '2.	3.1 micro mol/L', '3.	3.8 micro mol/L', '4.	3.6 micro mol/L', '', 0, 0, 1, 0, 0),
(249, 0, 'The apparent half-life for elimination from the synovial fluid of Caflam is', '1.	2 to 4 hours ', '2.	3 to 6 hours', '3.	3 to 5 hours', '4.	1 to 3 hours ', '', 0, 1, 0, 0, 0),
(250, 0, 'Diclofenac was detected in a low concentration (100 ng/mL) in breast milk in one nursing mother. The estimated amount ingested by an infant consuming breast milk is equivalent to a', '1.	0.03 mg/kg/day dose', '2.	0.04 mg/kg/day dose', '3.	0.01 mg/kg/day dose', '4.	0.024 mg/kg/day dose', '', 1, 0, 0, 0, 0),
(251, 0, 'About ___ of the administered dose of Caflam is excreted in the urine as the glucuronide conjugate of the intact molecule and as metabolites', '1.	50%', '2.	30%', '3.	70%', '4.	60%', '', 0, 0, 0, 1, 0),
(252, 0, 'After administration of Caflam 50mg tablet, the peak plasma concentration reached in', '1.	10 to 20 minutes', '2.	15 to 35 minutes', '3.	35 to 40 minutes', '4.	20 to 60 minutes', '', 0, 0, 0, 1, 0),
(253, 0, 'In a comparative clinical study conducted on 108 patients suffering from ankle sprains, Caflam was significantly better than', '1.	Naproxen sodium ', '2.	Ibuprofen ', '3.	Piroxicam', '4.	Meloxicam ', '', 0, 0, 1, 0, 0),
(254, 0, 'In patients with various sports injuries treatments with caflam resulted in Complete/almost pain resolution at rest in __% of patients after the 1st day', '1.90%', '2.95%', '3.98%', '4.100%', '', 0, 0, 1, 0, 0),
(255, 0, 'Caflam tablets are not recommended for use in children and adolescents below __ years of age:', '1.	12 years', '2.	14 years', '3.	16 years', '4.	18years', '', 0, 1, 0, 0, 0),
(256, 0, 'The maximum daily dose of Caflam that shouldn’t be exceeded is ?', '1.	200mg', '2.	250mg', '3.	100mg', '4.	150mg', '', 1, 0, 0, 0, 0),
(257, 0, 'Caflam is not indicated in', '1.	Dental pain ', '2.	Fracture pain ', '3.	Osteoarthritis ', '4.	Upper respiratory tract infection ', '', 0, 0, 1, 0, 0),
(258, 0, 'Acute low back pain usually last upto', '1.	2 months', '2.	3 days', '3.	3 months', '4.	7 days ', '', 0, 0, 1, 0, 0),
(259, 0, 'Which of these are contraindications of caflam?', '?	Ulcer &intestinal bleeding', '?	3rd trimester of pregnancy', '?	asthma & rhinitis ', '?	All of above ', '', 0, 0, 0, 1, 0),
(260, 0, 'What is the percentage of protein binding of Caflam?', '?	99.7% binds to serum protein ', '?	98% binds to serum protein', '?	94.6%binds to serum protein', '?	96%binds to serum protein', '', 1, 0, 0, 0, 0),
(261, 0, 'What dose of Caflam should be taken in migraine at the first sign of impending attack?', '1.	100mg', '2.	200mg  ', '3.	150mg ', '4.	50mg ', '', 1, 0, 0, 0, 0),
(262, 0, 'What is the shelf life of caflam?', '1.	3 years', '2.	5 years ', '3.	2 years', '4.	4 years ', '', 0, 1, 0, 0, 0),
(263, 0, 'What is the bioavailability of caflam tablet?', '1.	60-70%', '2.	80%', '3.	100% ', '4.	50-60%', '', 0, 0, 0, 1, 0),
(264, 0, 'MRP of Caflam per tablet is', '1.	7.89', '2.	8.03', '3.	8.16', '4.	8.10', '', 0, 1, 0, 0, 0),
(265, 0, 'For renal colic & biliary colic patients what is recommended?', '1.	Oral tablet', '2.	Injection ', '3.	Infusion', '4.	Suppositories ', '', 0, 1, 0, 0, 0),
(266, 0, 'What is the name of brand ?Diclofenac Potassium? Launched by YSP company?', '1-	Voren K', '2-	Voren Plus ', '3-	Avorek', '4-	Avorak', '', 0, 0, 1, 0, 0),
(267, 0, 'What is the % of Diclofenac business in NSAID market ?', '1-	50%', '2-	62%', '3-	35%', '4-	44% ', '', 0, 0, 0, 1, 0),
(268, 0, 'Who is the leader in NSAID market ?', '1-	Voren', '2-	Dicloran', '3-	Brufen', '4-	Voltral', '', 0, 0, 1, 0, 0),
(269, 0, 'RCT stands for?', '1.	Random Centralized Trials ', '2.	Randomized controlled trials', '3.	Regional Controled trails ', '4.	Randomized Central trails ', '', 0, 1, 0, 0, 0),
(270, 0, 'Which company is producing Diclofenac with name Dicloran?', '1-	Asian Continental ', '2-	Abbot laboratories', '3-	Getz Pharma', '4-	Sami ', '', 0, 0, 0, 1, 0),
(271, 0, 'GetzDiclofenac+Misopristol is available by which name ', '1-	Panslay', '2-	Cytopan', '3-	Arthotac', '4-	Cinopan', '', 0, 1, 0, 0, 0),
(272, 0, 'Price of Avorek per tablet is?', '1-	Rs. 3', '2-	Rs. 4', '3-	Rs. 5', '4-	Rs. 3.5', '', 1, 0, 0, 0, 0),
(273, 0, 'Brand Erwin ?Diclofenac Sodium + Misopristol? belongs to which company ', '1-	Searle', '2-	Sami', '3-	Asian Continental', '4-	Getz Pharma', '', 0, 1, 0, 0, 0),
(274, 0, 'Sami’s Diclofenac Potassium is available with what name?', '1-	Diclonam', '2-	Diclo-P', '3-	Diclorep', '4-	Dyclo-P', '', 0, 0, 1, 0, 0),
(275, 0, 'Flurbiprofen is not indicated in?', '1-	Rheumatoid arthritis ', '2-	Acute tendonitis ', '3-	Dysmenorrhea ', '4-	Dental Pain ', '', 0, 0, 0, 1, 0),
(276, 0, 'Sami’s Diclofenac Potassium is focusing on which ?reas', '1-	Dysmenorrhea, migraine and low back pain', '2-	Migraine, URTIs and Dysmenorrhea', '3-	Dysmenorrhea, URTs and low back pain ', '4-	Migraine, low back pain, URTIs and Osteoarthritis ', '', 1, 0, 0, 0, 0),
(277, 0, 'how long diclofenac persist in synovial fluid?', '1-	10 hours', '2-	12 hours', '3-	18 hours', '4-	4 hours', '', 0, 1, 0, 0, 0),
(278, 0, 'Concentration of Diclofenac Oral after ___ hours is higher in synovial fluid than plasma', '1-	2 hours', '2-	10  hours', '3-	5 hours', '4-	4 hours', '', 0, 0, 0, 1, 0),
(279, 0, 'Cmax of Caflam is ', '1.	3600 nmol/L', '2.	3800 nmol/L', '3.	3500 nmol/L', '4.	3400 nmol/L', '', 0, 1, 0, 0, 0),
(280, 0, 'XikaRapid by Hilton contains which salt?', 'a) Naproxen', 'b) Meloxicam', 'c) Lornoxicam', 'd) Ketoprofen ', '', 0, 0, 1, 0, 0),
(281, 0, 'Caflam is suitable to management of acute pain because  of?', '1-	Less side effects', '2-	Quick onset of action ', '3-	No liver damage in long term use', '4-	Provide cardiac safety ', '', 0, 1, 0, 0, 0),
(282, 0, 'Benefits of sugar coating are?', '1-	Hiding unpleasant taste of medicine', '2-	Providing better stability in different temperatures ', '3-	Make tablet more appealing ', '4-	All of above ', '', 0, 0, 0, 1, 0);

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
  `login_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first_name`, `last_name`, `password`, `email`, `city`, `phone_number`, `user_id`, `tested`, `cnic_no`, `user_name`, `emp_id`, `login_date`) VALUES
('Sameer', 'Abdul Ghani', '123#Novartis', 'sameer.abdul_ghani@novartis.com', 'karachi', '923333463758', 50, 1, '42201-0334052', 'abdulsa4', 0, '2014-03-31'),
('ahmed', 'adhmed', '12345', 'adsfasd@ali.com', 'adsfds', '34343434343', 43, 0, '343434343', 'ahmed', 332, '2014-01-01'),
('man', 'fa', 'ali', 'mj@yahoo.com', 'karachi', '03007569908', 49, 1, '354956775503', 'ali', 759, '2014-03-31'),
('mansoor', 'jafri', 'engine1000', 'mansoorjaffry@yahoo.com', 'Karachi', '03008630368', 48, 1, '3630203644329', 'mj', 530, '2014-03-31'),
('masroor', 'ali', 'ali', 'masroor@gmail.com', 'multan', '0616212223', 47, 1, '0975415789', 'masroor', 4, '2014-03-30'),
('nauman', 'shah', '12345', 'ali@yahoo.com', 'multan', '03336523486', 39, 0, '7373737372727', 'infinity', 123, '2014-01-01'),
('ifra', 'masroor', 'masroor', 'iframasroor@gmail.com', 'multan', '03139999999', 38, 1, '938193289', 'ifra', 3, '2014-04-08'),
('mah', 'gj', 'ooo', 'hfdd@gmail.com', 'jfjjf', '0616212223', 36, 1, '0975415789', 'nnn', 57, '2014-03-04'),
('jyoti', 'kumari', 'jyoti$1', 'jyoti.kumari@novartis.com', 'karachi', '03232230043', 37, 1, '4230198952490', 'jyoti', 2206, '2014-03-05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
