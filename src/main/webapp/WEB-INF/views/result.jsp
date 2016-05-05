<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

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
</body>
</html>