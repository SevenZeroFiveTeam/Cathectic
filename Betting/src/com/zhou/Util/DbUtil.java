package com.zhou.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	private static String dbURL="jdbc:mysql://localhost:3306/db_jsp";
	private static  String dbUserName="root";
	private static  String dbPassword="123456";
	private static  String jdbcName="com.mysql.jdbc.Driver";
	
	public static Connection getConnection() throws Exception{
		Class.forName(jdbcName);
		Connection connection=DriverManager.getConnection(dbURL,dbUserName,dbPassword);
		return connection;
	}
	public static void closeConnection(Connection connection) throws SQLException {
		if (connection!=null) {
			connection.close();
		}
	}
}
