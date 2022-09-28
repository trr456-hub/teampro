package kr.co.teampro.mapper;

import java.util.ArrayList;

import kr.co.teampro.vo.DaeareaVO;
import kr.co.teampro.vo.JungareaVO;
import kr.co.teampro.vo.ReserveVO;
import kr.co.teampro.vo.SeetimeVO;
import kr.co.teampro.vo.YemeVO;

public interface ReserveMapper {
	public ArrayList<ReserveVO> reservepage();
	
	public ArrayList<DaeareaVO> daearea();
	
	public ArrayList<JungareaVO> jungarea();
	
	public ArrayList<SeetimeVO> seetime();
	
	public void theaterBuy_ok(YemeVO yvo);
	public int getyeme(String userid);
}
