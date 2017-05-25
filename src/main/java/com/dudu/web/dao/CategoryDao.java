package com.dudu.web.dao;

import com.dudu.web.model.TCategory;

public interface CategoryDao {
    int deleteByPrimaryKey(Long id);

    int insert(TCategory record);

    int insertSelective(TCategory record);

    TCategory selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TCategory record);

    int updateByPrimaryKey(TCategory record);
}