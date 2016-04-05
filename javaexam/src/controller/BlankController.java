package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.BlankService;

@Controller
public class BlankController {
	
	@Autowired
	private BlankService blankService;
	

}
