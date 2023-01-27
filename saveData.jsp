<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="resume" class="com.resumebuilder.org.model.ResumeBuilder"/>
	<jsp:useBean id="resumeRepo" class="com.resumebuilder.org.repository.ResumeBuilderRepository"/>
	
	<%
		try{
			String email = request.getParameter("email");
			resume.setName(request.getParameter("name"));
			resume.setMobNo(request.getParameter("mobileno"));
			resume.setEmail(request.getParameter("email"));
			resume.setLocation(request.getParameter("location"));
			resume.setLinkedIn(request.getParameter("LinkedIn"));
			resume.setClgName1(request.getParameter("clgname1"));
			resume.setDegree1(request.getParameter("degree1"));
			resume.setYear1(Integer.parseInt(request.getParameter("year1")));
			resume.setYear2(Integer.parseInt(request.getParameter("year2")));
			/* System.out.println(Integer.parseInt(request.getParameter("year2")));
			System.out.println(Integer.parseInt(request.getParameter("year1"))); */
			resume.setClgName2(request.getParameter("clgname2"));
			resume.setDegree2(request.getParameter("degree2"));
			resume.setAbout(request.getParameter("about"));
			resume.setCompany1(request.getParameter("company1"));
			resume.setCompany2(request.getParameter("company2"));
			resume.setRole1(request.getParameter("Role1"));
			resume.setRole2(request.getParameter("Role2"));
			resume.setProgLang(request.getParameter("progLang"));
			resume.setPlatforms(request.getParameter("platforms"));
	
			resume.setDesignation1(request.getParameter("Designation1"));
			resume.setDesignation2(request.getParameter("Designation2"));
			resume.setProgLang(request.getParameter("progLang"));
			resumeRepo.saveEmployee(resume);
			String redirectURL = "manyTemplatees.jsp";
		    response.sendRedirect(redirectURL);
		}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>