<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Menu Page</title>
   <style>
     body {
       font-family: Arial, sans-serif;
       background-color: #f4f4f4;
       display: flex;
       align-items: center;
       justify-content: center;
       min-height: 100vh;
       margin: 0;
     }
     .menu-container {
       background: #fff;
       padding: 30px 40px;
       border-radius: 10px;
       box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
       text-align: center;
       width: 300px;
     }
     h1 {
       color: #007bff;
       margin-bottom: 20px;
     }
     p {
       margin-bottom: 20px;
       color: #555;
     }
     ul {
       padding: 0;
       list-style: none;
       margin: 0;
     }
     li {
       margin: 10px 0;
     }
     a {
       display: block;
       padding: 10px 15px;
       background: #007bff;
       color: #fff;
       text-decoration: none;
       border-radius: 5px;
       transition: background 0.3s ease;
     }
     a:hover {
       background: #0056b3;
     }
   </style>
</head>
<body>
  <div class="menu-container">
    <h1>Book Menu</h1>
    <p>Select an option from below:</p>
    <ul>
      <li><a href="addBook.jsp">Add Book</a></li>
      <li><a href="removeBook.jsp">Remove Book</a></li>
      <li><a href="findBook.jsp">Find Book with ID</a></li>
      <li><a href="findBookNumber.jsp">Find Book with Book Number</a></li>
      <li><a href="viewAllBook.jsp">View All Books</a></li>
    </ul>
  </div>
</body>
</html>