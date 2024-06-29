package cm.stu.service;

import cm.stu.bean.Person;
import cm.stu.dao.ZhuanYeDao;
import cm.stu.dao.ZhuanYeDaoImpl;

import java.util.List;

public class ZhuanYeServiceImpl implements ZhuanYeService {
        ZhuanYeDao ZY=new ZhuanYeDaoImpl();
    @Override
    public List<Person> getAllPerson(String zhuanYe) {
        return ZY.getAllPerson(zhuanYe);
    }
}
