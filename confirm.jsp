<%  String select[] = request.getParameterValues("book"); 
if ( session.getAttribute("fname") == null || session.getAttribute("sname") == null ) {
	response.sendRedirect("http://localhost:8080/bobcat");
}
if ( select.length == 0 ) {
	%> <jsp:forward page="/Hipster" /> <%
}%>
<html>
	<body>
		<p> name:<%=session.getAttribute("fname")%></p>
		<p> surname:<%=session.getAttribute("sname")%></p>
		<h1>You have selected:</h1>

		<form action="http://localhost:8080/bobcat/Hipsteras" method="post">
		<%
		if (select != null && select.length != 0) {
			for (int i = 0; i < select.length; i++) {
				%> <p> <%=select[i]%> </p>
				<input name="books" type="hidden" value="<%= select[i] %>"> <%
			}
		}
		%>
			<table>
				<tr>
					<td> <input type="submit" value="Submit" /> <input type="reset"> </td>
				</tr>
			</table>
		</form>
	</body>
</html>
