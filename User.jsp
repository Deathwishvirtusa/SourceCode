<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.virtusa.issuetrack.DaoConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.virtusa.issuetrack.DAOoperation"%>
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
        DAOoperation dao=new DAOoperation();
        String id=dao.generateissueId();
        Connection con=DaoConnection.getConnection();
        String cmd="insert into issue(issue_id,issue_desc,issue_status) values(?,?,?)";
        PreparedStatement pst=con.prepareStatement(cmd);
        pst.setString(1,id);
        pst.setString(2,request.getParameter("Description"));
        pst.setString(3,"pending");
        pst.executeUpdate();   
        out.println("issue submitted");
    %>
   

</body>
</html>
