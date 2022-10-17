/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAOUser;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ho Hieu
 */
public class Login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        Cookie[] cookies = request.getCookies();
        String email = "";
        String name = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("User")) {
                    email = cookie.getValue();
                }
            }
            ArrayList<User> users = DAOUser.getDataUser();
            for (User user : users) {
                if(user.getEmail().equals(email)){
                    name = user.getName();
                }
            }
        }
        request.setAttribute("Name", name);
        request.setAttribute("Email", email);
        request.getRequestDispatcher("DataForIndexPage?PageNumber=1").forward(request, response);

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
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        ArrayList<User> users = DAOUser.getDataUser();
        String check = "";
        String fulName = "null";
        int userId = 0;
        for (int i = 0; i < users.size(); i++) {
            if (users.get(i).getEmail().equals(email)) {
                if (users.get(i).getPassword().equals(pass)) {
                    if (users.get(i).getType().equals("user")) {
                        check = "user";
                        fulName = users.get(i).getName();
                        userId = users.get(i).getUser_id();
                        break;
                    } else {
                        check = "admin";
                        fulName = users.get(i).getName();
                        break;
                    }
                }
            } else {
                check = "none";
            }
        }
        if (check.equals("user")) {
            session.setAttribute("Email", email);
            session.setAttribute("Name", fulName);
            Cookie cookie = new Cookie("User", email);
            cookie.setMaxAge(60 * 10);
            response.addCookie(cookie);
            session.setAttribute("userId", userId);
            request.getRequestDispatcher("DataForIndexPage?PageNumber=1").forward(request, response);
        } else if (check.equals("none")) {
            request.setAttribute("MessageError", "Your Password are incorrect.");
            request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
        }
//        } else if (check.equals("admin")) {
//            request.setAttribute("PageNumber", 1);
//            request.getRequestDispatcher("GetProductsForAdmin?PageNumber=1").forward(request, response);
//        }
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
