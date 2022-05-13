<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="ex0405.MemberDBManager" %>
    <%@page import="ex0405.Member" %>
<!DOCTYPE html>
 <%
	String id = request.getParameter("id");
	MemberDBManager mdm = new MemberDBManager();
	Member member =  mdm.doSelectOne(id);
/* 	System.out.println(member.getId()); */
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.container{
		height:80vh;
		display:flex;
		align-items: center;
		justify-content: center;
	}
	form{
		width: 400px;
	}
</style>
<body >
<%@ include file="nav.jsp" %>
<h1>Update 페이지</h1>
<div class="text-center container" >
<main class="text-center">
  <form action="updateProc.jsp">
  <input type="hidden" name="id" value="<%=id%>"/>
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="username" value="<%=member.getUsername()%>">
      <label for="floatingInput">User name</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" value="<%=member.getPassword()%>">
      <label for="floatingPassword">Password</label>
    </div>
    <br>

    
    <input class="w-100 btn btn-lg btn-primary" type="submit" value="수정"></input>
    <p class="mt-5 mb-3 text-muted">© 2017–2021</p>
  </form>
</main>
</div>
</body>
</html>