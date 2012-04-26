<jsp:include page="header.jsp" />
<div class="custom">
    <%=session.getAttribute("fname")%> <%=session.getAttribute("sname")%> 
</div>

    <table class="prod">
        <tr>
            <th>Book</th>
            <th>Quantity</th>
        </tr>
        <tr>
            <form action="http://localhost:8080/bobcat/Hipsteras" method="post">
            <td><input type="hidden" name="book" value="1" />2001: A Space Odyssey, Arthur C. Clarke</td>
            <td><input type="text" name="qt"></td>
            <td> <input type="submit" value="Add to Cart" /> </td>
            </form>
        </tr>
        <tr>
            <form action="http://localhost:8080/bobcat/Hipsteras" method="post">
            <td><input type="hidden" name="book" value="2" /> The Hitchhiker's Guide to the Galaxy, Douglas Adams </td>
            <td><input type="text" name="qt"></td>
            <td> <input type="submit" value="Add to Cart" /> </td>
            </form>
        </tr>
        <tr>
            <form action="http://localhost:8080/bobcat/Hipsteras" method="post">
            <td><input type="hidden" name="book" value="3" /> Signals and Systems, Alan V. Oppenheim</td>
            <td><input type="text" name="qt"></td>
            <td> <input type="submit" value="Add to Cart" /> </td>
            </form>
        </tr>
    </table>
    <table class="cart">
        <td>
            <table class="lala">
                <th>Shopping Cart</th>
                <th></th>
            </table>
        </td>
        <%
            Cookie cookies[];
            cookies = request.getCookies();
            if ( cookies.length > 1 ) { %>
                <tr>
                    <th>Book</th> <th>Quantity</th>
                </tr> <%
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
            <tr>
                <form action="http://localhost:8080/bobcat/Hipsteras" method="get">
                    <input type="hidden" name="accept" value="accept">
                        <td> <input type="submit" value="Place Order" /> </td>
                </form>
                <form action="http://localhost:8080/bobcat/Hipsteras" method="get">
                    <input type="hidden" name="reset" value="reset">
                        <td> <input type="submit" value="Reset" /> </td>
                </form>
            </tr>
    </table>
<jsp:include page="footer.jsp" />
