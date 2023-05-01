<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    
    Class.forName("org.mariadb.jdbc.Driver");

		String url = "jdbc:mariadb://localhost:3307/jspdb";
		String user = "root";
		String password = "0000";
    
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.hi{
	border: 1px solid;
    text-align: center;
    width: 400px;
    height: 120px;
    color: green;
    text-align-last: center;
    padding: 100px;
}
</style>
</head>
<body>
	<%
	
		try(
				Connection con = DriverManager.getConnection(url,user,password);
		) {
			  String sql = "DELETE FROM `jspdb`.student WHERE ID =  '" + id + "'" ;
			
				PreparedStatement pstmt = con.prepareStatement(sql);
			
				int i = pstmt.executeUpdate();
				
				if(i==1){
					out.println("삭제성공");
				}
			
				
		}catch(Exception e){
			e.printStackTrace();
		}
	
%>
<div class = "hi">
		<form action="St_list.jsp">
		
		<button type = submit> 리스트보기 </button>		
		</form>
</div>