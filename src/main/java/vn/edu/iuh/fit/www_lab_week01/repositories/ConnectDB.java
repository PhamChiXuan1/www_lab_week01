package vn.edu.iuh.fit.www_lab_week01.repositories;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
    public static Connection con = null;
    public  static Connection getConnection(){
        try {
            Class.forName("org.maridb.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mydb","root","passwork");

        }catch (Exception e){
            e.printStackTrace();
        }
        return  con;
    }
}
