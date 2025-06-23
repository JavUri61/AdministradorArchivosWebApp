package me.jmll;
import me.jmll.io.NIO2RecursiveDir;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.nio.file.*;
import java.util.*;
public class ListaArchivos extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathParam = request.getParameter("path");
        Path dirPath = Paths.get(pathParam);
        List<Path> resultados = new ArrayList<>();
        List<String> errores = new ArrayList<>();
        if (Files.exists(dirPath) && Files.isDirectory(dirPath)) {
            resultados = NIO2RecursiveDir.walkdir(dirPath);
        } else {
            Locale locale = (Locale) request.getSession().getAttribute("locale");
            if (locale == null) locale = request.getLocale();
            ResourceBundle bundle = ResourceBundle.getBundle("me.jmll.i18n.app", locale);
            errores.add(bundle.getString("error.directorio.invalido"));
        }
        request.setAttribute("paths", resultados);
        if (!errores.isEmpty()) request.setAttribute("errores", errores);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/DirView.jsp");
        dispatcher.forward(request, response);
    }
}