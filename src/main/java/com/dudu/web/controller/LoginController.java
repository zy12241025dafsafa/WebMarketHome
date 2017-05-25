package com.dudu.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.dudu.web.model.TUser;
import com.dudu.web.service.UserService;
import com.dudu.web.util.RequestUtils;
import com.dudu.web.util.ResponseUtils;
import com.sun.javafx.sg.prism.NGShape;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by zhangy on 2017/5/1.
 */
@Controller
public class LoginController {

    @Resource
    private UserService userService;
    private Logger log = Logger.getLogger(LoginController.class);

    @RequestMapping("/jump_main")
    public String goMain(HttpSession session) {
        //TODO 登陆验证
        String url = (String) session.getAttribute("redirectUrl");
        session.setAttribute("name","zhangy");
        session.setAttribute("password","qwer1234");
        return "redirect:" + url;//转向到前画面
    }

    @RequestMapping("/validate_login")
    public void loginValidate(HttpServletRequest request, HttpServletResponse response) {
        //获取form表单数据
        String loginObj = RequestUtils.getString(request, "loginObj");
        JSONObject loginJson = JSONObject.parseObject(loginObj);
        String account = loginJson.getString("accountNo");
        String pwd = loginJson.getString("pwd");

        //根据账号查询用户名是否存在
        TUser user = userService.selectUserByPhone(account);
        JSONObject result = new JSONObject();
        if (null == user){
            result.put("accountMsg", "用户名不存在");
        }else if (!pwd.equals(user.getPwd())){
            result.put("pwdMsg", "用户名密码错误");
        }else {
            result.put("user",user);
        }
        String resultStr = result.toJSONString();
        ResponseUtils.send(response,resultStr);
    }

}
