package service;

import mapper.express.ExpressMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExpressService {
	
	@Autowired
	private ExpressMapperCustom expressMapperCustom;

}
