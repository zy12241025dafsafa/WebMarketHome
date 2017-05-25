package com.dudu.web.dao;

import com.dudu.web.model.TAdmin;

public interface AdminDao {
    int deleteByPrimaryKey(Long id);

    int insert(TAdmin record);

    int insertSelective(TAdmin record);

    TAdmin selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TAdmin record);

    int updateByPrimaryKey(TAdmin record);
}