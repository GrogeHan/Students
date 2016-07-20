package com.chinasoft.sm.model.dao;

import com.chinasoft.sm.model.entity.TeacherClass;

public interface TeacherClassMapper {
    int deleteByPrimaryKey(String id);

    int insert(TeacherClass record);

    int insertSelective(TeacherClass record);

    TeacherClass selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TeacherClass record);

    int updateByPrimaryKey(TeacherClass record);
}