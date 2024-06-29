package cm.stu.dao;

import cm.stu.bean.Teacher;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ZhuanYiDaoImpl implements  ZhuanYiDao{

    @Override
    public Teacher getteacher(String Account) {
        String sql ="select * from teacher where Account ='" +Account+"'";
        System.out.println(sql);
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        ResultSet res = null;
        Teacher newteacher =null;
        try {
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
            while (res.next()) {
                newteacher = new Teacher();
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
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return newteacher;
    }

    @Override
    public void dianji(String account) {

        String sql= "update person SET dianjishu = dianjishu + 1 WHERE userAccount ='"+account+"'";
        System.out.println(sql);
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        try{
            pre = connection.prepareStatement(sql);
            pre.executeUpdate();
        }catch(SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

