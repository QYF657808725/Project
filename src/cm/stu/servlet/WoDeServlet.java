package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.bean.Teacher;
import cm.stu.service.YuYueService;
import cm.stu.service.YuYueServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/wodeyuyue")
public class WoDeServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);  // 获取当前会话
        Person oldperson = (Person) session.getAttribute("session_person");
        String action=req.getParameter("action");
        if(action.equals("chakan"))
        {
        YuYueService yy = new YuYueServiceImpl();
        String personname=oldperson.getUserName();
        List<Teacher> arr5 = yy.getyy(personname);
        req.setAttribute("keyuyue","false");
        req.setAttribute("arr5", arr5);
        req.setAttribute("mainRight", "wode.jsp");
        req.getRequestDispatcher("main.jsp").forward(req, resp);
        }
    }
}
