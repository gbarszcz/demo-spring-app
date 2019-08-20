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
    <div class="container">
        <%@ include file="header.jsp" %>

        <div class="row">
            <div class="col-12">
                <h2 class="page-header">Please fill up the form details</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-6">
                <form:form action="saveAccount" modelAttribute="account" cssClass="form-horizontal" role="form">
                    <div class="form-group row">
                        <Label for="accountNumber" class="col-6 col-form-label">Account Number:</Label>
                        <div class="col-6">
                            <form:input path="accountNumber" cssClass="form-control" />
                            <form:errors path="accountNumber" cssClass="alert-danger" />
                            <text class="alert-danger">${message}</text>
                        </div>
                    </div>
                    <div class="form-group row">
                        <Label for="accountHolderName" class="col-6 col-form-label">Account Holder Name:</Label>
                        <div class="col-6">
                            <form:input path="accountHolderName" cssClass="form-control" />
                            <form:errors path="accountHolderName" cssClass="alert-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <Label for="accountBalance" class="col-6 col-form-label">Account Balance:</Label>
                        <div class="col-6">
                            <form:input path="accountBalance" cssClass="form-control" />
                            <form:errors path="accountBalance" cssClass="alert-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <Label for="accountType" class="col-6 col-form-label">Account Type:</Label>
                        <div class="col-6">
                            <form:select path="accountType" cssClass="form-control" >
                                <form:option value="">Select account type</form:option>
                                <form:option value="SAVINGS">Savings</form:option>
                                <form:option value="CURRENT">Current</form:option>
                            </form:select>
                            <form:errors path="accountType" cssClass="alert-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <Label for="dateOfBirth" class="col-6 col-form-label">Date of Birth:</Label>
                        <div class="col-6">
                            <form:input path="dateOfBirth" cssClass="form-control" />
                            <form:errors path="dateOfBirth" cssClass="alert-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <Label for="psCode" class="col-6 col-form-label">PS Code:</Label>
                        <div class="col-6">
                            <form:input path="psCode" cssClass="form-control" />
                            <form:errors path="psCode" cssClass="alert-danger" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="offset-6 col-6">
                            <input type="submit" value="Save Account" name="btnSubmit" class="btn btn-primary" />
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
