package cm.stu.dao;

import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateDaoImpl  implements UpdateDao{

    @Override
    public void truepassword(String userAccount, String userPassword) {
        String sql="update person set userPassword ='"+userPassword+"' where userAccount = '"+userAccount+"'";
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
    public void truejiben(String userAccount, String newjiben) {
        String sql="update teacher set Basic ='"+newjiben+"'where Account ='" +userAccount+"'";
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
    public void truekeyan(String userAccount, String newkeyan) {
        String sql="update teacher set Research ='"+newkeyan+"'where Account ='" +userAccount+"'";
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
    public void UpDay(String userAccount, String dayy, String day) {
        String flag=null;
        if(dayy.equals("free"))
            flag="0";
        if(dayy.equals("busy"))
            flag="2";
        String sql="update teacher set day"+day+" ="+flag+" where Account ='" +userAccount+"'";
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
    public void tyDay(String userAccount, String day) {
        String sql="update teacher set day"+day+" = 3 where Account ='" +userAccount+"'";//已约定好
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
