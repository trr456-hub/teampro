package kr.co.teampro.mapper;

import java.util.ArrayList;

import kr.co.teampro.vo.DiscountVO;

public interface DiscountMapper {
	public void discount_ok(DiscountVO dvo);
	public ArrayList<DiscountVO> discount_list();
	public DiscountVO discount_content(String dcode);
}
