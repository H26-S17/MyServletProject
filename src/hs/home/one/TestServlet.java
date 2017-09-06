package hs.home.one;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name="TestServlet"
        , urlPatterns={"/TestServlet"}
        , initParams={
        @WebInitParam(name="driver", value="com.mysql.jdbc.Driver"),
        @WebInitParam(name="url", value="jdbc:mysql://localhost:3306/test"),
        @WebInitParam(name="user", value="root"),
        @WebInitParam(name="pass", value="912017")})
public class TestServlet extends HttpServlet
{
    public void init(ServletConfig config)
            throws ServletException
    {
        super.init(config);
    }
    public void service(HttpServletRequest request,
                        HttpServletResponse response)
            throws ServletException,java.io.IOException
    {
        try
        {
            ServletConfig config = getServletConfig();
            String driver = config.getInitParameter("driver");
            String url = config.getInitParameter("url");
            String user = config.getInitParameter("user");
            String pass = config.getInitParameter("pass");
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url,user,pass);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from user");
            response.setContentType("text/html;charSet=gbk");
            PrintStream out = new PrintStream(response.getOutputStream());
            out.println("<html>");
            out.println("<head>");
            out.println("<title>访问Servlet初始化参数</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<table bgcolor=\"#9999dd\" border=\"1\"" +
                    "width=\"480\">");
            while(rs.next())
            {
                out.println("<tr>");
                out.println("<td>" + rs.getString(1) + "</td>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString(3) + "</td>");
                out.println("<td>" + rs.getString(4) + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
