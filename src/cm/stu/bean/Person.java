package cm.stu.bean;
/*userAccountvarbinary(10) NOT NULL
userIdCardvarbinary(18) NULL
userPasswordvarbinary(20) NULL
userNamevarbinary(20) NULL
userIdentifyint NULL
userOtherNamevarbinary(50) NULL */
public class Person {
    private String userAccount;
    private String userIdCard;
    private String userPassword;
    private String userName;
    private int userIdentify;
    private String userOtherName;

    public Person(String userAccount, String userIdCard, String userPassword, String userName, int userIdentify, String userOtherName) {
        this.userAccount = userAccount;
        this.userIdCard = userIdCard;
        this.userPassword = userPassword;
        this.userName = userName;
        this.userIdentify = userIdentify;
        this.userOtherName = userOtherName;
    }

    public Person() {
    }

    public Person(String userAccount, String userPassword) {
        this.userAccount = userAccount;
        this.userPassword = userPassword;
    }


    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserIdCard() {
        return userIdCard;
    }

    public void setUserIdCard(String userIdCard) {
        this.userIdCard = userIdCard;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getUserIdentify() {
        return userIdentify;
    }

    public void setUserIdentify(int userIdentify) {
        this.userIdentify = userIdentify;
    }

    public String getUserOtherName() {
        return userOtherName;
    }

    public void setUserOtherName(String userOtherName) {
        this.userOtherName = userOtherName;
    }

    @Override
    public String toString() {
        return "Person{" +
                "userAccount='" + userAccount + '\'' +
                ", userIdCard='" + userIdCard + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userName='" + userName + '\'' +
                ", userIdentify=" + userIdentify +
                ", userOtherName='" + userOtherName + '\'' +
                '}';
    }
}
