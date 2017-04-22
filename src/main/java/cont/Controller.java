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
		
		
		Person p = new Person();
		p.setName("Jelena Gavanski");
		
		Dog d1 = new Dog();
		d1.setName("Lili");	
		Dog d2 = new Dog();
		d2.setName("Dzeki");	
		Dog d3 = new Dog();
		d3.setName("Nera");
		p.setDogs(new Dog[]{d1, d2, d3});
		
		request.setAttribute("person", p);

		java.util.Map petMap = new java.util.HashMap();
		petMap.put("dogName", "Lili");
		petMap.put("dogBreed", "Husky");
		petMap.put("dogAge", 3);
		request.setAttribute("petMap", petMap);
		
		RequestDispatcher view = request.getRequestDispatcher("/view.jsp");		
		view.forward(request, response);
	}
}