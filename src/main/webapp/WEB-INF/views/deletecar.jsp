<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<jsp:include page="../../include/scripts.jsp"/>
<title>Delete car page</title>

</head>
<body>
<%@ include file="../../include/navbar.jsp" %>
<style>
   body { 
   		margin: 0; /* Убираем отступы */
   }.mine {
   		margin: 2%;
   }
 </style>
 <div class = "mine">
	<h2>Delete by id</h2>
	<form:form method="POST" action="/sshwa/deleteCurCar" enctype="multipart/form-data" >
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	<style>
   table {
    border-spacing: 7px 11px; /* Расстояние между ячейками */ 
   }
   td {
    padding: 5px; /* Поля вокруг текста */ 
   }
  </style>
		<table cellpadding=10>
			<tr>
				<td>Enter Id</td>
				
				<td><input type="number" name="carId" /></td>
				
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
</div>
</body>
</html>