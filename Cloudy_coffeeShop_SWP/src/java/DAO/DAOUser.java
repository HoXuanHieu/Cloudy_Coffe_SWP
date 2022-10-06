/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import ConnectDB.DBConnection;
import Model.Drink;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ho Hieu
 */
public class DAOUser {

    public static ArrayList<Drink> getAllData() {
        ArrayList<Drink> drinks = new ArrayList<>();
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "SELECT * FROM Drink;";
        try {
            Connection connect = db.getConnection();
            Statement statement = connect.createStatement();
            ResultSet result = statement.executeQuery(sqlQuery);
            while (result.next()) {
                int drink_id = result.getInt(1);
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
                drinks.add(new Drink(drink_id, drink_name, price, kind_of_Drink, ingedients, description, image));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return drinks;
    }

    public static ArrayList<Drink> getDataForMenu(int begin, int end, int countProduct) {
        ArrayList<Drink> drinks = new ArrayList<>();
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "select top " + countProduct + " * from (select ROW_NUMBER() OVER(order by drink_id) as IndexNo, * from (Select distinct * from Drink) as TempA) as TempB Where IndexNo Between "
                + begin + " and " + end;
        try {
            Connection connect = db.getConnection();
            Statement statement = connect.createStatement();
            ResultSet result = statement.executeQuery(sqlQuery);
            while (result.next()) {
                int drink_id = result.getInt(2);
                String drink_name = result.getString(3);
                float price = result.getFloat(4);
                String kind_of_Drink = result.getString(5);
                String ingedientString = result.getString(6);
                String description = result.getString(7);
                String image = result.getString(8);

                StringTokenizer token = new StringTokenizer(ingedientString, ",");
                int count = token.countTokens();
                String[] ingedients = new String[count];
                int index = 0;
                while (token.hasMoreTokens()) {
                    ingedients[index] = token.nextToken();
                    index++;
                }
                drinks.add(new Drink(drink_id, drink_name, price, kind_of_Drink, ingedients, description, image));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return drinks;
    }

    public static ArrayList<Drink> getDataBestSeller() {
        ArrayList<Drink> drinks = new ArrayList<>();
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "Select * from Drink where drink_id = 3 or drink_id = 7 or drink_id = 10 or drink_id = 12;";
        try {
            Connection connect = db.getConnection();
            Statement statement = connect.createStatement();
            ResultSet result = statement.executeQuery(sqlQuery);
            while (result.next()) {
                int drink_id = result.getInt(1);
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
                drinks.add(new Drink(drink_id, drink_name, price, kind_of_Drink, ingedients, description, image));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return drinks;
    }

    public static ArrayList<User> getDataUser() {
        ArrayList<User> users = new ArrayList<>();
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "SELECT * FROM Users;";
        try {
            Connection connect = db.getConnection();
            Statement statement = connect.createStatement();
            ResultSet result = statement.executeQuery(sqlQuery);
            while (result.next()) {
                int user_id = result.getInt(1);
                String name = result.getString(2);
                String phone = result.getString(3);
                String password = result.getString(4);
                String type = result.getString(5);
                String email = result.getString(6);
                users.add(new User(user_id, name, phone, password, type, email));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return users;
    }

    public static boolean RegisterUser(User user) {
        DBConnection db = DBConnection.getInstance();
        String sql = "INSERT INTO Users VALUES (?,?,?,?,?);";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sql);
            statement.setString(1, user.getName());
            statement.setString(2, user.getPhone());
            statement.setString(3, user.getPassword());
            statement.setString(4, user.getType());
            statement.setString(5, user.getEmail());
            statement.execute();
            statement.close();
            connect.close();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }
}
