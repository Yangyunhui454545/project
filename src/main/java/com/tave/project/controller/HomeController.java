package com.tave.project.controller;

import com.tave.project.dto.MemberDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @ModelAttribute("cp")
    public String getContextPath(HttpServletRequest request) {
        return request.getContextPath();
    }

    @RequestMapping(value = "/")
    public String index() {
        return "member/index";
    }

/*
   @RequestMapping(value="joinForm", method = {RequestMethod.GET, RequestMethod.POST})
   public String join (Model model) {
      MemberDao member = new MemberDao();

      model.addAttribute("member",member);

      return "joinFrom";
   }*/


    @GetMapping(value = "/joinForm")
    public String join(Model model) {

        MemberDao member = new MemberDao();

        model.addAttribute("member",member);

        return "member/joinForm";
    }

    @GetMapping(value = "/loginForm")
    public String loginForm() {

        return "member/loginForm";
    }
}