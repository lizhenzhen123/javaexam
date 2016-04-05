package service;

import java.util.List;

import mapper.admin.AdminMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import po.admin.Admin;
import po.admin.AdminCustom;
import po.admin.AdminQueryVo;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapperCustom adminMapperCustom;
	
	/*
	 * 根据admin查询用户
	 */
	public boolean findAdminByAdmin(AdminQueryVo adminQueryVo)throws Exception{
		List<AdminCustom> adminCustomList=adminMapperCustom.findAdminByAdmin(adminQueryVo);
		//如果查询得到一条数据，则返回true
		if(adminCustomList.size()==1)
			return true;
		return false;
	}

}
