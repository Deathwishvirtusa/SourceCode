<%@page import="com.virtusa.issuetrack.DAOoperation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.virtusa.issuetrack.DaoConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Example</title>
</head>
<body>
	<%
		Connection con = DaoConnection.getConnection();
		String cmd = "select roles from users where username=? and password=?";
		PreparedStatement pst = con.prepareStatement(cmd);
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		pst.setString(1, username);
		pst.setString(2, password);
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			String role = rs.getString("roles");
			if (role.equals("user")) {
	%>
	<jsp:forward page="user.html" />
	<%
		} else if (role.equals("developer")) {
			session.setAttribute("name", username);
	%>
	<jsp:forward page="Developer.jsp" />
	<%
		} else if (role.equals("admin")) {
	%>
	<jsp:forward page="Admin.jsp" />
	<%
		} else {
				out.println("invalid credentials");
	%>
	<jsp:include page="index.jsp" />
	<%
		}
		}
	%>
	<form method="post" action="index.jsp">
		<center>
			<table border="1" width="40%" cellpadding="5">
				<thead>
					<tr>
						<th colspan="2">Login Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="uname" value="" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" value="" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>
					<tr>
						<td colspan="2">Yet Not Registered!! <a
							href="Registration.html">Register Here</a></td>
					</tr>
				</tbody>
			</table>
		</center>
	</form>
</body>
</html>
