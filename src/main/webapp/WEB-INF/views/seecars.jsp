<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>	
	<jsp:include page="../../include/scripts.jsp"/>
	<title>Hello World</title>
</head>

	<body>
		<%@ include file="../../include/navbar.jsp" %>
		
	 <!-- Page Content -->
    <div class="container">
		
        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Cars information</h1>
            </div>
			<c:forEach items="${cars}" var="item">
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="http://placehold.it/400x300" alt="" onclick="$('#listOfCarProp').toggle();">
                    <ul class="list-group" style="display: none" id="listOfCarProp">
  						<li class="list-group-item">
    						${item.carMake}
  						</li>
			  			<li class="list-group-item">
			    			${item.mileage}
			  			</li>
			  			<li class="list-group-item">
			    			${item.year}
			  			</li>
			  			<li class="list-group-item">
			    			${item.price}
			  			</li>
					</ul>
		        </a>
            </div>
            </c:forEach>
        </div>
    

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
</body>
</html>