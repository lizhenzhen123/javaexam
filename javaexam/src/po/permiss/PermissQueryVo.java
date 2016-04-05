package po.permiss;

import java.util.List;

public class PermissQueryVo {
	
	private Permiss permiss;
	
	private PermissCustom permissCustom;
	
	private List<Integer> ids;

	public Permiss getPermiss() {
		return permiss;
	}

	public void setPermiss(Permiss permiss) {
		this.permiss = permiss;
	}

	public PermissCustom getPermissCustom() {
		return permissCustom;
	}

	public void setPermissCustom(PermissCustom permissCustom) {
		this.permissCustom = permissCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
