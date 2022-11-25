-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 05:48 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsu_data`
--
CREATE DATABASE IF NOT EXISTS `nsu_data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nsu_data`;

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

CREATE TABLE `class_result` (
  `class_result_id` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_result`
--

INSERT INTO `class_result` (`class_result_id`, `roll_no`, `course_code`, `subject_code`, `semester`, `total_marks`, `obtain_marks`, `result_date`) VALUES
(66, '1912236987', 'BS_CSE', 'CSE299', '212', '100', '85', '02-09-21'),
(67, '1912236987', 'BS_CSE', 'MAT350', '212', '100', '70', '02-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('BA_ENG', 'BA_in_English', '12', 4),
('BBA', 'BBA_General', '12', 4),
('BBA_ACC', 'BBA_Major_in_Accounting', '12', 4),
('BBA_ECO', 'BBA_Major_in_Economics', '12', 4),
('BBA_HR', 'BBA_Major_in_Human_Resource_Management', '12', 4),
('BBA_MKT', 'BBA_Major_in_Marketing', '12', 4),
('BS_CSE', 'BS_in_Computer_Science_&_Engineering', '12', 4),
('BS_in_EEE', 'BS_in_Electrical_&_Electronic_Engineering ', '12', 4),
('B_PHARM', 'BPHARM_Professional', '8', 4);

-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

CREATE TABLE `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `credit_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subjects`
--

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('CSE299', 'Junior Design', 'BS_CSE', 212, 1),
('EEE452', 'Engineering Economics and Management', 'BS_CSE', 212, 3),
('HIS102', 'Introduction to World Civilization', 'BS_CSE', 212, 3),
('MAT350', 'Engineering Mathematics', 'BS_CSE', 212, 3),
('PHI104', 'Introduction to Ethics', 'BS_CSE', 212, 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `user_id`, `Password`, `Role`, `account`) VALUES
(1, 'admin@nsu.edu', 'admin123*', 'Admin', ''),
(15, 't1@nsu.edu', 'teacher123*', 'Teacher', 'Activate'),
(18, 't2@nsu.edu', 'teacher123*', 'Teacher', 'Activate'),
(19, '1', 'student123*', 'Student', 'Activate'),
(24, '1912239642', 'student123*', 'Student', 'Activate'),
(28, '1912656642', 'student123*', 'Student', ''),
(29, '1712532642', 'student123*', 'Student', ''),
(33, '1911244042', 'student123*', 'Student', ''),
(34, '1911142642', 'student123*', 'Student', ''),
(35, '1831819642', 'student123*', 'Student', ''),
(36, '1931679042', 'student123*', 'Student', ''),
(39, '1911033042', 'student123*', 'Student', ''),
(42, 'ziaul.hossain@northsouth.edu', 'teacher123*', 'Teacher', 'Activate'),
(44, 'abdus.samad02@northsouth.edu', 'teacher123*', 'Teacher', ''),
(47, 'faruk.shah@northsouth.edu', 'teacher123*', 'Teacher', ''),
(48, '1911592642', 'student123*', 'Student', ''),
(49, '1912236987', 'student123*', 'Student', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session`, `created_date`) VALUES
(1, '212', '2021-09-02 09:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_course_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_course_id`, `course_code`, `semester`, `roll_no`, `subject_code`, `session`, `assign_date`) VALUES
(9, 'BS_CSE', 212, '1912239642', 'CSE299', '', '02-09-21'),
(10, 'BS_CSE', 212, '1712532642', 'CSE299', '', '02-09-21'),
(11, 'BS_CSE', 212, '1911142642', 'CSE299', '', '02-09-21'),
(13, 'BS_CSE', 212, '1831819642', 'CSE299', '', '02-09-21'),
(14, 'BS_CSE', 212, '1911033042', 'CSE299', '', '02-09-21'),
(15, 'BS_CSE', 212, '1911244042', 'CSE299', '', '02-09-21'),
(16, 'BS_CSE', 212, '1912656642', 'CSE299', '', '02-09-21'),
(17, 'BS_CSE', 212, '1931679042', 'CSE299', '', '02-09-21'),
(18, 'BS_CSE', 212, '1912236987', 'CSE299', '', '02-09-21'),
(19, 'BS_CSE', 212, '1912236987', 'MAT350', '', '02-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_voucher` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `roll_no` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `course_code` varchar(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `prospectus_issued` varchar(10) NOT NULL,
  `prospectus_amount` varchar(10) NOT NULL,
  `form_b` varchar(20) NOT NULL,
  `applicant_status` varchar(20) NOT NULL,
  `application_status` varchar(20) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `other_phone` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `current_address` varchar(150) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `obtain_marks` int(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `admission_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`roll_no`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `mobile_no`, `course_code`, `session`, `profile_image`, `prospectus_issued`, `prospectus_amount`, `form_b`, `applicant_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `semester`, `total_marks`, `obtain_marks`, `state`, `admission_date`) VALUES
('1', 'Student', 'One', 'Name', 'Father One', 's1@nsu.edu', '1234567890', 'BS', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:11:16'),
('1712532642', 'Ramisa', '', 'Anjuman', 'Ramisa\'s baba\'s name', 'ramisa.anjuman@northsouth.edu', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:11:23'),
('1831819642', 'Tahrima ', '', 'Ihsan ', 'Tahrima\'s baba\'s name', 'tahrima.ihsan@northsouth.edu', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:15:04'),
('1911033042', 'Kazi ', 'Humaira ', 'Kabir ', 'Humaira\'s baba\'s name', 'kazi.kabir@northsouth.edu', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:27:11'),
('1911142642', 'Md. Zarin', '', 'Hossain ', 'Father two', 'zarin.hossain@northsouth.edu', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:11:30'),
('1911244042', 'Ilmoon ', '', 'Jahan ', 'Ilmun\'s baba\'s name', 'ilmoon.jahan@northsouth.edu', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:11:35'),
('1911592642', 'Raiyan', 'Mehedi', 'Shaad', 'Shaad\'s baba\'s name', 'raiyan.shaad@northsouth.edu', '01710826058', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 14:40:31'),
('1912236987', 'Grade', 'Ul Bar', 'Chowdhury', 'Grade er baap', 'g@nsu.edu', '01478523698', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 15:04:48'),
('1912239642', 'Md. Sayaduzzaman ', 'Chowdhury', 'Ador', 'Md. Anisuzzaman', 'sayaduzzaman@northsouth.edu', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:11:38'),
('1912656642', 'Md. Nahedul Bar ', 'Chowdhury', 'Ruhul', 'Nahid\'s baba\'s name', 'nnahedul.ruhul@northsouth.edu', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Admitted', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:11:41'),
('1931679042', 'Mohammad Ismail ', 'Hossain', 'Siddiquee', 'Ismail\'s baba\'s name ', 'mohammad.siddiquee@northsouth.', '01822964255', 'BS_CSE', '212', '', 'Select Opt', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-09-02 09:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` varchar(30) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_courses_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_courses_id`, `course_code`, `semester`, `teacher_id`, `subject_code`, `assign_date`, `total_classes`) VALUES
(11, 'BS_CSE', 212, '1', 'CSE299', '02-09-21', 15);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `application_status` varchar(10) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `other_phone` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `ma_complition_date` varchar(10) NOT NULL,
  `ma_awarded_date` varchar(100) NOT NULL,
  `ma_certificate` varchar(101) NOT NULL,
  `last_qualification` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `hire_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `ma_complition_date`, `ma_awarded_date`, `ma_certificate`, `last_qualification`, `state`, `hire_date`) VALUES
(1, 'Ziaul ', 'Hossain', '(ZHO)', '', 'ziaul.hossain@northsouth.edu', '01755627856', '', 'Select Sta', 'Select Sta', '', '', 0, 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02-09-21'),
(2, 'Md. Abdus', 'Samad', '(ADS)', '', 'abdus.samad02@northsouth.edu', '123456987', '', 'Select Sta', 'Select Sta', '', '', 0, 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02-09-21'),
(3, 'Dr. MD. Faruk', 'Shah', '(FKH)', '', 'faruk.shah@northsouth.edu', '01711074087', '', 'Select Sta', 'Select Sta', '', '', 0, 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02-09-21'),
(100, 'Teacher', 'One', 'Name', '', 't1@nsu.edu', '', '', 'Select Sta', 'Select Sta', '', '', 0, 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01-09-21'),
(200, 'Teacher', 'Two', 'Name', '', 't2@nsu.edu', '', '', 'Select Sta', 'Select Sta', '', '', 0, 'Select Gen', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

CREATE TABLE `teacher_salary_allowances` (
  `teacher_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `hr_allowance` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

CREATE TABLE `teacher_salary_report` (
  `salary_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_code`, `semester`, `timing_from`, `timing_to`, `day`, `subject_code`, `room_no`) VALUES
(17, 'BS_CSE', 212, '14:40', '16:10', '1', 'CSE299', 299),
(18, 'BS_CSE', 212, '16:20', '17:50', '4', 'MAT350', 350),
(19, 'BS_CSE', 212, '16:20', '17:50', '6', 'MAT350', 350),
(20, 'BS_CSE', 212, '06:40', '11:10', '4', 'HIS102', 102),
(21, 'BS_CSE', 212, '09:40', '11:10', '6', 'HIS102', 102),
(22, 'BS_CSE', 212, '16:20', '17:50', '7', 'EEE452', 452),
(23, 'BS_CSE', 212, '16:20', '17:50', '2', 'EEE452', 452),
(24, 'BS_CSE', 212, '13:00', '14:30', '7', 'PHI104', 104),
(25, 'BS_CSE', 212, '13:00', '14:30', '2', 'PHI104', 104);

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_result`
--
ALTER TABLE `class_result`
  ADD PRIMARY KEY (`class_result_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_course_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_voucher`),
  ADD KEY `roll_no` (`roll_no`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`teacher_courses_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_result`
--
ALTER TABLE `class_result`
  MODIFY `class_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `student_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `teacher_courses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `weekdays`
--
ALTER TABLE `weekdays`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `teacher_salary_report_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_salary_allowances` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
