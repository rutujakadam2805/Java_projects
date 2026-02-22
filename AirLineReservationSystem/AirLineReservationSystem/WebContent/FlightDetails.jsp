<%@page import="com.Entity.Flight"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!-- body {
    
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
</style> -->
</head>
<body>
<form name="mypage">

		<%
			List<Flight> listFlight = (List<Flight>) request.getAttribute("msg");
		%>
         <h2>Flight Details:</h2>

		<table border="2" style="color:black;">
			<thead>
				<tr>
					
					<th>Flight ID</th>
					<th>Flight Name</th>
					<th>Date  </th>
					<th>Time</th>
					<th>First Class Seats(Available)</th>
					<th>Business Class seats(Available)</th>
					<th>Economic Class seats(Available)</th>
					<th>Flight source</th>
					<th>Flight Destination</th>
					<th>Business Class price</th>
					<th>Economic Class price</th>
					<th>First Class price</th>
			
				</tr>
			</thead>

			<tbody>

				<%
					for (Flight f : listFlight) {
				%>

				<tr>

					
					<td><%=f.getFlightID()%></td>
					<td><%=f.getFlightName()%></td>
					<td><%=f.getDatef()%></td>
					<td><%=f.getTime()%></td>
					<td><%=f.getFirstClass()%></td>
					<td><%=f.getBusinessClass()%></td>
					<td><%=f.getEconomicClass()%></td>
					<td><%=f.getFlightsource()%></td>
					<td><%=f.getFlightDestination()%></td>
					<td><%=f.getBprice()%></td>
					<td><%=f.getEprice()%></td>
					<td><%=f.getFprice()%></td>
					
				<%
						}
					%>
				</tr>




			</tbody>





		</table>
	</form>

</body>
</html>