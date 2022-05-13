<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex0405.MemberDBManager" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String id = request.getParameter("id");
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	
	out.println(userName);
	out.println(password);
	
	MemberDBManager mdm = new MemberDBManager();
	
	String result = mdm.doUpdate(id,userName,password);
	
	if(result.equals("success")){
		response.sendRedirect("select.jsp"); 
	}
	

%>