<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>게시판</title>
</head>	
<body>

		<form action="4-2result.jsp" method="post">
			<table>
				<colgroup>
					<col width="15%">
					<col width="*" />
				</colgroup>
			<caption>게시글 작성</caption>
				<tbody>
						<tr>
								<th scope="row">닉네임</th>
								<td><input type="text" id="name" name="name"/></td>
						</tr>
						<tr>
								<th scope="row">제목</th>
								<td><input type="text" id="title" name="title"/></td>
								
						</tr>
						<tr>
							<td colspan="2">
									<textarea rows="10" cols="50" name=text></textarea>
							</td>
						</tr>
				 </tbody>
			</table>
							<button type="submit">글 쓰기</button>
		</form>			
				
</body>
</html>