
package za.ac.tut.web;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Book;
import za.ac.tut.model.bl.BookFacadeLocal;


public class viewAllBooksServlet extends HttpServlet {

    @EJB
    private BookFacadeLocal pl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        List<Book> books=pl.findAll();
        request.setAttribute("books", books);
        
        RequestDispatcher disp=request.getRequestDispatcher("viewAll_outcome.jsp");
        disp.forward(request, response);
    }


}
