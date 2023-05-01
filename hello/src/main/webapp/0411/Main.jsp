<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type = "text/javascript" src="js.js"></script>
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
#btn_group button:hover{
color:white;
background-color:skyblue;
}

</style>
</head>
<body>

<%
		request.setCharacterEncoding("utf-8");
	
		String number = request.getParameter("number");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String cla = request.getParameter("class");

		//db 연동
		Class.forName("org.mariadb.jdbc.Driver");
	
		String url = "jdbc:mariadb://localhost:3307/jspdb";
		String user = "root";
		String password = "0000";
		
		try(
				Connection con = DriverManager.getConnection(url,user,password);
		) {
			//String sql = "insert into student(number,name,grade,class) values('" + number + "','" + name + "','" + grade + "','"+ cla + "')";
			String sql = "insert into student values(?,?,?,?)";
			
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, number);
				pstmt.setString(2, name);
				pstmt.setString(3, grade);
				pstmt.setString(4, cla);
				pstmt.executeUpdate();
			  
				%><script>
				alert("학생 정보 등록이 완료되었습니다.");
				</script>
				<%
		}catch(Exception e){
			e.printStackTrace();
			%><script>
			alert("이미 등록된 학번입니다.");
			</script>
			<%
		}
%>	

<div class = "hi" >
<h2>학생정보 등록/조회</h2>
		
		<div class = "2div">
			<div id = "btn_group">
			<button class="test_btn" onclick="location.href='St_insert.jsp'">학생정보 등록하기</button>
		
			<button class="test_btn2" onclick="location.href='St_list.jsp'">학생정보 조회하기</button>
			</div>
		</div>
</div>	
</body>
</html>