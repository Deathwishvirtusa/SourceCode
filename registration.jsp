<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.virtusa.issuetrack.DaoConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection con=DaoConnection.getConnection();
	    String cmd="insert into users values(?,?,?,?,?,?,?,?,?)";
	    PreparedStatement pst=con.prepareStatement(cmd);
	    pst.setString(1,request.getParameter("username"));
	    pst.setString(2,request.getParameter("email"));
	    pst.setString(3,request.getParameter("fname"));
	    pst.setString(4,request.getParameter("lname"));
	    pst.setString(5,request.getParameter("phno"));
	    pst.setString(6,request.getParameter("role"));
	    pst.setString(7,request.getParameter("pass"));
	    pst.setString(8,request.getParameter("cpass"));
	    pst.setString(9,request.getParameter("address"));
	    pst.executeUpdate();
	%>
	<jsp:forward page="index.jsp"/>
	

</body>
</html>
