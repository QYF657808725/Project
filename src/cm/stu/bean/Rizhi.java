package cm.stu.bean;

public class Rizhi {
    private String day1text;
    private String day2text;
    private String day3text;

    public Rizhi(String day1text, String day2text, String day3text) {
        this.day1text = day1text;
        this.day2text = day2text;
        this.day3text = day3text;
    }

    public Rizhi() {
    }

    public String getDay1text() {
        return day1text;
    }

    public void setDay1text(String day1text) {
        this.day1text = day1text;
    }

    public String getDay2text() {
        return day2text;
    }

    public void setDay2text(String day2text) {
        this.day2text = day2text;
    }

    public String getDay3text() {
        return day3text;
    }

    public void setDay3text(String day3text) {
        this.day3text = day3text;
    }

    @Override
    public String toString() {
        return "Rizhi{" +
                "day1text='" + day1text + '\'' +
                ", day2text='" + day2text + '\'' +
                ", day3text='" + day3text + '\'' +
                '}';
    }
}
