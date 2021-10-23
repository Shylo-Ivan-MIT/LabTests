<%-- 
    Document   : add
    Created on : 7 ???. 2021 ?., 02:03:05
    Author     : ??????????
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add</title>
    </head>
    <body>
        <h1>Add</h1>
        <div>
    <form action="<%=request.getContextPath()%>/" method="post">
                <input type="hidden" name="id" value="0">
                Fill in form <br>
                <input type="hidden" name="title" value="Submited"/>

                <input type="text" name="itemName" placeholder="itemName" required><br/>
                <input type="text" name="itemPrice" placeholder="itemPrice" required><br/>
                <input type="text" name="itemAmount" placeholder="itemAmount" required><br/>
                <input type="text" name="itemClientName" placeholder="itemClientName" required><br/>
                <input type="text" name="itemDate" placeholder="itemDate" required><br/>
                <input type="text" name="adress" placeholder="adress"><br/>

                <button class="button" type="submit">Submit</button>
            </form>
</div>
    </body>
</html>
