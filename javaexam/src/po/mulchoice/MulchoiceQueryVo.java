package po.mulchoice;

import java.util.List;

public class MulchoiceQueryVo {
	
	private Mulchoice mulchoice;
	
	private MulchoiceCustom mulchoiceCustom;
	
	private List<Integer> ids;

	public Mulchoice getMulchoice() {
		return mulchoice;
	}

	public void setMulchoice(Mulchoice mulchoice) {
		this.mulchoice = mulchoice;
	}

	public MulchoiceCustom getMulchoiceCustom() {
		return mulchoiceCustom;
	}

	public void setMulchoiceCustom(MulchoiceCustom mulchoiceCustom) {
		this.mulchoiceCustom = mulchoiceCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
