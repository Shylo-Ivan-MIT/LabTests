<%-- 
    Document   : update
    Created on : 7 ???. 2021 ?., 02:03:57
    Author     : ??????????
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <h1>Update</h1>
        <div>
    <form action="<%=request.getContextPath()%>/form" method="post">
                <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
                
                Fill in form <br>
                <input type="text" name="itemName" value="<%=request.getParameter("itemName")%>" required><br/>
                
                <input type="text" name="itemPrice" value="<%=request.getParameter("itemPrice")%>" required><br/>
                
                <input type="text" name="itemAmount" value="<%=request.getParameter("itemAmount")%>" required><br/>
                
                <input type="text" name="itemClientName" value="<%=request.getParameter("itemClientName")%>"><br/>
                
                <input type="text" name="itemDate" value="<%=request.getParameter("itemDate")%>" required><br/>
                
                <input type="text" name="adress" value="<%=request.getParameter("adress")%>"><br/>

                <button class="button" type="submit">Update</button>
    </form>
    <a class="return" href="<%=request.getContextPath()%>">Return</a>
</div>  
    </body>
</html>
