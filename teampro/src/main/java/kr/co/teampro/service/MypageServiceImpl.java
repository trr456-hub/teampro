package kr.co.teampro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.teampro.mapper.MypageMapper;
import kr.co.teampro.vo.GumaeVO;
import kr.co.teampro.vo.MemberVO;
import kr.co.teampro.vo.ReviewVO;
import kr.co.teampro.vo.YemeVO;

@Service
@Qualifier("ms2")
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageMapper mapper;
	
	@Override
	public String myinfo(HttpSession session,Model model) {
		
		MemberVO mvo=mapper.myinfo(session.getAttribute("userid").toString());
		model.addAttribute("mvo",mvo);
		
		return "/mypage/myinfo";
	}

	@Override
	public String myinfo_edit(HttpSession session, Model model) {
		
		MemberVO mvo=mapper.myinfo(session.getAttribute("userid").toString());
		model.addAttribute("mvo",mvo);
		
		return "/mypage/myinfo_edit";
	}

	@Override
	public String myinfo_edit_ok(MemberVO mvo,HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		mvo.setUserid(userid);
		
		mapper.myinfo_edit_ok(mvo);
		
		return "redirect:/mypage/myinfo";
	}

	@Override
	public String change_pwd(HttpSession session, HttpServletRequest request) {
		String prepwd=request.getParameter("prepwd"); // 기존
		String pwd=request.getParameter("pwd"); // 바꿀번호
		String userid=session.getAttribute("userid").toString();
		String dbpwd=mapper.getPwd(userid);
		if(dbpwd.equals(prepwd)) {
			mapper.change_pwd(pwd,userid);
			session.invalidate();
			
			return "redirect:/main/index";
		}
		else
			return "redirect:/mypage/myinfo";
	}

	@Override
	public String myreview(HttpSession session, Model model,HttpServletRequest request) {
		String userid=session.getAttribute("userid").toString();
		
		int page; 
		if(request.getParameter("page")==null) {
			page=1;
		}
		else {	
			page=Integer.parseInt(request.getParameter("page"));		
		}
		
		int index=(page-1)*10;
		
		int pstart,pend,chong;
		
		pstart=page/10;
		if(page%10 == 0)
			pstart=pstart-1;
		
		pstart=pstart*10+1;
		pend=pstart+9;
		
		chong=mapper.getChong(userid);
		
		if(pend > chong)
			pend=chong;
		ArrayList<ReviewVO> rlist=mapper.myreview(userid,index);
		model.addAttribute("rlist",rlist);
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		model.addAttribute("page",page);

		return "/mypage/myreview";
	}

	@Override
	public String myjumun(HttpSession session, Model model,HttpServletRequest request) {
		String userid=session.getAttribute("userid").toString();
		
		int page; 
		if(request.getParameter("page")==null) {
			page=1;
		}
		else {	
			page=Integer.parseInt(request.getParameter("page"));		
		}
		
		int index=(page-1)*10;
		
		int pstart,pend,chong;
		
		pstart=page/10;
		if(page%10 == 0)
			pstart=pstart-1;
		
		pstart=pstart*10+1;
		pend=pstart+9;
		
		chong=mapper.jumunChong(userid);
		if(pend > chong)
			pend=chong;
		
		ArrayList<GumaeVO> list=mapper.myjumun(userid,index);
		model.addAttribute("list",list);
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		model.addAttribute("page",page);
		
		return "/mypage/myjumun";
	}
	
	@Override
	public String myreserve(HttpSession session, Model model) {
		String userid=session.getAttribute("userid").toString();
		ArrayList<YemeVO> ylist=mapper.myreserve(userid);
		
		model.addAttribute("ylist",ylist);

		return "/mypage/myreserve";
	}
	
	@Override
	public String review_del(HttpServletRequest request) {
		String id=request.getParameter("id");
		
		mapper.review_del(id);

		return "redirect:/mypage/myreview";
	}
}
