package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.ReserveService;
import kr.co.teampro.vo.CmovieVO;
import kr.co.teampro.vo.YemeVO;

@Controller
public class ReserveController {

	@Autowired
	@Qualifier("rs")
	private ReserveService service;
	
	@RequestMapping("/main/index")
	public String index(CmovieVO cvo,Model model) {
		return service.index(cvo, model);
	}
	@RequestMapping("/reserve/reservepage")
	public String reservepage(Model model) {
		return service.reservepage(model);
	}
	@RequestMapping("/reserve/theater")
	public String theater(HttpServletRequest request,Model model) {
		String code = request.getParameter("code");
		String jcode = request.getParameter("jcode");
		String mcode = request.getParameter("mcode");
		String title = request.getParameter("title");
		String monthday = request.getParameter("monthday");
		String tcode = request.getParameter("tcode");
		
		model.addAttribute("code",code);
		model.addAttribute("jcode",jcode);
		model.addAttribute("mcode",mcode);
		model.addAttribute("monthday",monthday);
		model.addAttribute("tcode",tcode);
		model.addAttribute("title",title);
		
		YemeVO yvo = new YemeVO();
		yvo.setCode(code);
		yvo.setJcode(jcode);
		yvo.setMcode(mcode);
		yvo.setTcode(tcode);
		yvo.setMonthday(monthday);
		
		service.getSeat(model, yvo);
		
		return "/reserve/theater";
	}
	@RequestMapping("/reserve/theaterBuy")
	public String theaterBuy(HttpServletRequest request,Model model) {
		int adult = Integer.parseInt(request.getParameter("adult"));
		int child = Integer.parseInt(request.getParameter("child"));
		String seatPass = request.getParameter("seatPass");
		String code = request.getParameter("code");
		String jcode = request.getParameter("jcode");
		String mcode = request.getParameter("mcode");
		String monthday = request.getParameter("monthday");
		String tcode = request.getParameter("tcode");
		String title = request.getParameter("title");
		
		model.addAttribute("adult",adult);
		model.addAttribute("child",child);
		model.addAttribute("seatPass",seatPass);
		model.addAttribute("code",code);
		model.addAttribute("jcode",jcode);
		model.addAttribute("mcode",mcode);
		model.addAttribute("monthday",monthday);
		model.addAttribute("tcode",tcode);
		model.addAttribute("title",title);
		
		return "/reserve/theaterBuy";
	}
	
	@RequestMapping("/reserve/theaterBuy_ok")
	public String theaterBuy_ok(YemeVO yvo,HttpSession session) {
		return service.theaterBuy_ok(yvo, session);
	}
	
//	@RequestMapping("/reserve/getSeat")
//	public String getSeat(Model model,YemeVO yvo) {
//		return service.getSeat(model, yvo);
//	}
}
