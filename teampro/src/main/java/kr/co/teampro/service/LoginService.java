package kr.co.teampro.service;

import javax.servlet.http.HttpSession;

import kr.co.teampro.vo.MemberVO;

public interface LoginService {
	public String login_ok(MemberVO mvo,HttpSession session);
	public String logout(HttpSession session);
}
