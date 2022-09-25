/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import ConnectDB.DBConnection;
import Model.Drink;
import java.sql.Connection;
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
}
