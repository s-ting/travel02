package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BaseDao {
	protected Connection conn;
	protected PreparedStatement ps;
	protected Statement stmt;
	protected ResultSet rs;
	//数据库连接
	public Connection getConn() throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");//数据库驱动
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/travel?userUnicode=true&characterEncoding=utf-8", "root", "123");
	}
	//增、删、改操作
	/**
     * 更新的通用方法
     * @param sql   更新的sql语句(update/insert/delete)
     * @param params  sql语句中占位符对应的值
     */
	public int executeUpdate(String sql, Object[] params) throws SQLException {
		int updateRows = 0;
		conn = getConn();
		try {
			ps=conn.prepareStatement(sql);
			//填充占位符
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1, params[i]);
			}
			updateRows=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return updateRows;
	}
	// 查询
	public ResultSet executeSQL(String sql,Object[] params) throws SQLException {
		conn = getConn();
		try {
			ps=conn.prepareStatement(sql);
			//填充占位符
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1, params[i]);
			}
			rs=ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
}
