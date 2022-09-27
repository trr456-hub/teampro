package kr.co.teampro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.teampro.vo.CmovieVO;

public interface CmovieService {
	public String cmovie_list(HttpServletRequest request,Model model);
	public String cmovie_write_ok(HttpServletRequest request) throws Exception;
	public String cmovie_content(HttpServletRequest request,Model model);
}
