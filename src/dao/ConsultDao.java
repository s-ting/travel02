package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.Consult;
//answer,adminId,answerTime
import entity.Content;

public class ConsultDao extends BaseDao{
	//添加新提问
	public int consultAddQuestion(Consult consult) throws SQLException {
		int result = 0;
		String sql ="insert into consult(questionTitle,question,userId,questionTime)values(?,?,?,?)";
		Object[] params = {consult.getQuestionTitle(),consult.getQuestion(),consult.getUserId(),new Date()};
		result = executeUpdate(sql,params);
		if (result > 0) {
			System.out.println("插入成功！");
		}
		conn.close();
		return result;
	}
	// 查询内容--列表
	public List<Consult> consultList() throws SQLException{
		List<Consult> list = new ArrayList<Consult>();
		String sql = "select c.id,c.questionTitle,c.question,c.questionTime,a.adminName,c.answer,"
				+ "c.answerTime,b.adminName FROM consult c left JOIN admin a on c.userId = a.adminId left JOIN admin b on c.adminId = b.adminId";
		Object[] params ={};
		ResultSet rs = executeSQL(sql,params);
		while(rs.next()){
			Consult consult = new Consult();
			consult.setId(rs.getInt(1));
			consult.setQuestionTitle(rs.getString(2));
			consult.setQuestion(rs.getString(3));
			consult.setQuestionTime(rs.getDate(4));
			consult.setUserId(rs.getString(5));
			consult.setAnswer(rs.getString(6));
			consult.setAnswerTime(rs.getDate(7));
			consult.setAdminId(rs.getString(8));
			list.add(consult);
		}
		conn.close();
		return list;
	}
	// 根据id查询信息
	public Consult consultSearch(int id) throws SQLException {
		Consult consult = new Consult();
		String sql = "select c.id,c.questionTitle,c.question,c.questionTime,a.adminName,c.answer,"
				+ "c.answerTime,b.adminName FROM consult c left JOIN admin a on c.userId = a.adminId left JOIN admin b on c.adminId = b.adminId where id=?";
		Object[] params = { id };
		ResultSet rs = this.executeSQL(sql, params);
		while(rs.next()){
			consult.setId(rs.getInt(1));
			consult.setQuestionTitle(rs.getString(2));
			consult.setQuestion(rs.getString(3));
			consult.setQuestionTime(rs.getDate(4));
			consult.setUserId(rs.getString(5));
			consult.setAnswer(rs.getString(6));
			consult.setAnswerTime(rs.getDate(7));
			consult.setAdminId(rs.getString(8));
		}
		conn.close();
		return consult;
	}
	// 回复
	public boolean consultAnswer(Consult consult, Integer id) throws SQLException {
		boolean flag = false;
		String sql = "update consult set answer=?,adminId=?,answerTime=? where id=?";
		Object[] params = {consult.getAnswer(),consult.getAdminId(),new Date(), id };
		int i = executeUpdate(sql, params);
		if (i > 0) {
			System.out.println("回复成功！");
		}
		flag = true;
		// 释放资源
		conn.close();
		return flag;
	}
	// 删除内容列表
	public boolean delete(int id) throws SQLException{
		boolean flag = false;
		String sql = "delete from consult where id=?";
		Object[] params = {id};
		int i = executeUpdate(sql, params);
		if(i>0){
			System.out.print("删除成功");
			flag = true;
		}
		conn.close();
		return flag;
	}
	//根据标题查询列表
	public List<Consult> consultSearch(String title) throws SQLException {
		// TODO Auto-generated method stub
		List<Consult> list = new ArrayList<Consult>();

		String sql = "select c.id,c.questionTitle,c.question,c.questionTime,a.adminName,c.answer,"
				+ "c.answerTime,b.adminName FROM consult c left JOIN admin a on c.userId = a.adminId left JOIN admin b on c.adminId = b.adminId where c.questionTitle like '%" + title + "%'";
		
//		String sql = "select c.id,c.title,c._content,c.createdTime,c._column,a.adminName "
//				+ "FROM content c left JOIN admin a on c.adminId = a.adminId where c.title like '%" + title + "%'";
		Object[] params = {};
		ResultSet rs = this.executeSQL(sql, params);
		while (rs.next()) {
			Consult consult = new Consult();
			consult.setId(rs.getInt(1));
			consult.setQuestionTitle(rs.getString(2));
			consult.setQuestion(rs.getString(3));
			consult.setQuestionTime(rs.getDate(4));
			consult.setUserId(rs.getString(5));
			consult.setAnswer(rs.getString(6));
			consult.setAnswerTime(rs.getDate(7));
			consult.setAdminId(rs.getString(8));
			list.add(consult);
		}
		conn.close();
		return list;
	}
}
