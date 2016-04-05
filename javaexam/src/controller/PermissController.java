package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.PermissService;

@Controller
public class PermissController {
	
	@Autowired
	private PermissService permissService;
}
