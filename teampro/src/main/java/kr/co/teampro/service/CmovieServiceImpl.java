package kr.co.teampro.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.teampro.vo.ReviewVO;
import kr.co.teampro.mapper.CmovieMapper;
import kr.co.teampro.vo.CmovieVO;

@Service
@Qualifier("cs")
public class CmovieServiceImpl implements CmovieService {

	@Autowired
	private CmovieMapper mapper;
	
	@Override
	public String cmovie_list(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		String mcode=request.getParameter("mcode");
		ArrayList<CmovieVO> list=mapper.cmovie_list(mcode);
		
		model.addAttribute("list",list);
		
		return "/cmovie/cmovie_list";
	}

	@Override
	public String cmovie_write_ok(HttpServletRequest request) throws IOException  {
		String path="C:\\spring\\teampro\\src\\main\\webapp\\resources\\mimg";
		int size=1024*1024*20;
		CmovieVO cvo=new CmovieVO();
		
		 
		  MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		  
		  cvo.setTitle(multi.getParameter("title"));
		  cvo.setPimg(multi.getFilesystemName("pimg"));
		  cvo.setCimg(multi.getFilesystemName("cimg"));
		  cvo.setContent(multi.getParameter("content").replace("\r\n","<br>"));
		  cvo.setGamdok(multi.getParameter("gamdok"));
		  cvo.setBaeoo(multi.getParameter("baeoo"));
		  cvo.setJang(multi.getParameter("jang"));
		  cvo.setGaebong(multi.getParameter("gaebong"));
 
			
	 
		mapper.cmovie_write_ok(cvo);
		return "redirect:/cmovie/cmovie_list";
	}

	@Override
	public String cmovie_content(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		String mcode=request.getParameter("mcode");
		model.addAttribute("cvo",mapper.cmovie_content(mcode));
		
		ArrayList<ReviewVO> rlist=mapper.getReview(mcode);
		for(int i=0;i<rlist.size();i++) {
			rlist.get(i).setContent(rlist.get(i).getContent().replace("\r\n", "<br>"));
		}
		model.addAttribute("rlist",rlist);
		
		return "/cmovie/cmovie_content";
	}
}