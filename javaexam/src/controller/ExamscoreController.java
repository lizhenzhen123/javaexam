package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.ExamService;

@Controller
public class ExamscoreController {
	
	@Autowired
	private ExamService examService;
	

}
