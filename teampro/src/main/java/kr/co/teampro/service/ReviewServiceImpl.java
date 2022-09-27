package kr.co.teampro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.teampro.mapper.ReviewMapper;
import kr.co.teampro.vo.ReviewVO;

@Service
@Qualifier("rs")
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewMapper mapper;
	
	@Override
	public String review(HttpServletRequest request, Model model) {
		String mcode=request.getParameter("mcode");
		
		model.addAttribute("mcode",mcode);
		
		return "/review/review";
	}

	@Override
	public String review_ok(ReviewVO rvo, HttpSession session) {
		rvo.setUserid(session.getAttribute("userid").toString());
		mapper.review_ok(rvo);

		return "redirect:/cmovie/cmovie_list";
	}

	@Override
	public String review_list(Model model, HttpServletRequest request) {
		int page; 
		if(request.getParameter("page")==null) {
			page=1;
		}
		else {	
			page=Integer.parseInt(request.getParameter("page"));		
		}
		
		int index=(page-1)*10;
		
		// 2. ����ڿ��� ������ ��ũ�� ó���ϱ� ���� �� ���ϱ� => pstart, pend, chong
		int pstart,pend,chong;
		
		pstart=page/10;
		if(page%10 == 0)
			pstart=pstart-1;
		
		pstart=pstart*10+1;
		pend=pstart+9;
		
		// �˻��� �ʵ�� �˻��ܾ ������ �Ѱ��ֱ�
		// null���� ���� ���
		
		// �� �������� ���ϱ�
		chong=mapper.getChong();
		
		// pend�� ������������ ũ�ٸ�
		if(pend > chong)
			pend=chong;

		ArrayList<ReviewVO> list=mapper.review_list(index);
		model.addAttribute("list",list);
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		model.addAttribute("page",page);
		
		return "/review/review_list";
	}

}
