package com.tave.project.controller;

import com.tave.project.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @Autowired
    MemberService service;

    @ModelAttribute("cp")
    public String getContextPath(HttpServletRequest request) {
        return request.getContextPath();
    }

    @RequestMapping(value = "/")
    public String index() {
        return "index";
    }


    //메인화면
    @GetMapping("/")
    public String main() {
        return "index";
    }
    //운영진 소개
    @GetMapping("/about/introTaveMembers")
    public String introTaveMembers() {
        return "about/introTaveMembers";
    }
    //후원사
    @GetMapping("/about/sponsor")
    public String sponsor() {
        return "about/sponsor";
    }
    //recruit
    @GetMapping("/recruit")
    public String recruit() {
        return "/recruit";
    }
    //qna
    @GetMapping("/qanda/QandA")
    public String qna() {
        return "qna/QandA";
    }


}