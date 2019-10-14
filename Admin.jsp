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
        String cmd="select issue_id,issue_desc,issue_status from issue";
        pst=con.prepareStatement(cmd);
        ResultSet rs=pst.executeQuery();
        String issue_id="";
   	%>
			<br/><h2>list of issue raised by user :</h2> <br/>							
		
		<table border="1">
		<form action="Update.jsp" method="post">
		
			<tr>
			<th><h3>Issue_Id&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Issue_desc&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Issue_status&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Rating&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Assign to Developer&nbsp;&nbsp;&nbsp;</h3></th>
			<th><h3>Submit&nbsp;&nbsp;&nbsp;</h3></th>
			</tr>
		<%
		
		while(rs.next()) 
		{					
			issue_id = rs.getString("issue_id");						
			String issue_desc = rs.getString("issue_desc");
			String issue_status = rs.getString("issue_status");
			%>
			
			<tr><td><%= issue_id%></td>
			<td><%=issue_desc %></td>
			<td><%=issue_status %></td>
			<%session.setAttribute("issue",issue_id); %>
			<td><select name="rating">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option></select></td>
			<td>
			<% 
			cmd="select username from users where roles='developer'";
			pst=con.prepareStatement(cmd);
		   ResultSet rs1=pst.executeQuery();
		    %>
		    <select name="rating">
		    <%
		    while(rs1.next())
		    {
			%>
        	
			<option value=<%=rs1.getString("username")%>><%=rs1.getString("username")%></option>
			
        	
        	<%} %></select></td>
        	
			<td><input type="submit" value="Update" colspan="2" /></td></tr>
			<%
		}
   %>
   
</form></table>
</body>
</html>
