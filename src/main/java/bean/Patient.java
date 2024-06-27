package bean;

public class Patient{
    /*create table if not exists patient (id int primary key auto_increment,
                                        account char(16),
    email char(32) ,
    password char(32),
    name char(16),
    integrity.jsp tinyint);*/
    private String id;
    private String account;
    private String identityCardLastSix;
    private String password;
    private String name;
    private String integrity;

    public Patient() {
    }

    public Patient(String id, String account, String identityCardLastSix, String password, String name, String integrity) {
        this.id = id;
        this.account = account;
        this.identityCardLastSix = identityCardLastSix;
        this.password = password;
        this.name = name;
        this.integrity = integrity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getIdentityCard() {
        return identityCardLastSix;
    }

    public void setEmail(String identityCardLastSix) {
        this.identityCardLastSix = identityCardLastSix;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntegrity() {
        return integrity;
    }

    public void setIntegrity(String integrity) {
        this.integrity = integrity;
    }
}
