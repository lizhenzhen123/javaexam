package service;

import mapper.teacher.TeacherMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherService {
	
	@Autowired
	private TeacherMapperCustom teacherMapperCustom;
	

}
