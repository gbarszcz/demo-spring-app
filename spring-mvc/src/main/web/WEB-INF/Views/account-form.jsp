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
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<h2>Please fill up the form details</h2>
<form:form action="saveAccount" modelAttribute="account">
    <table>
        <tr>
            <td><spring:message code="lbl.accountNumber"/>: </td>
            <td>
                <form:input path="accountNumber" size="30"/>
                <form:errors path="accountNumber" cssClass="error"/>
                <b><font color="red">${message}</font></b>
            </td>
        </tr>
        <tr>
            <td><spring:message code="lbl.accountHolderName"/>: </td>
            <td>
                <form:input path="accountHolderName" size="30"/>
                <form:errors path="accountHolderName" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td><spring:message code="lbl.accountBalance"/>: </td>
            <td>
                <form:input path="accountBalance" size="30"/>
                <form:errors path="accountBalance" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td><spring:message code="lbl.accountType"/>: </td>
            <td>
                <form:select path="accountType">
                    <form:option value="">Select account type</form:option>
                    <form:option value="SAVINGS">Savings</form:option>
                    <form:option value="CURRENT">Current</form:option>
                </form:select>
                <form:errors path="accountType" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td><spring:message code="lbl.dob"/>: </td>
            <td>
                <form:input path="dateOfBirth" size="30"/>
                <form:errors path="dateOfBirth" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td><spring:message code="lbl.psCode"/>: </td>
            <td>
                <form:input path="psCode" size="30"/>
                <form:errors path="psCode" cssClass="error"/>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Save Account" name="btnSubmit">
        </tr>
    </table>

</form:form>
</body>
</html>
