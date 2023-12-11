-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2023 at 06:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarsync`
--

-- --------------------------------------------------------

--
-- Table structure for table `admincontacts`
--

CREATE TABLE `admincontacts` (
  `aserial` int(2) NOT NULL,
  `aname` text NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `apassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admincontacts`
--

INSERT INTO `admincontacts` (`aserial`, `aname`, `aemail`, `apassword`) VALUES
(1, 'Admin', 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `approved_meeting`
--

CREATE TABLE `approved_meeting` (
  `id` int(11) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `appointment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approved_meeting`
--

INSERT INTO `approved_meeting` (`id`, `nm`, `reason`, `appointment`) VALUES
(1, 'Rafsan Ali', 'Seeking for a RA job under you sir.', '25th september,2023'),
(2, 'Juhaj', 'Thesis suggestion', 'This week'),
(3, 'hasme', 'Thesis suggestion for masters', 'This month'),
(4, 'HASME', 'Want to do research under you sir.', 'This month'),
(5, 'Hasib', 'Meeting for suggestion', 'later this month'),
(6, 'Juha', 'Thesis', 'Today'),
(7, 'Juha', 'xyz', 'Tomorrow '),
(8, 'Juha', 'Thesis', 'Tomorrow ');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `course_name`, `course_code`, `image`, `price`) VALUES
(1, 'Introduction to Python Programming', 'PY101', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sololearn.com%2Flearn%2Fcourses%2Fpython-introduction&psig=AOvVaw0yPCvAY3Cl0xTSjtKEVYo-&ust=1691954136573000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOjY8MTq14ADFQAAAAAdAAAAABAI', 500),
(2, 'Web Development', 'WD200', 'https://e0.pxfuel.com/wallpapers/66/409/desktop-wallpaper-or-web-development-web-design.jpg', 600),
(3, 'Digital Marketing', 'DM301', 'https://www.shutterstock.com/image-illustration/digital-marketing-chart-keywords-icons-260nw-445504414.jpg', 550),
(4, 'Data Science Basics', 'DS401', 'https://dypdvfcjkqkg2.cloudfront.net/large/5964300-2156.png', 800),
(5, 'Graphic Design', 'GD502', 'https://i0.wp.com/www.peterboroughprint.ca/wp-content/uploads/2023/02/logo-template-for-t-shirt-prints-brand-1314e-1.png?fit=4000%2C4000&ssl=1', 900);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `serialno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `basic_mode` tinyint(1) NOT NULL,
  `image` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`serialno`, `name`, `email`, `password`, `basic_mode`, `image`) VALUES
(27, 'new', 'fine@g.com', '404', 0, 'https://www.looper.com/img/gallery/the-surprising-harry-potter-characters-tom-felton-almost-played/l-intro-1636993771.jpg'),
(32, 'test', 'something@gmail.com', '561', 1, 'image3.jpeg'),
(36, 'Juha', 'juha@gmail.com', '123', 0, 'https://c4.wallpaperflare.com/wallpaper/749/423/664/anime-girl-brunette-glasses-wallpaper-preview.jpg'),
(39, 'fardin', 'fardin@g.c', '1', 1, 'https://i.pinimg.com/736x/e6/d1/e0/e6d1e04fa8ed09e1b7a6ef3cd7fefa53.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `Job_Title` varchar(50) NOT NULL,
  `Company_Name` varchar(50) NOT NULL,
  `Requirement` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Job_Code` int(11) NOT NULL,
  `Deadline` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`Job_Title`, `Company_Name`, `Requirement`, `Location`, `Job_Code`, `Deadline`) VALUES
('Senior Frontend Developer', 'AB Tech', '2 years experience', 'Banani, Dhaka', 1, '2023-11-17 17:06:17'),
('Junior Frontend Developer', 'IT Cell', '1 year job experience', 'Mohakhali, Dhaka', 2, '2023-10-05 17:07:22'),
('Node.Js Internship', 'High Tech', 'Bachelor or equivalent degree', 'Banani, Dhaka', 3, '2023-10-18 18:12:43'),
('Chief Financial Officer', 'One Direction Companies Limited', '8 years of experience ', 'Dhaka', 12, '2023-10-05 18:14:04'),
('General Manager (A & F)-Textile & RMG Division', 'Deshbandhu Group', '15 years of experience, M.Com in Accounting.', 'Dhanmondi, Dhaka', 13, '2023-09-07 18:14:04'),
('Ai Engineer', 'Google', 'Computer Science degree', 'Khulna', 14, '2023-09-07 18:19:49'),
('Product Manger', 'Pather', '2 years of experience in related field', 'Mirpur, Dhaka ', 15, '2023-09-08 18:19:49'),
('NLP engineer', 'High Tech', '2 years experience', 'Dhaka', 16, '2023-08-27 07:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `nm` varchar(50) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `appointment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `nm`, `reason`, `appointment`) VALUES
(12, 'Taskia', 'emni', '21/9/23');

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(250) NOT NULL,
  `wishlist` enum('yes','no') NOT NULL DEFAULT 'no',
  `cart` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`c_id`, `c_name`, `wishlist`, `cart`) VALUES
