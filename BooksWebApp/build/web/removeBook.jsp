<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Book Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                text-align: center;
                padding: 20px;
            }
            form {
                background: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                display: inline-block;
                width: 300px;
            }
            h1, p {
                text-align: center;
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
                background: #d9534f;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background 0.3s;
                width: 100%;
            }
            input[type="submit"]:hover {
                background: #c9302c;
            }
        </style>
    </head>
    <body>
        <form action="removeBookServlet.do" method="POST">
            <h1>Remove Book</h1>
            <p>Enter Book Details:</p>
            <table>
                <tr>
                    <td><label for="id">Enter book ID:</label></td>
                </tr>
                <tr>
                    <td><input type="text" id="id" name="id" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="REMOVE"></td>
                </tr>
            </table>
        </form>
    </body>
</html>