<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Gabriela.Barszcz
  Date: 23-Jul-18
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to PS Bank</title>
</head>
<body>
    <div class="container">
        <%@ include file="header.jsp" %>

        <div class="row">
            <div class="col-12">
                <div class="jumbotron">
                    <h1 class="display-4">Welcome to PS Bank</h1>
                    <p class="lead">
                        Happiness = A good bank account, a good cook and a good digestion - Jean
                    </p>
                    <a href="/newAccount" class="btn btn-lg btn-success">Register here</a>
                    <p><br />Existing users: <a href="/user/login">Login here</a></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                <div class="card" >
                    <div class="card-header">Online</div>
                    <img src="<spring:url value='/resource/images/email-filled-closed-envelope.png' />"
                         class="card-img-top" alt="Online">
                    <div class="card-body">
                        <p class="card-text">200+ Transactions via NetBanking</p>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                <div class="card" >
                    <div class="card-header">Phone</div>
                    <img src="<spring:url value='/resource/images/telephone.png' />"
                         class="card-img-top" alt="Phone">
                    <div class="card-body">
                        <p class="card-text">75+ Transactions</p>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                <div class="card" >
                    <div class="card-header">Social Media</div>
                    <img src="<spring:url value='/resource/images/people-silhouettes.png' />"
                         class="card-img-top" alt="Social Media">
                    <div class="card-body">
                        <p class="card-text">Social Media-Chatting</p>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                <div class="card" >
                    <div class="card-header">Watch</div>
                    <img src="<spring:url value='/resource/images/clock-filled-circular-tool.png' />"
                         class="card-img-top" alt="Watch">
                    <div class="card-body">
                        <p class="card-text">Banking at the flick of a wrist</p>
                    </div>
                </div>
            </div>
            
        </div>

        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
