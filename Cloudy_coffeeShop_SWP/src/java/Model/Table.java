package Model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Ho Hieu
 */
public class Table {

    //table_id int, location String, price float, check_Available boolean
    private int table_id;
    private String location;
    private float price;
    private int check_Available;

    public Table() {
    }

    public Table(int table_id, String location, float price, int check_Available) {
        this.table_id = table_id;
        this.location = location;
        this.price = price;
        this.check_Available = check_Available;
    }

    public int getTable_id() {
        return table_id;
    }

    public void setTable_id(int table_id) {
        this.table_id = table_id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getCheck_Available() {
        return check_Available;
    }

    public void setCheck_Available(int check_Available) {
        this.check_Available = check_Available;
    }

}
