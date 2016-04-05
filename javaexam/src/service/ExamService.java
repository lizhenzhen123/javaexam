package service;

import mapper.exam.ExamMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamService {
	
	@Autowired
	private ExamMapperCustom examMapperCustom;
	
	

}
