package com.tave.project.controller;

import com.tave.project.Service.PhotoService;
import com.tave.project.dto.AttendanceDto;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
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
    //글쓰기
    @GetMapping("/attendance/writeAttendance")
    public String viewActivity() {
        return "attendance/writeAttendance";
    }

    @PostMapping("/attendance/writeAttendance")
    public String viewActivity(HttpServletRequest request, @RequestParam("filename") MultipartFile multipartFile, @ModelAttribute AttendanceDto attendanceDto) throws Exception {
        String filename = null;
        if(!multipartFile.isEmpty()) {
            ServletContext application = request.getServletContext();
            String realPath = application.getRealPath("/upload");

            filename = multipartFile.getOriginalFilename();

            int index = filename.lastIndexOf("\\");
            filename = filename.substring(index + 1);

            File file = new File(realPath, filename);
            if(file.exists()){
                filename = System.currentTimeMillis() + "_" + filename;
                file = new File(realPath, filename);
            }
            IOUtils.copy(multipartFile.getInputStream(), new FileOutputStream(file));
        }   else{
            System.out.println("파일이 존재하지 않거나 파일크기가 0입니다.");
        }
        photoService.savePhoto(attendanceDto);

        return "redirect:/attendance/attendance";
    }
    /* 게시글 상세 */
    @GetMapping("/viewAttendance/{no}")
    public String detail(@PathVariable("no") Long no, Model model) {
        AttendanceDto attendanceDto = photoService.getPost(no);

        model.addAttribute("attendanceDto", attendanceDto);
        return "attendance/viewAttendance";
    }

}
