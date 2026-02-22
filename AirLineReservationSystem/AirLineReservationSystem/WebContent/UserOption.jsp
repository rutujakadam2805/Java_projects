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
<script type="text/javascript">
	function pro() {

		document.mypage.action = "profile"
		document.mypage.submit();
	}
	function uppro() {

		document.mypage.action = "check"
		document.mypage.submit();
	}
	function FlightDel() {

		document.mypage.action = "details"
		document.mypage.submit();
	}
	function Flightbook() {

		document.mypage.action = "book"
		document.mypage.submit();
	}

</script>
</head>
<body>
<div class="option-container">
       <form name="mypage">
             <div>
            <button onclick=FlightDel() value="submit">Flight Details</button>
             </div><br><br>
             <div>
            <button onclick=Flightbook() value="submit">Flight Booking</button>
             </div><br><br>
             <div>
            <button onclick=uppro() value="submit"> Update Proflie</button>
             </div><br><br>
              <div>
            <button onclick=pro() value="submit"> Proflie</button>
             </div>
             </form>
</body>
</html>