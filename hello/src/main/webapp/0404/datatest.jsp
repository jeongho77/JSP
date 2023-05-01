<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "java.sql.*"
    %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
			//jdbc 드라이버 등록
			Class.forName("org.mariadb.jdbc.Driver");
	
			//2. DB 연결 정보
			String url = "jdbc:mariadb://localhost:3307/jspdb";
			String user = "jsp";
			String password = "1111";
			
			
			//3. 
			Connection con = DriverManager.getConnection(url, user, password);
			
			Statement stmt = con.createStatement();
		
			//4 sql문 실행
			String sql = "select * from member";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				out.println(rs.getString("id"));
				out.println(rs.getString("pwd"));
			}
			rs.close();
			stmt.close();
			con.close();
			
			
	%>
	
	
</body>
</html>