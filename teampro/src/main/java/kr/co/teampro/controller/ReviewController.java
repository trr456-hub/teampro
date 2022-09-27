package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.ReviewService;
import kr.co.teampro.vo.ReviewVO;

@Controller
public class ReviewController {
	@Autowired
	@Qualifier("rs")	
	private ReviewService service;
	
	@RequestMapping("/review/review")
	public String review(HttpServletRequest request,Model model) {
		return service.review(request,model);
	}
	
	@RequestMapping("/review/review_ok")
	public String review_ok(ReviewVO rvo,HttpSession session) {
		return service.review_ok(rvo, session);
	}
	
	@RequestMapping("/review/review_list")
	public String review_list(Model model,HttpServletRequest request) {
		return service.review_list(model,request);
	}
}
