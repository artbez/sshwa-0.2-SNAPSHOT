<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<jsp:include page="../../include/scripts.jsp"/>
    <title>About page</title>
</head>
<body>
<%@ include file="../../include/navbar.jsp" %>
<h2>About us</h2>
   <table>
    <tr>
        <td><img src="resources/images/dima.jpg" alt="Dima" class="img-rounded" width="400" height="250"></td>
        <td>
        <div>
        <p>Dmitrii Vasin</p>
        <p>dimasya.vasin@mail.ru</p>
        </div></td>
    </tr>
    <tr>
        <td><img src="<c:url value='/resources/images/disa.jpg'/>" alt="Disa" class="img-rounded"></td>
         <td>
        <div>
        <p>Denis Korneev</p>
        <p>dzuzi.us3@yandex.ru</p>
        </div></td>
         
    </tr>
    <tr>
         <td><img src="resources/images/pavel.jpg" alt="Disa" class="img-rounded" width="400" height="400"></td>
        <td>
         <div>
        <p>Pavel Ivanov</p>
        <p>tudeski.pro@gmail.com</p>
        </div></td>
        
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