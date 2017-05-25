package com.dudu.web.service;

import com.dudu.web.model.TUser;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface UserService {

    List<TUser> selectAllUser();

    TUser selectUserByPhone(String phone);
}
