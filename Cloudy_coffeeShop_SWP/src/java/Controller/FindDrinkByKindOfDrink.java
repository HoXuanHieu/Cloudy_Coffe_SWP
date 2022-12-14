/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOCart;
import DAO.DAODrink;
import Model.Drink;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ho Hieu
 */
public class FindDrinkByKindOfDrink extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String s = request.getParameter("find");
        ArrayList<Drink> drinks = DAODrink.GetAllDrinkByKindOfDrink(s);
        int numberProduct = drinks.size();
        String pageString = request.getParameter("PageNumber");

        int page;
        if (pageString == null) {
            page = 1;
        } else {
            page = Integer.parseInt(pageString);
        }
        int end = 1, begin = 1, count = 6;
        if ((int) (numberProduct / 6 + 1) == page) {
            end = numberProduct;
            begin = numberProduct - (numberProduct - (page - 1) * 6) + 1;
            count = numberProduct - (page - 1) * 6;
        } else {
            end = page * 6;
            begin = end - 5;
        }

        ArrayList<Drink> drinkForMenu = DAODrink.GetDrinkForKindOfDrink(begin, end, count, s);
        session.setAttribute("maxItems", drinkForMenu.size());
        request.setAttribute("List", drinkForMenu);
        if (drinks.size() % 6 == 0) {
            session.setAttribute("TotalPage", drinks.size() / 6);
        } else {
            session.setAttribute("TotalPage", drinks.size() / 6 + 1);
        }
        request.setAttribute("PageNumber", page);
        //=================

        //get cart==========
        if (session.getAttribute("carts") != null) {
            session.setAttribute("carts", DAOCart.getCart((int) session.getAttribute("user_id")));
        }
        request.setAttribute("Kind", s);
        request.getRequestDispatcher("SearchForKindOfDrink.jsp").forward(request, response);

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
