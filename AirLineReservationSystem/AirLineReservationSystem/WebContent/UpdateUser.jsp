<%@page import="com.Entity.User"%>
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
<form action="up">
<% User u = (User)request.getAttribute("msg"); %>


<div class="registration-container">
<h1>Update Details:</h1>
 <div class="input-group">
                <label for="Name">Customer Name:</label>
                <input type="Name" name="Name" placeholder="Enter the Name:" value="<%=u.getName()%>"required>
            </div>
            
            <div class="input-group">
                <label for="AdharNo">Adhar No::</label>
                <input type="AdharNo" name="AdharNo" placeholder="Enter the Adhar No"value="<%=u.getAdharNo()%>" required>
            </div>
            <div class="input-group">
                <label for="ContactNo">Contact No:</label>
                <input type="ContactNo" name="ContactNo" placeholder="Enter the contact No"value="<%=u.getContactNo()%>" required>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter the Email" value="<%=u.getEmail()%>"required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter the password" value="<%=u.getPassword()%>" required>
            </div>
            <button type="submit">Update</button>
            </form>
</body>
</html>