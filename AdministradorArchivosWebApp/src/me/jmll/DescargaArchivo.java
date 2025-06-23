package me.jmll;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
public class DescargaArchivo extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = request.getParameter("file");
        Locale locale = (Locale) request.getSession().getAttribute("locale");
        if (locale == null) locale = request.getLocale();
        ResourceBundle bundle = ResourceBundle.getBundle("me.jmll.i18n.app", locale);
        File file = new File(fileName);
        if (!file.exists()) {
            response.getWriter().println(bundle.getString("error.archivo.no.existe"));
            return;
        }
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment;filename=" + file.getName());
        try (FileInputStream in = new FileInputStream(file);
             OutputStream out = response.getOutputStream()) {
            byte[] buffer = new byte[4096];
            int length;
            while ((length = in.read(buffer)) > 0) {
                out.write(buffer, 0, length);
            }
        }
    }
}