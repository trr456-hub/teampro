package kr.co.teampro.mapper;

import java.util.ArrayList;

import kr.co.teampro.vo.AnswerVO;
import kr.co.teampro.vo.CounselVO;
import kr.co.teampro.vo.MemberVO;

public interface MemberMapper {
	public void memberinput_ok(MemberVO mvo);
	public int check_userid(String userid);
	public void cwrite_ok(CounselVO cvo);
	public ArrayList<CounselVO> clist(String userid);
	public CounselVO ccontent(String id);
	public void cdelete(String id);
	public String getContent(String id);
	public ArrayList<CounselVO> member_coun();
	public void coun_answer(AnswerVO avo);
}
