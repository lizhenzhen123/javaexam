package service;

import java.util.List;

import mapper.student.StudentMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import po.student.Student;
import po.student.StudentQueryVo;

@Service
public class StudentService {
	
	@Autowired
	private StudentMapperCustom studentMapperCustom;
	//根据student查询学生
	public Student findStudentByStudent(Student student)throws Exception{
		
		List<Student> studentList=studentMapperCustom.findStudentByStudent(student);
		//判断查询到的学生数量，如果为1，则返回student实体，否则返回null
		if(studentList.size()==1)
			return studentList.get(0);
		return null;
	}
	
	

}
