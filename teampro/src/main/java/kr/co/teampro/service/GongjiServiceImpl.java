package kr.co.teampro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.teampro.mapper.GongjiMapper;
import kr.co.teampro.vo.GongjiVO;

@Service
@Qualifier("gs")
public class GongjiServiceImpl implements GongjiService {
	@Autowired
	private GongjiMapper mapper;
	
	@Override
	public String list(Model model) {
		model.addAttribute("list",mapper.list());
		return "/gongji/list";
	}

	@Override
	public String write_ok(GongjiVO gvo) {
		mapper.write_ok(gvo);
		return "redirect:/gongji/list";
	}

	@Override
	public String readnum(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.readnum(id);
		
		return "redirect:/gongji/content?id="+id;
	}

	@Override
	public String content(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		model.addAttribute("gvo",mapper.content(id));
		
		return "/gongji/content";
	}

	@Override
	public String delete(GongjiVO gvo) {
		mapper.delete(gvo);
		
		return "redirect:/gongji/list";
	}

	@Override
	public String update(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		model.addAttribute("gvo",mapper.update(id));
		
		return "/gongji/update";
	}

	@Override
	public String update_ok(GongjiVO gvo) {
		mapper.update_ok(gvo);
		
		return "redirect:/gongji/content?id="+gvo.getId();
	}	
}
