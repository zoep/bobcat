<jsp:include page="WEB-INF/header.jsp" />

<div class="custom">
    Welcome!
</div>
    <form action="http://localhost:8080/bobcat/Hipster" method="post">
        <table class="prod">
            <tr>
                <th>
                    Customer Info
                </th>
                <th>
                </th>
            </tr>
            <tr>
                <td>Firstname</td> <td> <input type="text" name="fname" /> <td>
            </tr>
            <tr>
                <td>Lastname</td> <td> <input type="text" name="sname" /> <td>
            </tr>
            <tr>
                <td> <input type="radio" name="option" value="books" > Books </td>
                <td> <input type="radio" name="option" value="records" >Records </td>
            </tr>
            <tr>
                <td></td>
                <td> <input type="submit" value="Submit" /> <input type="reset"> </td>
            </tr>
        </table>
    </form>

    <% if ( request.getParameter("error")!=null ) { 

    %> <p class="error"> All the fields are required to submit this form. </p> <%

    } %>

<jsp:include page="WEB-INF/footer.jsp" />
