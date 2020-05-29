package com.tave.project.controller;

import com.tave.project.Service.PhotoService;
import com.tave.project.dto.AttendanceDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AttendanceController {


    private PhotoService photoService;

    public AttendanceController(PhotoService photoService) {
        this.photoService = photoService;
    }

    //출결 관리
    @GetMapping("/attendance/attendance")
    public String attendance(Model model, @RequestParam(value="page", defaultValue = "1") Integer pageNum) {
        List<AttendanceDto> attendanceDtoList = photoService.getPhotolist(pageNum);
        Integer[] pageList = photoService.getPageList(pageNum);

        model.addAttribute("attendanceDtoList", attendanceDtoList);
        model.addAttribute("pageList", pageList);
        return "attendance/attendance";
    }

    @GetMapping("/attendance/writeAttendance")
    public String viewActivity() {
        return "attendance/writeAttendance";
    }

    @PostMapping("attendance/writeAttendance")
    public String viewActivity(AttendanceDto attendanceDto) {
        photoService.savePhoto(attendanceDto);

        return "attendance/writeAttendance";
    }

    /* 게시글 상세 */
    @GetMapping("/viewAttendance/{no}")
    public String detail(@PathVariable("no") Long no, Model model) {
        AttendanceDto attendanceDto = photoService.getPost(no);

        model.addAttribute("attendanceDto", attendanceDto);
        return "notice/detail";
    }

}
