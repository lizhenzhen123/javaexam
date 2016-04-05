package po.student;

import java.util.List;

public class StudentQueryVo {
	
	private Student student;
	
	private StudentCustom studentCustom;
	
	private List<Integer> ids;

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public StudentCustom getStudentCustom() {
		return studentCustom;
	}

	public void setStudentCustom(StudentCustom studentCustom) {
		this.studentCustom = studentCustom;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	
	

}
