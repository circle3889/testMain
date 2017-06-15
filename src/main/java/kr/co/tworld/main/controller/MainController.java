package kr.co.tworld.main.controller;
 
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.tworld.main.service.MainBannerService;
import kr.co.tworld.main.service.MainGuideService;
import kr.co.tworld.main.service.MainInfoService;
import kr.co.tworld.main.service.MainNoticeService;
 
@RestController
public class MainController {
	
	@Autowired
	private MainInfoService mainService;
	
	@Autowired
	private MainBannerService mainBannerService;
	
	@Autowired
	private MainNoticeService mainNoticeService;
	
	@Autowired
	private MainGuideService mainGuideService;
	
	private static Logger logger = LoggerFactory.getLogger(MainController.class);
	
    @RequestMapping("/main") // 메인 기본정보
    public @ResponseBody HashMap main(@RequestParam ("tokenId") String tokenId){

    	logger.info("=========================logger info mainService start!");
    	logger.debug("=========================logger debug mainService start!");
    	logger.error("=========================logger error mainService start!");
    	
    	HashMap result = new HashMap<>();
    	String osType = "A"; // BFF에서 가져올 값 default Android
    	String rtnCd = "0000";
    	
    	if(tokenId.equals("") || tokenId == null){
			rtnCd = "9999";
    		result.put("rtnCd", rtnCd);
    		result.put("rtnMsg", "token is null");
    		logger.error ("token is null");
    		return result;
    	} 
		
		if (mainService.tokenValid(tokenId)){ // token validation check
    		System.out.println("token is valid!!!!!");
    		result = mainService.getMain(tokenId, osType);
    		result.put("rtnCd", rtnCd);
    		logger.info ("token is valid");
        	return result;
        	
    	} else {
    		rtnCd = "9999";
    		result.put("rtnCd", rtnCd);
    		result.put("rtnMsg", "token is invalid");
    		logger.error ("token is invalid");
    		return result;
    	}
    }
    
    @RequestMapping("/main/mainBanner") // 메인배너
    public HashMap mainBanner(@RequestParam("reqType") String reqType){
    	
    	HashMap result = mainBannerService.getMainBanner(reqType);
    	return result;
    }
    
    @RequestMapping("/main/notice") // 공지사항
    public HashMap notice(){

    	HashMap result = mainNoticeService.getMainNotice();
    	return result;
    }
	
    @RequestMapping("/main/guide") // 이럴떈 이렇게 하세요
    public HashMap guide(){

    	HashMap result = mainGuideService.getMainGuide();
    	return result;
    }
}