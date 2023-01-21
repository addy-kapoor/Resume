<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="./Static resources/css/bootstrap.min.css" rel="stylesheet">
<script src="./resources/js/bootstrap.bundle.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css?family=Poppins');
*
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
body{
    background-color: lightblue;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    font-family: sans-serif;
}
.container{
    position: relative;
    width:100%;
    max-width: 1000px;
    min-height: 1000px;
    min-width: 100px;
    background: #fff;
    display:grid;
    grid-template-columns: 1fr 2fr;
    box-shadow: 0 35px 55px rgba(0,0,0,0.1);
    margin:50px;
    color: rgba(255, 255, 255, 0.877);
}
.container .left_side{
position: relative;
background-color: #003147;
padding: 40px;
}
.container .right_side{
    position: relative;
    background-color: #fff;
    padding: 40px;
    color:#003147;
}
.profile{
    border-bottom: #fff;
    object-fit: cover;
    position: relative;
    align-items: center;
    border-bottom: 1px solid rgba(255,255,255,0.2);
}

.profile h2{
    margin-left: 50px;
    font-size: 25px;
    text-transform: uppercase;
    margin-top: 40px;
}
.profile h3{
    margin-left: 60px;
    font-size: 20px;
    margin-bottom: 20px;
    text-transform: uppercase;
}
.contactinfo{
   
    padding: 10px;
    border-bottom: 1px solid rgba(255,255,255,0.2);
}
.contact{
    margin-top: 70px;
}
.contactinfo ul{
    position: relative;
}
.contactinfo ul li{
    position: relative;
    list-style: none;
    margin: 10px 0;
    cursor:pointer;
}
.contactinfo ul li .icon{
    display: inline-block;
    width: 30px;
    font-size: 18px;
    color: #03a9f4;
}
.contactinfo ul li .span{
    color: #fff;
    font-weight: 300;
}
.contactinfoeducation{
    margin-bottom: 15px;
    margin-bottom: 1px solid rgba(255,255,255,0.2);
}
.education{
    margin-top: 60px;
    /* margin-bottom: 20px; */
}
.contactinfoeducation ul li  {
    /* margin-bottom: 20px; */
    padding: 10px;
    /* margin: 10px 0; */
    margin-top:10px;
    list-style: none;
}
.contactinfoeducation ul li  h5{
color: #03a9f4;
font-weight: 500;
font-family: sans-serif;
padding: 5px;
}
.contactinfoeducation h4 :nth-child(2){
    /* margin-top: 20px; */
    color: #ffff;
    font-weight: 100;
    font-family: sans-serif;
}
.contactinfoeducation h4{
    color: #ffff;
    font-weight: 100;
    font-family: sans-serif;
}
.title{
    margin-top: 10px;
    margin-bottom: 10px;
}
.title2{
    margin-top: 50px;
    margin-bottom: 20px;
}
.about .box{
    display: flex;
    flex-direction: row;
    margin: 20px 0;
}
.about .box .year_comapany{
    min-width: 150px;
    
}
.about .box .year_comapany h5{
    font-weight: 300;
    color: #848c90;
}
.title3{
    margin-top: 40px;
}
.final h3{
    font-size: 20px;
    margin-top:30px;
}
.skillset{
    margin-top: 20px;
     border-top: 1px solid rgba(255,255,255,0.2); 
}
.skills{
margin-top: 40px;
}
.skills p{
margin-top:20px;
}


