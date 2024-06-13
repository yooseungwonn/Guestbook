<%@page import="himedia.GuestBookDao.GuestVo"%>
<%@page import="himedia.GuestBookDao.GuestBookDao"%>
<%@page import="himedia.GuestBookDao.GuestBookDaoOracleImpl"%>
<%@ page import = "java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<%



	String name = request.getParameter("name");
	if (name == "")
		name = "익명";	
	String pass = request.getParameter("password");
	String content = request.getParameter("content");
	
	ServletContext servletContext = getServletContext();
	String dbuser = servletContext.getInitParameter("dbuser");
	String dbpass = servletContext.getInitParameter("dbpass");
	
	
	
	GuestVo vo = new GuestVo(name, pass, content);
	GuestBookDao dao = new GuestBookDaoOracleImpl(dbuser, dbpass);
	

	boolean success = dao.insert(vo);
	
	if (success)
		response.sendRedirect(request.getContextPath() + "/guestbook/list.jsp");
	else {
		%>
		<h1>Error</h1>
		<p>데이터 입력 중 오류가 발생했습니다</p>
		<%
	}
	
%>