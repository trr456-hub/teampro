package kr.co.teampro.mapper;

import java.util.ArrayList;

import kr.co.teampro.vo.ReviewVO;

public interface ReviewMapper {
		public void review_ok(ReviewVO rvo);
		public ArrayList<ReviewVO> review_list(int index);
		public int getChong();
}
