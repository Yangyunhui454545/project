package com.tave.project.controller;

import com.tave.project.Service.BoardService;
import com.tave.project.dto.BoardDto;
import lombok.AllArgsConstructor;
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
@AllArgsConstructor
public class BoardController {
    private BoardService boardService;

    @ModelAttribute("cp")
    public String getContextPath(HttpServletRequest request) {
        return request.getContextPath();
    }


    /* 공지게시글 목록 */
    @GetMapping("/notice/list")
    public String list(Model model, @RequestParam(value="page", defaultValue = "1") Integer pageNum) {

        List<BoardDto> boardList = boardService.getBoardlist(pageNum);
        Integer[] pageList = boardService.getPageList(pageNum);

        model.addAttribute("boardList", boardList);
        model.addAttribute("pageList", pageList);

        return "notice/list";
    }
    //활동
    @GetMapping("/activity/activity")
    public String activity(Model model, @RequestParam(value="page", defaultValue = "1") Integer pageNum) {

        List<BoardDto> boardList = boardService.getBoardlist(pageNum);
        Integer[] pageList = boardService.getPageList(pageNum);

        model.addAttribute("boardList", boardList);
        model.addAttribute("pageList", pageList);
        return "activity/activity";
    }
    //진행 사항
    @GetMapping("/progress/progress")
    public String progress(Model model, @RequestParam(value="page", defaultValue = "1") Integer pageNum) {
        List<BoardDto> boardList = boardService.getBoardlist(pageNum);
        Integer[] pageList = boardService.getPageList(pageNum);

        model.addAttribute("boardList", boardList);
        model.addAttribute("pageList", pageList);
        return "progress/progress";
    }
    //활동 후기
    @GetMapping("/review/review")
    public String review(Model model, @RequestParam(value="page", defaultValue = "1") Integer pageNum){

        List<BoardDto> boardList = boardService.getBoardlist(pageNum);
        Integer[] pageList = boardService.getPageList(pageNum);

        model.addAttribute("boardList", boardList);
        model.addAttribute("pageList", pageList);
        return "review/review";
    }

    @GetMapping("/write")
    public String write() {
        return "notice/write";
    }

    @PostMapping("/write")
    public String write(BoardDto boardDto) {
        boardService.savePost(boardDto);

        return "redirect:/notice/list";
    }
    /* 게시글 상세 */
    @GetMapping("/detail/{no}")
    public String detail(@PathVariable("no") Long no, Model model) {
        BoardDto boardDTO = boardService.getPost(no);

        model.addAttribute("boardDto", boardDTO);
        return "notice/detail";
    }
    /*게시글 수정하기*/
    @GetMapping("/update/{no}")
    public String update(@PathVariable("no") Long no, Model model) {
        BoardDto boardDTO = boardService.getPost(no);

        model.addAttribute("boardDto", boardDTO);
        return "notice/update";
    }

    @RequestMapping("/update/{no}")
    public String update(BoardDto boardDTO) {
        boardService.savePost(boardDTO);

        return "notice/list";
    }



}