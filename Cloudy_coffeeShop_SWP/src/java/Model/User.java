package Model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Ho Hieu
 */
public class User {
    //user_id int, name String, phone String, identity_number String,password String,type String
    private int user_id;
    private String name;
    private String phone;
    private String identity_number;
    private String password;
    private String type;

    public User() {
    }

    public User(int user_id, String name, String phone, String identity_number, String password, String type) {
        this.user_id = user_id;
        this.name = name;
        this.phone = phone;
        this.identity_number = identity_number;
        this.password = password;
        this.type = type;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdentity_number() {
        return identity_number;
    }

    public void setIdentity_number(String identity_number) {
        this.identity_number = identity_number;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
