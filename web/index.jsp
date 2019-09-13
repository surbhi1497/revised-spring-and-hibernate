<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 26-06-2019
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% response.sendRedirect("customer/list");%>
<html>
<head>
  <title>$Title$</title>
</head>
<body>

<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.io.PrintWriter" %>
<%

  String user = "spring_student";
  String pass = "spring_student";

  String jdbcUrl = "jdbc:mysql://localhost:3306/web_customer_tracker?useSSL=false&serverTimezone=UTC";
  String driver = "com.mysql.cj.jdbc.Driver";


  try {


    out.println("Connecting to "+jdbcUrl);

    Class.forName(driver);

    Connection myConn = DriverManager.getConnection(jdbcUrl,user,pass);

    out.println("SUCCESS!!!");

    myConn.close();

  }
  catch (Exception exc) {
    exc.printStackTrace();
    throw new ServletException(exc);
  }

%>
</body>
</html>