package cm.stu.service;

import cm.stu.bean.Teacher;

public interface ZhuanYiService {
    Teacher getteacher(String Account);

    void dianji(String account);
}
