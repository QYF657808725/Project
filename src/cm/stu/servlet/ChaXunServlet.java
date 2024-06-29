package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ChaXun")
public class ChaXunServlet extends HttpServlet {
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        req.setAttribute("keyuyue", "false");
        String teacherName = req.getParameter("teachername");
        ChaXunService CX = new ChaXunServiceImpl();
        List<Person> arr2 = CX.getAllPerson2(teacherName);
        if (arr2.isEmpty()) {
            FirstService FR = new FirstServiceImpl();
            List<Person> arr3 = FR.getAllPerson3();
            if (arr3.isEmpty()) {//原则上不存在不含任何老师即系统初期
                req.setAttribute("mainRight", "blank.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            } else {
                req.setAttribute("tip2", "不含此老师");
                req.setAttribute("arr", arr3);
                req.setAttribute("mainRight", "person.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("arr", arr2);
            req.setAttribute("mainRight", "person.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        }
    }
}
