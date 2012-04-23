<%! private String names[] = {"low", "kastrato", "lion"}; %>
<html>
	<body>
		<p> name:<%=session.getAttribute("fname")%></p>
		<p> surname:<%=session.getAttribute("sname")%></p> 
		<h1> Selection </h1>

		<% 
		for (int i=0; i< names.length; i++) {
			if (session.getAttribute(names[i])!=null){ %>
			<p> book: <%= names[i] %> count: <%= session.getAttribute(names[i]) %> </p> <%
			}
		}
		%>
	</body>
</html>

