package kr.co.teampro.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.teampro.vo.YemeVO;

public interface ReserveService {
	
	public String reservepage(Model model);
	
	public String theaterBuy_ok(YemeVO yvo,HttpSession session);
}
