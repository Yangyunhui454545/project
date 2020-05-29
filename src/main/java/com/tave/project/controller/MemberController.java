package com.tave.project.controller;

import com.tave.project.Service.MemberService;
import com.tave.project.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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

    @PostMapping(value = "/member/joinForm")
    public String join() {
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

    @PostMapping(value = "/member/loginForm")
    public String login(Member member, HttpSession session) {
        Member mem = service.memberSearch(member);
        if(mem == null)
            return "/member/loginForm";

        session.setAttribute("member", mem.getMemId());

        return "redirect:/";
    }

}