package entity;

import java.util.Date;

/**
 * 用户实体类
 * 
 * 
 */
public class User {
	private Integer adminId;// 编号
	private String adminName;// 姓名
	private String password;// 密码
	private String phone;// 电话
	private String role;// 权限
	private Date createdTime;

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public User(Integer adminId, String adminName, String password, String phone,Date createdTime, String role) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.password = password;
		this.phone = phone;
		this.createdTime= createdTime;
		this.role = role;
	}

	public User() {
		super();
	}


	
}
