package me.jmll;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;
public class AdminArchivos extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> errores = (List<String>) request.getAttribute("errores");
        request.setAttribute("errores", errores);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/DirForm.jsp");
        dispatcher.forward(request, response);
    }
}