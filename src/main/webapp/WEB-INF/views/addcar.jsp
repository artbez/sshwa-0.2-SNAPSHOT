<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Spring MVC Form Handling</title>
</head>
<body>

	<h2>Car Information</h2>
	<form:form method="POST" action="/sshwa/getCurrentCar" modelAttribute="car">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
		<table>
			<tr>
				<td><form:label path="carMake">Car make</form:label></td>
				<td><form:input path="carMake" /></td>
			</tr>
			<tr>
				<td><form:label path="mileage">Mileage</form:label></td>
				<td><form:input path="mileage" /></td>
			</tr>
			<tr>
				<td><form:label path="year">Year of creation</form:label></td>
				<td><form:input path="year" /></td>
			</tr>
			<tr>
				<td><form:label path="price">Price</form:label></td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>