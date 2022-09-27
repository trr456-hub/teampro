package kr.co.teampro.mapper;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.co.teampro.vo.CmovieVO;
import kr.co.teampro.vo.ReviewVO;

public interface CmovieMapper {
	public ArrayList<CmovieVO> cmovie_list(String mcode);
	public void cmovie_write_ok(CmovieVO cvo);
	public CmovieVO cmovie_content(String mcode);
	public ArrayList<ReviewVO> getReview(String mcode);
}
