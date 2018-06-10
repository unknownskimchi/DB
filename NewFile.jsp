<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<table>
<tr><th>이름</th><th>소감</th></tr> 
 <% 
 
 
 
 Connection con = null; 
 //	PreparedStatement pstmt = null; 
 	//ResultSet rs = null; 
 	String driver ="oracle.jdbc.driver.OracleDriver";
 	String url = "jdbc:oracle:thin:@localhost:1521:XE"; 
 	String user = "YJH"; 
 	String pw = "342156";  	
 	String sql = "select * from comments"; 
  
 	Class.forName(driver); 
 	
 	con = DriverManager.getConnection(url, user, pw); 
 	Statement st = con.createStatement();
 	ResultSet rs = st.executeQuery(sql);
 	
 	while(rs.next())	 
    	 { 
 		
 		String name = rs.getString(1); 
 		String pass = rs.getString(2);
 		String content = rs.getString(3); 
 		 
%> 
 	
 	
 		<tr><td><%=name %></td>
 			<td><%=content %></td>
 			
 		</tr>
 		
 	<% 
 		 }
 	
    
	st.close();
 	con.close();
 %> 
 </table> 
 
 <div class ="container">
 
 <a href = "writeform.jsp"> 추가하기</a> &nbsp;&nbsp;
		<a href = "deleteform.jsp">삭제하기</a> <br>
 
 
 
 </div>


</body>
</html>