<%-- 
    Document   : shoppingList
    Created on : 13-Oct-2022, 8:20:31 AM
    Author     : Kyle Helmer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        Hello, ${username} 
        <br>
        <form action="" method="POST">
            <a href="shoppingList?Logout">Logout</a>
        </form>
        
        <h2>List:</h2>
        
        Add Item: <input type="text" name="" value="">
        <input type="submit" name="" value="Add Item">
               
        <ul>
            
        </ul>
                        
    </body>
</html>
