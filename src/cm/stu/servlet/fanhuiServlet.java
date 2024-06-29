package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.bean.Teacher;
import cm.stu.service.*;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/zhuye")
public class fanhuiServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action=req.getParameter("action");

        HttpSession session = req.getSession();
        Person oldperson = (Person) session.getAttribute("session_person");
        String userAccount=oldperson.getUserAccount();
        if(action.equals("guanli"))//三者分别点击返回主页
        {
            FirstService FR = new FirstServiceImpl();
            List<Person> arr3 = FR.getAllPerson4();
            if (arr3.isEmpty()) {//原则上不存在不含任何老师即系统初期
                req.setAttribute("mainRight", "blank.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            } else {
                session.setAttribute("arrr", arr3);
                req.setAttribute("mainRight", "person2.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
        }
        else if(action.equals("stu"))
        {
            FirstService FR = new FirstServiceImpl();
            List<Person> arr3 = FR.getAllPerson3();
            if (arr3.isEmpty()) {//原则上不存在不含任何老师即系统初期
                req.setAttribute("keyuyue", "false");
                req.setAttribute("mainRight", "blank.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            } else {
                session.setAttribute("arr", arr3);
                session.setAttribute("keyuyue", "false");
                req.setAttribute("mainRight", "person.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
        }
        else if(action.equals("tea"))
        {
            ZhuanYiService ZY=new ZhuanYiServiceImpl();
            Teacher newteacher = ZY.getteacher(userAccount);
            session.setAttribute("teacher",newteacher);
            req.setAttribute("mainBottom","richeng.jsp");
            req.getRequestDispatcher("teacher.jsp").forward(req, resp);
        }
    }

}
