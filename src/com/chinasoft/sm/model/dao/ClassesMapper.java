package com.chinasoft.sm.model.dao;

import com.chinasoft.sm.model.entity.Classes;

public interface ClassesMapper {
    int deleteByPrimaryKey(String id);

    int insert(Classes record);

    int insertSelective(Classes record);

    Classes selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);
}