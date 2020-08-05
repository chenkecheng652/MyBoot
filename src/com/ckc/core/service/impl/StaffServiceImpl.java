package com.ckc.core.service.impl;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ckc.common.utils.Page;
import com.ckc.core.dao.StaffDao;
import com.ckc.core.po.Staff;
import com.ckc.core.service.StaffService;
/**
 * 客户管理
 */
@Service("staffService")
@Transactional
public class StaffServiceImpl implements StaffService {
	// 声明DAO属性并注入
	@Autowired
	private StaffDao staffDao;
	// 客户列表
	public Page<Staff> findStaffList(Integer page, Integer rows, 
			String staffName,  String staffDepartment,String staffSalary,
                                                          String staffPosition) {
		// 创建客户对象
         Staff staff = new Staff();
		// 判断客户名称
		if(StringUtils.isNotBlank(staffName)){
			staff.setStaff_name(staffName);
		}
		// 判断客户信息来源
		if(StringUtils.isNotBlank(staffDepartment)){
			staff.setStaff_department(staffDepartment);
		}
		// 判断客户所属行业
		if(StringUtils.isNotBlank(staffSalary)){
			staff.setStaff_salary(staffSalary);
		}
		// 判断客户级别
		if(StringUtils.isNotBlank(staffPosition)){
			staff.setStaff_position(staffPosition);
		}
		// 当前页
		staff.setStart((page-1) * rows) ;
		// 每页数
		staff.setRows(rows);
		// 查询客户列表
		List<Staff> staffs = 
                            staffDao.selectStaffList(staff);
		// 查询客户列表总记录数
		Integer count = staffDao.selectStaffListCount(staff);
		// 创建Page返回对象
		Page<Staff> result = new Page<>();
		result.setPage(page);
		result.setRows(staffs);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * 创建客户
	 */
	@Override
	public int createStaff(Staff staff) {
	    return staffDao.createStaff(staff);
	}
	/**
	 * 通过id查询客户
	 */
	@Override
	public Staff getStaffById(Integer id) {	
	    Staff staff = staffDao.getStaffById(id);
	    return staff;		
	}
	/**
	 * 更新客户
	 */
	@Override
	public int updateStaff(Staff staff) {
	    return staffDao.updateStaff(staff);
	}
	/**
	 * 删除客户
	 */
	@Override
	public int deleteStaff(Integer id) {
	    return staffDao.deleteStaff(id);
	}

	
}
