<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action = "write.jsp" method ="post">


	이름:<input type ="text" size= "20" name= "name"> <br>
	
	비밀번호:<input type="text" size ="20" name ="password" > <br>
	
	소감:<input type ="text" size ="80" name="content" > <br>
	
	<input type ="submit" value="작성하기"> <br>
	
</form>




</body>
</html>