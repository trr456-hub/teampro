package kr.co.teampro.mapper;

import java.util.ArrayList;

import org.springframework.ui.Model;

import kr.co.teampro.vo.GongjiVO;

public interface GongjiMapper {
	public ArrayList<GongjiVO> list();
	public int getChong(String sel,String sword);
	public void write_ok(GongjiVO gvo);
	public void readnum(String id);
	public GongjiVO content(String id);
	public void delete(GongjiVO gvo);
	public GongjiVO update(String id);
	public void update_ok(GongjiVO gvo);
}
