<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<html> 

<head> 
<title>Customer Management</title>
<style>

body {
    background-color: lightgrey;
}
.button {
    background-color: black;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=text], input[type=password], input[type=number], input[type=email],
select, input[type=date], input[type=datetime-local] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
label {
    padding: 12px 12px 12px 0;
    display: inline-block;
    font-weight: bold;
}
</style>
</head> 

<body>

<h2 align="center">Customer Management</h2>

<nav style="text-align:center;">
    <a href="/">Home</a>&nbsp;&nbsp;
    <a href="viewcustomers">View Customers</a>&nbsp;&nbsp;
    <a href="addcustomer">Add Customer</a>&nbsp;&nbsp;
</nav>

<br><br>

<table align="center" border="2" style="text-align: center; width: 80%;">
    <thead>
        <tr style="font-weight: bold; background-color: #f2f2f2;">
            <td>CUSTOMER ID</td>
            <td>NAME</td>
            <td>EMAIL</td>
            <td>PHONE NUMBER</td>
            <td>ADDRESS</td>
        </tr>
    </thead>
    <tbody>
        <!-- Loop through customer data passed from the controller -->
        <c:forEach items="${customerdata}" var="customer"> 
            <tr> 
                <td>${customer.customerId}</td> 
                <td><c:out value="${customer.name}" /></td> 
                <td><c:out value="${customer.email}" /></td> 
                <td><c:out value="${customer.phoneNumber}" /></td> 
                <td><c:out value="${customer.address}" /></td> 
            </tr> 
        </c:forEach> 
    </tbody>
</table>

</body> 
</html>
