<%--
  Created by IntelliJ IDEA.
  User: Gabriela.Barszcz
  Date: 21-Aug-18
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title><spring:message code="lbl.title" /></title>
</head>
<body>
<h2>Create new account</h2>
<form:form action="saveAccount" modelAttribute="account">
    <table>
        <tr>
            <td><spring:message code="lbl.accountNumber"/>: </td>
            <td><form:input path="accountNumber" size="30"/></td>
        </tr>
        <tr>
            <td><spring:message code="lbl.accountHolderName"/>: </td>
            <td><form:input path="accountHolderName" size="30"/></td>
        </tr>
        <tr>
            <td><spring:message code="lbl.accountBalance"/>: </td>
            <td><form:input path="accountBalance" size="30"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            <input type="submit" value="Create Account" name="btnSubmit">
        </tr>
    </table>

</form:form>
</body>
</html>
