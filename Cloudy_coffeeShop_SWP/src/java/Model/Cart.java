/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;    

/**
 *
 * @author Ho Hieu
 */
public class Cart {
    //cart_id int, user_id int, drink_id int, amount int, address string, check_out boolean
    private int cart_id;
    private int user_id;
    private int drink_id;
    private int amount;
    private String address;
    private boolean check_out;
    
    public Cart() {
    }

    public Cart(int cart_id, int user_id, int drink_id, int amount, String address, boolean check_out) {
        this.cart_id = cart_id;
        this.user_id = user_id;
        this.drink_id = drink_id;
        this.amount = amount;
        this.address = address;
        this.check_out = check_out;
    }

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getDrink_id() {
        return drink_id;
    }

    public void setDrink_id(int drink_id) {
        this.drink_id = drink_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isCheck_out() {
        return check_out;
    }

    public void setCheck_out(boolean check_out) {
        this.check_out = check_out;
    }
    
}
