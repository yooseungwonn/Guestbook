<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ServletContext context = getServletContext();
%>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="POST" action="<%= context.getContextPath()%>/guestbook/delete.jsp">
	<input type='hidden' name="id" value="<%= request.getParameter("no")%>">

	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="확인"></td>
			<td><a href="<%= request.getContextPath() %>">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
</html>