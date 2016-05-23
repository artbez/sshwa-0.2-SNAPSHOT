<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
	<head>
		<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<jsp:include page="../../include/scripts.jsp"/>
		<title>Car Market</title>
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
		<header>
			<h1>Error </h1>
		</header>
		<p>
			Your data is not correct. 
		</p>
		<p>
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
