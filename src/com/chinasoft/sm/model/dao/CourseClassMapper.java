package com.chinasoft.sm.model.dao;

import com.chinasoft.sm.model.entity.CourseClass;

public interface CourseClassMapper {
    int deleteByPrimaryKey(String id);

    int insert(CourseClass record);

    int insertSelective(CourseClass record);

    CourseClass selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CourseClass record);

    int updateByPrimaryKey(CourseClass record);
}