package cm.stu.dao;

import cm.stu.bean.Teacher;

import java.sql.SQLException;
import java.util.List;

public interface YuYueDao {
    int update(String userAccount, String riqi,String sname);

    void update2(String uesrAccount, String riqi, String sname);

    List<Teacher> getyy(String personname);
}
