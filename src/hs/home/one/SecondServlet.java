package hs.home.one;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.net.URLDecoder;

@WebServlet(name = "SecondServlet",
        urlPatterns = "/SecondServlet",
        loadOnStartup = 10)
public class SecondServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charSet=GBK");
        String name = URLDecoder.decode(request.getParameter("name"),"gbk");
        String gender = URLDecoder.decode(request.getParameter("gender"),"gbk");
        String[] colors = request.getParameterValues("color");
        String country = URLDecoder.decode(request.getParameter("country"),"gbk");
        PrintStream out = new PrintStream(response.getOutputStream());
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet测试</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("你的名字: " + name + "<hr/>");
        out.println("你的性别: " + gender + "<hr/>");
        out.println("你喜欢的颜色: ");
        for(String color : colors)
        {
            URLDecoder.decode(request.getParameter("color"),"gbk");
            out.println(color+ " ");
        }
        out.println("<hr/>");
        out.println("你喜欢的颜色: "+"<hr/>");
        out.println("你来自的国家: " + country + "<hr/>");
        out.println("</body>");
        out.println("</html>");
    }

}

