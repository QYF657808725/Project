package cm.stu.service;

import cm.stu.bean.Teacher;

import java.sql.SQLException;
import java.util.List;

public interface YuYueService {
    int update(String userAccount, String riqi,String sname);

    void update2(String uesrAccount, String riqi, String sname);

    List<Teacher> getyy(String personname);
}
