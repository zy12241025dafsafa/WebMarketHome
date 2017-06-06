package com.dudu.web.controller;

import com.dudu.web.util.RequestUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zhangy on 2017/6/6.
 * 商品详情列表
 */
@Controller
public class ProductController {

    public static final String TAG = ProductController.class.getSimpleName();
    private Logger log = Logger.getLogger(ProductController.class);

    @RequestMapping("/product")
    public String jumpProductDetail(HttpServletRequest request, Model model) {

        String pid = RequestUtils.getString(request,"pid");
        System.out.print("pid = "+pid);
        model.addAttribute("userList",null);
        return "product";
    }

}
