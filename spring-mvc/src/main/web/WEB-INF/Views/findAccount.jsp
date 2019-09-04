<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>PS Bank: Search Account Holder</title>
</head>
<body>
    <div class="container">
        <%@ include file="header.jsp" %>

        <div class="row">
            <div class="col-12">
                <p class="h1">Search Form</p>
            </div>
        </div>

        <div class="row">
            <div class="col-8">
                <form:form cssClass="form-horizontal" role="form" id="accForm">
                    <div class="form-group row">
                        <Label for="enteredAccountNumber" class="col-2 col-form-label">Account Number:</Label>
                        <div class="col-8">
                            <input type="text" class="form-control" placeholder="Enter account number" name="enteredAccountNumber" id="enteredAccountNumber">
                        </div>
                        <div class="col-2">
                            <button type="submit" id="btn-search" class="btn btn-primary">Search</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>

        <div class="row" id="divResults">
            <div class="col-8">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        <h3>Search Results</h3>
                    </div>
                    <div class="card-body">
                        <div id="accountNumber"></div>
                        <div id="accountHolderName"></div>
                        <div id="accountType"></div>
                        <div id="balance"></div>
                        <div id="psCode"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" id="divError">
            <div class="col-8">
                <p class="alert alert-danger">Requested account holder not found</p>
            </div>
        </div>

        <%@ include file="footer.jsp" %>
    </div>

    <script>
        $(document).ready(function($) {
            $('#divResults').hide();
            $('#divError').hide();

            $('#accForm').submit(function(event) {
                enableSearchButton(false);
                event.preventDefault();
                searchViaAjax();
            })
        });

        function enableSearchButton(flag) {
            $("btn-search").prop("disabled", flag);
        }

        function searchViaAjax() {
            var account = {};
            account["accountNumber"] = $("#enteredAccountNumber").val();
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "http://localhost:8080/account",
                data: JSON.stringify(account),
                dataType: 'json',
                timeout: 100000,
                success: function(data) {
                    display(data);
                },
                error: function(e) {
                    $('#divResults').hide();
                    $('#divError').show();
                },
                done: function(e) {
                    enableSearchButton(true);
                }
            })
        }

        function display(data) {
            $('#accountNumber').html("Account number: " + data["accountNumber"]);
            $('#accountHolderName').html("Account holder name: " + data["accountHolderName"]);
            $('#balance').html("Account balance: " + data["balance"]);
            $('#accountType').html("Account type: " + data["accountType"]);
            $('#psCode').html("Security code: " + data["psCode"]);
            $('#divResults').show();
            $('#divError').hide();
        }
    </script>

</body>
</html>
