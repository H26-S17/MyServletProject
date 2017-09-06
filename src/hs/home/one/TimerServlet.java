package hs.home.one;

import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;

import javax.swing.*;
import java.util.Date;

@WebServlet(loadOnStartup = 1)
public class TimerServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
        Timer t = new Timer(1000, e -> System.out.println(new Date()));
        t.start();
    }
}
