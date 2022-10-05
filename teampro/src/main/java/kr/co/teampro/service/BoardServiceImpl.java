package kr.co.teampro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import kr.co.teampro.mapper.BoardMapper;
import kr.co.teampro.vo.BoardVO;
import kr.co.teampro.vo.ReplyVO;

@Service
@Qualifier("bs")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper mapper;

	@Override
	public String write_ok(HttpSession session, BoardVO bvo) {
		String userid=session.getAttribute("userid").toString();
		bvo.setUserid(userid);
		mapper.write_ok(bvo);
		return "redirect:/board/list";
	}

	@Override
	public String list(Model model,HttpServletRequest request, HttpSession session) {
		int page,start;
		
		if(request.getParameter("page")==null) {
			page=1;
		} else {
			page=Integer.parseInt(request.getParameter("page"));
		}
		start=(page-1)*10;
		
		int pstart,pend;
		
		pstart=page/10;
		if(page%10 == 0) {
			pstart--;
		}
		pstart=pstart*10+1;
		pend=pstart+9;
		
		// pend 끝페이지 맞추기
		int chong=mapper.getChong();
		if(chong < pend) {
			pend=chong;
		}
		ArrayList<BoardVO> list=mapper.list(start);
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		return "/board/list";
	}

	@Override
	public String readnum(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.readnum(id);
		return "redirect:/board/content?id="+id;
	}

	@Override
	public String content(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		BoardVO bvo=mapper.content(id);
		bvo.setContent(bvo.getContent().replace("\r\n", "<br>"));
		model.addAttribute("bvo",bvo);
		
		ArrayList<ReplyVO> rlist=mapper.reply_list(id);
		model.addAttribute("rlist",rlist);
		
		return "/board/content";
	}

	@Override
	public String delete(BoardVO bvo, HttpSession session) {
		String userid = session.getAttribute("userid").toString();
		String dbuid=mapper.getUserid(bvo.getId());
		if(dbuid.equals(userid)) {
			mapper.delete(bvo);
			return "redirect:/board/list";
		} else {
			return "redirect:/board/content?id="+bvo.getId();
		}
		
		
	}

	@Override
	public String update(HttpSession session,HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String userid = session.getAttribute("userid").toString();
		BoardVO bvo = mapper.update(id);
		model.addAttribute("userid");
		model.addAttribute("bvo",bvo);
		return "/board/update";
	}

	@Override
	public String update_ok(HttpServletRequest request,BoardVO bvo, HttpSession session) {
		String id = request.getParameter("id");
		String userid = session.getAttribute("userid").toString();
		String dbuid=mapper.getUserid(bvo.getId());
		bvo.setUserid(userid);
		if(dbuid.equals(userid)) {
			mapper.update_ok(bvo);
			return "redirect:/board/content?id="+bvo.getId();
		} else {
			return "redirect:/board/content?id="+bvo.getId();
		}
	}
	/*댓글*/
	@Override
	public String reply_write_ok(ReplyVO rvo,HttpSession session) {
		String user_id = session.getAttribute("userid").toString();
		rvo.setUser_id(user_id);
		mapper.reply_write_ok(rvo);
		return "redirect:/board/content?id="+rvo.getBoard_id();
	}




	
	
	
	
}





