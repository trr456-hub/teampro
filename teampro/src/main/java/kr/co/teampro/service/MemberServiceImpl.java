package kr.co.teampro.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

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
		return "/login/login";
	}

	@Override
	public void check_userid(HttpServletRequest request, PrintWriter out) {
		 String userid=request.getParameter("userid");
		 int chk=mapper.check_userid(userid);
		 out.print(chk);
	}
}
