<html> 
	<head>
		<title>Excercise 1</title>
	</head>
	<body>

		<h1>Please enter your name and option </h1>

		<% if ( request.getParameter("error")!=null ) { 

		%> <p> All the fields is required to submit this form. </p> <%

		} %>
		
		
		<form action="http://localhost:8080/bobcat/Hipster" method="post">
			<table>
				<tr>
					<td> Firstname: </td> <td> <input type="text" name="fname" /> <td>
				</tr>
				<tr>
					<td> Lastname: </td> <td> <input type="text" name="sname" /> <td>
				</tr>
				<tr>
					<td> <input type="radio" name="option" value="books" /> Books </td>
					<td> <input type="radio" name="option" value="records" />Records </td>
				</tr>
				<tr>
					<td></td>
					<td> <input type="submit" value="Submit" /> <input type="reset"> </td>
				</tr>
			</table>
		</form>

	</body>
</html>
