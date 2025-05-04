<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                text-align: center;
            }
            form {
                background: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                display: inline-block;
            }
            h1, p {
                text-align: center;
                margin-bottom: 15px;
            }
            table {
                width: 100%;
            }
            td {
                padding: 10px;
            }
            input[type="text"] {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            input[type="submit"] {
                background: #007bff;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background 0.3s;
            }
            input[type="submit"]:hover {
                background: #0056b3;
            }
        </style>
    </head>
    <body>
        <form action="addBookServlet.do" method="POST">
            <h1>Add Book</h1>
            <p>Add Book Details below:</p>
            <table>
                <tr>
                    <td><label for="title">Title:</label></td>
                    <td><input type="text" id="title" name="title" required></td>
                </tr>
                <tr>
                    <td><label for="price">Price:</label></td>
                    <td><input type="text" id="price" name="price" required></td>
                </tr>
                <tr>
                    <td><label for="desc">Description:</label></td>
                    <td><input type="text" id="desc" name="desc" required></td>
                </tr>
                 <tr>
                    <td><label for="bookNum">Book Number:</label></td>
                    <td><input type="text" id="bookNum" name="bookNum" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="ENTER"></td>
                </tr>
            </table>
        </form>
    </body>
</html>