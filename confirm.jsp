<%  
if ( session.getAttribute("fname") == null || session.getAttribute("sname") == null ) {
	response.sendRedirect("http://localhost:8080/bobcat");
}
else {
	String select[] = request.getParameterValues("book"); 
	if ( select.length == 0 ) {
		response.sendRedirect("http://localhost:8080/bobcat");
	}
	else { %>
		<html>
			<body>
            <div class="custom">
                <%=session.getAttribute("fname")%> <%=session.getAttribute("sname")%>p> 
            </div>

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
                            <td>    
                                <input type="submit" value="Confirm" /> 
                                <form>
                                    <input TYPE="button" value="Reject" onClick="parent.location='http://localhost:8080/bobcat'">
                                </form>
                            </td>
						</tr>
					</table>
				</form>
			</body>
		</html>
	<% } %>
<% } %>
