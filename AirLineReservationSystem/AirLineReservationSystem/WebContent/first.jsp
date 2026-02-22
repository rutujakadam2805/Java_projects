<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-size: cover;
    background-image:url("C:\Users\tejas\Downloads\WhatsApp Image 2025-02-12 at 19.32.45.jpeg");
    background: rgba(135,206,235);
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: Arial, sans-serif;
}
.option-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    width: 700px;
    text-align: center;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}
button {
    width: 50%;
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
heding{
   /*  display: block; */
    font-weight: bold;
    color: blue;
}

</style>
</head>
<body>
<!-- 
<h2>WelCome To AirLine Reservation System</h2><br><br> -->
<div class="option-container">
<h1>WelCome To AirLine Reservation System</h1><br><br>
 <div>
            <button onclick="window.location.href='UserLogin.jsp'"> Customer Login</button>
             </div>
             <div><br><br>
            <button onclick="window.location.href='AdminLogin.jsp'">AdminLogin</button>
            </div>
            </div>
</body>
</html>