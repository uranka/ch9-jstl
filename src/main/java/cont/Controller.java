package cont;

import foo.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

// putanja http://localhost:8080/ch9-jstl/controller vodi do ovog servleta , vidi web.xml
public class Controller extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {		

		PageContent pc = new PageContent();
		pc.setCurrentTip("<b></b> make things bold.");
		request.setAttribute("pageContent", pc);
		
		PageContent pc1 = new PageContent();
		pc1.setCurrentTip("&lt;b&gt;&lt;/b&gt; make things bold.");
		request.setAttribute("pageContent1", pc1);					
		
		String[] songList = {"Musicology", "Purple Rain", "Thieves in the temple", "Everlasting now", "Get on the boat" };
		request.setAttribute("songList", songList);
		
		RequestDispatcher view = request.getRequestDispatcher("/view.jsp");		
		view.forward(request, response);
	}
}