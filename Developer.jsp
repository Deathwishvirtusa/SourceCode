<%@page import="com.virtusa.issuetrack.DAOoperation"%>
<%@page import="java.sql.ResultSet"%>
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
		Connection con;
	 	PreparedStatement pst;
        con=DaoConnection.getConnection();
        String name=(String)session.getAttribute("name");
        String cmd="select issue_id,issue_desc,issue_status,rating from issue where dev_id=?";
        pst=con.prepareStatement(cmd);
        pst.setString(1,name);
        ResultSet rs=pst.executeQuery();
   	%>
			<br/><h2>list of issue Asigned by Admin :</h2> <br/>							
		
		<table border="1">
		<form action="Developer.jsp" method="post">
		
			<tr>
			<th><h3>Issue_Id&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Issue_desc&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Issue_status&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Rating&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Update Issue_status&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Submit&nbsp;&nbsp;&nbsp;</h3></th>
			</tr>
		<%
		
		while(rs.next()) 
		{					
			String issue_id = rs.getString("issue_id");						
			String issue_desc = rs.getString("issue_desc");
			String issue_status = rs.getString("issue_status");
			String rating=rs.getString("rating");
			%>
			<tr><td><%= issue_id%></td>
			<td><%=issue_desc %></td>
			<td><%=issue_status %></td>
			<td><%=rating %></td>
			<td><input type="text" name="status"/></td>
        	<td><input type="submit" value="Update" colspan="2" /></td></tr>
			<%
		}
   %>
</form></table>
</body>
</html>
