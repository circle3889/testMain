package kr.co.tworld.main.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MainTdirectBannerUtil {

	public HashMap getTdirectBanner() {

		HashMap result = new HashMap();
		
		List tdirectBannerList = new ArrayList();
				
		HashMap direct1 = new HashMap();
		direct1.put("b_exps_seq", "1");
		direct1.put("b_title_nm", "완벽한 갤럭시S8 은 (br)T갤럭시클럽 제로로 사자");
		direct1.put("b_link", "bit.ly/2o1X35k");
		direct1.put("b_billyn", "N");
		direct1.put("b_inout", "");
		direct1.put("b_static_cd", "");
		direct1.put("b_alt", "완벽한 갤럭시S8 은 T갤럭시클럽 제로로 사자");
		direct1.put("b_img", "/img/new_main/img_t_direct01.png");
		tdirectBannerList.add(direct1);
		
		HashMap direct2 = new HashMap();
		direct2.put("b_exps_seq", "2");
		direct2.put("b_title_nm", "전화상담만으로 모든 휴대폰 구매가능!");
		direct2.put("b_link", "goo.gl/5XTbmL");
		direct2.put("b_billyn", "N");
		direct2.put("b_inout", "");
		direct2.put("b_static_cd", "");
		direct2.put("b_alt", "전화상담만으로 (br)모든 휴대폰 구매가능!");
		direct2.put("b_img", "/img/new_main/img_t_direct02.png");
		tdirectBannerList.add(direct2);
		
		result.put("tdirectBannerList", tdirectBannerList);	
		result.put("rtnCd", "0000");
		return result;
	}
}
