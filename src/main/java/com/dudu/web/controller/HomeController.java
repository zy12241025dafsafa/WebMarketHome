package com.dudu.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by zhangy on 2017/5/1.
 */

@Controller
@RequestMapping("/main")
public class HomeController {

    private Logger log = Logger.getLogger(HomeController.class);

    @RequestMapping("/regist")
    public String jumpRegister(HttpServletRequest request, Model model) {
        return "register";
    }


}
