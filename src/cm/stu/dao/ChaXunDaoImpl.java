package cm.stu.dao;

import cm.stu.bean.Person;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ChaXunDaoImpl implements ChaXunDao{
    @Override
    public List<Person> getAllPerson2(String teacherName) {
        String sql ="select * from person where userName like '" + teacherName +"%' and userIdentify = 1";
        System.out.println(sql);
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        ResultSet res = null;
        List<Person> list = new ArrayList<>();
        try {
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
            while (res.next()) {
                Person newPerson = new Person();
                newPerson.setUserAccount(res.getString("userAccount"));
                newPerson.setUserIdCard(res.getString("userIdCard"));
                newPerson.setUserPassword(res.getString("userPassword"));
                newPerson.setUserName(res.getString("userName"));
                newPerson.setUserIdentify(res.getInt("userIdentify"));
                newPerson.setUserOtherName(res.getString("userOtherName"));
                list.add(newPerson);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
}
