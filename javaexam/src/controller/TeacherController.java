package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.TeacherService;

@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;

}
