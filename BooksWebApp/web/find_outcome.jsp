<%@page import="za.ac.tut.entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Outcome Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                text-align: center;
                padding: 20px;
            }
            .container {
                background: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                display: inline-block;
                width: 350px;
            }
            h1 {
                color: #007bff;
            }
            .book-info {
                margin: 20px 0;
                padding: 15px;
                background: #e6f7ff;
                border: 1px solid #b3daff;
                border-radius: 5px;
                font-weight: bold;
            }
            p {
                margin: 10px 0;
            }
            a {
                color: #007bff;
                text-decoration: none;
                font-weight: bold;
            }
            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>The Book You Are Looking For</h1>
            <% 
                Book book = (Book) request.getAttribute("book"); 
                if (book == null) { 
            %>
            <div class="book-info">Book not found!</div>
            <% } else { %>
            <div class="book-info">
                <p><strong>Title:</strong> <%= book.getTitle() %></p>
                <p><strong>Price:</strong> <%= book.getPrice() %></p>
                <p><strong>Description:</strong> <%= book.getDescription() %></p>
            </div>
            <% } %>
            <p>To go back home, click <a href="menu.jsp">Menu</a></p>
            <p>To find another book, click <a href="findBook.jsp">Find Book</a></p>
        </div>
    </body>
</html>