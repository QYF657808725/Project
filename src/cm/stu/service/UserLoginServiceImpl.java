package cm.stu.service;

import cm.stu.bean.Person;
import cm.stu.dao.UserloginDao;
import cm.stu.dao.UserloginDaoImpl;

public class UserLoginServiceImpl implements UserLoginService {
    UserloginDao ud =new UserloginDaoImpl();
    @Override
    public Person getLogin(Person person) {
        return ud.getLogin(person);
    }
}
