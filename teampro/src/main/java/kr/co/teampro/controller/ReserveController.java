package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.ReserveService;

@Controller
public class ReserveController {

	@Autowired
	@Qualifier("rs")
	private ReserveService service;

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
}
