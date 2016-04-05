package service;

import mapper.examdetail.ExamdetailMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamdetailService {
	
	@Autowired
	private ExamdetailMapperCustom examdetailMapperCustom;

}
