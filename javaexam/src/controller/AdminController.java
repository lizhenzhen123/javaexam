package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import po.admin.AdminCustom;
import po.admin.AdminQueryVo;

import service.AdminService;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	/*
	 * 查询用户登录信息
	 */
	@RequestMapping("login")
	public String login(AdminQueryVo adminQueryVo)throws Exception{
		boolean flag=adminService.findAdminByAdmin(adminQueryVo);
		//判断是否查询到该用户，如果查询到该用户则返回flag=true,否则为flase
		if(flag)
			return "admin/index";
		return "admin/login";
	}

}
