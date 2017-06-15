package kr.co.tworld.main.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tworld.main.domain.MainBannerUtil;
import kr.co.tworld.main.domain.MainHotNewBannerUtil;
import kr.co.tworld.main.domain.MainTdirectBannerUtil;

@Service
public class MainBannerService {
	
	@Autowired
	private MainTdirectBannerUtil tdirectBanner;
	
	@Autowired
	private MainHotNewBannerUtil hotnewBanner;
	
	@Autowired
	private MainBannerUtil mainBanner;

	public HashMap getMainBanner(String reqType) {
		
		HashMap result = new HashMap();
		
		if (reqType != null && reqType != ""){
			
			if (reqType.equals("hotnew")){
				result = hotnewBanner.getHotNew();
			} else if (reqType.equals("direct")){
				result = tdirectBanner.getTdirectBanner();
			} else if (reqType.equals("main")){
				result = mainBanner.getMainBannr();
			}
		}
		
		return result;
	}

}
