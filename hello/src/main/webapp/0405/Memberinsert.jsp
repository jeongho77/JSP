<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%
	//한글 처리
		request.setCharacterEncoding("utf-8");

	//데이터를 받아와 변수를 처리한다
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

	//db 연동
		Class.forName("org.mariadb.jdbc.Driver");
	
		String url = "jdbc:mariadb://localhost:3307/jspdb";
		String user = "jsp";
		String password = "1111";
		
		try(
				Connection con = DriverManager.getConnection(url,user,password);	
		) {
			//String sql = "insert into member(NAME,ID,PWD) values('" + name + "','" + id + "','" + pwd + "')";
			String sql = "insert into member(name,id,pwd) values(?,?,?)";
			
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pwd);
			out.println(sql);
			
			int i = pstmt.executeUpdate();	
			
			if(i==1){
				out.println("입력성공");
			}

		//6. statement 객체생성
		//Statement stmt = con.createStatement();
		
		}catch(Exception e){
			e.printStackTrace();
		}
%>


이름 : <%=name%><br>
아이디 : <%=id%><br>
비밀번호 : <%=pwd%><br>