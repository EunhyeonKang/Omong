package kr.or.member.model.vo;

public class Employee {
	private int employeeNo;
	private String employeeId;
	private String employeePw;
	private String employeeName;
	private String employeeEmail;
	private String employeePhone;
	private String employeeAddress;
	private String employeeBirth;
	private String employeeGender;
	private String chargePw;
	private String detail_address;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(int employeeNo, String employeeId, String employeePw, String employeeName, String employeeEmail,
			String employeePhone, String employeeAddress, String employeeBirth, String employeeGender,
			String chargePw) {
		super();
		this.employeeNo = employeeNo;
		this.employeeId = employeeId;
		this.employeePw = employeePw;
		this.employeeName = employeeName;
		this.employeeEmail = employeeEmail;
		this.employeePhone = employeePhone;
		this.employeeAddress = employeeAddress;
		this.employeeBirth = employeeBirth;
		this.employeeGender = employeeGender;
		this.chargePw = chargePw;
	}
	public int getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(int employeeNo) {
		this.employeeNo = employeeNo;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeePw() {
		return employeePw;
	}
	public void setEmployeePw(String employeePw) {
		this.employeePw = employeePw;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeEmail() {
		return employeeEmail;
	}
	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public String getEmployeeAddress() {
		return employeeAddress;
	}
	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}
	public String getEmployeeBirth() {
		return employeeBirth;
	}
	public void setEmployeeBirth(String employeeBirth) {
		this.employeeBirth = employeeBirth;
	}
	public String getEmployeeGender() {
		return employeeGender;
	}
	public void setEmployeeGender(String employeeGender) {
		this.employeeGender = employeeGender;
	}
	public String getChargePw() {
		return chargePw;
	}
	public void setChargePw(String chargePw) {
		this.chargePw = chargePw;
	}
	
}
