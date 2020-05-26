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
    //공지
    @GetMapping("/notion")
    public String notion() {
        return "notion/list";
    }
    //활동
    @GetMapping("/activity")
    public String activity() {
        return "activity/activity";
    }
    //출결 관리
    @GetMapping("/attendance")
    public String attendance() {
        return "attendance/attendance";
    }
    //진행 사항
    @GetMapping("/progress")
    public String progress() {
        return "progress/progress";
    }
    //활동 후기
    @GetMapping("/review")
    public String review() {
        return "review/review";
    }
    //recruit
    @GetMapping("/recruit")
    public String recruit() {
        return "recruit";
    }
    //qna
    @GetMapping("/qna")
    public String qna() {
        return "qna/QandA";
    }


}