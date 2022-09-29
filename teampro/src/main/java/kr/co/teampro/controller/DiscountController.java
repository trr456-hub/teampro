package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.DiscountService;

@Controller
public class DiscountController {
	@Autowired
	@Qualifier("ds")
	private DiscountService service;
	
	@RequestMapping("/discount/discount_write")
	public String discount_write() {
		
		return "/discount/discount_write";
	}
	
	@RequestMapping("/discount/discount_ok")
	public String discount_ok(HttpServletRequest request) {
		
		return service.discount_ok(request);
	}
	
	@RequestMapping("/discount/discount_list")
	public String discount_list(Model model) {
		
		return service.discount_list(model);
	}
	
	@RequestMapping("/discount/discount_content")
	public String discount_content(HttpServletRequest request, Model model) {
		
		return service.discount_content(request, model);
	}

}
