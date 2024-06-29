package cm.stu.service;

import cm.stu.bean.Rizhi;
import cm.stu.dao.GuanLiDao;
import cm.stu.dao.GuanLiDaoImpl;

public class GuanLiServiceImpl implements GuanLiService{
    GuanLiDao GL=new GuanLiDaoImpl();

    @Override
    public void newstu(String userAccount, String userPassword, String userIdCard, String userName, String userIdentify, String userOtherName) {
        GL.newstu(userAccount,userPassword,userIdCard,userName,userIdentify,userOtherName);
    }

    @Override
    public void newtea(String userName, String userIdCard,String userOtherName, String userAccount, String filename) {
        GL.newtea(userName,userIdCard,userOtherName,userAccount,filename);
    }

    @Override
    public void delete(String userAccount) {
        GL.delete(userAccount);
    }

    @Override
    public void delete2(String userAccount) {
        GL.delete2(userAccount);
    }

    @Override
    public Rizhi look() {
        return GL.look();
    }

    @Override
    public void jilu(String formattedTime) {
        GL.jilu(formattedTime);
    }
}
