package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.ExpressService;

@Controller
public class ExpressController {
	
	@Autowired
	private ExpressService expressService;
	

}
