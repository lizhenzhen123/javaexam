package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import po.student.Student;

import service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	//学生用户登录
	@RequestMapping(value={"/login"},method=RequestMethod.POST)
	
	public String login(Student student,HttpSession session)throws Exception{

		if(studentService.findStudentByStudent(student)==null)
			return "redirect:student/login";
		session.setAttribute("student", student);
		return "student/index";
			
	}

}
