package service;

import mapper.permiss.PermissMapperCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PermissService {
	
	@Autowired
	private PermissMapperCustom permissMapperCustom;

}
