<%@ page language="java" contentType="text/html; chares=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!!
</h1>

<P>  The time on the server is ${serverTime}. </P>

<a href='<c:url value='/board/list'/>' role="button" calss="btn btn-outline-info">들어가기</a>

</body>
</html>
