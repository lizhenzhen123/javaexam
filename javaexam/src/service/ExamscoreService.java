package service;

import mapper.examscore.ExamscoreMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamscoreService {
	
	@Autowired
	private ExamscoreMapperCustom examscoreMapperCustom;
	

}
