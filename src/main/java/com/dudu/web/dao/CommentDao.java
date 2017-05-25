package com.dudu.web.dao;

import com.dudu.web.model.TComment;

public interface CommentDao {
    int deleteByPrimaryKey(Long id);

    int insert(TComment record);

    int insertSelective(TComment record);

    TComment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TComment record);

    int updateByPrimaryKey(TComment record);
}