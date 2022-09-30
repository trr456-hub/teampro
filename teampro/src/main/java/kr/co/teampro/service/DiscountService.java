package kr.co.teampro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface DiscountService {
	
	public String discount_ok(HttpServletRequest request);
	public String discount_list(Model model);
	public String discount_phone(Model model);
	public String discount_card(Model model);
	public String discount_point(Model model);
	public String discount_theater(Model model);
	public String discount_content(HttpServletRequest request, Model model);
}
