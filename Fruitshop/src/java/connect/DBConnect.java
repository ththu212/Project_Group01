package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    private static final String serverName = "DESKTOP-VGDP77D";
    private static final String dbName = "ShopTraiCay";
    private static final String portNumber = "1433";
    private static final String userID = "sa";
    private static final String password = "123";

    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
 /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
    public static Connection getConnection() throws Exception {
        //driver class load
        Connection conn = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        //create a connection..
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName + "; encrypt=false";
        conn = DriverManager.getConnection(url, userID, password);
        return conn;
    }
    /*Insert your other code right after this comment*/
 /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/

}
