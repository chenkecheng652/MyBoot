package com.ckc.core.po;
import java.io.Serializable;
import java.util.Date;
/**
 * 员工持久化类
 */
public class Staff implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer staff_id;          // 员工编号
	private String staff_name;         // 员工名称
	private Integer staff_user_id;    // 负责人id
	private Integer staff_create_id;  // 创建人id
	private String staff_department;      // 员工部门
	private String staff_salary;    // 员工薪资
	private String staff_position;       // 员工职位
	private String staff_linkman;     // 联系人
	private String staff_phone;       // 固定电话
	private String staff_mobile;      // 移动电话
	private String staff_zipcode;     // 邮政编码
	private String staff_address;     // 联系地址
	private Date staff_createtime;    // 创建时间	
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	
	public String getStaff_zipcode() {
		return staff_zipcode;
	}
	public void setStaff_zipcode(String staff_zipcode) {
		this.staff_zipcode = staff_zipcode;
	}
	public String getStaff_address() {
		return staff_address;
	}
	public void setStaff_address(String staff_address) {
		this.staff_address = staff_address;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(Integer staff_id) {
		this.staff_id = staff_id;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public Integer getStaff_user_id() {
		return staff_user_id;
	}
	public void setStaff_user_id(Integer staff_user_id) {
		this.staff_user_id = staff_user_id;
	}
	public Integer getStaff_create_id() {
		return staff_create_id;
	}
	public void setStaff_create_id(Integer staff_create_id) {
		this.staff_create_id = staff_create_id;
	}
	public String getStaff_department() {
		return staff_department;
	}
	public void setStaff_department(String staff_department) {
		this.staff_department = staff_department;
	}
	public String getStaff_salary() {
		return staff_salary;
	}
	public void setStaff_salary(String staff_salary) {
		this.staff_salary = staff_salary;
	}
	public String getStaff_position() {
		return staff_position;
	}
	public void setStaff_position(String staff_position) {
		this.staff_position = staff_position;
	}
	public String getStaff_linkman() {
		return staff_linkman;
	}
	public void setStaff_linkman(String staff_linkman) {
		this.staff_linkman = staff_linkman;
	}
	public String getStaff_phone() {
		return staff_phone;
	}
	public void setStaff_phone(String staff_phone) {
		this.staff_phone = staff_phone;
	}
	public String getStaff_mobile() {
		return staff_mobile;
	}
	public void setStaff_mobile(String staff_mobile) {
		this.staff_mobile = staff_mobile;
	}
	public Date getStaff_createtime() {
		return staff_createtime;
	}
	public void setStaff_createtime(Date staff_createtime) {
		this.staff_createtime = staff_createtime;
	}
}
