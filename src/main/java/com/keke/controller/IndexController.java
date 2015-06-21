/*
 * @(#) IndexController.java
 * @Author:keke(keke_erp@163.com) 2015年6月18日
 * @Copyright (c) 2015 Keke Limited. All rights reserved.
 */
package com.keke.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
  * @author keke (keke_erp@163.com) 2015年6月18日
  * @version 1.0
  * @Function 类功能说明
  */
@Controller
public class IndexController {
    
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String registerForm() {
        return "index";
    }

}

