package Model;

public class TableOrder {
    //table_order_id int, user_id int, table_id int, time datetimeSQL, price Float
    private int table_order_id;
    private int user_id;
    private int table_id;
    private String time;
    private float price;

    public TableOrder() {
    }

    public TableOrder(int table_order_id, int user_id, int table_id, String time, float price) {
        this.table_order_id = table_order_id;
        this.user_id = user_id;
        this.table_id = table_id;
        this.time = time;
        this.price = price;
    }

    public int getTable_order_id() {
        return table_order_id;
    }

    public void setTable_order_id(int table_order_id) {
        this.table_order_id = table_order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getTable_id() {
        return table_id;
    }

    public void setTable_id(int table_id) {
        this.table_id = table_id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
