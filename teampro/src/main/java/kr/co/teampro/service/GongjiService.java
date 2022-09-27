package kr.co.teampro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.teampro.vo.GongjiVO;

public interface GongjiService {
	public String list(Model model);
	public String write_ok(GongjiVO gvo);
	public String readnum(HttpServletRequest request);
	public String content(HttpServletRequest request,Model model);
	public String delete(GongjiVO gvo);
	public String update(HttpServletRequest request, Model model);
	public String update_ok(GongjiVO gvo);
}
