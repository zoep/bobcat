<html>
	<body>
		<p> Firstname:<%=session.getAttribute("fname")%></p>
		<p> Lastname:<%=session.getAttribute("sname")%></p> 
		
		<form action="http://localhost:8080/bobcat/confirm.jsp" method="post">
            <table>
                <tr>
                    <td><input type="checkbox" name="book" value="low" />Xamiles Ptiseis</td>
                    <td>Quantity</td>
                    <td><input type="text" name="qt"></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="book" value="kastrato" /> Kastrato</td>
                    <td>Quantity</td>
                    <td><input type="text" name="qt"></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="book" value="lion" /> Liontari</td>
                    <td>Quantity</td>
                    <td><input type="text" name="qt"></td>
                </tr>
                <tr>
                    <td> <input type="submit" value="Submit" /> <input type="reset"> </td>
                </tr>
            </table>
		</form>
	</body>
</html>
