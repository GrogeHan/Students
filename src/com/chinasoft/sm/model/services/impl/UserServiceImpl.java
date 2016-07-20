package com.chinasoft.sm.model.services.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chinasoft.sm.model.dao.StudentsMapper;
import com.chinasoft.sm.model.entity.Students;
import com.chinasoft.sm.model.services.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private StudentsMapper dataMapper;
	
	
	@Override
	public Students getUser(String id) {
		// TODO Auto-generated method stub
		return dataMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean addUser(Students stu) {
		// TODO Auto-generated method stub
		return dataMapper.insert(stu)>0;
	}

	@Override
	public boolean updateUser(Students stu) {
		// TODO Auto-generated method stub
		return dataMapper.updateByPrimaryKeySelective(stu)>0;
	}

	@Override
	public boolean deleteUser(String id) {
		// TODO Auto-generated method stub
		return dataMapper.deleteByPrimaryKey(id)>0;
	}

	@Override
	public List<Students> getAllUsers() {
		// TODO Auto-generated method stub
		return dataMapper.getAllUsers();
	}

}
