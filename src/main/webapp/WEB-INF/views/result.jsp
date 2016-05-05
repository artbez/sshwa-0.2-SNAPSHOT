<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<jsp:include page="../../include/scripts.jsp"/>
    <title>Added</title>
</head>
<body>
<%@ include file="../../include/navbar.jsp" %>
<h2>Submitted Car Information</h2>
   <table>
    <tr>
        <td>Car make</td>
        <td>${carMake}</td>
    </tr>
    <tr>
        <td>Mileage</td>
        <td>${mileage}</td>
    </tr>
    <tr>
        <td>Creation year</td>
        <td>${year}</td>
    </tr>
    <tr>
    	<td>Price</td>
    	<td>${price}</td>
    </tr>
</table>  
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