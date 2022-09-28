package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.MypageService;
import kr.co.teampro.vo.MemberVO;

@Controller
public class MypageController {
	@Autowired
	@Qualifier("ms2")
	private MypageService service;
	
	@RequestMapping("/mypage/myinfo")
	public String myinfo(HttpSession session,Model model) {
		return service.myinfo(session,model);
	}
	
	@RequestMapping("/mypage/myinfo_edit")
	public String myinfo_edit(HttpSession session,Model model) {
		return service.myinfo_edit(session,model);
	}
	
	@RequestMapping("/mypage/myinfo_edit_ok")
	public String myinfo_edit_ok(MemberVO mvo,HttpSession session) {
		return service.myinfo_edit_ok(mvo,session);
	}
	
	@RequestMapping("/mypage/change_pwd")
	public String change_pwd(HttpSession session,HttpServletRequest request) {
		return service.change_pwd(session,request);
	}
	
	@RequestMapping("/mypage/myreview")
	public String myreview(HttpSession session,Model model) {
		return service.myreview(session,model);
	}
	
	@RequestMapping("/mypage/myjumun")
	public String myjumun(HttpSession session,Model model) {
		return service.myjumun(session,model);
	}
	
	@RequestMapping("/mypage/myreserve")
	public String myreserve(HttpSession session,Model model) {
		return service.myreserve(session,model);
	}
}
