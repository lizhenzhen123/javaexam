package po.examscore;

import java.util.List;

public class ExamscoreQueryVo {
	
	private Examscore examscore;
	
	private ExamscoreCustom examscoreCustom;
	
	private List<Integer> ids;

	public Examscore getExamscore() {
		return examscore;
	}

	public void setExamscore(Examscore examscore) {
		this.examscore = examscore;
	}

	public ExamscoreCustom getExamscoreCustom() {
		return examscoreCustom;
	}

	public void setExamscoreCustom(ExamscoreCustom examscoreCustom) {
		this.examscoreCustom = examscoreCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
