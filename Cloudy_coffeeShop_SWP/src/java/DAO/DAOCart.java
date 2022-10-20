/*
 *  To change this license header, choose License Headers in Project Properties.
 *  To change this template file, choose Tools | Templates
 *  and open the template in the editor.
 */
package DAO;

import ConnectDB.DBConnection;
import Model.Cart;
import Model.Drink;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.Date;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
public class DAOCart {

    public static ArrayList<Cart> getCart(int user_id) {
        ArrayList<Cart> carts = new ArrayList<>();
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "SELECT * FROM Carts WHERE userId = ? AND checkout = ?;";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
            statement.setInt(1, user_id);
            statement.setBoolean(2, false);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int cart_id = result.getInt(1);
                int drink_id = result.getInt(3);
                int amount = result.getInt(4);
                boolean checkout = false;
                carts.add(new Cart(cart_id, user_id, drink_id, amount, checkout));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return carts;
    }

    public static void addCart(int user_id, int drink_id, int amount) {
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "INSERT INTO Carts (userId, drink_id, amount, checkout) VALUES (?, ?, ?, ?)";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
            statement.setInt(1, user_id);
            statement.setInt(2, drink_id);
            statement.setInt(3, amount);
            statement.setBoolean(4, false);
            statement.execute();
            statement.close();
            connect.close();
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public static void modifyCart(int drink_id, int amount) {
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "UPDATE Carts SET amount = ? WHERE drink_id = ? AND checkout = ?;";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
            statement.setInt(1, amount);
            statement.setInt(2, drink_id);
            statement.setBoolean(3, false);
            statement.execute();
            statement.close();
            connect.close();
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public static Drink getDrink(int drink_id) {
        Drink drink = new Drink();
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "SELECT * FROM Drink WHERE drink_id = ?;";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
            statement.setInt(1, drink_id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                String drink_name = result.getString(2);
                float price = result.getFloat(3);
                String kind_of_Drink = result.getString(4);
                String ingedientString = result.getString(5);
                String description = result.getString(6);
                String image = result.getString(7);

                StringTokenizer token = new StringTokenizer(ingedientString, ",");
                int count = token.countTokens();
                String[] ingedients = new String[count];
                int index = 0;
                while (token.hasMoreTokens()) {
                    ingedients[index] = token.nextToken();
                    index++;
                }
                drink = new Drink(drink_id, drink_name, price, kind_of_Drink, ingedients, description, image);
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return drink;
    }

    public static int getTotalPrice(int user_id) {
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "SELECT SUM(amount * price) FROM Drink INNER JOIN Carts ON Drink.drink_id = Carts.drink_id AND Carts.userId = ?;";
        int total = 0;
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
            statement.setInt(1, user_id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                total = result.getInt(1);
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return total;
    }

    public static void removeCart(int cart_id) {
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "DELETE FROM Carts WHERE cart_id = ?;";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
            statement.setInt(1, cart_id);
            statement.execute();
            statement.close();
            connect.close();
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public static void payCart(int userId, String address) {
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "UPDATE Carts SET User_address = ?, checkout = ?, dateCheckout = ? WHERE userId = ? AND checkout = ?";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
            statement.setString(1, address);
            statement.setBoolean(2, true);
            Date datecheckout = new Date(System.currentTimeMillis());
            statement.setDate(3, datecheckout);
            statement.setInt(4, userId);
            statement.setBoolean(5, false);
            statement.execute();
            statement.close();
            connect.close();
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
    }

}
