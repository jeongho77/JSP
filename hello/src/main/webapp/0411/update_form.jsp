    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%  
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String id2 = request.getParameter("id");
		
		
		String name, grade, cla;

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
<style>
.hi{
    text-align: center;
    color: green;
    padding: 30px;
}
#test_btn1{
	border-top-left-radius: 5px;
	border-bottom-left-radius:5px;
	margin-right:-4px;
}
.test_btn2{
	border-top-left-radius: 5px;
	border-bottom-left-radius:5px;
	margin-right:-3px;
}
.btn_group button{
border : 1px solid skyblue;
background-color : rbga(0,0,0,0);
color:skyblue;
padding : 5px;
}

</style>
</head>
<body>



<hr>
<div class = "hi">
<h2>학생정보 수정/삭제</h2>
</div>
<% 
		try(
				Connection con = DriverManager.getConnection(url,user,password);
		) {
				String sql = "select * from student where id = '" + id + "'" ;
				//String sql = "select * from student where id = '201941974'" ;
			
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
					id2 = rs.getString("id");
					
					%>
					<tbody>
               <tr>               
          		    <td><%=id %></td>
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

				</table>
	</div>
</div>
<form action= "update_ok.jsp" method = "get">
<div class = "hi" >
		<div class = "2div">
			<div id = "btn_group">
			<form action= "update_ok.jsp" method = "get">
		학번 : <input type="text" name="id" value ="<%=id %>"><br>
		이름 : <input type="text" name="name" required><br>
		학년 : <input type="radio" name="grade" value = "1" checked>1학년
				  <input type="radio" name="grade" value = "2">2학년
					<br>
		<th scope="row">선택과목 :  </th>
			<select name="class">
	 	    	<option value="JAVA">JAVA</option>
	      	<option value="C">C</option>
      </select><br>
		<button type= submit>학생정보 수정하기</button>
		
</form>		
			</div>
	</div>
			
		<hr>
			<form action= "delete_ok.jsp" method = "get">
		학번 : <input type="text" name="id" value ="<%=id %>"><br>
		 <button type= submit>학생정보 삭제하기</button>
		   </form>
		</div>

</form>			
		
		
 
		 
</body>
</html>