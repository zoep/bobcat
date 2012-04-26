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
				for( int i = 0 ; i < ( cookies.length ) ; i++ ) {
					String name = cookies[i].getName();
					if (name.equals("1")){ %>
						<tr>
							<td>2001: A Space Odyssey, Arthur C. Clarke</td> <td><%=cookies[i].getValue()%></td>
						</tr> 
					<% }
					else if (name.equals("2")){ %>
						<tr>
							<td>The Hitchhiker's Guide to the Galaxy, Douglas Adams</td> <td><%=cookies[i].getValue()%></td>
						</tr> 
					<% }
					else if (name.equals("3")){ %>
						<tr>
							<td>Signals and Systems, Alan V. Oppenheim</td> <td><%=cookies[i].getValue()%></td>
						</tr> 
					<% }
				}
			}
			else{ %>	
					<tr><td> Cart Empty </td></tr>
			<% }
			%>
		</table>
	</body>
</html>

