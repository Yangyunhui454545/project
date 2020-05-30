package com.tave.project.controller;

import com.tave.project.Service.BoardService;
import com.tave.project.dto.BoardDto;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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

    /*게시글 작성*/
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