package kr.or.admin.model.vo;



public class Admin {
	private int adminNo;
	private String adminId;
	private String adminPw;
	private String adminName;
	private String adminEmail;
	private String adminPhone;
	public Admin(int adminNo, String adminId, String adminPw, String adminName, String adminEmail, String adminPhone) {
		super();
		this.adminNo = adminNo;
		this.adminId = adminId;
		this.adminPw = adminPw;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.adminPhone = adminPhone;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
}
