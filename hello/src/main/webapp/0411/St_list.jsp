    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%  
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String id, grade, cla;

		//db 연동
		Class.forName("org.mariadb.jdbc.Driver");

		String url = "jdbc:mariadb://localhost:3307/jspdb";
		String user = "root";
		String password = "0000";

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
   .container {
      width: 70%;
      }
      
</style>
<title>조회하기</title>
</head>
<body>
<h2>조회하기</h2>
<hr>
<% 
		try(
				Connection con = DriverManager.getConnection(url,user,password);
		) {
				String sql = "select * from student";
			
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
%>
<div class="container">
      <div class="row">
         <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
            <thead>
               <tr>
                  <th>학번</th>
                  <th>이름</th>
                  <th>학년</th>
                  <th>선택과목</th>
               </tr>
            </thead>
<% 				
				while(rs.next()) {
					id = rs.getString("id");
					name = rs.getString("NAME2");
					grade = rs.getString("grade");
					cla = rs.getString("class");
					%>
					<tbody>
               <tr>               
          		    <td><a href='update_form.jsp?id=<%=rs.getString("id") %>'><%=rs.getString("id") %> </a></td>
          		    <td><%=name %></td>
             		  <td><%=grade %></td>
              		<td><%=cla %></td>    
         			</tr>
          </tbody>
					<% 
				}
				rs.close();
				
			}catch(Exception e){
			e.printStackTrace();
		}
	
%>	
	
		<form action="index.jsp">
		
		<button type = submit> 첫화면으로 </button>		
	</form>
		
		
		
		</form>
</body>
</html>