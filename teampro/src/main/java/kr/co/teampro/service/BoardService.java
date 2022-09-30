package kr.co.teampro.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.teampro.vo.BoardVO;
import kr.co.teampro.vo.ReplyVO;



public interface BoardService {
	public String write_ok(BoardVO bvo);
	public String list(Model model,HttpServletRequest request);
	public String readnum(HttpServletRequest request);
	public String content(HttpServletRequest request,Model model);
	public String delete(BoardVO bvo);
	public String update(HttpServletRequest request,Model model);
	public String update_ok(BoardVO bvo);
	/*댓글*/
	public String reply_write_ok(ReplyVO rvo,HttpSession session);
	public String reply_list(Model model);
	
	
}
