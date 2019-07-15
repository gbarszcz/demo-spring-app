<%--
  Created by IntelliJ IDEA.
  User: Gabriela.Barszcz
  Date: 21-Aug-18
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title><spring:message code="lbl.title"/></title>
</head>
<body>
<%--    <h2>Bank Account Details</h2>
    <p>Account #: ${param.accountNumber}</p>
    <p>Account Holder Name: ${param.accountHolderName}</p>
    <p>Account Balance: ${param.accountBalance}</p>--%>

<%--    <h2>Bank Account Details</h2>
    <p>Account #: ${accountNo}</p>
    <p>Account Holder Name: ${accountOwnerName}</p>
    <p>Account Balance: ${accountBalance}</p>--%>

<%--
    <h2>Bank Account Details</h2>
    <p>Account #: ${account.accountNumber}</p>
    <p>Account Holder Name: ${account.accountHolderName}</p>
    <p>Account Balance: ${account.accountBalance}</p>
--%>

    <h2><spring:message code="lbl.accountDetailsTitle"/></h2>
    <p><spring:message code="lbl.accountNumber"/> #: ${account.accountNumber}</p>
    <p><spring:message code="lbl.accountHolderName"/>: ${account.accountHolderName}</p>
    <p><spring:message code="lbl.accountBalance"/>: ${account.accountBalance}</p>
    <p><spring:message code="lbl.accountType" />: ${account.accountType} </p>
    <p><spring:message code="lbl.dob" />: ${account.dateOfBirth} </p>
    <p><spring:message code="lbl.psCode" />: ${account.psCode} </p>
</body>
</html>
