package cm.stu.service;

import cm.stu.bean.Teacher;
import cm.stu.dao.YuYueDao;
import cm.stu.dao.YuYueDaoImpl;

import java.sql.SQLException;
import java.util.List;

public class YuYueServiceImpl implements YuYueService{
    YuYueDao yd= new YuYueDaoImpl();
    @Override
    public int update(String userAccount, String riqi,String sname){
        return yd.update(userAccount,riqi,sname);
    }

    @Override
    public void update2(String uesrAccount, String riqi, String sname) {
        yd.update2(uesrAccount,riqi,sname);
    }

    @Override
    public List<Teacher> getyy(String personname) {
        return yd.getyy(personname);
    }
}
