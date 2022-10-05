package kr.co.teampro.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.vo.AnswerVO;
import kr.co.teampro.vo.CounselVO;
import kr.co.teampro.service.MemberService;
import kr.co.teampro.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	@Qualifier("ms")
	private MemberService service;
	
	@RequestMapping("/member/memberinput")
	public String memberinput() {
		return "/member/memberinput";
	}
	
	@RequestMapping("/member/memberinput_ok")
	public String memberinput_ok(MemberVO mvo) {
		return service.memberinput_ok(mvo);
	}
	
	@RequestMapping("/member/check_userid")
	public void check_userid(HttpServletRequest request,PrintWriter out) {
		service.check_userid(request,out);
	}
	
	@RequestMapping("/member/cwrite")
	public String cwrite() {
		return "/member/cwrite";
	}
	
	@RequestMapping("/member/cwrite_ok")
	public String cwrite_ok(CounselVO cvo,HttpSession session) {
		return service.cwrite_ok(cvo,session);
	}
	
	@RequestMapping("/member/clist")
	public String clist(HttpSession session,Model model) {
		return service.clist(session,model);
	}
	
	@RequestMapping("/member/ccontent")
	public String ccontent(HttpServletRequest request,Model model) {
		return service.ccontent(request,model);
	}
	
	@RequestMapping("/member/cdelete")
	public String cdelete(HttpServletRequest request) {
		return service.cdelete(request);
	}
	
	@RequestMapping("/member/member_coun")
	public String member_coun(HttpSession session,Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/home";
		else if(session.getAttribute("userid").toString().equals("admin"))
		         return service.member_coun(model);
			 else
				 return "redirect:/home";	
	}
	
	@RequestMapping("/member/coun_answer")
	public String coun_answer(AnswerVO avo) {
		return service.coun_answer(avo);
	}
	
	@RequestMapping("/member/gogaek")
	public String gogaek() {
		return "/member/gogaek";
	}
}
