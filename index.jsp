<!CTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html> 
	<head>
		<title>Bobcat</title>
        <link type="text/css" rel="stylesheet" href="style.css">
	</head>
	<body>
        <div class="top">
		    Please enter your name and option
        </div>

		<% if ( request.getParameter("error")!=null ) { 

		%> <p> All the fields are required to submit this form. </p> <%

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
