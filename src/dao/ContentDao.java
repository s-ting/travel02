package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.Content;
import entity.User;


public class ContentDao extends BaseDao{
	//添加新内容
	public int contentAdd(Content content) throws SQLException {
		int result = 0;
		String sql ="insert into content(title,_content,createdTime,_column,adminId)values(?,?,?,?,?)";
		Object[] params = {content.getTitle(),content.getContent(),new Date(), content.getColumn(),content.getAdminId()};
		result = executeUpdate(sql,params);
		if (result > 0) {
			System.out.println("插入成功！");
		}
		conn.close();
		return result;
	}
	// 查询内容--列表
	public List<Content> findContent() throws SQLException{
		List<Content> list = new ArrayList<Content>();
		String sql = "select content.id,content.title,content._content,content.createdTime,"
				+ "content._column,admin.adminName from content,admin where content.adminId=admin.adminId";
		Object[] params ={};
		ResultSet rs = executeSQL(sql,params);
		while(rs.next()){
			Content content = new Content();
			content.setId(rs.getInt(1));
			content.setTitle(rs.getString(2));
			content.setContent(rs.getString(3));
			content.setCreatedTime(rs.getDate(4));
			content.setColumn(rs.getString(5));
			content.setAdminId(rs.getString(6));
			list.add(content);
		}
		conn.close();
		return list;
	}
	// 查询内容--热点线路
	public List<Content> findHotWay() throws SQLException{
		List<Content> list = new ArrayList<Content>();
		String sql = "select content.id,content.title,content._content,content.createdTime,"
				+ "content._column,admin.adminName from content,admin "
				+ "where content.adminId=admin.adminId and _column='热点线路'";
		Object[] params ={};
		ResultSet rs = executeSQL(sql,params);
		while(rs.next()){
			Content content = new Content();
			content.setId(rs.getInt(1));
			content.setTitle(rs.getString(2));
			content.setContent(rs.getString(3));
			content.setCreatedTime(rs.getDate(4));
			content.setColumn(rs.getString(5));
			content.setAdminId(rs.getString(6));
			list.add(content);
		}
		conn.close();
		return list;
	}
	// 查询内容--暑假到了
	public List<Content> findSummer() throws SQLException{
		List<Content> list = new ArrayList<Content>();
		String sql = "select content.id,content.title,content._content,content.createdTime,"
				+ "content._column,admin.adminName from content,admin "
				+ "where content.adminId=admin.adminId and _column='暑假到了'";
		Object[] params ={};
		ResultSet rs = executeSQL(sql,params);
		while(rs.next()){
			Content content = new Content();
			content.setId(rs.getInt(1));
			content.setTitle(rs.getString(2));
			content.setContent(rs.getString(3));
			content.setCreatedTime(rs.getDate(4));
			content.setColumn(rs.getString(5));
			content.setAdminId(rs.getString(6));
			list.add(content);
		}
		conn.close();
		return list;
	}
	// 查询内容--寒假到了
	public List<Content> findWinner() throws SQLException{
		List<Content> list = new ArrayList<Content>();
		String sql = "select content.id,content.title,content._content,content.createdTime,"
				+ "content._column,admin.adminName from content,admin "
				+ "where content.adminId=admin.adminId and _column='寒假到了'";
		Object[] params ={};
		ResultSet rs = executeSQL(sql,params);
		while(rs.next()){
			Content content = new Content();
			content.setId(rs.getInt(1));
			content.setTitle(rs.getString(2));
			content.setContent(rs.getString(3));
			content.setCreatedTime(rs.getDate(4));
			content.setColumn(rs.getString(5));
			content.setAdminId(rs.getString(6));
			list.add(content);
		}
		conn.close();
		return list;
	}
	// 查询内容--毕业旅行
	public List<Content> findGraduate() throws SQLException{
		List<Content> list = new ArrayList<Content>();
		String sql = "select content.id,content.title,content._content,content.createdTime,"
				+ "content._column,admin.adminName from content,admin "
				+ "where content.adminId=admin.adminId and _column='毕业旅行'";
		Object[] params ={};
		ResultSet rs = executeSQL(sql,params);
		while(rs.next()){
			Content content = new Content();
			content.setId(rs.getInt(1));
			content.setTitle(rs.getString(2));
			content.setContent(rs.getString(3));
			content.setCreatedTime(rs.getDate(4));
			content.setColumn(rs.getString(5));
			content.setAdminId(rs.getString(6));
			list.add(content);
		}
		conn.close();
		return list;
	}
	// 修改用户列表
	public boolean contentUpdate(Content content, Integer id) throws SQLException {
		boolean flag = false;
		String sql = "update content set title=?,_content=?,_column=? where id=?";
		Object[] params = {content.getTitle(),content.getContent(),content.getColumn(), id };
		int i = executeUpdate(sql, params);
		if (i > 0) {
			System.out.println("修改内容成功！");
		}
		flag = true;
		// 释放资源
		conn.close();
		return flag;
	}
	// 删除内容列表
	public boolean delete(int id) throws SQLException{
		boolean flag = false;
		String sql = "delete from content where id=?";
		Object[] params = {id};
		int i = executeUpdate(sql, params);
		if(i>0){
			System.out.print("删除成功");
			flag = true;
		}
		conn.close();
		return flag;
	}
	// 根据id查询信息--update
	public Content getTitleById(int id) throws SQLException {
		Content content = new Content();
		String sql = "select content.id,content.title,content._content,content.createdTime,"
				+ "content._column,admin.adminName from content,admin "
				+ "where content.adminId=admin.adminId and  id=?";
		Object[] params = { id };
		ResultSet rs = this.executeSQL(sql, params);
		while(rs.next()){
			content.setId(rs.getInt(1));
			content.setTitle(rs.getString(2));
			content.setContent(rs.getString(3));
			content.setCreatedTime(rs.getDate(4));
			content.setColumn(rs.getString(5));
			content.setAdminId(rs.getString(6));
		}
		conn.close();
		return content;
	}
	//根据标题查询列表
	public List<Content> getListByTitle(String title) throws SQLException {
		// TODO Auto-generated method stub
		List<Content> list = new ArrayList<Content>();

		String sql = "select c.id,c.title,c._content,c.createdTime,c._column,a.adminName "
				+ "FROM content c left JOIN admin a on c.adminId = a.adminId where c.title like '%" + title + "%'";
		Object[] params = {};
		ResultSet rs = this.executeSQL(sql, params);
		while (rs.next()) {
			Content content = new Content();
			content.setId(rs.getInt(1));
			content.setTitle(rs.getString(2));
			content.setContent(rs.getString(3));
			content.setCreatedTime(rs.getDate(4));
			content.setColumn(rs.getString(5));
			content.setAdminId(rs.getString(6));
			list.add(content);
		}
		conn.close();
		return list;
	}
}
