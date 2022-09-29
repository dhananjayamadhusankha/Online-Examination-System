package online_exam;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String url = "jdbc:mysql://localhost:3306/online_system";
	private static String user = "root";
	private static String pass = "Pass";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
		} 
		
		catch (Exception e) {
			System.out.println("DB connection is not success");
		}
		
		return con;
		
	}
}
