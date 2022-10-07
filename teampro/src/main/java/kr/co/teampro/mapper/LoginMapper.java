package kr.co.teampro.mapper;

import kr.co.teampro.vo.MemberVO;

public interface LoginMapper {
	public MemberVO login_ok(MemberVO mvo);
	public String userid_search_ok(MemberVO mvo);
	public String pwd_search_ok(MemberVO mvo);
}
