package kr.co.teampro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.teampro.mapper.ReserveMapper;
import kr.co.teampro.vo.DaeareaVO;
import kr.co.teampro.vo.GumaeVO;
import kr.co.teampro.vo.JungareaVO;
import kr.co.teampro.vo.ReserveVO;
import kr.co.teampro.vo.SeetimeVO;
import kr.co.teampro.vo.YemeVO;

@Service
@Qualifier("rs")
public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ReserveMapper mapper;

	@Override
	public String reservepage(Model model) {
		ArrayList<ReserveVO> rlist=mapper.reservepage();
		ArrayList<DaeareaVO> dlist=mapper.daearea();
		ArrayList<JungareaVO> jlist=mapper.jungarea();
		ArrayList<SeetimeVO> slist=mapper.seetime();
		
		// 극장 대분류별 중분류 갯수 => getCount 참고
		
		model.addAttribute("dlist",dlist);
		model.addAttribute("jlist",jlist);
		model.addAttribute("rlist",rlist);
		model.addAttribute("slist",slist);
		
		return "/reserve/reservepage";
	}
	
	@Override
	public String theaterBuy_ok(YemeVO yvo,HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		yvo.setUserid(userid);
		
		mapper.theaterBuy_ok(yvo);
		
		return "redirect:/mypage/myreserve";
		
	}
}
