package com.chinasoft.sm.model.services;

import java.util.List;

import com.chinasoft.sm.model.entity.Students;


public interface UserService {

//	����id�����û�
	Students getUser(String id);
//	����û�
	boolean addUser(Students stu);
//	�޸��û�
	boolean updateUser(Students stu);
//	ɾ���û�
	boolean deleteUser(String id);
//	���������û�
	List<Students> getAllUsers();
}
