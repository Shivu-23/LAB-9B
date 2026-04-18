<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Check</title>
</head>
<body>

<h2>Session Value Page</h2>

<%
String name = (String) session.getAttribute("user");

if(name == null) {
    out.print("<b style='color:red;'>Sorry, session has expired!</b>");
} else {
    out.print("<b>Hello " + name + "</b>");
}
%>

<br><br>
<a href="index.html">Go Back</a>

</body>
</html>