// Using Session
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class RegistrationServlet extends HttpServlet {

	public void doPost( HttpServletRequest request,
						HttpServletResponse response )
		throws ServletException, IOException {
		PrintWriter output;
		  
		String fname = request.getParameter( "fname" );
		String sname = request.getParameter( "sname" );
		String option = request.getParameter( "option" );
		String address;
		
		HttpSession session = request.getSession(true);
		
		if ( fname.length() == 0 || sname.length() == 0 || option == null ) {

			response.sendRedirect("http://localhost:8080/bobcat/?error=1");

		}

		else { 
			session.setAttribute( "fname", fname );
			session.setAttribute( "sname", sname );
			session.setAttribute( "option", option );
		  
			 
			Cookie killMyCookie[] = request.getCookies();
			
			for ( int i=0 ; i < ( killMyCookie.length ) ; i++){
				if ( killMyCookie[i].getName().equals("1") || killMyCookie[i].getName().equals("2") || killMyCookie[i].getName().equals("3") || killMyCookie[i].getName().equals("4") || killMyCookie[i].getName().equals("5") || killMyCookie[i].getName().equals("6") ){
					killMyCookie[i].setMaxAge(0);
					response.addCookie(killMyCookie[i]);
				}
			}

			if ( option.equals("books") ) {
			
				address="/WEB-INF/books.jsp";
			}

			else {
				
				address="/WEB-INF/records.jsp";
				
			}
			RequestDispatcher dispatcher =
			request.getRequestDispatcher(address);
			dispatcher.forward(request, response);
		}
	}

	public void doGet( HttpServletRequest request,
						HttpServletResponse response )
		throws ServletException, IOException {


			HttpSession session = request.getSession(false);
			String address;
			
			if ( session == null ){

				response.sendRedirect("http://localhost:8080/bobcat/");
			}
			else if ( ( session.getAttribute("fname")==null ) || ( session.getAttribute("sname")==null ) || ( session.getAttribute("option")==null ) ){

				response.sendRedirect("http://localhost:8080/bobcat/");
			}
			else {
				if ( session.getAttribute("option").equals("books") ) {
			
					address="/WEB-INF/books.jsp";
				}

				else {
				
					address="/WEB-INF/records.jsp";
				
				}

				RequestDispatcher dispatcher =
					request.getRequestDispatcher(address);
				dispatcher.forward(request, response);

			}
	
	}
}
