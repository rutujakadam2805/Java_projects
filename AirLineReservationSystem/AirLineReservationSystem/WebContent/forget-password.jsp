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

.login-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    width: 300px;
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
    width: 100%;
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
<div class="login-container">
<form action="forgot-password" method="post">
    <div class="input-group">
                <label for="email">Email:</label>
                <input type="text"  name="email" required>
            </div><br><br>
    <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" name="password" required>
            </div>
    <button type="submit">Send</button>
</form>
</div>
</body>
</html>