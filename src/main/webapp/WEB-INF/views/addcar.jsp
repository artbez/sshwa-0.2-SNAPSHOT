<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<jsp:include page="../../include/scripts.jsp"/>
<title>Add car page</title>

</head>
<body>
<%@ include file="../../include/navbar.jsp" %>
	<h2>Car Information</h2>
	<form:form method="POST" action="/sshwa/getCurrentCar" enctype="multipart/form-data">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
		<table>
			<tr>
				<td>Car make</td>
				<td><input name="carMake" /></td>
			</tr>
			<tr>
				<td>Mileage</td>
				<td><input name="mileage" /></td>
			</tr>
			<tr>
				<td>Year of creation</td>
				<td><input name="year" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input name="price" /></td>
			</tr>
			 <tr>
			<th>Image (in JPEG format only):</th>
			<td><input name="fileUpload" type="file"/>
			</tr>
		
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
			
		</table>
	</form:form>
	<!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Vaaasin & Co 2016</p>
                </div>
            </div>
        </footer>
</body>
</html>