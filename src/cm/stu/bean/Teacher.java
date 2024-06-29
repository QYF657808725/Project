package cm.stu.bean;

public class Teacher {
    private String Name;//教师信息表
    private String Id;
    private String Specialty;
    private String Basic;
    private String Research;
    private String Account;
    private int day1;
    private String day1stu;
    private int day2;
    private String day2stu;
    private int day3;
    private String day3stu;
    private int day4;
    private String day4stu;
    private int day5;
    private String day5stu;
    private int day6;
    private String day6stu;
    private int day7;
    private String day7stu;
    private String Imgurl;
    private int jishu;
    public Teacher(String account) {
        this.Account = account;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "Name='" + Name + '\'' +
                ", Id='" + Id + '\'' +
                ", Specialty='" + Specialty + '\'' +
                ", Basic='" + Basic + '\'' +
                ", Research='" + Research + '\'' +
                ", Account='" + Account + '\'' +
                ", day1=" + day1 +
                ", day1stu='" + day1stu + '\'' +
                ", day2=" + day2 +
                ", day2stu='" + day2stu + '\'' +
                ", day3=" + day3 +
                ", day3stu='" + day3stu + '\'' +
                ", day4=" + day4 +
                ", day4stu='" + day4stu + '\'' +
                ", day5=" + day5 +
                ", day5stu='" + day5stu + '\'' +
                ", day6=" + day6 +
                ", day6stu='" + day6stu + '\'' +
                ", day7=" + day7 +
                ", day7stu='" + day7stu + '\'' +
                ", Imgurl='" + Imgurl + '\'' +
                ", jishu=" + jishu +
                '}';
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getSpecialty() {
        return Specialty;
    }

    public void setSpecialty(String specialty) {
        Specialty = specialty;
    }

    public String getBasic() {
        return Basic;
    }

    public void setBasic(String basic) {
        Basic = basic;
    }

    public String getResearch() {
        return Research;
    }

    public void setResearch(String research) {
        Research = research;
    }

    public String getAccount() {
        return Account;
    }

    public void setAccount(String account) {
        Account = account;
    }

    public int getDay1() {
        return day1;
    }

    public void setDay1(int day1) {
        this.day1 = day1;
    }

    public String getDay1stu() {
        return day1stu;
    }

    public void setDay1stu(String day1stu) {
        this.day1stu = day1stu;
    }

    public int getDay2() {
        return day2;
    }

    public void setDay2(int day2) {
        this.day2 = day2;
    }

    public String getDay2stu() {
        return day2stu;
    }

    public void setDay2stu(String day2stu) {
        this.day2stu = day2stu;
    }

    public int getDay3() {
        return day3;
    }

    public void setDay3(int day3) {
        this.day3 = day3;
    }

    public String getDay3stu() {
        return day3stu;
    }

    public void setDay3stu(String day3stu) {
        this.day3stu = day3stu;
    }

    public int getDay4() {
        return day4;
    }

    public void setDay4(int day4) {
        this.day4 = day4;
    }

    public String getDay4stu() {
        return day4stu;
    }

    public void setDay4stu(String day4stu) {
        this.day4stu = day4stu;
    }

    public int getDay5() {
        return day5;
    }

    public void setDay5(int day5) {
        this.day5 = day5;
    }

    public String getDay5stu() {
        return day5stu;
    }

    public void setDay5stu(String day5stu) {
        this.day5stu = day5stu;
    }

    public int getDay6() {
        return day6;
    }

    public void setDay6(int day6) {
        this.day6 = day6;
    }

    public String getDay6stu() {
        return day6stu;
    }

    public void setDay6stu(String day6stu) {
        this.day6stu = day6stu;
    }

    public int getDay7() {
        return day7;
    }

    public void setDay7(int day7) {
        this.day7 = day7;
    }

    public String getDay7stu() {
        return day7stu;
    }

    public void setDay7stu(String day7stu) {
        this.day7stu = day7stu;
    }

    public String getImgurl() {
        return Imgurl;
    }

    public void setImgurl(String imgurl) {
        Imgurl = imgurl;
    }

    public int getJishu() {
        return jishu;
    }

    public void setJishu(int jishu) {
        this.jishu = jishu;
    }

    public Teacher() {
    }

    public Teacher(String name, String id, String specialty, String basic, String research, String account, int day1, String day1stu, int day2, String day2stu, int day3, String day3stu, int day4, String day4stu, int day5, String day5stu, int day6, String day6stu, int day7, String day7stu, String imgurl, int jishu) {
        Name = name;
        Id = id;
        Specialty = specialty;
        Basic = basic;
        Research = research;
        Account = account;
        this.day1 = day1;
        this.day1stu = day1stu;
        this.day2 = day2;
        this.day2stu = day2stu;
        this.day3 = day3;
        this.day3stu = day3stu;
        this.day4 = day4;
        this.day4stu = day4stu;
        this.day5 = day5;
        this.day5stu = day5stu;
        this.day6 = day6;
        this.day6stu = day6stu;
        this.day7 = day7;
        this.day7stu = day7stu;
        Imgurl = imgurl;
        this.jishu = jishu;
    }
}
