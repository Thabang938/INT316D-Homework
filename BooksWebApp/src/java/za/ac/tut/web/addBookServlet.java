
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


public class addBookServlet extends HttpServlet {
    
    @EJB
    private BookFacadeLocal pl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String title=request.getParameter("title");
        Double price=Double.valueOf(request.getParameter("price"));
        int bookNum=Integer.parseInt(request.getParameter("bookNum"));
        String description=request.getParameter("desc");
        
        Book book=new Book();
        book.setTitle(title);
        book.setPrice(price);
        book.setDescription(description);
        book.setBookNumber(bookNum);
        pl.create(book);
        
        RequestDispatcher disp=request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
        
        
    }

    
}
