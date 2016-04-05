package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.ExamdetailService;

@Controller
public class ExamdetailController {
	
	@Autowired
	private ExamdetailService examdetailService;
	

}