</style>
</head>
<body>
<form name="vinform">
<input type="email" onkeyup="sendInfo()" name="v1">Enter your email</input>	<br><br>
</form>
    <div class="container">
        <div class="left_side">
            <div class="profile">
                <h2>Yash Sankhla</h2>
                <br>
                <!-- <br> -->
                <h3>Position</h3>
                
            </div>
            
            <div class="contactinfo">
                <h3 class="contact">CONTACT INFO</h3>
                <ul>
                    <li>
                       <span class="icon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                       <span class="text">+91 8302988456</span>
                    </li>

                    <li>
                        <span class="icon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        <span class="text" id="name">akshijain248@gmail.com</span>
                     </li>

                     <li>
                        <span class="icon"><i class="fa fa-linkedin" aria-hidden="true"></i></span>
                        <span class="text">www.linkedin.com/in/akshi-jain-29a305213/</span>
                     </li>

                     <li>
                        <span class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                        <span class="text">Rajasthan,India</span>
                     </li>
                </ul>
            </div>


            <div class="contactinfoeducation">
                <h3 class="education">EDUCATION</h3>
                <ul>
                    <li>
                       <h5>2020 - 2024</h5>
                       <h4>Bachelors Degree in Computer Science</h4>
                       <h4>University Name</h4>
            
                    </li>

                    <li>
                        <h5>2018 - 2020</h5>
                        <h4>Senior Secondary</h4>
                        <h4>School Name</h4>
             
                     </li>

                    
                </ul>
            </div>
            <div class="skillset">
                <h3 class="skills">TECHNICAL SKILLS</h3>
            </div>
        </div>

        
        <div class="right_side">
            <div class="about">
                <h2 class="title">ABOUT</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus odit at quidem eligendi officia cum voluptates, dolorem autem, maxime neque saepe. Repellendus, unde eligendi sed architecto magni corrupti quam quidem.</p>

                
            </div>
            <div class="about">
                <h2 class="title2">WORK EXPERIENCE</h2>
                <div class="box">
                    <div class="year_comapany">
                        <h5> 2019 - present</h5>
                        <h5>Company Name</h5>
                    </div>
                    <div class="text">
                        <h4>Senior Data Analyst</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus debitis laudantium magni doloribus deleniti voluptatum, incidunt porro nostrum perferendis! Explicabo recusandae veritatis, consequuntur praesentium aut dolorem nesciunt eaque commodi numquam.
                        Minus officia culpa ipsa soluta, id dolore odit animi ratione repellat ducimus dicta reiciendis. Quaerat debitis quod porro soluta ullam in commodi error mollitia. Placeat non sunt atque deleniti possimus.
                        </p>
                    </div>
                </div>
<!-- <br> -->

                <div class="box">
                    <div class="year_comapany">
                        <h5> 2019 - present</h5>
                        <h5>Company Name</h5>
                    </div>
                    <div class="text">
                        <h4>Senior Data Analyst</h4>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus debitis laudantium magni doloribus deleniti voluptatum, incidunt porro nostrum perferendis! Explicabo recusandae veritatis, consequuntur praesentium aut dolorem nesciunt eaque commodi numquam.
                        Minus officia culpa ipsa soluta, id dolore odit animi ratione repellat ducimus dicta reiciendis. Quaerat debitis quod porro soluta ullam in commodi error mollitia. Placeat non sunt atque deleniti possimus.
                        </p>
                    </div>
                </div>

            </div>
            <div class="projects">
                <h2 class="title3">PROJECTS</h2>
                <div class="final">
                <h3>Project 1</h3>
                <p>role description</p>
                <br>
                <h3>Project 2</h3>
                <p>Role decription</p>
            </div>
            </div>
            
        </div>
    </div>
    <button type="button" onkeyup="sendInfo()">Generate Resume</button>
</body>
<script>
/* var request;
function sendInfo() {
	var url = "getEmail.jsp";
	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo;
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}
function getInfo() {
	if (request.readyState == 4) {
		
	}
}  */
var request;
function sendInfo() {
	var v = document.vinform.v1.value;
	console.log(v);
	var url = "getData.jsp?val=" + v;
	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo;
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}
function getInfo() {
	if (request.readyState == 4) {
		var val = JSON.parse(request.responseText); 
		console.log(val.name);
		document.getElementById("name").value = val.name;
		 /* document.getElementById("myage").value = val.Age;
		 document.getElementById("myqualification").value = val.Qualification;
		 document.getElementById("myexperience").value = val.Experience;
		 document.getElementById("myjobtype").value = val.JobType;
		 document.getElementById("myminsal").value = val.Minsal;
		 document.getElementById("myworkplaces").value = val.WorkPlaces;
		 document.getElementById("mycountry").value = val.Country;
		 document.getElementById("myskills").value = val.Skills;
		 document.getElementById("mytechnicalskills").value = val.TechnicalSkills; */
	}
} 

</script>
</html>