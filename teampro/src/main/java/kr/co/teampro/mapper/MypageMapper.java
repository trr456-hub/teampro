package kr.co.teampro.mapper;

import java.util.ArrayList;

import kr.co.teampro.vo.GumaeVO;
import kr.co.teampro.vo.MemberVO;
import kr.co.teampro.vo.ReviewVO;
import kr.co.teampro.vo.YemeVO;

public interface MypageMapper {
	public MemberVO myinfo(String userid);
	public void myinfo_edit_ok(MemberVO mvo);
	public String getPwd(String userid);
	public void change_pwd(String pwd,String userid);
	public ArrayList<ReviewVO> myreview(String userid);
	public ArrayList<GumaeVO> myjumun(String id);
	public ArrayList<YemeVO> myreserve(String id);
}
