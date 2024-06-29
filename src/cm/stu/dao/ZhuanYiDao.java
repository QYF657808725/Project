package cm.stu.dao;

import cm.stu.bean.Teacher;

public interface ZhuanYiDao {
    Teacher getteacher(String Account);

    void dianji(String account);
}
