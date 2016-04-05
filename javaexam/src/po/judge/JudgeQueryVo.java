package po.judge;

import java.util.List;

public class JudgeQueryVo {
	
	private Judge judge;
	
	private JudgeCustom judgeCustom;
	
	private List<Integer> ids;

	public Judge getJudge() {
		return judge;
	}

	public void setJudge(Judge judge) {
		this.judge = judge;
	}

	public JudgeCustom getJudgeCustom() {
		return judgeCustom;
	}

	public void setJudgeCustom(JudgeCustom judgeCustom) {
		this.judgeCustom = judgeCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
