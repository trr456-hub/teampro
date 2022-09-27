package kr.co.teampro.mapper;

import java.util.ArrayList;

import kr.co.teampro.vo.GumaeVO;
import kr.co.teampro.vo.MemberVO;
import kr.co.teampro.vo.ProductVO;
import kr.co.teampro.vo.ProductViewVO;

public interface ProductMapper {
	public void product_ok(ProductVO pvo);
	public ArrayList<ProductVO> pro_list();
	public ProductVO pro_content(String pcode);
	public ProductVO pro_gumae(String pcode);
	public MemberVO getmember(String userid);
	public void pro_gumae_ok(GumaeVO gvo);
	public Integer getjumun(String userid);
	public ArrayList<ProductViewVO> product_view(String jumuncode);
}
