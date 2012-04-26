<html>
	<body>
		<p> Firstname:<%=session.getAttribute("fname")%></p>
		<p> Lastname:<%=session.getAttribute("sname")%></p> 
		

		<table>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="hidden" name="book" value="4" />The Piper at the Gates of Dawn, Pink Floyd</td>
				<td>Quantity</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Add to Cart" /> </td>
				</form>
			</tr>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="hidden" name="book" value="5" />Lightbulb Sun, Porcupine Tree</td>
				<td>Quantity</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Add to Cart" /> </td>
				</form>
			</tr>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="hidden" name="book" value="6" />Banana, The Velvet Underground</td>
				<td>Quantity</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Add to Cart" /> </td>
				</form>
			</tr>
		</table>
		<table>
			<%
				Cookie cookies[];
				cookies = request.getCookies();
				if ( cookies.length > 1 ) { %>
					<th> 
						<td> You have selected: </td><td></td>
					</th>
					<tr>
						<td>Book</td> <td>Quantity</td>
					</tr> <%
					for( int i = 0 ; i < ( cookies.length ) ; i++ ) {
						String name = cookies[i].getName();
						if (name.equals("4")){ %>
							<tr>
								<td>The Piper at the Gates of Dawn, Pink Floyd</td> <td><%=cookies[i].getValue()%></td>
							</tr> 
						<% }
						else if (name.equals("5")){ %>
							<tr>
								<td>Lightbulb Sun, Porcupine Tree</td> <td><%=cookies[i].getValue()%></td>
							</tr> 
						<% }
						else if (name.equals("6")){ %>
							<tr>
								<td>Banana, The Velvet Underground</td> <td><%=cookies[i].getValue()%></td>
							</tr> 
						<% }
					}
				}
				else{ %>	
						<tr><td> Cart Empty </td></tr>
				<% }
				%>
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
