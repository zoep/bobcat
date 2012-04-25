<%! private String names[] = {"low", "kastrato", "lion"}; %>
<html>
	<body>
		<p> name:<%=session.getAttribute("fname")%></p>
		<p> surname:<%=session.getAttribute("sname")%></p> 
		<h1> Your order has been placed. </h1>
		<table>
		<%
			Cookie cookies[] = request.getCookies();
			if ( cookies.length > 1 ) { 
					for( int i = 0 ; i < ( cookies.length - 1 ) ; i++ ) { %>
						<tr>
							<td>Book:<%=cookies[i].getName()%></td> <td>Quantity:<%=cookies[i].getValue()%></td>
						</tr>
				<% }
			}
		%>
		</table>
	</body>
</html>

