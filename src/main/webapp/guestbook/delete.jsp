<%@page import="himedia.GuestBookDao.GuestBookDaoOracleImpl"%>
<%@page import="himedia.GuestBookDao.GuestVo"%>
<%@page import="himedia.GuestBookDao.GuestBookDao"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>


<%
String password = request.getParameter("password");

ServletContext servletContext = getServletContext();
String dbuser = servletContext.getInitParameter("dbuser");
String dbpass = servletContext.getInitParameter("dbpass");

GuestBookDao dao = new GuestBookDaoOracleImpl(dbuser, dbpass);

Long no = Long.parseLong(request.getParameter("id"));
GuestVo vo = dao.get(no);

if (password.equals(vo.getPassword())) {
	dao.delete(vo);
	response.sendRedirect(request.getContextPath()+"/guestbook/list.jsp");
} else {
	
	%>
	<h1>비밀번호가 일치하지 않습니다.</h1>
	<a href="<%= request.getContextPath() %>">메인으로 돌아가기</a>
	<%
}


%>