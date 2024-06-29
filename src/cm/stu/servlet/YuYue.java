package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.bean.Teacher;
import cm.stu.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/YuYue")
public class YuYue extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action.equals("first")) {
            req.setAttribute("keyuyue","true");
            req.getRequestDispatcher("yuyue.jsp").forward(req, resp);
        } else if (action.equals("second")) {
            HttpSession session = req.getSession();
            String riqi = req.getParameter("riqi");
            String Tname = null;
            String Sname = null;
            req.setAttribute("keyuyue","true");
            if (session != null) {
                Teacher oldteacher = (Teacher) session.getAttribute("teacher");  // 获取会话属性
                Tname = oldteacher.getAccount();//预约老师账户
                Person oldperson = (Person) session.getAttribute("session_person");
                Sname = oldperson.getUserName();//预约学生姓名
            }
            YuYueService yy = new YuYueServiceImpl();
            int a = 0;
            String uesrAccount = Tname;//账户
            a = yy.update(uesrAccount, riqi, Sname);//标志
            if (a == 1)//成功需要刷新日程表
            {
                GuanLiService GL = new GuanLiServiceImpl();
                Person oldperson = (Person) session.getAttribute("session_person");
                Teacher oldteacher = (Teacher) session.getAttribute("teacher");  // 获取会话属性

                LocalDateTime currentTime = LocalDateTime.now();
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                String formattedTime=currentTime.format(formatter);
                formattedTime+="  学生"+oldperson.getUserAccount()+"申请预约老师"+oldteacher.getAccount();
                GL.jilu(formattedTime);

                yy.update2(uesrAccount, riqi, Sname);//空闲则更新人
                ZhuanYiService ZY=new ZhuanYiServiceImpl();
                String Account=oldteacher.getAccount();
                Teacher newteacher = ZY.getteacher(Account);
                //System.out.println(newteacher);
                session.setAttribute("teacher",newteacher);
                req.setAttribute("mainBottom","richeng.jsp");
                req.getRequestDispatcher("teacher.jsp").forward(req, resp);
               //req.getRequestDispatcher("success.jsp").forward(req, resp);
            } else
            {
                req.setAttribute("tip4","该日期不可预约");
                req.getRequestDispatcher("yuyue.jsp").forward(req, resp);
        }}
    }
}
