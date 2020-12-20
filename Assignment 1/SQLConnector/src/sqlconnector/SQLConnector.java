/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sqlconnector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLConnector {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //runSelectQuery();
        //runInsertQuery();
        //getKunderMedOrder();
        getAntalILager();
    }

    public static void runSelectQuery() {
        Connection dbConnection = null;
        Statement statement = null;
        ResultSet rs = null;

        String url = "jdbc:mariadb://atlantis.informatik.umu.se/frih1907_db2_ht2019";
        String user = "frih1907_2019273";
        String password = "danavypyj";

        try {
            dbConnection = DriverManager.getConnection(url, user, password);

            // Bas uppgift
            String strSql = "SELECT artbenamning, artpris FROM ws2_artikel ORDER BY artbenamning ASC";
            
            statement = dbConnection.createStatement();
            rs = statement.executeQuery(strSql);
            while (rs.next()) {
                System.out.println(rs.getString("artbenamning") + ", " + 
                        rs.getInt("artpris"));
            }
        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }

        try {
            if (rs != null) {
                rs.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }
    }

    public static void runInsertQuery() {
        Connection dbConnection = null;
        Statement statement = null;
        ResultSet rs = null;

        String url = "jdbc:mariadb://atlantis.informatik.umu.se/frih1907_db2_ht2019";
        String user = "frih1907_2019273";
        String password = "danavypyj";

        try {
            dbConnection = DriverManager.getConnection(url, user, password);
            String strSql = "INSERT INTO ws2_artikel (artikelnr, artbenamning, "
                    + "artgrupp, artpris) VALUES (7001, 'Yuccapalm', 'GRÖN VÄXT'"
                    + ", 600) ";
            statement = dbConnection.createStatement();
            statement.executeUpdate(strSql);

        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }

        try {
            if (rs != null) {
                rs.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }
    }
    
    public static void getKunderMedOrder() {
        Connection dbConnection = null;
        Statement statement = null;
        ResultSet rs = null;

        String url = "jdbc:mariadb://atlantis.informatik.umu.se/frih1907_db2_ht2019";
        String user = "frih1907_2019273";
        String password = "danavypyj";

        try {
            dbConnection = DriverManager.getConnection(url, user, password);
            
            // Fördjupningsuppgift 1
            String strSql = "SELECT k.kfnamn, k.kenamn, ko.ordernr, ko.orderdatum\n"
                    + "FROM ws2_kund as k\n"
                    + "JOIN ws2_korder as ko using (kundnr)";
            statement = dbConnection.createStatement();
            rs = statement.executeQuery(strSql);
            while (rs.next()) {
                System.out.println(rs.getString("k.kfnamn") + ", " + 
                        rs.getString("k.kenamn") + ", " + 
                        rs.getInt("ko.ordernr") + ", " + 
                        rs.getString("ko.orderdatum") + ", ");
            }
        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }

        try {
            if (rs != null) {
                rs.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }
    }
    
    public static void getAntalILager() {
        Connection dbConnection = null;
        Statement statement = null;
        ResultSet rs = null;

        String url = "jdbc:mariadb://atlantis.informatik.umu.se/frih1907_db2_ht2019";
        String user = "frih1907_2019273";
        String password = "danavypyj";

        try {
            dbConnection = DriverManager.getConnection(url, user, password);
            
            // Fördjupningsuppgift 1
            String strSql = "SELECT artikelnr, artbenamning, l.antalilager "
                    + "FROM ws2_artikel as a JOIN ws2_lager as l USING (artikelnr) "
                    + "WHERE l.antalilager BETWEEN 1 AND 9 ";
            statement = dbConnection.createStatement();
            rs = statement.executeQuery(strSql);
            while (rs.next()) {
                System.out.println(rs.getString("artikelnr") + ", " + 
                        rs.getString("artbenamning") + ", " + 
                        rs.getInt("l.antalilager"));
            }
        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }

        try {
            if (rs != null) {
                rs.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (dbConnection != null) {
                dbConnection.close();
            }
        } catch (SQLException ex) {
            System.err.println("Ett fel har uppstått: " + ex.toString());
        }
    }
    
}
