package kr.co.teampro.mapper;

import java.util.ArrayList;

import kr.co.teampro.vo.BoardVO;
import kr.co.teampro.vo.ReplyVO;



public interface BoardMapper {
	public void write_ok(BoardVO bvo);
	public ArrayList<BoardVO> list(int start);
	public void readnum(String id);
	public BoardVO content(String id);
	public void delete(BoardVO bvo);
	public String getUserid(int id);
	public BoardVO update(String id);
	public void update_ok(BoardVO bvo);
	public int getChong();
	/*댓글*/
	public void reply_write_ok(ReplyVO rvo);
	public ArrayList<ReplyVO> reply_list(String id);
}
