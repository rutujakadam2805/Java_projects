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

.option-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    width: 400px;
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
</style>
</head>
<body>
<div class="option-container">
       
       <div>
            <button onclick="window.location.href='AddFlightDetails.jsp'"> Add Flight Details</button>
             </div><br><br>
             <div>
            <button onclick="window.location.href='getDate.jsp'"> Flight Details</button>
             </div><br><br>
             <div>
            <button onclick="window.location.href='getDateD.jsp'">Cancle Flight </button>
             </div><br><br>
             
</body>
</html>