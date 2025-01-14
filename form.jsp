<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>form</title>
    <!-- <link href="./Static resources/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- <script src="./resources/js/bootstrap.bundle.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>

<body>
    <form name="myForm" action="saveData.jsp" method="POST" onsubmit="return validateForm()">
        <div class="container">
            <h1 style="color: darkblue;" class="text-center my-2 fst-italic ">Resume Generator</h1>
            <br><br>
            <div class="row">
                <div class="col-md-6">
                    <h3>Contact Information</h3><br>
                    <div class="form-group">
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="nameField">Your Name</label><br>
                        <input type="text" name="name" id="nameField" style="border: 1px solid black;" placeholder="Enter here" class="form-control" />
                    </div><br>

                    <div class="form-group">
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="contactField">Contact Number</label><br>
                        <input type="text" name="mobileno" id="contactField" style="border: 1px solid black;" placeholder="Enter here"
                            class="form-control" />
                    </div><br>

                    <div class="form-group">
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="addressField">Location</label><br>
                        <input type="text" name="location" id="location" style="border: 1px solid black;" placeholder="Enter here" class="form-control" />
                    </div><br>
                    
                    <h3 style="margin-bottom: -15px;">Links</h3><br>
                    <div class="form-group mt-2">
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="linkedField">LinkedIn</label>
                        <input type="text" name="LinkedIn" id="linkedField" style="border: 1px solid black;" placeholder="Enter here"
                            class="form-control" />
                    </div>
                    <label for=""></label>

                    <div class="form-group">
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="gmailField">Gmail</label>
                        <input type="text" name="email" id="gmailField"  style="border: 1px solid black;" placeholder="Enter here" class="form-control"
                            name="em" />
                    </div><br>
                    <div class="form-group mt-2" id="we"><br>
                        <h3>Education Qualification</h3><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Institution</label></div>
                            <div class="col-lg-9"><input type="text" name="clgname1" id="clgname1" class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Passing Year</label></div>
                            <div class="col-lg-9"><input type="number" name="year1" id="year1" class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Degree</label></div>
                            <div class="col-lg-9"><input type="TEXT" name="degree1" id="degree1" class="form-control" style="border: 1px solid black;"></div>
                        </div>
                        <label for="">  </label>
                        <div><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Enter your Second Education Qualification</label></div>
                        <label for="">  </label>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Institution</label></div>
                            <div class="col-lg-9"><input type="text" name="clgname2"  class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Passing Year</label></div>
                            <div class="col-lg-9"><input type="number" name="year2" class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Degree</label></div>
                            <div class="col-lg-9"><input type="TEXT" name="degree2" class="form-control" style="border: 1px solid black;"></div>
                        </div>
                        <!-- <div class="container text-center my-2" id=weAddButton> -->
                        <!-- <button onclick="addNewWEField()"  class="btn-btn-primary btn-sm">Add</button> -->
                        <!-- </div> -->
                    </div>



                </div>
                <div class="col-md-6">
                    <h3>Professional Summary</h3><br>
                    <div class="form-group">
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Objective</label>
                        <textarea type="text" name="about" style="border: 1px solid black;" placeholder="Enter here" class="form-control" weField>
					</textarea>
                    </div>

                    <div class="form-group mt-2" id="we"><br>
                        <h3>Work Experience</h3><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Company Name</label></div>
                            <div class="col-lg-9"><input type="text" name="company1" class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Role</label></div>
                            <div class="col-lg-9"><input type="text" name="Designation1" class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Key Responsibilities</label>
                        <textarea type="text" style="border: 1px solid black;" placeholder="Enter here" name="Role1" class="form-control" weField>
					</textarea> 
                        <label for="">  </label>
                        <div><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="" >Enter your Second Work Experience</label></div>
                         <label for="">  </label>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Company Name</label></div>
                            <div class="col-lg-9"><input type="text" name="company2" class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <div class="row">
                            <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Role</label></div>
                            <div class="col-lg-9"><input type="text" name="Designation2" class="form-control" style="border: 1px solid black;"></div>
                        </div><br>
                        <label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Key Responsibilities</label>
                        <textarea type="text"  style="border: 1px solid black;" placeholder="Enter here" name="Role2" class="form-control" weField>
					</textarea>

                        <!-- <div class="container text-center my-2" id=weAddButton> -->
                        <!-- <button onclick="addNewWEField()" class="btn-btn-primary btn-sm">Add</button> -->
                        <!-- </div> -->
                    </div>
                    <div><label for="">    </label></div>
                    <h3>Technical Skills</h3><br>
                    <div class="row">
                        <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Programming Languages</label></div>
                        <div class="col-lg-9"><input type="text" name="progLang" class="form-control" style="border: 1px solid black;"></div>
                    </div><br>
                    <div class="row">
                        <div class="col-lg-3"><label style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" for="">Platforms</label></div>
                        <div class="col-lg-9"><input type="text" name="platforms" class="form-control" style="border: 1px solid black;"></div>
                    </div><br>

                </div>

            </div>
             <label for="">  </label>
            <div class="container d-grid gap-2">
            <button value = "Submit" class="btn btn-primary btn-lg btn-block" onclick="gotomanyTemplates()">Generate CV</button>
            </div>
        </div>
    </form>
    <script>
    /* function gotomanyTemplates(){
    	window.open("manyTemplatees.jsp");
    } */
    
    function validateForm() {
		let con = true;
		let a = document.forms["myForm"]["name"].value;
		if (a == "") {
			document.getElementById('nameField').style.border = '2px solid red';
			con = false;
		}                                                      
		let b = document.forms["myForm"]["mobileno"].value;
		if (b == "") {
			document.getElementById('contactField').style.border = '2px solid red';
			con = false;
		}

		let c = document.forms["myForm"]["location"].value;
		if (c == "") {
			console.log('no.');
			document.getElementById('location').style.border = '2px solid red';
			con = false;
		}
		let d = document.forms["myForm"]["LinkenIn"].value;
		if (b == "") {
			document.getElementById('LinkedField').style.border = '2px solid red';
			con = false;
		}
		let e = document.forms["myForm"]["email"].value;
		if (e == "") {
			document.getElementById('gmailField').style.border = '2px solid red';
			con = false;
		}
		let f = document.forms["myForm"]["clgname1"].value;
		if (f == "") {
			document.getElementById('clgname1').style.border = '2px solid red';
			con = false;
		}
		let g = document.forms["myForm"]["year1"].value;
		if (g == "") {
			document.getElementById('year1').style.border = '2px solid red';
			con = false;
		}
		let h = document.forms["myForm"]["degree1"].value;
		if (h == "") {
			document.getElementById('degree1').style.border = '2px solid red';
			con = false;
		}
		else {
			alert("record saved");
		}
		return con;
	}
        <!-- var request;
          function sendInfo() {
              var v = document.myForm.email.value;
              var url = "Template.jsp?val=" + v;
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
                   document.getElementById("myage").value = val.Age;
                   document.getElementById("myqualification").value = val.Qualification;
                   document.getElementById("myexperience").value = val.Experience;
                   document.getElementById("myjobtype").value = val.JobType;
                   document.getElementById("myminsal").value = val.Minsal;
                   document.getElementById("myworkplaces").value = val.WorkPlaces;
                   document.getElementById("mycountry").value = val.Country;
                   document.getElementById("myskills").value = val.Skills;
                   document.getElementById("mytechnicalskills").value = val.TechnicalSkills;
              }
          } -->
    </script>
</body>	