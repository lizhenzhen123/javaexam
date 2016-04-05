package po.blank;

import java.util.List;

public class BlankQueryVo {
	
	private Blank blank;
	
	private BlankCustom blankCustom;
	
	private List<Integer> ids;

	public Blank getBlank() {
		return blank;
	}

	public void setBlank(Blank blank) {
		this.blank = blank;
	}

	public BlankCustom getBlankCustom() {
		return blankCustom;
	}

	public void setBlankCustom(BlankCustom blankCustom) {
		this.blankCustom = blankCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	
	

}
