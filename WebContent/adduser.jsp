<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="darkcave.DAO"%>
<%@ page import="darkcave.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User</title>
</head>
<body>
<h1>Added User </h1>
<jsp:useBean id="userInfo" class="darkcave.User">
</jsp:useBean>
<jsp:setProperty property="*" name="userInfo"/>



<%
int i = DAO.addUser(userInfo);
if (i > 0)
out.print("Resource successfully added. We appreciate your contribution!");
else
out.println("Error; Resource not added");
%>
<p>Click <a href="listusers.jsp">Here</a> to return to the resources list</p>
</body>
</html>
