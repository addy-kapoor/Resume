<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="./Static resources/css/bootstrap.min.css" rel="stylesheet">
<script src="./resources/js/bootstrap.bundle.min.js"></script>
</head>
<style>
	.col-lg-6{
		background-image:url('./Static resources/img/welcome.jpg');
		background-size:cover;
	}
	.card{
		margin-left: 230px;
		margin-right: 230px;
		margin-top:4rem ;
		border-radius: 16px;
	}
	.col-lg-4{
		font-family: 'Andale Mono', monospace;
		font-weight: 900;
	}
	.col{
		font-family: 'Andale Mono', monospace;
		font-weight: 900;
	}

h1{
	font-size:45pt; font-weight:900;font-family: 'Times New Roman', serif; color:#1b2e35;
}
h2{
	color:#C46458;
}

</style>
</head>
<body class="bg-primary">
<form>
		<div class="card">
		<div class="row">
			<div class="col-lg-1">
			</div>
			<div class="col-lg-4 text-primary">
			<br><br><br><h1>WELCOME</h1><br><h2 style="color:#C08B01;"><small>to</small> <br><strong>Wrap Up</strong></h2><br><h4></h4><h5>Happy to make your resume building one click simpler :)</h5>
			<br><br>
			<button type="button"  class="btn btn-warning" onclick="formopen()">Click to fill the details</button><br><br>
			<br><br><br>
			</div>
			<div class="col-lg-6">
			<p></p>
			</div>
			<div class="col-lg-1">
			</div>
		</div>
		</div>
</form>
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
</body>
<script>
function formopen() {
	window.open("form.jsp");
}
function eligopen() {
	window.open("eligibility-check.jsp");
}


</script>
</html>