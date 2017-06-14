package entity;

import java.util.Date;


/**
 * 咨询信息实体类
 * 
 * 
 */
public class Consult {
	private Integer id;// 编号
	private String questionTitle;
	private String question;//前台用户提问信息
	private String userId;// 前台用户
	private Date questionTime;//提问时间
	private String answer;//后台用户回复信息
	private String adminId;//后台用户
	private Date answerTime;//回复时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getQuestionTime() {
		return questionTime;
	}
	public void setQuestionTime(Date questionTime) {
		this.questionTime = questionTime;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public Date getAnswerTime() {
		return answerTime;
	}
	public void setAnswerTime(Date answerTime) {
		this.answerTime = answerTime;
	}
	
	public Consult(Integer id,String questionTitle,String question,String userId,Date questionTime,String answer,String adminId,Date answerTime){
		super();
		this.id=id;
		this.questionTitle = questionTitle;
		this.question = question;
		this.userId= userId;
		this.questionTime=questionTime;
		this.answer= answer;
		this.adminId= adminId;
		this.answerTime= answerTime;
	}
	public Consult(){
		super();
	}
	
}
