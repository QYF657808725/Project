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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/update")
public class updateServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action =req.getParameter("action");
        HttpSession session = req.getSession(false);  // 获取当前会话
        String userAccount=null;
        Person oldperson=null;
        if (session != null) {
            oldperson= (Person) session.getAttribute("session_person");  // 获取会话属性
            userAccount=oldperson.getUserAccount();
        }
        UpdateService UP=new UpdateServiceImpl();
        if(action.equals("password"))
        {
            req.getRequestDispatcher("upPassword.jsp").forward(req, resp);
        }
        else if(action.equals("truepassword"))
        {
            session.setAttribute("keyuyue", "false");
            String userPassword=req.getParameter("userPassword");
          UP.truepassword(userAccount,userPassword);
            oldperson.setUserPassword(userPassword);
            session.setAttribute("session_person", oldperson);
          int a=oldperson.getUserIdentify();

          if(a==1) {

              GuanLiService GL = new GuanLiServiceImpl();
              oldperson = (Person) session.getAttribute("session_person");
              LocalDateTime currentTime = LocalDateTime.now();
              DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
              String formattedTime=currentTime.format(formatter);
              formattedTime+="  老师"+oldperson.getUserAccount()+"修改密码";
              GL.jilu(formattedTime);

              req.setAttribute("mainBottom", "richeng.jsp");
              req.getRequestDispatcher("teacher.jsp").forward(req, resp);
              //req.getRequestDispatcher("success.jsp").forward(req, resp);
          }
          else if(a==0)
          {
              GuanLiService GL = new GuanLiServiceImpl();
              oldperson = (Person) session.getAttribute("session_person");
              LocalDateTime currentTime = LocalDateTime.now();
              DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
              String formattedTime=currentTime.format(formatter);
              formattedTime+="  学生"+oldperson.getUserAccount()+"修改密码";
              GL.jilu(formattedTime);

              req.setAttribute("mainRight", "person.jsp");
              req.getRequestDispatcher("main.jsp").forward(req, resp);
          }
          else if(a==2)//管理员改密码
          {
              GuanLiService GL = new GuanLiServiceImpl();
              oldperson = (Person) session.getAttribute("session_person");
              LocalDateTime currentTime = LocalDateTime.now();
              DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
              String formattedTime=currentTime.format(formatter);
              formattedTime+="  管理员"+oldperson.getUserAccount()+"修改密码";
              GL.jilu(formattedTime);

              req.setAttribute("mainRight", "person2.jsp");
              req.getRequestDispatcher("main.jsp").forward(req, resp);
          }
        }
        else if(action.equals("jiben"))
        {
            req.getRequestDispatcher("UpJiben.jsp").forward(req, resp);
        }
        else if(action.equals("truejiben"))
        {
            GuanLiService GL = new GuanLiServiceImpl();
            oldperson = (Person) session.getAttribute("session_person");
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String formattedTime=currentTime.format(formatter);
            formattedTime+="  老师"+oldperson.getUserAccount()+"修改基本信息";
            GL.jilu(formattedTime);

            String newjiben=req.getParameter("Jiben");//拿到修改后的基本信息
            UP.truejiben(userAccount,newjiben);
            ZhuanYiService ZY=new ZhuanYiServiceImpl();
            Teacher oldteacher=(Teacher) session.getAttribute("teacher");
            String Account=oldteacher.getAccount();
            Teacher newteacher = ZY.getteacher(Account);
            //System.out.println(newteacher);
            session.setAttribute("teacher",newteacher);
            req.setAttribute("mainBottom","richeng.jsp");
            req.getRequestDispatcher("teacher.jsp").forward(req, resp);
            //req.getRequestDispatcher("success.jsp").forward(req, resp);
        }
        else if(action.equals("keyan"))
        {
            req.getRequestDispatcher("upKeyan.jsp").forward(req, resp);
        }
        else if(action.equals("truekeyan"))
        {
           //String newkeyan=req.getParameter("Keyan");//拿到修改后的基本信息
            //UP.truekeyan(userAccount,newkeyan);
            //req.getRequestDispatcher("success.jsp").forward(req, resp);
            GuanLiService GL = new GuanLiServiceImpl();
            oldperson = (Person) session.getAttribute("session_person");
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String formattedTime=currentTime.format(formatter);
            formattedTime+="  老师"+oldperson.getUserAccount()+"修改科研成果信息";
            GL.jilu(formattedTime);

            String newkeyan=req.getParameter("Keyan");//拿到修改后的基本信息
            UP.truekeyan(userAccount,newkeyan);
            ZhuanYiService ZY=new ZhuanYiServiceImpl();
            Teacher oldteacher=(Teacher) session.getAttribute("teacher");
            String Account=oldteacher.getAccount();
            Teacher newteacher = ZY.getteacher(Account);
            //System.out.println(newteacher);
            session.setAttribute("teacher",newteacher);
            req.setAttribute("mainBottom","richeng.jsp");
            req.getRequestDispatcher("teacher.jsp").forward(req, resp);
            //req.getRequestDispatcher("success.jsp").forward(req, resp);
        }
        else if(action.equals("richeng"))
        {
            req.getRequestDispatcher("upRicheng.jsp").forward(req, resp);
        }
        else if(action.equals("truericheng"))
        {
            Teacher oldteacher= (Teacher) session.getAttribute("teacher");
            String day=null;
            String day1=req.getParameter("dayy1");
            if(oldteacher.getDay1()==3||(oldteacher.getDay1()==0&&day1.equals("free"))||(oldteacher.getDay1()==1&&!day1.equals("free")&&!day1.equals("busy"))||(oldteacher.getDay1()==2&&day1.equals("busy")))
            {
                if(oldteacher.getDay1()==1)//同意学生预约
                {
                    day="1";
                    UP.tyDay(userAccount,day);
                }
            }
            else
            {
                day="1";
                UP.UpDay(userAccount,day1,day);
            }
            String day2=req.getParameter("dayy2");
            if(oldteacher.getDay2()==3||(oldteacher.getDay2()==0&&day2.equals("free"))||(oldteacher.getDay2()==1&&!day2.equals("free")&&!day2.equals("busy"))||(oldteacher.getDay2()==2&&day2.equals("busy")))
            {
                if(oldteacher.getDay2()==1)//同意学生预约
                {
                    day="2";
                    UP.tyDay(userAccount,day);
                }
            }
            else
            {
                day="2";
                UP.UpDay(userAccount,day2,day);
            }
            String day3=req.getParameter("dayy3");
            if(oldteacher.getDay3()==3||(oldteacher.getDay3()==0&&day3.equals("free"))||(oldteacher.getDay3()==1&&!day3.equals("free")&&!day3.equals("busy"))||(oldteacher.getDay3()==2&&day3.equals("busy")))
            {
                if(oldteacher.getDay3()==1)//同意学生预约
                {
                    day="3";
                    UP.tyDay(userAccount,day);
                }
            }
            else
            {
                day="3";
                UP.UpDay(userAccount,day3,day);
            }
            String day4=req.getParameter("dayy4");
            if(oldteacher.getDay4()==3||(oldteacher.getDay4()==0&&day4.equals("free"))||(oldteacher.getDay4()==1&&!day4.equals("free")&&!day4.equals("busy"))||(oldteacher.getDay4()==2&&day4.equals("busy")))
            {
                if(oldteacher.getDay4()==1)//同意学生预约
                {
                    day="4";
                    UP.tyDay(userAccount,day);
                }
            }
            else
            {
                day="4";
                UP.UpDay(userAccount,day4,day);
            }
            String day5=req.getParameter("dayy5");
            if(oldteacher.getDay5()==3||(oldteacher.getDay5()==0&&day5.equals("free"))||(oldteacher.getDay5()==1&&!day5.equals("free")&&!day5.equals("busy"))||(oldteacher.getDay5()==2&&day5.equals("busy")))
            {
                if(oldteacher.getDay5()==1)//同意学生预约
                {
                    day="5";
                    UP.tyDay(userAccount,day);
                }
            }
            else
            {
                day="5";
                UP.UpDay(userAccount,day5,day);
            }
            String day6=req.getParameter("dayy6");
            if(oldteacher.getDay6()==3||(oldteacher.getDay6()==0&&day6.equals("free"))||(oldteacher.getDay6()==1&&!day6.equals("free")&&!day6.equals("busy"))||(oldteacher.getDay6()==2&&day6.equals("busy")))
            {
                if(oldteacher.getDay6()==1)//同意学生预约
                {
                    day="6";
                    UP.tyDay(userAccount,day);
                }
            }
            else
            {
                day="6";
                UP.UpDay(userAccount,day6,day);
            }
            String day7=req.getParameter("dayy7");
            if(oldteacher.getDay7()==3||(oldteacher.getDay7()==0&&day7.equals("free"))||(oldteacher.getDay7()==1&&!day7.equals("free")&&!day7.equals("busy"))||(oldteacher.getDay7()==2&&day7.equals("busy")))
            {
                if(oldteacher.getDay7()==1)//同意学生预约
                {
                    day="7";
                    UP.tyDay(userAccount,day);
                }
            }
            else
            {
                day="7";
                UP.UpDay(userAccount,day7,day);
            }

            GuanLiService GL = new GuanLiServiceImpl();
            oldperson = (Person) session.getAttribute("session_person");
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String formattedTime=currentTime.format(formatter);
            formattedTime+="  老师"+oldperson.getUserAccount()+"修改日程信息";
            GL.jilu(formattedTime);

            ZhuanYiService ZY=new ZhuanYiServiceImpl();
            String Account=oldteacher.getAccount();
            Teacher newteacher = ZY.getteacher(Account);
            //System.out.println(newteacher);
            session.setAttribute("teacher",newteacher);
            req.setAttribute("mainBottom","richeng.jsp");
            req.getRequestDispatcher("teacher.jsp").forward(req, resp);
        }
    }
}
