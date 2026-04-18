<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

<h2>Session Started</h2>

<%
String name = request.getParameter("uname");

// Validation
if(name == null || name.trim().equals("")) {
    out.print("Name cannot be empty!");
} else {
    // Store in session
    session.setAttribute("user", name);

    // Set session expiry = 60 seconds
    session.setMaxInactiveInterval(60);

    out.print("<b>Welcome! " + name + "</b><br>");
    out.print("Session has started for: " + name + "<br>");
    out.print("Your name is stored in session object<br>");
    out.print("Session will expire in <b>1 minute</b><br><br>");
}
%>

<a href="second.jsp">Click here to check session value</a>

</body>
</html>