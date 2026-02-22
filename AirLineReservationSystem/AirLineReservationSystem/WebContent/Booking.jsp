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

.container {
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
/* <script type="text/javascript">

function FlightDel() {

        alert("You want to book this Flight");
		document.mypage.action = "bookFlight"
		document.mypage.submit();
	}


</script> */
</style>
</head>
<body>
<div class="container">
        <h2>Airline Ticket Booking</h2>
        <h1>${msg}</h1>
        <form name="mypage" action="bookFlight" method="post">
        
        <div class="input-group">
            <label for="name">Full Name</label><br>
            <input type="text" id="name" name="name" required><br>
         </div>
         <div class="input-group">
            <label for="email">Email</label><br>
            <input type="email" id="email" name="email" required><br>
</div>
<div class="input-group">
            <label for="fname">Flight Name</label><br>
            <input type="text" id="fName" name="fName" required><br>
         </div>
<div class="input-group">
            <label for="from">From</label><br>
            <input type="text" id="from" name="from" required><br>
</div>
<div class="input-group">
            <label for="to">To</label><br>
            <input type="text" id="to" name="to" required><br>
</div>
<!-- <div class="input-group">
            <label for="date">Travel Date</label><br>
            <input type="text" name="dateb" required><br>
</div> -->
<div class="input-group">
            <label for="class">Class</label><br>
            <select id="class" name="travelClass">
                <option value="Economy">Economy</option>
                <option value="Business">Business</option>
                <option value="FirstClass">First Class</option>
            </select><br>
</div><br>
<div class="input-group">
            <label for="count">Total Count of Tickets</label><br>
            <input type="number" name="count" required><br>
</div>
            <button  name="submit" value="submit">Book Flight</button>
        </form>
    </div>

</body>
</html>