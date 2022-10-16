<%-- 
    Document   : shoppingList
    Created on : 13-Oct-2022, 8:20:31 AM
    Author     : Kyle Helmer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <a href="ShoppingList?action=logout">Logout</a>

        <form action="" method="post">
            <h2>List:</h2>
            Add Item: <input type="text" name="addThis">
            <input type="submit"value="Add Item">
            <input type="hidden" name="action" value="add">
        </form>

        <form action="" method="post">
            <ul> 
                <c:forEach  items="${listItems}" var="item">
                    <li><input type="radio" name="item" value="${item}">${item}</li>
                    </c:forEach>
            </ul>
            <input type="submit" value="Delete">
            <input type="hidden" value="delete" name="action">


        </form>
    </body>
</html>
