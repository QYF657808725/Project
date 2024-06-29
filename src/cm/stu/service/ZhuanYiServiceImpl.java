package cm.stu.service;

import cm.stu.bean.Teacher;
import cm.stu.dao.ZhuanYiDao;
import cm.stu.dao.ZhuanYiDaoImpl;

public class ZhuanYiServiceImpl implements ZhuanYiService{
    ZhuanYiDao ZY = new ZhuanYiDaoImpl();
    @Override
    public Teacher getteacher(String Account) {
        return ZY.getteacher(Account);
    }

    @Override
    public void dianji(String account) {
        ZY.dianji(account);
    }
}
