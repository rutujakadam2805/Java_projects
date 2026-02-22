<%@page import="com.Entity.Flight"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight cancel</title>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-size: cover;
    background-image:url("C:\Users\tejas\Downloads\WhatsApp Image 2025-02-12 at 19.32.45.jpeg");
    background: rgba(135,206,235);
  /*   background-position: center; */
   /*  background-repeat: no-repeat;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: Arial, sans-serif; */
}
.option-container {
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    width: 700px;
    text-align: center;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}
/* button {
    width: 50%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
 */
/* button:hover {
    background-color: #0056b3;
} */
heding{
   /*  display: block; */
    font-weight: bold;
    color: blue;
}

</style>
<script type="text/javascript">
	function delteFunc() {

		alert("You want to Cancle this Flight");
		document.mypage.action = "del"
		document.mypage.submit();
	}

</script>

</head>
<body>

<form name="mypage">
<%
			List<Flight> listFlight = (List<Flight>) request.getAttribute("msg");
		%>
         <h2>Flight Details:</h2>

		<table border="1" style="color: green"; background-color:"red">
			<thead>
				<tr>
					<th>Select</th>
					<th>Flight ID</th>
					<th>Flight Name</th>
					<th>Date  </th>
					<th>Time</th>
					<th>First Class Seats(Available)</th>
					<th>Business Class seats(Available)</th>
					<th>Economic Class seats(Available)</th>
					<th>Flight source</th>
					<th>Flight Destination</th>
					<th>Delete</th>
			
				</tr>
			</thead>

			<tbody>

				<%
					for (Flight f : listFlight) {
				%>

				<tr>

					<td><input type="radio" name="id" value="<%=f.getFlightID()%>"></td>
					<td><%=f.getFlightID()%></td>
					<td><%=f.getFlightName()%></td>
					<td><%=f.getDatef()%></td>
					<td><%=f.getTime()%></td>
					<td><%=f.getFirstClass()%></td>
					<td><%=f.getBusinessClass()%></td>
					<td><%=f.getEconomicClass()%></td>
					<td><%=f.getFlightsource()%></td>
					<td><%=f.getFlightDestination()%></td>
					<td><button onclick=delteFunc() value="submit">Cancle</button></td>
					
				<%
						}
					%>
				</tr>




			</tbody>





		</table>
	</form>

</body>
</html>