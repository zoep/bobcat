<html>
	<body>
		<p> name:<%=session.getAttribute("fname")%></p>
		<p> surname:<%=session.getAttribute("sname")%></p> 
		
		<form action="http://localhost:8080/bobcat/confirm.jsp" method="post">
				<input type="checkbox" name="book" value="low" />Xamiles Ptiseis<br />
				<input type="checkbox" name="book" value="kastrato" /> Kastrato<br /> 
				<input type="checkbox" name="book" value="lion" /> Liontari<br /> 
				<table>
					<tr>
						<td> <input type="submit" value="Submit" /> <input type="reset"> </td>
					</tr>
				</table>
		</form>
	</body>
</html>
