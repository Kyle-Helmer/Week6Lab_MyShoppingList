<%-- 
    Document   : register
    Created on : 13-Oct-2022, 8:20:24 AM
    Author     : Kyle Helmer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <form action="" method="post">
        Username: <input type="text" name="username" value="${username}"> 
        <input type="submit" value="Register name"> 
        <input type="hidden" name="action" value="register">
        </form> 
        <br>
        ${message}
    </body>
</html>
