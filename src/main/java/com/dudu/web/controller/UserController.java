package com.dudu.web.controller;

import com.dudu.web.model.TUser;
import com.dudu.web.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping("/showUser")
    public String showUser(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");
        TUser userList = userService.selectUserByPhone("18205933192");
        log.info("user name "+userList.getUserName());
        List<TUser> list = new ArrayList<TUser>();
        list.add(userList);
        model.addAttribute("userList",list);
        return "showUser";
    }
}
