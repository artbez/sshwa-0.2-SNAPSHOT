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
		<header>
			<h1>Title : Here car market application </h1>
		</header>
		<p>
		Here you can see all added cars if you are registered as user. To do this choose "see cars" in the bottom menu. 
		</p>
		<p>
		Also if you are admin, you can add new cars and delete existing. 
		</p>
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
