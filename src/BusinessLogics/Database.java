package BusinessLogics;

import java.sql.*;

public class Database {
	public static Connection connect(){
		Connection db = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/hthong_muaban?useUnicode=true&characterEncoding=UTF-8";
			db = DriverManager.getConnection(url, "root", "");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return db;
	}
}
