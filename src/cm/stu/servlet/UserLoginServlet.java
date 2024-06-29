package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.bean.Teacher;
import cm.stu.service.*;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/userLogin")
public class UserLoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String userAccount=req.getParameter("userAccount");
        String userPassword=req.getParameter("userPassword");
        Person person=new Person(userAccount,userPassword);
        UserLoginService ul=new UserLoginServiceImpl();
        Person newPerson =ul.getLogin(person);
        if(newPerson!=null) {//核对后进入系统
            HttpSession session = req.getSession();
            session.setAttribute("session_person", newPerson);//登录的核心是得到session_person用于过滤
            if(newPerson.getUserIdentify()==0) {//学生端显示所有教师信息
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
            else if(newPerson.getUserIdentify()==1)//教师端
            {
                ZhuanYiService ZY=new ZhuanYiServiceImpl();
                Teacher newteacher = ZY.getteacher(userAccount);
                session.setAttribute("teacher",newteacher);
                req.setAttribute("mainBottom","richeng.jsp");
                req.getRequestDispatcher("teacher.jsp").forward(req, resp);
            }
            else if(newPerson.getUserIdentify()==2)//管理员
            {
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
        else
        {
            req.setAttribute("tip","账户密码不一致");
            req.getRequestDispatcher("userlogin.jsp").forward(req,resp);
        }
    }
    }
