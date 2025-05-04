
package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Book;
import za.ac.tut.model.bl.BookFacadeLocal;


public class findBookNumberServlet extends HttpServlet {

    @EJB
    private BookFacadeLocal pl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        int bookNum=Integer.parseInt(request.getParameter("bookNum"));
        Book book=pl.findBook(bookNum);
        request.setAttribute("book", book);
        
        RequestDispatcher disp=request.getRequestDispatcher("findBook_outcome.jsp");
        disp.forward(request, response);
    }


}
