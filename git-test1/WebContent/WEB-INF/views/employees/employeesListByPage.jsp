<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사원목록 페이징</h1>
	<table>
		<tr>
			<th>emp_no</th>
			<th>birth_date</th>
			<th>first_name</th>
			<th>last_name</th>
			<th>gender</th>
			<th>hire_date</th>
		</tr>
		<c:forEach var="i" items = "${list }">
			<tr>
				<td>${i.empNo }</td>
				<td>${i.birthDate }</td>
				<td>${i.firstName }</td>
				<td>${i.lastName }</td>
				<td>${i.gender }</td>
				<td>${i.hireDate }</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<c:if test="${currentPage > 1 }">	<!-- if문과 같음  if(currentPage >1) -->
			<a href="${pageContext.request.contextPath}/employees/getEmployeesListByPage?currentPage=${currentPage-1}">이전</a>
		</c:if>
		<c:if test="${currentPage < lastPage }">
			<a href ="${pageContext.request.contextPath}/employees/getEmployeesListByPage?currentPage=${currentPage+1}">다음</a>
		</c:if>
	</div>
</body>
</html>