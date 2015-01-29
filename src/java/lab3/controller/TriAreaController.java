package lab3.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab3.model.*;

/**
 *
 * @author Daniel
 */
@WebServlet(name = "TriAreaController", urlPatterns = {"/tri"})
public class TriAreaController extends HttpServlet {
    private static final String RESULT_PAGE = "lab3/threeAreaForm.jsp";
    private static final String ACTION_RECT = "rect";
    private static final String ACTION_CIRC = "circl";
    private static final String ACTION_TRI = "tri";
    
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
        try (PrintWriter out = response.getWriter()) {
        
        RectangleAreaService rect = new RectangleAreaService();
        CircleAreaService circ = new CircleAreaService();
        TriangleAreaService tri = new TriangleAreaService();
        
        
        String result = null;
        String width;
        String length;
        
        String radius;
        String base;
        String height;
        String action = request.getParameter("action");
        
        if(action.equals(ACTION_RECT))
            {
                width = request.getParameter("width");
                length = request.getParameter("length");
                result = rect.getAreaMsg(length, width);
            }
        if(action.equals(ACTION_CIRC))
            {
                radius = request.getParameter("radius");
                result = circ.getAreaMsg(radius);
            }
        if(action.equals(ACTION_TRI))
            {
                base = request.getParameter("base");
                height = request.getParameter("height");
                result = tri.getAreaMsg(height, base);
            }
        
        request.setAttribute("area", result);
        
        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
           view.forward(request, response);
        
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
