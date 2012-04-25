<html>
	<body>
		<p> Firstname:<%=session.getAttribute("fname")%></p>
		<p> Lastname:<%=session.getAttribute("sname")%></p> 
		

		<table>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="checkbox" name="book" value="low" />Xamiles Ptiseis</td>
				<td>Quantity</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Submit" /> </td>
				</form>
			</tr>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="checkbox" name="book" value="kastrato" /> Kastrato</td>
				<td>Quantity</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Submit" /> </td>
				</form>
			</tr>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="checkbox" name="book" value="lion" /> Liontari</td>
				<td>Quantity</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Submit" /> </td>
				</form>
			</tr>
		</table>
		<table>
			<th> 
				<td> You have selected: </td>
			</th>
			
			<%
				Cookie cookies[];
				cookies = request.getCookies();
				if ( cookies.length > 1 ) { 
					for( int i = 0 ; i < ( cookies.length - 1 ) ; i++ ) { %>
						<tr>
							<td><%=cookies[i].getName()%></td> <td><%=cookies[i].getValue()%></td>
						</tr>
				<% }
				}
				else { %>
				<tr><td> Cart Empty </td></tr>
				<% 
				} %>
				<tr>
					<form action="http://localhost:8080/bobcat/Hipsteras" method="get">
						<input type="hidden" name="accept" value="accept">
							<td> <input type="submit" value="Place Order" /> </td>
					</form>
					<form action="http://localhost:8080/bobcat/Hipsteras" method="get">
						<input type="hidden" name="reset" value="reset">
							<td> <input type="submit" value="Reset" /> </td>
					</form>
				</tr>
		</table>

	</body>
</html>
