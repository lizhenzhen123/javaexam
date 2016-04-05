package service;

import mapper.mulchoice.MulchoiceMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MulchoiceService {
	
	@Autowired
	private MulchoiceMapperCustom mulchoiceMapperCustom;
	

}
