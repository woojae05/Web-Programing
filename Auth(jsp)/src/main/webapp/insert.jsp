<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	.insert{
		width:500px;
		height:600px;
	}
</style>
<body >
<%@ include file="nav.jsp" %>
<div class="text-center container" >
<main class="form-signin">
  <form action="insertproc.jsp"class="insert">
      <img src="https://cdn3.iconfinder.com/data/icons/logos-and-brands-adobe/512/181_Java-512.png" width="150px" height="150px" alt="javaImg" />
    <h1 class="h3 mb-3 fw-normal">Please sign up</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="username">
      <label for="floatingInput">User name</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="passwrod"></input>
      <label for="floatingPassword">Password </label>
    </div>
	<br>
    <input class="w-100 btn btn-lg btn-primary" type="submit" value="저장"></input>
    <p class="mt-5 mb-3 text-muted">© 2017–2021</p>
  </form>
</main>
</div>
</body>
</html>