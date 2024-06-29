package cm.stu.dao;

public interface UpdateDao {
    void truepassword(String userAccount, String userPassword);

    void truejiben(String userAccount, String newjiben);

    void truekeyan(String userAccount, String newkeyan);

    void UpDay(String userAccount, String dayy, String day);

    void tyDay(String userAccount, String day);
}
