package service;

import mapper.onechoice.OnechoiceMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OnechoiceService {
	
	@Autowired
	private OnechoiceMapperCustom onechoiceMapperCustom;
	

}
