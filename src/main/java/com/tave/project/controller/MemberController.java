package com.tave.project.controller;

import com.tave.project.Service.MemberService;
import com.tave.project.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class MemberController {

    @Autowired
    MemberService service;

    @GetMapping(value = "/member/logoutForm")
    public String logout(MemberController memberController,Member member, HttpSession session) {

        session.setAttribute("member", null);
        session.invalidate();

        return "redirect:/";
    }

    @PostMapping(value = "/member/join")
    public String join(Member member) {
        service.memberRegister(member);

        return "redirect:/";
    }

    @GetMapping(value = "/member/joinForm")
    public String join(Model model) {

        Member member = new Member();

        model.addAttribute("member",member);

        return "member/joinForm";
    }

    @GetMapping(value = "/member/loginForm")
    public String login(Model model) {

        Member member = new Member();

        model.addAttribute("member",member);

        return "member/loginForm";
    }

    @PostMapping(value = "/member/login")
    public String login(Member member, HttpSession session) {
        Member mem = service.memberSearch(member);
        if(mem == null)
            return "/member/loginForm";

        session.setAttribute("member", mem);
        System.out.println("로그인 성공");
        System.out.println(mem.getMemId());
        return "redirect:/";
    }

    // Modify
    @GetMapping(value = "member/modifyForm")
    public ModelAndView modifyForm(HttpServletRequest request, Model model) {

        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");

        //String memberID = (String)session.getAttribute("member");

        //model.getAttribute("member",memberID);

        ModelAndView mav = new ModelAndView();
        mav.addObject("member", service.memberSearch(member));

        mav.setViewName("/member/modifyForm");
        System.out.println("modifyForm");
        return mav;
    }

    @PostMapping(value = "member/modify")
    public ModelAndView modify(Member member, HttpServletRequest request) {

        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();

        Member mem = service.memberModify(member);
        if(mem == null) {
            mav.setViewName("/member/modifyForm");
        } else {
            session.setAttribute("member", mem);

            mav.addObject("memAft", mem);
            mav.setViewName("/member/modifyOk");
        }
        System.out.println("modify");
        return mav;
    }
}