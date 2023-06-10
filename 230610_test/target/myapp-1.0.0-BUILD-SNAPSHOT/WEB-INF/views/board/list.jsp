<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; chares=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form name="userform">
<table>
	<thead>
		<tr>
			<th scope="col">번호</th>
			<th scope="col">ID</th>
			<th scope="col">이름</th>
			<th scope="col">작성일</th>
			<th scope="col">작성 시간</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.no}&nbsp;</td>
			<td>${list.id}&nbsp;</td>
			<td>${list.name}</td>
			<td><fmt:formatDate value="${list.date}" pattern="yyyy/MM/dd" /></td>
			<td><fmt:formatDate value="${list.time}" pattern="HH:mm:ss" /></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</form>
</body>
</html>