package cm.stu.dao;

import cm.stu.bean.Person;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ZhuanYeDaoImpl implements ZhuanYeDao{
    @Override
    public List<Person> getAllPerson(String zhuanYe) {
        String sql ="select * from person where userOtherName like'" + zhuanYe +"%' and userIdentify = 1 ORDER BY dianjishu DESC LIMIT 5";
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
                /*userAccountvarbinary(10) NOT NULL
userIdCardvarbinary(18) NULL
userPasswordvarbinary(20) NULL
userNamevarbinary(20) NULL
userIdentifyint NULL
userOtherNamevarbinary(50) NULL */
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
