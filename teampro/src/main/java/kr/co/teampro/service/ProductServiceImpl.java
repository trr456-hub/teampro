package kr.co.teampro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.teampro.vo.ProductViewVO;
import kr.co.teampro.mapper.ProductMapper;
import kr.co.teampro.service.ProductService;
import kr.co.teampro.vo.GumaeVO;
import kr.co.teampro.vo.MemberVO;
import kr.co.teampro.vo.ProductVO;

@Service
@Qualifier("ps")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper mapper;
	
	@Override
	public String product_ok(HttpServletRequest request) {
		
		String path=request.getRealPath("resources/store");
		int size=1024*1024*20;
		ProductVO pvo=new ProductVO();
		try {
			MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
			
			pvo.setPimg(multi.getFilesystemName("pimg"));;
			pvo.setTitle(multi.getParameter("title"));
			pvo.setPrice(Integer.parseInt(multi.getParameter("price")));
			pvo.setSu(Integer.parseInt(multi.getParameter("su")));
			pvo.setPcode(multi.getParameter("pcode"));
			pvo.setGubun(multi.getParameter("gubun"));
			pvo.setGusung(multi.getParameter("gusung"));
			pvo.setGigan(multi.getParameter("gigan"));
			pvo.setMade(multi.getParameter("made"));
		} catch(Exception e) {
			
		}
		
		mapper.product_ok(pvo);
		
		return "redirect:/product/pro_list";
	}

	@Override
	public String pro_list(Model model) {
		
		ArrayList<ProductVO> plist = mapper.pro_list();
		model.addAttribute("plist",plist);
		
		return "/product/pro_list";
	}

	@Override
	public String pro_content(HttpServletRequest request, Model model) {
		String pcode = request.getParameter("pcode");
		ProductVO pvo = mapper.pro_content(pcode);
		model.addAttribute("pvo",pvo);
		
		
		return "/product/pro_content";
	}
	
	@Override
	public String pro_ticket(Model model) {
		
		ArrayList<ProductVO> plist = mapper.pro_list();
		model.addAttribute("plist",plist);
		
		
		return "/product/pro_ticket";
	}

	@Override
	public String pro_pop(Model model) {
		
		ArrayList<ProductVO> plist = mapper.pro_pop();
		model.addAttribute("plist",plist);
		
		
		return "/product/pro_pop";
	}

	@Override
	public String pro_com(Model model) {
		
		ArrayList<ProductVO> plist = mapper.pro_pop();
		model.addAttribute("plist",plist);
		
		
		return "/product/pro_com";
	}
	
	
	@Override
	public String pro_gumae(HttpServletRequest request, Model model, HttpSession session) {
		String[] pcode=request.getParameter("pcode").split(",");
		String[] su=request.getParameter("su").split(",");
		
		ArrayList<ProductVO> list=new ArrayList<ProductVO>();
		for(int i=0;i<pcode.length;i++) {
			ProductVO pvo=mapper.pro_gumae(pcode[i]);
			pvo.setSu(Integer.parseInt(su[i]));
			list.add(pvo);
		}
		model.addAttribute("list",list);
		
		String userid=session.getAttribute("userid").toString();
		MemberVO mvo=mapper.getmember(userid);
		model.addAttribute("mvo",mvo);
		
		return "/product/pro_gumae";
	}

	@Override
	public String pro_gumae_ok(GumaeVO gvo,HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		gvo.setUserid(userid);

		Integer number=mapper.getjumun(userid);
		number++;
		
		String num=number.toString();
		
		if(num.length()==1)
			num="000"+num;
		else if(num.length()==2)
		        num="00"+num;
			 else if(num.length()==3)
		             num="0"+num;
		
		String jumuncode=userid+num;
		
		gvo.setJumuncode(jumuncode);
		
		String[] pcode=gvo.getPcode().split(",");
		String[] su=gvo.getSu_imsi().split(",");
		String[] chong=gvo.getChong_imsi().split(",");
		
		for(int i=0;i<pcode.length;i++) {	
			gvo.setPcode(pcode[i]);
			gvo.setSu(Integer.parseInt(su[i]));
			gvo.setChong(Integer.parseInt(chong[i]));
		    mapper.pro_gumae_ok(gvo);
		}
		return "redirect:/product/product_view?jumuncode="+jumuncode;
	}

	@Override
	public String product_view(HttpServletRequest request, Model model,HttpSession session) {
		String jumuncode=request.getParameter("jumuncode");
	    ArrayList<ProductViewVO> list= mapper.product_view(jumuncode);
		model.addAttribute("list",list);
		
		String userid=session.getAttribute("userid").toString();
		String name=session.getAttribute("name").toString();
		
		MemberVO mvo=mapper.getmember(name);
		mvo=mapper.getmember(userid);
		model.addAttribute("mvo",mvo);
		return "/product/product_view";
	}

}
