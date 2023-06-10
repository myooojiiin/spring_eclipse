package com.myproject.myapp;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.domain.BoardVO;
import com.board.service.boardService;

@Controller
@RequestMapping("/board/*")

public class BoardController {
	@Inject
	private boardService service;
	
	@RequestMapping(value="/list", method=RequestMethod.GET) //url mapping
	public String getList(Model model) {
		List<BoardVO> list = service.list();
		model.addAttribute("list", list);
		return "board/list";
	}
}
