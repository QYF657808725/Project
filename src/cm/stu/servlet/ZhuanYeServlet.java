package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.service.FirstService;
import cm.stu.service.FirstServiceImpl;
import cm.stu.service.ZhuanYeService;
import cm.stu.service.ZhuanYeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/teacherTuiJian")
public class ZhuanYeServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        req.setAttribute("keyuyue", "false");
        String ZhuanYe=req.getParameter("ZhuanYe");
        ZhuanYeService ZY=new ZhuanYeServiceImpl();
        List<Person> arr =ZY.getAllPerson(ZhuanYe);
        if(arr.isEmpty()) {
            req.setAttribute("tip3","不含此专业的老师");
            FirstService FR = new FirstServiceImpl();
            List<Person> arr3 = FR.getAllPerson3();
            if (arr3.isEmpty()) {//原则上不存在不含任何老师即系统初期
                req.setAttribute("mainRight", "blank.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            } else {
                req.setAttribute("arr", arr3);
                req.setAttribute("mainRight", "person.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
        }
        else
        {
            req.setAttribute("arr", arr);
            req.setAttribute("mainRight", "person.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        }
    }
}
