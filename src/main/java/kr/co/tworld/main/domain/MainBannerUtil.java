package kr.co.tworld.main.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MainBannerUtil {

  
	public HashMap getMainBannr() {
		
		    HashMap result = new HashMap();
			
			List mainBannerList = new ArrayList();
					
			HashMap main1 = new HashMap();
			main1.put("b_start_date", "20170101");
			main1.put("b_end_date", "20171231");
			main1.put("b_os_typ_bltn_yn", "N");
			main1.put("b_link", "bit.ly/2o1X35k");
			main1.put("b_billyn", "N");
			main1.put("b_inout", "");
			main1.put("b_static_cd", "");
			main1.put("b_img", "/img/new_main/img_t_direct01.png");
			main1.put("b_alt", "");
			mainBannerList.add(main1);
			
			HashMap main2 = new HashMap();
			main2.put("b_start_date", "20170101");
			main2.put("b_end_date", "20171231");
			main2.put("b_os_typ_bltn_yn", "N");
			main2.put("b_link", "bit.ly/2o1X35k");
			main2.put("b_billyn", "N");
			main2.put("b_inout", "");
			main2.put("b_static_cd", "");
			main2.put("b_img", "/img/new_main/img_t_direct01.png");
			main2.put("b_alt", "");
			mainBannerList.add(main2);
			
			result.put("mainBannerList", mainBannerList);	
			result.put("rtnCd", "0000");
			return result;
	}
}
