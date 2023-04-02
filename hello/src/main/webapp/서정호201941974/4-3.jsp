<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	
			<form action="4-3result.jsp" method="post">
				<table>
					<colgroup>
							<col width="15%">
							<col width="*" />
					</colgroup>
				<caption><h1>회원가입</h1></caption>
					<tbody>
							<tr>
									<th scope="row">이름  </th>
									<td><input type = "text" name = "name"></td>
							</tr>
							<tr>
									<th scope="row">아이디 </th>
									<td><input type = "text" name = "id"></td>
							</tr>
							<tr>
									<th scope="row">비밀번호  </th>
									<td><input type = "password" name = "passwd"></td>
							</tr>
							<tr>
									<th scope="row">비밀번호 확인 </th>
									<td><input type = "password" name = "repasswd"></td>
							</tr>
							<tr>
									<th scope="row">취미 </th>
									<td>
									    <input type="checkbox" name="hobby" value="게임">게임
		    							<input type="checkbox" name="hobby" value="공부">공부 
		    							<input type="checkbox" name="hobby" value="맛집탐방">맛집탐방
		    							<input type="checkbox" name="hobby" value="노래방">노래방
		    							<input type="checkbox" name="hobby" value="운동">운동
		    							<input type="checkbox" name="hobby" value="여행가기">여행가기
		    							
		    					</td>
							</tr>
							<tr>
							<th scope="row">전공 </th>
									<td>
											<select name="major">
	  	    						<option value="컴퓨터전공">컴퓨터전공</option>
  	      						<option value="국문학과전공">국문학과전공</option>
          						<option value="보건전공">보건전공</option>
          						<option value="식품영양학과전공">식품영양학과전공</option>
          						<option value="해당 없음">해당 없음</option>
          						</select>
          				</td>
          		</tr>
          		<tr>
          			 <td>
          						<input type = "submit" value= "회원가입"> 
           			</td>
          		</tr>
      </select>
							
							

			
			</form>

</body>
</html>