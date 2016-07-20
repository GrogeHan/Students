package com.chinasoft.sm.model.dao;

import java.util.List;

import com.chinasoft.sm.model.entity.Students;

public interface StudentsMapper {
    int deleteByPrimaryKey(String id);

    int insert(Students record);

    int insertSelective(Students record);

    Students selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Students record);

    int updateByPrimaryKey(Students record);
    
    List<Students> getAllUsers();
}