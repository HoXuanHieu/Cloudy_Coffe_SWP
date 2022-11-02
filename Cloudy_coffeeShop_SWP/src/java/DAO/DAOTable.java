/*
 *  To change this license header, choose License Headers in Project Properties.
 *  To change this template file, choose Tools | Templates
 *  and open the template in the editor.
 */
package DAO;

import ConnectDB.DBConnection;
import Model.Table;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
public class DAOTable {

    public static ArrayList<Table> getTable(String date, String time) {
        ArrayList<Table> tables = new ArrayList<>();
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "SELECT a.table_id, table_location, a.price, COALESCE(b.status, 0) AS status FROM Tables AS a LEFT JOIN (SELECT Tables.table_id, COUNT(Tables.table_id) AS status FROM Tables INNER JOIN Table_Order ON Tables.table_id = Table_Order.table_id AND timeOrder = '" + date + " " + time + "' GROUP BY Tables.table_id) AS b ON a.table_id = b.table_id;";
        try {
            Connection connect = db.getConnection();
            PreparedStatement statement = connect.prepareStatement(sqlQuery);
//            SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
//            try {
//                java.util.Date parseDate = formatter.parse(date + " " + time);
//                java.sql.Date DateTodb = new java.sql.Date(parseDate.getTime());
//            } catch (Exception e) {
//                System.out.println(e);
//            }
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int table_id = result.getInt(1);
                String location = result.getString(2);
                float price = result.getFloat(3);
                int check_Available = (result.getInt(4) + 1) % 2;
                tables.add(new Table(table_id, location, price, check_Available));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
        return tables;
    }

    public static void tableOrder(int userId, String[] ids, String date, String time) {
        DBConnection db = DBConnection.getInstance();
        String sqlQuery = "INSERT INTO Table_Order VALUES (?, ?, '"+date+" "+time+"', 4);";
        try {
            Connection connect = db.getConnection();
            for (int i = 0; i < ids.length; i++) {
                PreparedStatement statement = connect.prepareStatement(sqlQuery);
                statement.setInt(1, userId);
                statement.setInt(2, Integer.parseInt(ids[i]));
                statement.execute();
            }
        } catch (SQLException e) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}
