<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.dao.bean.User" %>

<jsp:useBean id="u" class="com.dao.UserDao"></jsp:useBean>

<jsp:setProperty property="*" name="u"/>

<% 
String id = request.getParameter("id");
int i = User.closeTicket(Integer.parseInt(id));
response.sendRedirect("adminViewReports.jsp");


%>




</body>
</html>