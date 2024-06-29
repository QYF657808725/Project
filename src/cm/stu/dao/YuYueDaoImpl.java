package cm.stu.dao;

import cm.stu.bean.Person;
import cm.stu.bean.Teacher;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class YuYueDaoImpl implements YuYueDao{
    @Override
    public int update(String userAccount, String riqi,String sname)  {
        String sql="update teacher set "+ riqi +" = 1 where Account = '"+userAccount+"' and "+riqi+" =0";
        System.out.println(sql);
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        int flag=0;
        try{
            pre = connection.prepareStatement(sql);
            int i = pre.executeUpdate();
            System.out.println(i);
           if(i>0)
               flag=1;
           else
               flag=0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return flag;
    }

    @Override
    public void update2(String uesrAccount, String riqi, String sname) {
        String sql="update teacher set "+riqi +"stu = '"+sname+"'where Account ='"+uesrAccount+"'";
        System.out.println(sql);
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        int flag=0;
        try{
            pre = connection.prepareStatement(sql);
            pre.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Teacher> getyy(String personname) {
        String sql ="select * from teacher where day1stu='"+personname+"'or " +
                "day2stu='"+personname+"'or " +
                "day3stu='"+personname+"'or " +
                "day4stu='"+personname+"'or " +
                "day5stu='"+personname+"'or " +
                "day6stu='"+personname+"'or " +
                "day6stu='"+personname+"'";
                ;//找出所有与我有关的老师
        System.out.println(sql);
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        ResultSet res = null;
        List<Teacher> list = new ArrayList<>();
        try {
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
            while (res.next()) {
                Teacher newteacher = new Teacher();
                newteacher.setName(res.getString("Name"));
                newteacher.setId(res.getString("Id"));
                newteacher.setSpecialty(res.getString("Specialty"));
                newteacher.setBasic(res.getString("Basic"));
                newteacher.setResearch(res.getString("Research"));
                newteacher.setAccount(res.getString("Account"));
                newteacher.setDay1(res.getInt("day1"));
                newteacher.setDay1stu(res.getString("day1stu"));
                newteacher.setDay2(res.getInt("day2"));
                newteacher.setDay2stu(res.getString("day2stu"));
                newteacher.setDay3(res.getInt("day3"));
                newteacher.setDay3stu(res.getString("day3stu"));
                newteacher.setDay4(res.getInt("day4"));
                newteacher.setDay4stu(res.getString("day4stu"));
                newteacher.setDay5(res.getInt("day5"));
                newteacher.setDay5stu(res.getString("day5stu"));
                newteacher.setDay6(res.getInt("day6"));
                newteacher.setDay6stu(res.getString("day6stu"));
                newteacher.setDay7(res.getInt("day7"));
                newteacher.setDay7stu(res.getString("day7stu"));
                newteacher.setImgurl(res.getString("imgurl"));
                list.add(newteacher);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
}
}
