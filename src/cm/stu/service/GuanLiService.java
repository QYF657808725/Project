package cm.stu.service;

import cm.stu.bean.Rizhi;

public interface GuanLiService {
    void newstu(String userAccount, String userPassword, String userIdCard, String userName, String userIdentify, String userOtherName);

    void newtea(String userName, String userIdCard,String userOtherName, String userAccount, String filename);

    void delete(String userAccount);

    void delete2(String userAccount);

    Rizhi look();

    void jilu(String formattedTime);
}
