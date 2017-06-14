package entity;
import java.util.Date;
/**
 * 网站内容实体类
 * 
 * 
 */
public class Content {
	private Integer id;// 编号
	private String title;// 标题
	private String content;//内容
	private String column;//栏目
	private String adminId;//发布人
	private Date createdTime;//发布时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getColumn() {
		return column;
	}
	public void setColumn(String column) {
		this.column = column;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	
	public Content(Integer id, String title, String content, String column,Date createdTime, String adminId) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.column = column;
		this.createdTime= createdTime;
		this.adminId = adminId;
	}

	public Content() {
		super();
	}
	
}
