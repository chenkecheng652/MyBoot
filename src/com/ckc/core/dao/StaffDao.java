package com.ckc.core.dao;
import java.util.List;
import com.ckc.core.po.Staff;
/**
 * Staff接口
 */
public interface StaffDao {
    // 客户列表
	public List<Staff> selectStaffList(Staff Staff);
	// 客户数
	public Integer selectStaffListCount(Staff Staff);
	
	// 创建客户
	public int createStaff(Staff Staff);
	// 通过id查询客户
	public Staff getStaffById(Integer id);
	// 更新客户信息
	public int updateStaff(Staff Staff);
	// 删除客户
	int deleteStaff (Integer id);

}
