package cm.stu.service;

import cm.stu.bean.Person;
import cm.stu.dao.ChaXunDao;
import cm.stu.dao.ChaXunDaoImpl;
import cm.stu.dao.FirstDao;
import cm.stu.dao.FirstDaoImpl;

import java.util.List;

public class FirstServiceImpl implements FirstService{
    FirstDao FR=new FirstDaoImpl();
    @Override
    public List<Person> getAllPerson3() {
        return FR.getAllPerson3();
    }

    @Override
    public List<Person> getAllPerson4() {
        return FR.getAllPerson4();
    }
}
