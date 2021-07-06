package Project;
import java.sql.*;

public class ConnectionProvider {
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodBank","root","padamin1");
			return conn;
			
		} catch(Exception e) {
			System.err.println("connecion ");
			return null;
		}
	}
}
