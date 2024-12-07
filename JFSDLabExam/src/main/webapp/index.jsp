<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
input[type=text], input[type=email], input[type=number], select {
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
form {
    margin: auto;
    width: 50%;
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
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

<br>



<!-- Form for adding/editing customer -->
<form method="post" action="addcustomer">
    <h3>Add/Edit Customer</h3>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" placeholder="Enter Customer Name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" placeholder="Enter Customer Email" required>

    <label for="phoneNumber">Phone Number:</label>
    <input type="number" id="phoneNumber" name="phoneNumber" placeholder="Enter Customer Phone Number" required>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" placeholder="Enter Customer Address" required>

    <button type="submit" class="button">Submit</button>
</form>

</body>
</html>
