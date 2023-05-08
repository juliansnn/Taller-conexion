package co.edu.sena.tallerjava.util;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.*;

public class ConnectionPool {

    public static void main(String[] args) {
         String url = "jdbc:mysql://localhost:3306/DB_z4?serverTimezone=UTC";
         String user = "";
         String pass = "";

         try {
             Connection connection = DriverManager.getConnection(url, user, pass);
             Statement statement = connection.createStatement();

             ResultSet resultSet = statement.executeQuery("SELECT * FROM Users");

             while(resultSet.next()){
                 System.out.println(resultSet.getString("user_id")+ " | " + resultSet.getString("user_firstname")+" | "+resultSet.getString("user_lastname")+" | "+resultSet.getString("user_email")+" | "+resultSet.getString("user_password")+" | ");
             }
             connection.close();
             statement.close();
             resultSet.close();


         }catch (SQLException e){
            e.printStackTrace();
         }
    }
}
