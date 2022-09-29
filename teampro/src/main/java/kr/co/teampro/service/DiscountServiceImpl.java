package kr.co.teampro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.teampro.mapper.DiscountMapper;
import kr.co.teampro.vo.DiscountVO;
import kr.co.teampro.vo.ProductVO;

@Service
@Qualifier("ds")
public class DiscountServiceImpl implements DiscountService {
	@Autowired
	private DiscountMapper mapper;

	@Override
	public String discount_ok(HttpServletRequest request) {
		
		String path=request.getRealPath("resources/discount");
		int size=1024*1024*20;
		DiscountVO dvo=new DiscountVO();
		try {
			MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
			
			dvo.setDimg(multi.getFilesystemName("dimg"));;
			dvo.setDcimg(multi.getFilesystemName("dcimg"));;
			dvo.setTitle(multi.getParameter("title"));
			dvo.setGubun(multi.getParameter("gubun"));
			dvo.setGigan(multi.getParameter("gigan"));
			dvo.setDcode(multi.getParameter("dcode"));
		} catch(Exception e) {
			
		}
		
		mapper.discount_ok(dvo);
		return "redirect:/discount/discount_write";
	}

	@Override
	public String discount_list(Model model) {
		
		ArrayList<DiscountVO> dlist = mapper.discount_list();
		model.addAttribute("dlist",dlist);
		
		return "/discount/discount_list";
	}

	@Override
	public String discount_content(HttpServletRequest request, Model model) {
		
		String dcode = request.getParameter("dcode");
		DiscountVO dvo = mapper.discount_content(dcode);
		
		model.addAttribute("dvo",dvo);
		
		return "/discount/discount_content";
	}

	@Override
	public String discount_phone(Model model) {
		
		ArrayList<DiscountVO> dlist = mapper.discount_phone();
		model.addAttribute("dlist",dlist);
		
		return "/discount/discount_phone";
	}
	

}
















