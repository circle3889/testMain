package kr.co.tworld.main.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MainHotNewBannerUtil {

	public HashMap getHotNew() {

		HashMap result = new HashMap();
		
		List hotNewList = new ArrayList();
		
		HashMap hotnew1 = new HashMap();
		hotnew1.put("seq", "1");
		hotnew1.put("b_link", "bit.ly/2o1X35k");
		hotnew1.put("b_billyn", "N");
		hotnew1.put("b_inout", "A");
		hotnew1.put("b_static_cd", "A");
		hotnew1.put("b_alt", "hot and new 1");
		hotnew1.put("b_img", "/img/new_main/DSC01.png");
		hotNewList.add(hotnew1);
		
		HashMap hotnew2 = new HashMap();
		hotnew2.put("seq", "2");
		hotnew2.put("b_link", "bit.ly/2o1X35k");
		hotnew2.put("b_billyn", "N");
		hotnew2.put("b_inout", "A");
		hotnew2.put("b_static_cd", "A");
		hotnew1.put("b_alt", "hot and new 2");
		hotnew2.put("b_img", "/img/new_main/DSC02.png");
		hotNewList.add(hotnew2);
		
		result.put("hotNewList", hotNewList);	
		result.put("rtnCd", "0000");
		
		return result;
	}
}
