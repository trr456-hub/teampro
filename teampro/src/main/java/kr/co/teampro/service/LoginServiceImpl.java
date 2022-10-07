package kr.co.teampro.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.teampro.mapper.LoginMapper;
import kr.co.teampro.vo.MemberVO;

@Service
@Qualifier("ls")
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginMapper mapper;
	
	@Override
	public String login_ok(MemberVO mvo,HttpSession session) {
		MemberVO mvo2=mapper.login_ok(mvo);
		if(mvo2 != null) {
			session.setAttribute("userid", mvo2.getUserid());
			session.setAttribute("name", mvo2.getName());
			session.setAttribute("phone", mvo2.getPhone());
			session.setAttribute("email", mvo2.getEmail());
			
			return "redirect:/main/index";
		}
		else
			return "redirect:/login/login?err=1";
	}

	@Override
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main/index";
	}

	@Override
	public void userid_search_ok(MemberVO mvo, PrintWriter out) {
		 String userid=mapper.userid_search_ok(mvo);
		 if(userid==null)
			 userid="0";
		 out.print(userid);
	}

	@Override
	public void pwd_search_ok(MemberVO mvo, PrintWriter out) {
		String pwd=mapper.pwd_search_ok(mvo);
		if(pwd==null)
			pwd="0";
		out.print(pwd);
		
	}
}
