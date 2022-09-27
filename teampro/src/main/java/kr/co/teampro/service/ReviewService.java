package kr.co.teampro.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.teampro.vo.ReviewVO;

public interface ReviewService {
	public String review(HttpServletRequest request,Model model);
	public String review_ok(ReviewVO rvo,HttpSession session);
	public String review_list(Model model,HttpServletRequest request);
}
