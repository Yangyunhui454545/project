package com.tave.project.controller;

import com.tave.project.dto.MailDto;
import com.tave.project.Service.MailService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@AllArgsConstructor
public class MailController {
    private final MailService mailService;

    @GetMapping("/mail")
    public String mail() {
        return "mail";
    }

    @PostMapping("/mail")
    public String mail(MailDto mailDto) {
        mailService.mailSend(mailDto);

        return "redirect:/mail";
    }
}
