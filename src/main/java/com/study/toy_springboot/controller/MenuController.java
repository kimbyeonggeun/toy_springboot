package com.study.toy_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.study.toy_springboot.service.MemberService;
import com.study.toy_springboot.service.SurveyService;

@Controller
@RequestMapping(value = "/menu")
public class MenuController {
    @Autowired
    MemberService memberService;

    @RequestMapping(value = "/surveyPage")
    public ModelAndView main(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        modelAndView.setViewName("/surveyPage");
        return modelAndView;
    }

    @RequestMapping(value = "/seeMemberList")
    public ModelAndView seeMemberList(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        Object resultMap = memberService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/member_list");
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{Id}")
    public ModelAndView delete(ModelAndView modelAndView, @RequestParam Map<String, Object> params,
            @PathVariable String Id) {
        params.put("COMMON_CODE_ID", Id);
        Object resultMap = memberService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/member_list");
        return modelAndView;
    }
}
