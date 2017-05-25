package com.dudu.web.dao;

import com.dudu.web.model.TCart;

public interface CartDao {
    int deleteByPrimaryKey(Long id);

    int insert(TCart record);

    int insertSelective(TCart record);

    TCart selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TCart record);

    int updateByPrimaryKey(TCart record);
}