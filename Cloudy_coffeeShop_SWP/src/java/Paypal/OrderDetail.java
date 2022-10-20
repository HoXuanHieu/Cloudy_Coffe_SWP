/*
 *  To change this license header, choose License Headers in Project Properties.
 *  To change this template file, choose Tools | Templates
 *  and open the template in the editor.
 */
package Paypal;

/**
 *
 * @author Asus
 */
public class OrderDetail {

    private int userId;
    private float itemTotal;
    private float shipping;
    private float total;

    public OrderDetail(String userId, String itemTotal, String shipping, String total) {
        this.userId = Integer.parseInt(userId);
        this.itemTotal = Float.parseFloat(itemTotal);
        this.shipping = Float.parseFloat(shipping);
        this.total = Float.parseFloat(total);
    }

    public String getUserId() {
        return String.format("%d", userId);
    }

    public String getItemtotal() {
        return String.format("%.2f", itemTotal);
    }

    public String getShipping() {
        return String.format("%.2f", shipping);
    }

    public String getTotal() {
        return String.format("%.2f", total);
    }

}
