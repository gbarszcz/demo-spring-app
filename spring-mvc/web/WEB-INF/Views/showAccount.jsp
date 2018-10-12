<%--
  Created by IntelliJ IDEA.
  User: Gabriela.Barszcz
  Date: 21-Aug-18
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bank Account Details</title>
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

    <h2>Bank Account Details</h2>
    <p>Account #: ${account.accountNumber}</p>
    <p>Account Holder Name: ${account.accountHolderName}</p>
    <p>Account Balance: ${account.accountBalance}</p>

</body>
</html>
