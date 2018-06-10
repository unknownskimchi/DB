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

<% 
request.setCharacterEncoding("UTF-8"); 
 	String name=request.getParameter("name"); 
 	
 	Connection con = null; 
 	PreparedStatement pstmt = null; 
 	String url = "jdbc:oracle:thin:@localhost:1521:XE"; 
 	String user = "YJH"; 
 	String pw = "342156"; 
 	String driver ="oracle.jdbc.driver.OracleDriver";
 	
 	String sql="delete from comments where name=?"; 
  
 	Class.forName(driver); 
 	con = DriverManager.getConnection(url, user, pw); 
 	pstmt = con.prepareStatement(sql); 
 	pstmt.setString(1, name); 
 	
 	pstmt.executeUpdate(); 
 	 
 	pstmt.close(); 
 	con.close(); 
 	
 
 response.sendRedirect("NewFile.jsp"); 
 
%>

</body>
</html>