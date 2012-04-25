// Using Session
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class BookServlet extends HttpServlet {
	
	private String names[] = {"low", "kastrato", "lion"};
	
	public void doPost( HttpServletRequest request,
						HttpServletResponse response )
		throws ServletException, IOException {
		PrintWriter output;
		String address;

		HttpSession session  = request.getSession(false);
		
		// output = response.getWriter();
		// output.println("<html><body>");
		String books[] = request.getParameterValues("books"); 
		String qt[] = request.getParameterValues("qt"); 
		
		if (books != null && books.length != 0) {
			for (int i = 0; i < books.length; i++) {
				session.setAttribute(books[i], 1);
				//output.println("<p>"+books[i]+"</p>");
				}
		}
        else {
			response.sendRedirect("http://localhost:8080/bobcat/");
        }

		
		// output.println("</body></html>");
/*
		output.println("<form action="http://localhost:8080/exercise1/Hipsterreads" method="get">")
		output.println("<table><tr><td>")
		output.println("<input type="submit" value="Submit" /> <input type="reset">") 
		output.println("</td></tr></table>");
		session.setAttribute( "fname", fname );
		session.setAttribute( "sname", sname );
      
 		response.setContentType( "text/html" );
      

	  	if ( option.equals("books") ) {
		
			address="WEB-INF/books.jsp";
		
		}
		
		else {
			
			address="WEB-INF/records.jsp";
			
		}
/*
		output = response.getWriter();
		output.println("<html><body>");
		output.println("<p>name:"+fname);
		output.println("</body></html>");
*/
		
		address="WEB-INF/final.jsp";
		RequestDispatcher dispatcher =
	  	request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
		session.invalidate();	
   }
}
