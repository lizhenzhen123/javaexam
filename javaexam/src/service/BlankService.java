package service;

import mapper.blank.BlankMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BlankService {
	
	@Autowired
	private BlankMapperCustom blankMapperCustom;
	

}
