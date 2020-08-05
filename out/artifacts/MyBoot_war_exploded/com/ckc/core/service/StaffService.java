package com.ckc.core.service;
import com.ckc.common.utils.Page;
import com.ckc.core.po.Staff;
public interface StaffService {
	// 查询客户列表
	public Page<Staff> findStaffList(Integer page, Integer rows, 
                                        String staffName,String staffDepartment,
                                        String staffSalary,String staffPosition);
	
	public int createStaff(Staff staff);
	
	// 通过id查询客户
	public Staff getStaffById(Integer id);
	// 更新客户
	public int updateStaff(Staff staff);
	// 删除客户
	public int deleteStaff(Integer id);

}
