<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function checkdept() {
		var d = document.infoinputform.dept_name.value;
		if (d == "choice") {
			$('#alert').show()
			return false;
		}
		return true;
	}
</script>
<title>jsp example</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
<style>
body {
	padding: 0px, 0px, 0px, 0px;
	margin: 0px, 0px, 0px, 0px;
	overflow: hidden;
	background-color: #000;
}

.title {
	position: absolute;
	top: 10%;
	left: 50%;
	transform: translate(-50%);
}

.inputinfo {
	position: absolute;
	top: 40%;
	left: 40%;
}

#alert {
	position: fixed;
	top: 35%;
	left: 40%;
}

#inputinfomationform {
	position: absolute;
	width: 300px;
	margin: auto;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
}

#backgroundimage {
	width: 100%;
	height: 100%;
	object-fit: cover;
	background-size: cover;
	min-width: 100%;
	min-height: 100%;
}
</style>
</head>

<body>

	<img id="backgroundimage" src="bgimg.jpeg">
	<h1 class="title">WHO IS WE?</h1>
	<div id="inputinfomationform">
		<form action="./StudentInsertInfo.jsp" method="post"
			name="infoinputform" onsubmit="return checkdept()">
			<fieldset style="width: 270px">
				<legend>
					<font color="white">registered students info </font>
				</legend>
				<div style="color: white;" style="text-align:left;">ID</div>
				<input type="text" name="StudentID" required autofocus
					style="align: right"><br> <br>
				<div style="color: white;" style="text-align:left;">NAME</div>
				<input type="text" name="StudentName" required> <br> <br>
				<div style="color: white;" style="text-align:left;">DEPARTMENT
				</div>
				<select name="dept_name">
					<option value="choice">=== choice ===</option>
					<option value="Comp. Sci.">Comp. Sci.</option>
					<option value="History">History</option>
				</select><br> <br>
				<div style="color: white;" style="text-align:left;">tot_cred</div>
				<input type="text" name="tot_cred" required>
				<hr>
				<input class="btn btn-success " type="submit" value="submit">&nbsp;&nbsp;
				<input class="btn btn-primary " type="reset" value="reset">
			</fieldset>
		</form>
		<div id="alert" class="alert alert-danger fade in"
			style="display: none;">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
				fill="currentColor"
				class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2"
				viewBox="0 0 16 16" role="img" aria-label="Warning:">
    <path
					d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
  </svg>
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			<h4>Wait!</h4>
			please choice your department
		</div>
	</div>

	<script src="./js/jquery-3.6.0.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/popper.js"></script>
	<script src="./js/popper.js.map"></script>
</body>
</html>