<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="darkcave.DAO"%>
<%@ page import="darkcave.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Users</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="jquery-ui/jquery-ui.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/comment_style.css">

<script type="text/javascript" src="jquery.min.js"></script>
<!-- <script src="jquery-ui/external/jquery/jquery.js"></script> -->
<script src="jquery-ui/jquery-ui.js"></script>


</head>
<body>
	<h1>Our Resources Include:</h1>

	<div class="container">
		<div class="header clearfix">
			<nav>
			<ul class="nav nav-pills pull-right">
				<li role="presentation" class="active"><a href="index.html">Home</a></li>
			</ul>
			</nav>
		</div>
		<%
			List<User> users = DAO.getAllUsers();

			for (User u : users) {
				out.println("<div class=\"comment_div img-responsive\"><p class=\"name\">Posted By:" + u.getName()
						+ "</p><p class=\"comment\"><wbr>" + u.getPassword() + "<span></p><p class=\"time\">"
						+ "  <span class=\"link-icon\"><a href=\"" + u.getFullname() + "\">" + u.getEmail()
						+ "</a><span></p></div>");
			}
		%>


		<!--  
<%//List<User> users = DAO.getAllUsers(); 

			//for (User u: users) {
			//	out.println ("<tr><td>" + u.getName() + "</td><td>" +
			//		u.getPassword() + "</td><td>" + u.getEmail() 
			//		+ "</td><td>" + u.getFullname() + "</td></tr>");}%>  -->


		<script type="text/javascript">
			$("#tbody tr").sortable();
			$("#tbody tr").disableSelection();
		</script>
</body>
</html>