package po.exam;

import java.util.List;

public class ExamQueryVo {
	
	private Exam exam;
	
	private ExamCustom examCustom;
	
	private List<Integer> ids;

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}

	public ExamCustom getExamCustom() {
		return examCustom;
	}

	public void setExamCustom(ExamCustom examCustom) {
		this.examCustom = examCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
