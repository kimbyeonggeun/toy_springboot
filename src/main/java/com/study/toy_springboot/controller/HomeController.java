package com.study.toy_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = { "", "/", "/main" })
    public String home() {
        return "/main";
    }

    @RequestMapping(value = { "/login" })
    public String login() {
        return "/logpage";
    }

    @RequestMapping(value = { "/admin" })
    public String admin() {
        return "/admin";
    }
}
