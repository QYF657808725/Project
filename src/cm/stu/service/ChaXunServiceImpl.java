package cm.stu.service;

import cm.stu.bean.Person;
import cm.stu.dao.ChaXunDao;
import cm.stu.dao.ChaXunDaoImpl;
import cm.stu.dao.ZhuanYeDao;
import cm.stu.dao.ZhuanYeDaoImpl;

import java.util.List;

public class ChaXunServiceImpl implements ChaXunService {
    ChaXunDao CX=new ChaXunDaoImpl();
    @Override
    public List<Person> getAllPerson2(String teacherName) {
        return CX.getAllPerson2(teacherName);
    }
}
