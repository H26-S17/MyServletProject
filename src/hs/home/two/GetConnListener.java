package hs.home.two;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;

@WebListener
public class GetConnListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent sce) {
        try {
            ServletContext application = sce.getServletContext();
            String driver = application.getInitParameter("driver");
            String url = application.getInitParameter("url");
            String username = application.getInitParameter("username");
            String passwd = application.getInitParameter("passwd");
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, username, passwd);
            application.setAttribute("conn", conn);
        } catch (Exception ex) {
            System.out.println("Listener获取数据库启动异常" + ex.getMessage());
        }
    }

    public void contextDestroyed(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();
        Connection conn = (Connection) application.getAttribute("conn");
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}