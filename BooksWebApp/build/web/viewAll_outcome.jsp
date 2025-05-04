<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Outcome Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                text-align: center;
                margin: 0;
                padding: 20px;
            }
            .container {
                width: 80%;
                margin: auto;
                background: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
            h1 {
                color: #007bff;
                margin-bottom: 10px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 15px;
            }
            th, td {
                padding: 12px;
                border-bottom: 1px solid #ddd;
                text-align: left;
            }
            th {
                background: #007bff;
                color: white;
            }
            tr:nth-child(even) {
                background: #f2f2f2;
            }
            .links {
                margin-top: 30px;
                padding: 15px;
                background: #e6f7ff;
                border-radius: 5px;
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
            <h1>All the Books Available in the Store</h1>
            <p>Browse through the available books below:</p>
            <table>
                <tr>
                    <th>Book Number</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Description</th>
                </tr>
                <% 
                List<Book> books = (List<Book>) request.getAttribute("books");
                for (Book book : books) {
                %>
                <tr>
                    <td><%= book.getBookNumber() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getPrice() %></td>
                    <td><%= book.getDescription() %></td>
                </tr>
                <% } %>
            </table>
            
            <div class="links">
                <p>To go back home, click <a href="menu.jsp">Menu</a></p>
                <p>To find a book, click <a href="findBook.jsp">Find Book</a></p>
            </div>
        </div>
    </body>
</html>