(1, 'Python for Beginners', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `profcontacts`
--

CREATE TABLE `profcontacts` (
  `serial` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `uniName` text NOT NULL,
  `designation` text NOT NULL,
  `mail` varchar(40) NOT NULL,
  `passw` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profcontacts`
--

INSERT INTO `profcontacts` (`serial`, `FullName`, `uniName`, `designation`, `mail`, `passw`) VALUES
(1, 'Mr. xyz', 'Brac University', 'Assistant Professor ', 'xyz@email.com', '123'),
(2, 'Jem', 'University Of London', 'Senior Lecturer', 'jem@uol.com', '111');

-- --------------------------------------------------------

--
-- Table structure for table `prof_post`
--

CREATE TABLE `prof_post` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `post` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prof_post`
--

INSERT INTO `prof_post` (`id`, `name`, `time`, `post`) VALUES
(1, 'Mr. xyz', '2023-08-13 11:02:00', 'The International Max Planck Research School for Environmental, Cellular, and Molecular he IMPRS-Mic is a joint initiative of the Max Planck Institute for Terrestrial Microbiology and the Philipps-Universität Marburg. offer PhD projects in the following research areas:\r\n\r\n- Biochemistry and Structural Biology\r\n- Microbial Ecology and Interactions\r\n- Molecular and Cellular Microbiology\r\n- Microbial Genomics\r\n- Systems and Synthetic Microbiology\r\n\r\nLast date to apply 31 Jan 2023.\r\n\r\n'),
(5, 'Mr. xyz', '2023-08-13 05:41:12', 'Currently I am looking for few phd candidates for my upcoming research work. Requirements- ML, Ai, NLPs. For further info mail me. '),
(7, 'Mr. xyz', '2023-08-20 09:25:33', 'anythi');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `course` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `user`, `course`) VALUES
(6, 38, 'DM301'),
(9, 38, 'DS401'),
(12, 36, 'WD200');

-- --------------------------------------------------------

--
-- Table structure for table `Query`
--

CREATE TABLE `Query` (
  `q_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `poster` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Query`
--

INSERT INTO `Query` (`q_id`, `question`, `poster`, `date`) VALUES
(1, 'What is NN?', 'Juha', '0000-00-00'),
(3, 'what is machine learning?', 'Alex', '0000-00-00'),
(18, 'Any update on Scholarships?', 'Alex\r\n', '0000-00-00'),
(21, 'whats update', 'Juha', '2023-08-20'),
(22, 'when is next class', 'fardin', '2023-08-27'),
(23, 'new info', 'new', '2023-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `Reply`
--

CREATE TABLE `Reply` (
  `r_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `ans_id` int(11) NOT NULL,
  `person` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Reply`
--

INSERT INTO `Reply` (`r_id`, `answer`, `time`, `ans_id`, `person`) VALUES
(1, 'NN is a model', '2023-07-29 10:58:16', 1, 'Alex'),
(1, 'Need to work on NN', '2023-07-29 10:58:31', 2, 'Test'),
(2, 'Use google !!!!', '2023-07-29 10:58:45', 3, 'Juha'),
(2, 'Math problem', '2023-07-29 12:04:12', 4, 'Juha'),
(3, 'Want to know too', '2023-07-29 08:55:27', 5, 'Alex'),
(19, 'I am interested tooo', '2023-07-29 10:43:37', 6, 'New'),
(19, 'Me too', '2023-07-29 10:43:51', 7, 'New'),
(16, 'It is kinda vector', '2023-07-29 10:44:45', 8, 'Alex'),
(19, 'Same', '2023-08-10 14:39:47', 12, 'Alex'),
(18, 'fine', '2023-08-13 05:22:18', 13, 'Juha'),
(21, 'followiung', '2023-08-20 09:21:08', 14, 'Juha'),
(22, 'pls reply', '2023-08-27 07:13:51', 15, 'fardin'),
(22, 'ok', '2023-12-07 20:54:29', 16, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `sc_code` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `university` varchar(50) NOT NULL,
  `requirement` varchar(100) NOT NULL,
  `country` varchar(30) NOT NULL,
  `deadline` datetime NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`sc_code`, `name`, `university`, `requirement`, `country`, `deadline`, `link`) VALUES
(1, 'BRACU merit-based scholarship', 'BRAC University', '90% of grade in Bachelor Degree, IELTS 6', 'Bangladesh', '2023-11-04 00:47:04', 'https://www.bracu.ac.bd/'),
(2, 'BNU Asylum Seeker Scholarship', 'Bucks New University', 'Application Registration Card (ARC) or Asylum Seeker status (under-1951 UN Convention)', 'United Kingdom', '2023-09-23 00:59:35', 'https://www.bucks.ac.uk/');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `description`, `user`, `date`) VALUES
(14, 'mail professor', 36, '2023-10-03'),
(15, 'Testing is working', 36, '2023-10-03'),
(16, 'mail professor', 36, '2023-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `unique` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wish_list` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`unique`, `user_id`, `wish_list`) VALUES
(16, 39, 'WD200'),
(20, 38, 'DS401'),
(24, 38, 'WD200'),
(25, 36, 'WD200'),
(26, 36, 'DM301'),
(28, 39, 'DM301'),
(29, 27, 'WD200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admincontacts`
--
ALTER TABLE `admincontacts`
  ADD PRIMARY KEY (`aserial`);

--
-- Indexes for table `approved_meeting`
--
ALTER TABLE `approved_meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`serialno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD UNIQUE KEY `Job Code` (`Job_Code`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `profcontacts`
--
ALTER TABLE `profcontacts`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `prof_post`
--
ALTER TABLE `prof_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Query`
--
ALTER TABLE `Query`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `Reply`
--
ALTER TABLE `Reply`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`sc_code`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`unique`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admincontacts`
--
ALTER TABLE `admincontacts`
  MODIFY `aserial` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `serialno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `Job_Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profcontacts`
--
ALTER TABLE `profcontacts`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prof_post`
--
ALTER TABLE `prof_post`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Query`
--
ALTER TABLE `Query`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `Reply`
--
ALTER TABLE `Reply`
  MODIFY `ans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `sc_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `unique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
