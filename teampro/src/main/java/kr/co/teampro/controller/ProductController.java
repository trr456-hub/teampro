package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.teampro.service.ProductService;
import kr.co.teampro.vo.GumaeVO;

@Controller
public class ProductController {
	@Autowired
	@Qualifier("ps")
	private ProductService service;
	
	@RequestMapping("/product/pro_gumae")
	public String pro_gumae(HttpServletRequest request,Model model,HttpSession session) {
		return service.pro_gumae(request,model,session);
	}
	
	@RequestMapping("/product/pro_write")
	public String pro_write() {
		
		return "/product/pro_write";
	}
	
	@RequestMapping("/product/product_ok")
	public String product_ok(HttpServletRequest request) {
		
		return service.product_ok(request);
	}
	
	@RequestMapping("/product/pro_list")
	public String pro_list(Model model) {
		
		return service.pro_list(model);
	}
	
	@RequestMapping("/product/pro_content")
	public String pro_content(HttpServletRequest request,Model model) {
		
		return service.pro_content(request,model);
	}
	
	@RequestMapping("/product/pro_ticket")
	public String pro_ticket(Model model) {
		
		return service.pro_ticket(model);
	}
	
	@RequestMapping("/product/pro_pop")
	public String pro_pop(Model model) {
		
		return service.pro_pop(model);
	}
	
	@RequestMapping("/product/pro_com")
	public String pro_com(Model model) {
		
		return service.pro_com(model);
	}
	
	@RequestMapping("/product/pro_gumae_ok")
	public String pro_gumae_ok(GumaeVO gvo,HttpSession session) {
		return service.pro_gumae_ok(gvo,session);
	}
	
	@RequestMapping("/product/product_view")
	public String product_view(HttpServletRequest request,Model model,HttpSession session) {
		return service.product_view(request,model,session);
	}
}
