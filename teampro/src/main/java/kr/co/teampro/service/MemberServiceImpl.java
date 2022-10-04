package kr.co.teampro.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.teampro.vo.AnswerVO;
import kr.co.teampro.vo.CounselVO;
import kr.co.teampro.mapper.MemberMapper;
import kr.co.teampro.vo.MemberVO;

@Service
@Qualifier("ms")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public String memberinput_ok(MemberVO mvo) {
		mapper.memberinput_ok(mvo);
		return "redirect:/login/login";
	}

	@Override
	public void check_userid(HttpServletRequest request, PrintWriter out) {
		 String userid=request.getParameter("userid");
		 int chk=mapper.check_userid(userid);
		 out.print(chk);
	}
	
	@Override
	public String cwrite_ok(CounselVO cvo, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		cvo.setUserid(userid);
		mapper.cwrite_ok(cvo);
		
		return "redirect:/member/clist";
	}
	
	@Override
	public String clist(HttpSession session, Model model) {
		
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
	
		String userid=session.getAttribute("userid").toString();
		ArrayList<CounselVO> clist=mapper.clist(userid);
		model.addAttribute("clist",clist);
		
		return "/member/clist";
	}
	
	@Override
	public String ccontent(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		CounselVO cvo=mapper.ccontent(id);
		cvo.setContent(cvo.getContent().replace("\r\n", "<br>"));
		model.addAttribute("cvo",cvo);
		
		String content=mapper.getContent(id);
		if(content != null)
			content=content.replace("\r\n", "<br>");
		
		model.addAttribute("content",content);
		
		return "/member/ccontent";
	}

	@Override
	public String cdelete(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.cdelete(id);
		
		return "redirect:/member/clist";
	}
	
	@Override
	public String member_coun(Model model) {
		ArrayList<CounselVO> clist=mapper.member_coun();
		model.addAttribute("clist",clist);
		return "/member/member_coun";
	}
	
	@Override
	public String coun_answer(AnswerVO avo) {
		mapper.coun_answer(avo);
		return "redirect:/member/member_coun";
	}
}
