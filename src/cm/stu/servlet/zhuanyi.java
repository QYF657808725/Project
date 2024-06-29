package cm.stu.servlet;

import cm.stu.bean.Teacher;
import cm.stu.service.ZhuanYiService;
import cm.stu.service.ZhuanYiServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/zhuanyi")
public class zhuanyi extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String Account=req.getParameter("action");
            HttpSession session = req.getSession();
            ZhuanYiService ZY=new ZhuanYiServiceImpl();
            Teacher newteacher = ZY.getteacher(Account);
            ZY.dianji(Account);
            //System.out.println(newteacher);
            session.setAttribute("teacher",newteacher);
            req.setAttribute("keyuyue", "true");
            req.setAttribute("mainBottom","richeng.jsp");
            req.getRequestDispatcher("teacher.jsp").forward(req, resp);
        }
    }

