package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.service.FirstService;
import cm.stu.service.FirstServiceImpl;
import cm.stu.service.GuanLiService;
import cm.stu.service.GuanLiServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet("/delete")
public class deleteServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userAccount=req.getParameter("action");
        HttpSession session = req.getSession();
        GuanLiService GL = new GuanLiServiceImpl();
        GL.delete(userAccount);
        GL.delete2(userAccount);

        Person oldperson = (Person) session.getAttribute("session_person");
        LocalDateTime currentTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedTime=currentTime.format(formatter);
        formattedTime+="  管理员"+oldperson.getUserAccount()+"删除用户"+userAccount;
        GL.jilu(formattedTime);

        FirstService FR = new FirstServiceImpl();
        List<Person> arr3 = FR.getAllPerson4();//得到所有人信息
        if (arr3.isEmpty()) {//原则上不存在不含任何老师即系统初期
            req.setAttribute("mainRight", "blank.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        } else {
            session.setAttribute("arrr", arr3);
            req.setAttribute("mainRight", "person2.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        }
    }
}
