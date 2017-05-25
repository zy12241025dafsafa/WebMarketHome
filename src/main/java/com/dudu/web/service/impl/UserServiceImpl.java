package com.dudu.web.service.impl;

import com.dudu.web.dao.UserDao;
import com.dudu.web.model.TUser;
import com.dudu.web.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhangy on 2017/3/3.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    
    @Resource
    private UserDao userDao;

    public List<TUser> selectAllUser() {
        return userDao.selectAllUser();
    }

    public TUser selectUserByPhone(String phone) {
        return userDao.selectUserByPhone(phone);
    }
}
