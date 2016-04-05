package po.examdetail;

import java.util.List;

public class ExamdetailQueryVo {
	
	private Examdetail examdetail;
	
	private ExamdetailCustom examdetailCustom;
	
	private List<Integer> ids;

	public Examdetail getExamdetail() {
		return examdetail;
	}

	public void setExamdetail(Examdetail examdetail) {
		this.examdetail = examdetail;
	}

	public ExamdetailCustom getExamdetailCustom() {
		return examdetailCustom;
	}

	public void setExamdetailCustom(ExamdetailCustom examdetailCustom) {
		this.examdetailCustom = examdetailCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
