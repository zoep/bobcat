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

		//HttpSession session  = request.getSession(false);
		
		// output = response.getWriter();
		// output.println("<html><body>");
		String books = request.getParameter("book"); 
		String qt = request.getParameter("qt"); 
		
		
		if ( ( books != null )  && ( qt != null ) ) {
			Cookie cbook = new Cookie(books, qt);
			cbook.setMaxAge(300);
			response.addCookie(cbook);
	
			response.sendRedirect("http://localhost:8080/bobcat/Hipster");
					
		}
		else {
			response.sendRedirect("http://localhost:8080/bobcat/Hipster");
        }
   }

   	public void doGet( HttpServletRequest request,
						HttpServletResponse response )
		throws ServletException, IOException {


			HttpSession session = request.getSession(false);
			String address;
			if ( ( session.getAttribute("fname")==null ) || ( session.getAttribute("sname")==null ) ){

				response.sendRedirect("http://localhost:8080/bobcat/");
			}
			else {
				
			if ( request.getParameter("accept")!=null ){
				address ="/WEB-INF/final.jsp";
				RequestDispatcher dispatcher =
				request.getRequestDispatcher(address);
				dispatcher.forward(request, response);
			}

			if ( request.getParameter("reset")!=null ){
				
				for ( int i=0 ; i < 3 ; i++){

					Cookie killMyCookie = request.getCookies()[i];
					killMyCookie.setMaxAge(0);
					response.addCookie(killMyCookie);
				}
			
				response.sendRedirect("http://localhost:8080/bobcat/Hipster");
			
			}

				

			}
	
	}


}
