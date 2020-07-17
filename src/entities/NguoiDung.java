package entities;

public class NguoiDung {
    private String uname;
    private String passwd;
    private String info;
    private int type;

    public String getUname() { return uname; }

    public void setPasswd(String passwd) { this.passwd = passwd; }

    public String getPasswd() { return passwd; }

    public void setInfo(String info) { this.info = info; }

    public String getInfo() { return info; }

//    public void setType(int type) { this.type = type; }

    public int getType() { return type; }

    public NguoiDung(String name, String passwd, int type) {
        this.uname = name;
        this.passwd = passwd;
        this.type = type;
    }
}
