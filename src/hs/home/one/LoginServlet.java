package hs.home.one;

import hs.home.bean.DbDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet(name = "LoginServlet",urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
        String errMsg = "";
        RequestDispatcher rd;

        String username = request.getParameter("username");
        String passwd = request.getParameter("passwd");

        DbDao db = new DbDao("com.mysql.jdbc.Driver","jdbc:mysql://localhost:3306/test","root","912017");
        try {
            ResultSet rs = db.query("select passwd from user where username = ?", username);
            if(rs.next()){
                if(rs.getString("passwd").equals(passwd)){
//                    HttpSession session = request.getSession();
//                    session.setAttribute("name",username);
                    rd = request.getRequestDispatcher("/mvc/welcome.jsp");
                    rd.forward(request,response);
                }else {
                    errMsg+="用户名和密码不匹配，请重新输入！";
                }
            }else {
                errMsg+="用户名不存在，请注册！";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(errMsg!=null&&!errMsg.equals("")){
            rd = request.getRequestDispatcher("/mvc/login.jsp");
            request.setAttribute("err",errMsg);
            rd.forward(request,response);
        }
    }
}
