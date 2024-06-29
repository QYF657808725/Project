package cm.stu.service;

import cm.stu.dao.UpdateDao;
import cm.stu.dao.UpdateDaoImpl;

public class UpdateServiceImpl  implements UpdateService{
    UpdateDao UD=new UpdateDaoImpl();

    @Override
    public void truepassword(String userAccount, String userPassword) {
        UD.truepassword(userAccount,userPassword);
    }

    @Override
    public void truejiben(String userAccount, String newjiben) {
        UD.truejiben(userAccount,newjiben);
    }

    @Override
    public void truekeyan(String userAccount, String newkeyan) {
        UD.truekeyan(userAccount,newkeyan);
    }

    @Override
    public void UpDay(String userAccount, String dayy, String day) {
        UD.UpDay(userAccount,dayy,day);
    }

    @Override
    public void tyDay(String userAccount, String day) {
        UD.tyDay(userAccount,day);
    }
}
