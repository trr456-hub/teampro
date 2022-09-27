package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.CmovieService;
import kr.co.teampro.vo.CmovieVO;

@Controller
public class CmovieController {
	@Autowired
	@Qualifier("cs")	
	private CmovieService service;
	
	@RequestMapping("/cmovie/cmovie_list")
	public String cmovie_list(HttpServletRequest request,Model model) {
		return service.cmovie_list(request, model);
	}
	
	@RequestMapping("/cmovie/cmovie_write")
	public String cmovie_write() {
		return "/cmovie/cmovie_write";
	}
	
	@RequestMapping("/cmovie/cmovie_write_ok")
	public String cmovie_write_ok(HttpServletRequest request) throws Exception {
		return service.cmovie_write_ok(request);
	}
	
	@RequestMapping("/cmovie/cmovie_content")
	public String cmovie_content(HttpServletRequest request,Model model) {
		return service.cmovie_content(request,model);
	}
}
