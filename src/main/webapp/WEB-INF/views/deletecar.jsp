<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<jsp:include page="../../include/scripts.jsp"/>
<title>Spring MVC Form Handling</title>

</head>
<body>
<%@ include file="../../include/navbar.jsp" %>
	<h2>Delete by id</h2>
	<form:form method="POST" action="/sshwa/deleteCurCar" enctype="multipart/form-data">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
		<table>
			<tr>
				<td>Enter Id</td>
				<td><input name="carId" /></td>
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