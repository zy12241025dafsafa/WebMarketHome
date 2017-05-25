package com.dudu.web.dao;

import com.dudu.web.model.TUser;

import java.util.List;

public interface UserDao {
    int deleteByPrimaryKey(Long id);

    int insert(TUser record);

    int insertSelective(TUser record);

    TUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TUser record);

    int updateByPrimaryKey(TUser record);

    List<TUser> selectAllUser();

    TUser selectUserByPhone(String phone);
}