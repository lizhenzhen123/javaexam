package mapper.admin;

import java.util.List;

import po.admin.AdminCustom;
import po.admin.AdminQueryVo;

public interface AdminMapperCustom {
	
	/*
	 * 根据admin查询用户
	 */
	public List<AdminCustom> findAdminByAdmin(AdminQueryVo adminQueryVo)throws Exception;

}
