<jsp:include page="header.jsp" />
<div class="custom">
    <p><%=session.getAttribute("fname")%> <%=session.getAttribute("sname")%></p> 
</div>
		<table class="prod">
			<tr>
                <th>Record</th>
                <th>Quantity</th>
            </tr>
            <tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="hidden" name="book" value="4" />The Piper at the Gates of Dawn, Pink Floyd</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Add to Cart" /> </td>
				</form>
			</tr>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="hidden" name="book" value="5" />Lightbulb Sun, Porcupine Tree</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Add to Cart" /> </td>
				</form>
			</tr>
			<tr>
				<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
				<td><input type="hidden" name="book" value="6" />Banana, The Velvet Underground</td>
				<td><input type="text" name="qt"></td>
				<td> <input type="submit" value="Add to Cart" /> </td>
				</form>
			</tr>
		</table>
		<table class="cart">
        </tr>
        <td>
            <table class="lala">
                <th>Shopping Cart</th>
            </table>
        </td>
        </tr>
			<%
				Cookie cookies[];
				cookies = request.getCookies();
				if ( cookies.length > 1 ) { %>
					<tr>
						<th>Record</th> <th>Quantity</th>
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

<jsp:include page="footer.jsp" />
