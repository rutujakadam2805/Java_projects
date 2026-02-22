<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {

    background-size: cover;
    background-position: center;
     background: rgba(135,206,235);
    background-repeat: no-repeat;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: Arial, sans-serif;
}

.registration-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    width: 400px;
    text-align: center;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

h2 {
    margin-bottom: 15px;
}

.input-group {
    margin-bottom: 15px;
    text-align: left;
}

.input-group label {
    display: block;
    font-weight: bold;
}

.input-group input {
    width: 80%;
    padding: 8px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}


</style>
</head>
<body>
<div class="registration-container">
        <h2>Registration Form</h2>
        
        
        <form action="Sign">
        <div class="input-group">
                <label for="Name">Customer Name:</label>
                <input type="Name" name="Name" placeholder="Enter the Name:" required>
            </div>
            <div class="input-group">
                <label for="Address">Address:</label>
                <input type="Address" name="Address" placeholder="Enter the address:" required>
            </div>
            <div class="input-group">
                <label for="AdharNo">Adhar No::</label>
                <input type="AdharNo" name="AdharNo" placeholder="Enter the Adhar No" required>
            </div>
            <div class="input-group">
                <label for="ContactNo">Contact No:</label>
                <input type="ContactNo" name="ContactNo" placeholder="Enter the contact No" required>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter the Email" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter the password" required>
            </div>
            <button type="submit">Register</button>
</body>
</html>