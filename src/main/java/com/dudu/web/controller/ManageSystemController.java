package com.dudu.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/5/9.
 */

@Controller
@RequestMapping("/admin")
public class ManageSystemController {

    private Logger log = Logger.getLogger(HomeController.class);

    @RequestMapping("/login")
    public String jumpLogin(HttpSession session, HttpServletRequest request) {
        String url = request.getHeader("Referer");//获取上个页面的url
        System.out.print("the refer url = " + url);
        session.setAttribute("redirectUrl", url);//把url放到session
        return "/admin/login";
    }

    @RequestMapping("/main")
    public String openMain(HttpServletRequest request, Model model) {
        System.out.print("open main --------");
        return "/admin/main";
    }

}
