<%-- 
    Document   : index
    Created on : 7 ???. 2021 ?., 01:58:24
    Author     : ??????????
--%>
<%@page import="org.obrii.mit.dp2021.crud.DataList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Table</title>
    </head>
    <body>
        <h1>Table</h1>
                        <%List<DataList> dataList = (List<DataList>) request.getAttribute("data");%>
                    <table class="styled-table">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Item</th>
                                <th>Price</th>
                                <th>Amount</th>
                                <th>Client</th>
                                <th>Date</th>
                                <th>Adress</th>
                                <th>change</th>
                                <th>delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for(DataList data : dataList) {%>
                        <tr>
                            <td><%=data.getId()%></td>
                            <td><%=data.getItemName()%></td>
                            <td><%=data.getItemPrice()%></td>
                            <td><%=data.getItemAmount()%></td>
                            <td><%=data.getItemClientName()%></td>
                            <td><%=data.getItemDate()%></td>
                            <td><%=data.getAdress()%></td>
                            <td>
                                <form action="update.jsp" method="post">
                                    <input type="hidden" name="id" value="<%=data.getId()%>">
                                    <input type="hidden" name="itemName" value="<%=data.getItemName()%>">
                                    <input type="hidden" name="itemPrice" value="<%=data.getItemPrice()%>">
                                    <input type="hidden" name="itemAmount" value="<%=data.getItemAmount()%>">
                                    <input type="hidden" name="itemClientName" value="<%=data.getItemClientName()%>">
                                    <input type="hidden" name="itemDate" value="<%=data.getItemDate()%>">
                                    <input type="hidden" name="adress" value="<%=data.getAdress()%>">
                                    <input type="submit" value="Update">
                                </form>
                            </td>
                            <td>
                                <form action="<%=request.getContextPath()%>/form" method="get">
                                    <input type="hidden" name="id" value="<%=data.getId()%>">
                                    <input type="submit" value="Delete">
                                </form>
                            </td>
                        </tr>
                       <%}%>
                       <tr>
                           <td colspan="4">
                               <form action= "<%=request.getContextPath()%>/" method="get">
                                    <input type="text" name="search">
                                    <input type="submit" value="search data">
                               </form>
                           </td>
                            <td colspan="3">
                                <form action="add.jsp" method="get">
                                    <input type="submit" value="ADD NEW" >
                                </form>
                            </td>
                        </tr>
                        </tbody>
                    </table>
    </body>
</html>
