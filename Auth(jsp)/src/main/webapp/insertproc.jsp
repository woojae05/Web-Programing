<%@page import="ex0405.MemberDBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String u = request.getParameter("username");
	String p = request.getParameter("passwrod");
	
	MemberDBManager mdm = new MemberDBManager();
	
	mdm.doInsert(u, p);
	
	System.out.println("insert 했음");
	
	response.sendRedirect("select.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>