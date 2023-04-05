<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos Page</title>
</head>
<body>
<%
			//Clearing The cache to prevent back to previous page
			// HTTP 1.1
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			// HTTP 1.0
			response.setHeader("Pragma", "no-cache");
			// Proxies
			response.setHeader("Expires", "0");
	if(session.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
	}
%>

<iframe width="560" height="315" src="https://www.youtube.com/embed/cYc3FjhMMzI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<form action="logout">
			<input type="submit" value="Logout">
		</form>
</body>
</html>