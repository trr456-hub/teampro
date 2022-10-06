package kr.co.teampro;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "redirect:/main/index";
	}
	@RequestMapping("/main/cca_self")
	public String cca_self() {
		return "/main/cca_self";
	}
}
