<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="ex0405.MemberDBManager"%>
<%@page import="ex0405.Member"%>
<%@page import="java.util.List"%>

<%
MemberDBManager mdn = new MemberDBManager();
List<Member> list = mdn.doSelect();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400"
	rel="stylesheet">
<style type="text/css">

</style>
</head>
<body>
	<%@ include file="nav.jsp"%>
	<h1>select 페이지</h1>
	<div class="container">
	<form action="delete.jsp">
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">id</th>
				<th scope="col">userName</th>
				<th scope="col">Password</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Member member : list) {
			%>
			<tr>
				<td><input type="checkbox" name="id" value="<%=member.getId()%>" class="check" /></td>
				<td><%=member.getId()%></td>
				<td><a href="update.jsp?id=<%=member.getId()%>"><%=member.getUsername()%></a></td>
				<td><%=member.getPassword()%></td>
			<tr />
			<%
			}
			%>
		</tbody>
	</table>
		<input type="submit" value="삭제" class="btn btn-outline-danger"  />
	</form>
	</div>
	<script>
/* 		const checked = document.querySelectorAll('input.check');
		for(let i = 0; i<checked.length) */
	</script>
</body>
</html>