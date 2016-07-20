package com.chinasoft.sm.model.services;

import java.util.List;

import com.chinasoft.sm.model.entity.Students;


public interface UserService {

//	根据id查找用户
	Students getUser(String id);
//	添加用户
	boolean addUser(Students stu);
//	修改用户
	boolean updateUser(Students stu);
//	删除用户
	boolean deleteUser(String id);
//	查找所有用户
	List<Students> getAllUsers();
}
