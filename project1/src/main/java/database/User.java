package database;


public class User {

    String name;
    String email;
    String phone;
    String password;
    String userrole;

    public User() {
    }

    public User(String name, String email, String phone, String password, String userrole) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.userrole=userrole;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
    public void setuserrole(String userrole) {
        this.userrole = userrole;
    }

    public String getuserrole() {
        return userrole;
    }
}