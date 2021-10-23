/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.crud;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Користувач
 */
@WebServlet(name = "DataServlet", urlPatterns = {"/"})
public class DataServlet extends HttpServlet {
    FilesCrud CRUD = new FilesCrud(new File(Config.getFileName()));
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Read users
        if (Config.getFileName().equals("")) {
            Config.setFileName(this.getServletContext().getRealPath("") + "data.txt");
            CRUD = new FilesCrud(new File(Config.getFileName()));
        }
        
        if(request.getParameter("search")!=null){
            request.setAttribute("data", CRUD.sortData(request.getParameter("search")));
            }
        else{
            request.setAttribute("data", CRUD.readData());
        }
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Create new 
        DataList user = new DataList(
            Integer.parseInt(req.getParameter("id")),
            req.getParameter("itemName"),
            Integer.parseInt(req.getParameter("itemPrice")),
            Integer.parseInt(req.getParameter("itemAmount")),
            req.getParameter("itemClientName"),
            Integer.parseInt(req.getParameter("itemDate")),
            req.getParameter("adress"),true
        );
        CRUD.createData(user);
        doGet(req,resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Delete
        CRUD.deleteData(Integer.parseInt(req.getParameter("id")));
        doGet(req, resp); 
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Update
        DataList user = new DataList(
            Integer.parseInt(req.getParameter("id")),
            req.getParameter("itemName"),
            Integer.parseInt(req.getParameter("itemPrice")),
            Integer.parseInt(req.getParameter("itemAmount")),
            req.getParameter("itemClientName"),
            Integer.parseInt(req.getParameter("itemDate")),
            req.getParameter("adress"),true
        );
        CRUD.updateData(Integer.parseInt(req.getParameter("id")), user);
        doGet(req, resp); 
    }
}