package service;

import mapper.judge.JudgeMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JudgeService {
	
	@Autowired
	private JudgeMapperCustom judgeMapperCustom;
	

}
