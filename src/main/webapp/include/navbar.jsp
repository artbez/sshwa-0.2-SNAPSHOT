<%@ include file="include.jsp" %>

<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css' />"/>

<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value="/helloworld"/>">Home</a>
        </div>
        <div class="navbar-collapse collapse">

            <ul class="nav navbar-nav">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cars<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                    	<li><a href="<c:url value="/forall/seeCars"/>">See cars</a></li>
                        <li><a href="<c:url value="/protected/addCar"/>">Add car</a></li>
                        <li><a href="<c:url value="/protected/deleteCar"/>">Delete car</a></li>
                    </ul>
                </li>

            </ul>

            <ul class="nav navbar-nav navbar-right">

                    
                    <li> <a href="<c:url value="/logout" />"><i class="glyphicon glyphicon-lock"></i>
                            Logout</a>
                       
                    </li>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </ul>

        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->