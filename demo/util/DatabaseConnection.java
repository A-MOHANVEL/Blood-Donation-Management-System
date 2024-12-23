package com.demo.util;

//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DBUtil {
//    private static final String URL = "jdbc:mysql://localhost:3306/blood-donation"; // Make sure this URL is correct
//    private static final String USER = "root"; // Make sure this username is correct
//    private static final String PASSWORD = "1234"; // Make sure this password is correct
//
//    public static Connection getConnection() throws SQLException {
//        // Load MySQL JDBC driver
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the JDBC driver
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//            throw new SQLException("JDBC Driver not found.", e);
//        }
//
//        // Get a connection to the database
//        return DriverManager.getConnection(URL, USER, PASSWORD);
//    }
/*
 * //} package com.demo.util;
 * 
 * import java.sql.Connection; import java.sql.DriverManager; import
 * java.sql.SQLException;
 * 
 * public class DBUtil { private static final String URL =
 * "jdbc:mysql://localhost:3306/blood-donation"; // Update with your database
 * name private static final String USER = "root"; // Update with your database
 * username private static final String PASSWORD = "1234"; // Update with your
 * database password
 * 
 * public static Connection getConnection() throws SQLException { try {
 * Class.forName("com.mysql.cj.jdbc.Driver"); } catch (ClassNotFoundException e)
 * { e.printStackTrace(); } return DriverManager.getConnection(URL, USER,
 * PASSWORD); } }
 */
/*
 * import java.sql.Connection; import java.sql.DriverManager; import
 * java.sql.SQLException;
 * 
 * public class DBUtil { private static final String URL =
 * "jdbc:mysql://localhost:3306/blood-donation"; private static final String
 * USER = "root"; private static final String PASSWORD = "1234";
 * 
 * public static Connection getConnection() { try {
 * Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC Driver return
 * DriverManager.getConnection(URL, USER, PASSWORD); } catch
 * (ClassNotFoundException | SQLException e) { e.printStackTrace(); return null;
 * } } }
 */
/*
 * package com.demo.dao;
 */
/*
 * import java.sql.Connection; import java.sql.DriverManager; import
 * java.sql.SQLException;
 * 
 * public class DatabaseConnection { private static Connection connection =
 * null;
 * 
 * // Method to get the connection public static Connection getConnection() { if
 * (connection == null) { try { Class.forName("com.mysql.cj.jdbc.Driver"); //
 * MySQL JDBC Driver connection = DriverManager.getConnection(
 * "jdbc:mysql://localhost:3306/blood-donation", "root", "1234"); } catch
 * (ClassNotFoundException | SQLException e) { e.printStackTrace(); } } return
 * connection; } }
 * 
 */
//
//package com.demo.util;
/*
 * import java.sql.Connection; import java.sql.DriverManager; import
 * java.sql.SQLException;
 * 
 * public class DatabaseConnection { private static final String URL =
 * "jdbc:mysql://localhost:3306/blood-donation"; // Replace with your DB details
 * private static final String USER = "root"; // Replace with your DB username
 * private static final String PASSWORD = "1234"; // Replace with your DB
 * password
 * 
 * public static Connection initializeDatabase() throws SQLException,
 * ClassNotFoundException { // Load MySQL driver
 * Class.forName("com.mysql.cj.jdbc.Driver"); // Establish connection return
 * DriverManager.getConnection(URL, USER, PASSWORD); }
 * 
 * }
 * 
 * package com.demo.util;
 * 
 * import java.sql.Connection; import java.sql.DriverManager;
 * 
 * public class DatabaseConnection { public static Connection getConnection() {
 * Connection connection = null; try { // Use your own DB URL, username, and
 * password String url = "jdbc:mysql://localhost:3306/blood-donation"; String
 * username = "root"; String password = "1234";
 * Class.forName("com.mysql.cj.jdbc.Driver"); connection =
 * DriverManager.getConnection(url, username, password); } catch (Exception e) {
 * e.printStackTrace(); } return connection; } }
 */

/*
 * package com.demo.util;
 * 
 * import java.sql.Connection; import java.sql.DriverManager; import
 * java.sql.SQLException;
 * 
 * public class DatabaseConnection { // Database credentials private static
 * final String URL = "jdbc:mysql://localhost:3306/blood-donation"; // Replace
 * with your DB details private static final String USER = "root"; // Replace
 * with your DB username private static final String PASSWORD = "1234"; //
 * Replace with your DB password
 * 
 * // Method to initialize database connection public static Connection
 * getConnection() throws SQLException, ClassNotFoundException { Connection
 * connection = null; try { // Load MySQL driver
 * Class.forName("com.mysql.cj.jdbc.Driver"); // Establish connection connection
 * = DriverManager.getConnection(URL, USER, PASSWORD); } catch (SQLException e)
 * { System.err.println("Database connection error: " + e.getMessage()); throw
 * e; // Rethrow exception for further handling } catch (ClassNotFoundException
 * e) { System.err.println("MySQL Driver not found: " + e.getMessage()); throw
 * e; // Rethrow exception for further handling } return connection; }
 * 
 * public static Connection initializeDatabase() { // TODO Auto-generated method
 * stub return null; } }
 */
/*
 * package com.demo.util;
 *//*
	 * import java.sql.Connection; import java.sql.DriverManager;
	 * 
	 * public class DatabaseConnection { public static Connection getConnection() {
	 * Connection connection = null; try { // Use your own DB URL, username, and
	 * password String url = "jdbc:mysql://localhost:3306/blood-donation"; String
	 * username = "root"; // Change as necessary String password = "1234"; // Change
	 * as necessary Class.forName("com.mysql.cj.jdbc.Driver"); connection =
	 * DriverManager.getConnection(url, username, password); } catch (Exception e) {
	 * e.printStackTrace(); } return connection; } }
	 */
/*package com.demo.util;
*/
import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    public static Connection getConnection() {
        Connection connection = null;
        try {
            String url = "jdbc:mysql://localhost:3306/blood-donation"; // Your DB URL
            String username = "root"; // Your DB username
            String password = "1234"; // Your DB password
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
