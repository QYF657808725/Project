package cm.stu.dao;

import cm.stu.bean.Person;
import cm.stu.bean.Rizhi;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GuanLiDaoImpl implements  GuanLiDao{
    @Override
    public void newstu(String userAccount, String userPassword, String userIdCard, String userName, String userIdentify, String userOtherName) {
        String sql="insert into person (userAccount,userPassword,userIdCard,userName,userIdentify,userOtherName,dianjishu) values ('" +
                userAccount+"','"+userPassword+"','"+userIdCard +"','"+userName+"',"+userIdentify+",'"+userOtherName+"',0)";
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

    @Override
    public void newtea(String userName, String userIdCard,String userOtherName, String userAccount, String filename) {
        String sql="insert into teacher (Name,Id,Specialty,Account,day1,day2,day3,day4," +
                "day5,day6,day7,imgurl) values ('" +
                userName+"','"+userIdCard+"','"+userOtherName +"','"+userAccount+"',0,0,0,0,0,0,0,'"+filename+"')";
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

    @Override
    public void delete(String userAccount) {
        String sql="delete from person where userAccount = '"+userAccount+"'";
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

    @Override
    public void delete2(String userAccount) {
        String sql="delete from teacher where Account = '"+userAccount+"'";
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

    @Override
    public Rizhi look() {

        String sql = "select * from jilu";
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        ResultSet res = null;
        Rizhi newrizhi =null;
        try {
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
            while (res.next()) {
                newrizhi = new Rizhi();
                newrizhi.setDay1text(res.getString("day1text"));
                newrizhi.setDay2text(res.getString("day2text"));
                newrizhi.setDay3text(res.getString("day3text"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return newrizhi;
    }

    @Override
    public void jilu(String formattedTime) {
        String sql="UPDATE jilu SET day3text = CONCAT(day3text,'<br>', '"+formattedTime+"')";
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
