package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.MulchoiceService;

@Controller
public class MulchoiceController {
	
	@Autowired
	private MulchoiceService mulchoiceService;

}
