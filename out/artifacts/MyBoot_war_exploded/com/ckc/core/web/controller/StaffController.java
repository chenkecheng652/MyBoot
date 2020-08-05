package com.ckc.core.web.controller;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ckc.common.utils.Page;
import com.ckc.core.po.BaseDict;
import com.ckc.core.po.Staff;
import com.ckc.core.po.User;
import com.ckc.core.service.BaseDictService;
import com.ckc.core.service.StaffService;
/**
 * 员工管理控制器类
 */
@Controller
public class StaffController {
	// 依赖注入
	@Autowired
	private StaffService staffService;
	@Autowired
	private BaseDictService baseDictService;
	// 员工来源
	@Value("${staff.from.type}")
	private String FROM_TYPE;
	// 员工所属行业
	@Value("${staff.salary.type}")
	private String SALARY_TYPE;
	// 员工级别
	@Value("${staff.position.type}")
	private String LEVEL_TYPE;
	/**
	 *  员工列表
	 */
	@RequestMapping(value = "/staff/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String staffName, String staffDepartment, String staffSalary,
			String staffPosition, Model model) {
		// 条件查询所有员工
		Page<Staff> staffs = staffService
				.findStaffList(page, rows, staffName, 
                                        staffDepartment, staffSalary,staffPosition);
		model.addAttribute("page", staffs);
		// 员工来源
		List<BaseDict> fromType = baseDictService
				.findBaseDictByTypeCode(FROM_TYPE);
		// 员工所属行业
		List<BaseDict> salaryType = baseDictService
				.findBaseDictByTypeCode(SALARY_TYPE);
		// 员工级别
		List<BaseDict> positionType = baseDictService
				.findBaseDictByTypeCode(LEVEL_TYPE);
		// 添加参数
		model.addAttribute("fromType", fromType);
		model.addAttribute("salaryType", salaryType);
		model.addAttribute("positionType", positionType);
		model.addAttribute("staffName", staffName);
		model.addAttribute("staffDepartment", staffDepartment);
		model.addAttribute("staffSalary", staffSalary);
		model.addAttribute("staffPosition", staffPosition);
		return "staff";
	}
	
	/**
	 * 创建员工
	 */
	@RequestMapping("/staff/create.action")
	@ResponseBody
	public String staffCreate(Staff staff,HttpSession session) {
	    // 获取Session中的当前用户信息
	    User user = (User) session.getAttribute("USER_SESSION");
	    // 将当前用户id存储在员工对象中
	    staff.setStaff_create_id(user.getUser_id());
	    // 创建Date对象
	    Date date = new Date();
	    // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
	    Timestamp timeStamp = new Timestamp(date.getTime());
	    staff.setStaff_createtime(timeStamp);
	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = staffService.createStaff(staff);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 通过id获取员工信息
	 */
	@RequestMapping("/staff/getStaffById.action")
	@ResponseBody
	public Staff getStaffById(Integer id) {
	    Staff staff = staffService.getStaffById(id);
	    return staff;
	}
	/**
	 * 更新员工
	 */
	@RequestMapping("/staff/update.action")
	@ResponseBody
	public String staffUpdate(Staff staff) {
	    int rows = staffService.updateStaff(staff);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 删除员工
	 */
	@RequestMapping("/staff/delete.action")
	@ResponseBody
	public String staffDelete(Integer id) {
	    int rows = staffService.deleteStaff(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}

}
