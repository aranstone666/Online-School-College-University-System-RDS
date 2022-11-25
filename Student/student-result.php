<!---------------- Session starts form here ----------------------->
<?php
	session_start();
	if (!$_SESSION["LoginStudent"])
	{
		header('location:../login/login.php');
	}
		require_once "../connection/connection.php";
	?>
<!---------------- Session Ends form here ------------------------>


<!doctype html>
<html lang="en">
	<head>
		<title>Student - Results</title>
	</head>
	<body>
		<?php include('../common/common-header.php') ?>
		<?php include('../common/student-sidebar.php') ?>

		<main role="main" class="col-xl-10 col-lg-9 col-md-8 ml-sm-auto px-md-4 mb-2 w-100">
			<div class="sub-main">
				<div class="text-center d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 text-white admin-dashboard pl-3">
					<h4 class="">Student Result Summary</h4>
				</div>
				<div class="row">
					<div class="col-md-12">
						<section class="mt-3">
							<table class="w-100 table-elements mb-5 table-three-tr" cellpadding="10" >
								<tr class="text-center text-white table-three table-tr-head">
									<th>Semester</th>
									<th>Program</th>
									<th>Course</th>
									<th>Credit</th>
									<th>Total Marks</th>
									<th>Obtained Marks</th>
									<th>Grade</th>
									<th>CGPA</th>

								</tr>
								<?php
								$cgpa=0;
								$gpa=0;
								$total_marks=0;
								$obtain_marks=0;
								$count=0;
									$roll_no=$_SESSION['LoginStudent'];
									$query="select * from class_result cr inner join course_subjects cs on cr.subject_code=cs.subject_code where cr.roll_no='$roll_no'";
									$run=mysqli_query($con,$query);
									while ($row=mysqli_fetch_array($run)) { ?>
										<tr class="text-center">
											<td><?php echo $row['semester'] ?></td>
											<td><?php echo $row['course_code'] ?></td>
											<td><?php echo $row['subject_code'] ?></td>
											<td><?php echo $row['credit_hours'] ?></td>
											<td><?php echo $row['total_marks'] ?></td>
											<td><?php echo $row['obtain_marks'] ?></td>
											<?php
												if ($row['obtain_marks']>92) {
													$grade='A';
													$credits=4.0;
												}
												else if ($row['obtain_marks']>89) {
													$grade='A-';
													$credits=3.7;
												}
												else if ($row['obtain_marks']>86) {
													$grade='B+';
													$credits=3.0;
												}
												else if ($row['obtain_marks']>82) {
													$grade='B';
													$credits=2.7;
												}
												else if ($row['obtain_marks']>79) {
													$grade='B-';
													$credits=2.3;
												}
												else if ($row['obtain_marks']>76) {
													$grade='C+';
													$credits=2.0;
												}
												else if ($row['obtain_marks']>72) {
													$grade='C';
													$credits=1.7;

												}
												else if ($row['obtain_marks']>69) {
													$grade='C-';
													$credits=1.3;
												}
												else if ($row['obtain_marks']>66) {
													$grade='D+';
													$credits=1.0;
												}
												else if ($row['obtain_marks']>60) {
													$grade='D';
													$credits=0.0;
												}
												else {
													$grade='F';
													$credits=0.0;
												}
											?>
											<td><?php echo $grade ?></td>
											<td><?php echo $credits ?></td>
										</tr>
									<?php
										$count++;
										$score=$credits*$row['credit_hours'];
										$gpa=$gpa+$score;
										$cgpa=$cgpa+$row['credit_hours'];
										$obtain_marks=$obtain_marks+$row['obtain_marks'];
										$total_marks=$total_marks+$row['total_marks'];
									}
								?>
								<tr class=" text-white bg-success text-center">
									<td><?php echo" " ?></td>
									<td><?php echo"Total " ?></td>
									<td><?php echo $count; ?></td>
									<td><?php echo $cgpa ?></td>
									<td><?php echo $total_marks; ?></td>
									<td><?php echo $obtain_marks; ?></td>
									<?php
										$marks_grade= $total_marks == true ? ($obtain_marks*100)/$total_marks : "";
										$marks_grade=round($marks_grade);

										if ($marks_grade>92) {
											$final='A+';
										}
										else if ($marks_grade>89) {
											$final='A-';
										}
										else if ($marks_grade>86) {
											$final='B+';
										}
										else if ($marks_grade>82) {
											$final='B';
										}
										else if ($marks_grade>79) {
											$final='B-';
										}
										else if ($marks_grade>76) {
											$final='C+';
										}
										else if ($marks_grade>72) {
											$final='C';
										}
										else if ($marks_grade>69) {
											$final='C-';
										}
										else if ($marks_grade>66) {
											$final='D+';
										}
										else if ($marks_grade>60) {
											$final='D';
										}



										else {
											$marks_grade == true ? $final='F' : $final = "0";
										}
									?>
									<td><?php echo $final ?></td>
									<td><?php echo $gpa > 0 ? round($total_cgpa=$gpa/$cgpa,2) : "0" ?></td>

								</tr>
							</table>
						</section>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
