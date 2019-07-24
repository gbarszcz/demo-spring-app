<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>PS Bank Acount Holder Details</title>
</head>
<body>
    <table border="1" width="100%">
        <thead>
            <tr>
                <th><spring:message code="lbl.accountNumber" /></th>
                <th><spring:message code="lbl.accountHolderName" /></th>
                <th><spring:message code="lbl.accountBalance" /></th>
                <th><spring:message code="lbl.accountType" /></th>
                <th> &nbsp; </th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="account" items="${accounts}">
                <c:url var="updateLink" value="/edit">
                    <c:param name="accountNumber" value="${account.accountNumber}" />
                </c:url>
                <tr>
                    <td>${account.accountNumber}</td>
                    <td>${account.accountHolderName}</td>
                    <td>${account.accountBalance}</td>
                    <td>${account.accountType}</td>
                    <td><a href="${updateLink}">Edit</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
