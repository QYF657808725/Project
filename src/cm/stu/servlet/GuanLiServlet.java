package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.bean.Rizhi;
import cm.stu.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
@MultipartConfig
@WebServlet("/guanli")
public class GuanLiServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);  // 获取当前会话
        String action=req.getParameter("action");
        if(action.equals("newstu"))
        {
            req.setAttribute("mainRight", "newstu.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        }
        else if(action.equals("look"))//查看日志
        {
            GuanLiService GL = new GuanLiServiceImpl();
            Rizhi rz=new Rizhi();
            rz=GL.look();
            req.setAttribute("riZhi", rz);
            req.setAttribute("mainRight", "look.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        }
        else if(action.equals("truestu"))
        {
            String userAccount=req.getParameter("stuAccount");
            String userPassword="0";//密码默认是0
            String userIdCard=req.getParameter("stuIdCard");//前端验证不为空即可
            String userName=req.getParameter("stuName");//前端验证不为空即可
            String userIdentify="0";//0代表学生
            String userOtherName="学生";
            FirstService FR = new FirstServiceImpl();
            List<Person> arr4 = FR.getAllPerson4();
            int flag=0;
            for (Person person : arr4) {
                if (person.getUserAccount().equals(userAccount)) {
                    { flag=1;
                    break;}
                }
            }
            if(flag==1)//账户不能重复
            {
                req.setAttribute("tipp", "该账户已被注册");
               req.setAttribute("mainRight", "newstu.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
            else
            {
                GuanLiService GL = new GuanLiServiceImpl();
                GL.newstu(userAccount,userPassword,userIdCard,userName,userIdentify,userOtherName);
                FR = new FirstServiceImpl();
                List<Person> arr3 = FR.getAllPerson4();//得到所有人信息

                Person oldperson = (Person) session.getAttribute("session_person");
                LocalDateTime currentTime = LocalDateTime.now();
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                String formattedTime=currentTime.format(formatter);
                formattedTime+="  管理员"+oldperson.getUserAccount()+"新增学生用户"+userAccount;
                GL.jilu(formattedTime);

                session.setAttribute("arrr", arr3);
                req.setAttribute("mainRight", "person2.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
        }
        else if(action.equals("newtea"))
        {
            req.setAttribute("mainRight", "tupian.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        }
        else if(action.equals("truetea"))
        {
            Part part =req.getPart("Img");
            String userAccount=req.getParameter("teaAccount");
            String userPassword="0";
            String userIdCard=req.getParameter("teaIdCard");//前端验证不为空即可
            String userName=req.getParameter("teaName");//前端验证不为空即可
            String userIdentify="1";//1代表老师
            String userOtherName=req.getParameter("teaSpecialty");
            String filename=part.getSubmittedFileName();

            FirstService FR = new FirstServiceImpl();
            List<Person> arr4 = FR.getAllPerson4();
            int flag=0;
            for (Person person : arr4) {
                if (person.getUserAccount().equals(userAccount)) {//账号重复
                    { flag=1;
                        break;}
                }
            }
            if(flag==1)//账户不能重复
            {
                req.setAttribute("tipp1", "该账户已被注册");
                req.setAttribute("mainRight", "tupian.jsp");
                req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
            else
            {
                String path = "D:\\SYSTEM\\web\\img\\";
                path+=filename;
                part.write(path);

                GuanLiService GL = new GuanLiServiceImpl();
                Person oldperson = (Person) session.getAttribute("session_person");
                LocalDateTime currentTime = LocalDateTime.now();
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                String formattedTime=currentTime.format(formatter);
                formattedTime+="  管理员"+oldperson.getUserAccount()+"新增教师用户"+userAccount;
                GL.jilu(formattedTime);


                GL.newstu(userAccount,userPassword,userIdCard,userName,userIdentify,userOtherName);//插入用户表
                GL.newtea(userName,userIdCard,userOtherName,userAccount,filename);//插入教师表
                List<Person> arr3 = FR.getAllPerson4();
                    session.setAttribute("arrr", arr3);
                    req.setAttribute("mainRight", "person2.jsp");
                    req.getRequestDispatcher("main.jsp").forward(req, resp);
            }
        }
    }
}
