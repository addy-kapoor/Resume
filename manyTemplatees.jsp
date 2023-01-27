<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="./Static resources/css/bootstrap.min.css" rel="stylesheet">
<script src="./resources/js/bootstrap.bundle.min.js"></script>
</script>
<style>
.col{
	margin:40px;	
}
.br{
        line-height: 800%;
     }
 hr{
 	height:50pt; visibility:hidden;
 }
</style><br>


<h1 style="text-align:center" class="bg-primary text-light">Templates</h1>
<br>
<div class="container">
	
    <div class="row">
        <div class="col card" onclick="goToTemplates()"><img src="./Static resources/img/r1.jpg.png"></div>
       <div class="col card" ><img src='https://th.bing.com/th/id/R.7fc20a77e161f353d2be9f3462d6ede7?rik=0uBZ3FntV4sGyQ&riu=http%3a%2f%2fwww.101resumetemplates.com%2fwp-content%2fuploads%2f2015%2f12%2fsimple-resume-template.png&ehk=cWQMZCfZXuYJ0B10D45KxLP5clnHMfxA%2f2YabmZnLqE%3d&risl=&pid=ImgRaw&r=0'></div>  
        <div class="col card" ><img src='https://s3-us-west-2.amazonaws.com/hiration/ghost/2018/07/simple_black.jpg'></div>
        
    </div>
</div>
<script>
	function goToTemplates()
	{
		console.log("hi");
		window.open("Templates.jsp");
	}
</script>