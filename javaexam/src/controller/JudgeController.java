package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.JudgeService;

@Controller
public class JudgeController {
	
	@Autowired
	private JudgeService judgeSerivce;

}
