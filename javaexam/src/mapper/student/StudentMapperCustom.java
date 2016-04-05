package mapper.student;

import java.util.List;

import po.student.Student;

public interface StudentMapperCustom {
	
	//根据student查询学生
	public List<Student> findStudentByStudent(Student student)throws Exception;
	
    
}