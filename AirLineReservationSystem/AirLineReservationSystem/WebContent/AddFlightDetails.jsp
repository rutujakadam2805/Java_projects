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
    height: 130vh;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: Arial, sans-serif;
}

.flight-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    width: 500px;
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
<div class="flight-container">
<h2>Flight Details</h2>
        <form action="AddFlight">
       
            <div class="input-group">
                <label for="Flight Name"> Flight Name:</label>
                <input type="text" name="FlightName" placeholder="Enter the Flight Name:" required>
            </div>
            <div class="input-group">
                <label for="Date"> Date:</label>
                <input type="text" name="datef" placeholder="Enter the Date:" required>
            </div>
            <div class="input-group">
                <label for="Time"> Time:</label>
                <input type="text" name="time"  placeholder="Enter the Time:" required>
            </div>
            <div class="input-group">
                <label for="FirstClass"> First Class:</label>
                <input type="number" name="FirstClass" placeholder="Enter the count of First class:" required>
            </div>
            <div class="input-group">
                <label for="businessClass">Business Class:</label>
                <input type="number" name="businessClass" placeholder="Enter the count of Business Class:" required>
            </div>
            <div class="input-group">
                <label for="EconomicClass">Economic Class:</label>
                <input type="number" name="EconomicClass" placeholder="Enter the count of Economic Class:" required>
            </div> 
            <div class="input-group">
                <label for="Flight source"> Flight Source:</label>
                <input type="text" name="Flightsource" placeholder="Enter the Flight Source:" required>
            </div>
            <div class="input-group">
                <label for="Flight Destination"> Flight Destination:</label>
                <input type="text" name="FlightDestination" placeholder="Enter the Flight Destination" required>
            </div>
            <div class="input-group">
                <label for="bprice">Business class ticket price:</label>
                <input type="number" name="bprice" placeholder="Enter the price" required>
            </div>
            <div class="input-group">
                <label for="eprice">Economic class ticket price:</label>
                <input type="number" name="eprice" placeholder="Enter the price" required>
            </div>
            <div class="input-group">
                <label for="fprice">First class ticket price:</label>
                <input type="number" name="fprice" placeholder="Enter the price" required>
            </div>
            <button type="submit">Save</button>

</body>
</html>