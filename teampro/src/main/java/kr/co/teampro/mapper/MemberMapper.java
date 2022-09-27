package kr.co.teampro.mapper;

import kr.co.teampro.vo.MemberVO;

public interface MemberMapper {
	public void memberinput_ok(MemberVO mvo);
	public int check_userid(String userid);
}
