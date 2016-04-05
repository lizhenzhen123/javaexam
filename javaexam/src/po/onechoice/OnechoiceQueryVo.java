package po.onechoice;

import java.util.List;

public class OnechoiceQueryVo {
	
	private Onechoice onechoice;
	
	private OnechoiceCustom onechoiceCustom;
	
	private List<Integer> ids;

	public Onechoice getOnechoice() {
		return onechoice;
	}

	public void setOnechoice(Onechoice onechoice) {
		this.onechoice = onechoice;
	}

	public OnechoiceCustom getOnechoiceCustom() {
		return onechoiceCustom;
	}

	public void setOnechoiceCustom(OnechoiceCustom onechoiceCustom) {
		this.onechoiceCustom = onechoiceCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
