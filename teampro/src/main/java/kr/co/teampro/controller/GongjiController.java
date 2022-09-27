package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.GongjiService;
import kr.co.teampro.vo.GongjiVO;

@Controller
public class GongjiController {
	@Autowired
	@Qualifier("gs")
	private GongjiService service;
	
	@RequestMapping("/gongji/list")
	public String list(Model model) {
		return service.list(model);
	}
	
	@RequestMapping("/gongji/write")
	public String write() {
		return "/gongji/write";
	}
	
	@RequestMapping("/gongji/write_ok")
	public String wrtie_ok(GongjiVO gvo) {
		return service.write_ok(gvo);
	}
	
	@RequestMapping("/gongji/readnum")
	public String readnum(HttpServletRequest request) {
		return service.readnum(request);
	}
	
	@RequestMapping("/gongji/content")
	public String content(HttpServletRequest request,Model model) {
		return service.content(request,model);
	}
	
	@RequestMapping("/gongji/delete")
	public String delete(GongjiVO gvo) {
		return service.delete(gvo);
	}
	
	@RequestMapping("/gongji/update")
	public String update(HttpServletRequest request,Model model) {
		return service.update(request,model);
	}
	
	@RequestMapping("/gongji/update_ok")
	public String update_ok(GongjiVO gvo) {
		return service.update_ok(gvo);
	}
}
