package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.User;

public class UserDao extends BaseDao {
	public User login(String adminName, String password) throws SQLException {
		String sql = "select * from admin where adminName=? and password=?";
		Object[] params = { adminName, password };
		ResultSet resultSet = executeSQL(sql, params);
		User user = null;
		if (resultSet.next()) {
			user = new User(resultSet.getInt(1), resultSet.getString(2),
					resultSet.getString(3), resultSet.getString(4),resultSet.getDate(5),resultSet.getString(6));
		}
		conn.close();
		return user;
	}

	// 添加用户
	public int addUser(User user) throws SQLException {
		int result = 0;
		String sql = "insert into admin(adminName,password,phone,createdTime,role)values(?,?,?,?,?)";
		Object[] params = { user.getAdminName(), user.getPassword(),user.getPhone(), new Date(),user.getRole() };
		System.out.println(user.getRole());
		result = executeUpdate(sql, params);
		if (result > 0) {
			System.out.println("插入成功！");
		}
		conn.close();
		return result;

	}

	// 查询用户
	public List<User> findUser() throws SQLException {
		List<User> list = new ArrayList<User>();
		String sql = "select * from admin";
		Object[] params = {};
		ResultSet rs = executeSQL(sql, params);
		while (rs.next()) {
			User user = new User();
			user.setAdminId(rs.getInt(1));
			user.setAdminName(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setPhone(rs.getString(5));
			user.setCreatedTime(rs.getDate(4));
			user.setRole(rs.getString(6));
			list.add(user);
		}
		conn.close();
		return list;
	}

	// 删除用户列表
	public boolean delete(int adminId) throws SQLException {
		boolean flag = false;
		String sql = "delete from admin where adminId=?";
		Object[] params = { adminId };
		int i = executeUpdate(sql, params);
		if (i > 0) {
			System.out.println("删除成功");
			flag = true;
		}
		conn.close();
		return flag;
	}

	// 修改用户列表
	public boolean updateUser(User user, Integer adminId) throws SQLException {
		boolean flag = false;
		String sql = "update admin set adminName=? , phone=? where adminId=?";
		Object[] params = { user.getAdminName(),  user.getPhone(), adminId };
		int i = executeUpdate(sql, params);
		if (i > 0) {
			System.out.println("修改用户列表成功！");
		}
		flag = true;
		// 释放资源
		conn.close();
		return flag;
	}

	// 根据用户ID修改密码，
	public boolean updateUserPass(int adminId, User user) throws SQLException {
		boolean flag = false;
		String sql = "update admin set password=? where adminId=?";
		Object[] params = { user.getPassword(), adminId };
		int i = executeUpdate(sql, params);
		if (i > 0) {
			System.out.println("修改密码成功！");
			flag = true;
		}
		// 释放资源
		conn.close();
		return flag;
	}

	// 根据用户编号查询用户信息,供用户修改模块使用
	public User getUserById(int adminId) throws SQLException {
		User user = new User();
		String sql = "select * from admin where adminId=?";
		Object[] params = { adminId };
		ResultSet rs = this.executeSQL(sql, params);
		while (rs.next()) {
			user.setAdminId(rs.getInt(1));
			user.setAdminName(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setPhone(rs.getString(5));
			user.setCreatedTime(rs.getDate(4));
			user.setRole(rs.getString(6));
		}
		conn.close();
		return user;
	}

	// 根据用户姓名查询用户信息
	public List<User> getUserByName(String adminName) throws SQLException {
		List<User> list = new ArrayList<User>();
		String sql = "select * from admin where adminName like '%" + adminName + "%'";
		Object[] params = {};
		ResultSet rs = this.executeSQL(sql, params);
		while (rs.next()) {
			User user = new User();
			user.setAdminId(rs.getInt(1));
			user.setAdminName(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setPhone(rs.getString(5));
			user.setCreatedTime(rs.getDate(4));
			user.setRole(rs.getString(6));
			list.add(user);
			System.out.print(list);
		}
		conn.close();
		return list;
	}
}
