package po.admin;

import java.util.List;

public class AdminQueryVo {
	
	private Admin admin;
	
	private AdminCustom adminCustom;
	
	private List<Integer> ids;

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public AdminCustom getAdminCustom() {
		return adminCustom;
	}

	public void setAdminCustom(AdminCustom adminCustom) {
		this.adminCustom = adminCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	
	
}
