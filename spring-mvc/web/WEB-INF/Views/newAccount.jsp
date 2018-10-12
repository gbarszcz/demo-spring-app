<%--
  Created by IntelliJ IDEA.
  User: Gabriela.Barszcz
  Date: 21-Aug-18
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new account</title>
</head>
<body>
<h2>Create new account</h2>
<form name="newAccountForm" action="saveAccount" method="post">
    <table>
        <tr>
            <td>Account #:</td>
            <td><input type="text" name="accountNumber"></td>
        </tr>
        <tr>
            <td>Account Holder Name</td>
            <td><input type="text" name="accountHolderName"></td>
        </tr>
        <tr>
            <td>Account Balance:</td>
            <td><input type="text" name="accountBalance"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            <input type="submit" value="Create Account" name="btnSubmit">
        </tr>
    </table>

</form>
</body>
</html>
