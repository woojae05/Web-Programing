<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		font-family:''Black Han Sans';
	}
	
	#loginBtn{
		width:50px;
		height:50px;
		margin-left: 10px;
		display: flex;
		justify-content: center;
	}
	
	.loginBox{
		position:absolute;
		right:60px;
		width:200px;
		display:flex;
		align-items: center;
		justify-content: center;
	}
	
	#user{
		position: absolute;
		right: 70px;
		top:15px;
	}
	
	
	
	
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">DGSW</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="insert.jsp">insert</a>
        <a class="nav-link" href="select.jsp">select</a>
        <a class="nav-link" href="#">delete</a>
        <a class="nav-link disabled">update</a>
      </div>
    </div>
  </div>
  <%
  String userName = (String) session.getAttribute("userName");
  if(userName == null){
	 %>
	  <form class="loginBox" action="loginProc.jsp">
	  <div>
	  	<input type="text" placeholder="id" name="userName"/>
	  	<input type="password" placeholder="password" name="password"/>
	  </div>
	  	<input type="submit" value="login" class="btn btn-primary" id="loginBtn"/>
	  </form>
	  <%
  }else{
	  out.println("<p id='user'>"+userName+"님</p>");
	  %>
	  <a href="logout.jsp" id="logoutBtn" style="position: absolute; right: 5px">로그아웃</a>
	  <% 
	  
  }
  %>
</nav>
	<script type="text/javascript"> 
		const logoutBtn = document.querySelector("#logoutBtn");
		logoutBtn.addEventListener('click',()=>{alert("로그아웃")});
	</script>
</body>
</html>