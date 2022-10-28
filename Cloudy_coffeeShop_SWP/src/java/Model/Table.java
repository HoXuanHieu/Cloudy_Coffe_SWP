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
    private boolean check_Available;
    private int people;

    public Table() {
    }

    public Table(int table_id, String location, float price, boolean check_Available, int people) {
        this.table_id = table_id;
        this.location = location;
        this.price = price;
        this.check_Available = check_Available;
        this.people = people;
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

    public boolean isCheck_Available() {
        return check_Available;
    }

    public void setCheck_Available(boolean check_Available) {
        this.check_Available = check_Available;
    }

    public int getPeople() {
        return people;
    }

    public void setPeople(int people) {
        this.people = people;
    }

}
