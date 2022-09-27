package kr.co.teampro.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.teampro.vo.GumaeVO;

public interface ProductService {
	public String product_ok(HttpServletRequest request);
	public String pro_list(Model model);
	public String pro_content(HttpServletRequest request,Model model);
	public String pro_gumae(HttpServletRequest request,Model model,HttpSession session);
	public String pro_gumae_ok(GumaeVO gvo,HttpSession session);
	public String product_view(HttpServletRequest request,Model model,HttpSession session);
}
