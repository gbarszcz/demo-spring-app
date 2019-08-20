<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>PS Bank Acount Holder Details</title>
</head>
<body>
    <div class="container">

        <%@ include file="header.jsp" %>

        <div class="row">
            <div class="col-12">
                <a href="<c:url value='/newAccount'/>" class="btn btn-lg btn-primary">Add New Account</a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <table class="table table-bordered table-hover">
                    <thead class="bg-success">
                        <tr>
                            <th><spring:message code="lbl.accountNumber" /></th>
                            <th><spring:message code="lbl.accountHolderName" /></th>
                            <th><spring:message code="lbl.accountBalance" /></th>
                            <th><spring:message code="lbl.accountType" /></th>
                            <th> &nbsp; </th>
                            <th> &nbsp; </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="account" items="${accounts}">
                            <c:url var="updateLink" value="/edit">
                                <c:param name="accountNumber" value="${account.accountNumber}" />
                            </c:url>
                            <c:url var="deleteLink" value="/delete">
                                <c:param name="accountNumber" value="${account.accountNumber}" />
                            </c:url>
                            <tr>
                                <td>${account.accountNumber}</td>
                                <td>${account.accountHolderName}</td>
                                <td>${account.accountBalance}</td>
                                <td>${account.accountType}</td>
                                <td><a href="${updateLink}" class="btn btn-warning" >Edit</a></td>
                                <td><a href="${deleteLink}" class="btn btn-danger" onClick="if(!(confirm('Are you sure?'))) return false">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <%@ include file="footer.jsp" %>

    </div>
</body>
</html>
