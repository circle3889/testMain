package kr.co.tworld.main.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

@Service
public class MainInfoUtil {
	
    @Resource(name = "redisTemplateObj")
	private RedisTemplate<String, Object> redisTemplateObj;
    
    @Resource(name = "redisTemplateHash")
	private RedisTemplate<String, Object> redisTemplateHash;
	
	public HashMap getMainInfo(String tokenId, String osType) {

		HashMap result = new HashMap(); // 메인 기본정보
		
		String svcMgmtNum = "";
		svcMgmtNum = (String) redisTemplateHash.opsForHash().get(tokenId, "selected");
		
		if (svcMgmtNum == null || svcMgmtNum == ""){
			result.put("rstCd", "9999");
			result.put("rstMst", "svcMgmtNum is not valid");
			return result;
		}
		
		String reqSvcMgmtNum = svcMgmtNum;
		String custNm = (String)redisTemplateHash.opsForHash().get(tokenId, "custNm");  
		String reqNickName = (String)redisTemplateHash.opsForHash().get(tokenId, "custNm");  

        System.out.println("getMainInfo reqSvcMgmtNum===========" + reqSvcMgmtNum);
        System.out.println("getMainInfo reqNickName===========" + reqNickName);
        System.out.println("getMainInfo custNm===========" + custNm);
        
    	HashMap svcInfo = new HashMap();
    	String svcNum = "";
    	String custGrade ="";
    	svcInfo = (HashMap) redisTemplateObj.opsForHash().get(tokenId, svcMgmtNum);
    	
    	if (svcInfo != null){
	    	svcNum = (String) svcInfo.get("svcNum");
	    	System.out.println("svcNum====" + svcNum);
	    	custGrade = (String) svcInfo.get("grade");
	    	System.out.println("custGrade====" + custGrade);
	    	
        } else {
        	result.put("rstCd", "9999");
			result.put("rstMst", "svc Info is not valid");
			return result;
        }
        
        boolean isSimpleLogin = false;
        boolean isRegularUser = true;
        boolean isMultiPhone  = false; // 다회선 영역은 생략 
        
        String searchText = ""; // 추천검색어 
        if (osType != null && osType.equals("A")){
        	searchText = "안드로이드 추천검색어";
        } else if (osType != null && osType.equals("I")){
        	searchText = "IOS 추천검색어";
        } else {
        	searchText = "추천검색어";
        }
        
        String today = DateUtil.getCurrentDateString("yyyyMMdd"); //현재일 
        Date startTime = new Date(); //현재시간
        int totalTime = (startTime.getSeconds() + startTime.getMinutes()*60 + startTime.getHours()*60*60)*1000;//당일 자정부터 현재까지 지난 시간  밀리초
        
        
        try {
			Thread.sleep(500); // T전화 우선모드 가입여부  icas sleep wait set
		} catch (InterruptedException e) {
			e.printStackTrace();
		} 
		
		String TtelProdUsedYn = "Y"; // T전화 우선모드 가입여부, icas 를 통해 가져옴
		
        result.put("svcMgmtNum", svcMgmtNum);
        result.put("TtelProdUsedYn", TtelProdUsedYn);
        result.put("reqSvcMgmtNum", reqSvcMgmtNum);
        result.put("reqNickName", reqNickName);
        result.put("custNm", custNm);
        result.put("svcNum", svcNum);
        result.put("custGrade", custGrade);
        result.put("isSimpleLogin", isSimpleLogin);
        result.put("isRegularUser", isRegularUser);
        result.put("isMultiPhone", isMultiPhone);
        result.put("today", today);
        result.put("totalTime", totalTime);
        result.put("searchText", searchText);
		
		String freeDate = DateUtil.getCurrentTimeString();
 	    long freeDateLong = Long.parseLong(freeDate);
 	    long freeDateLongStart = 20170312000000L;
 	    long freeDateLongLast = 20170312235959L;

 	    if(freeDateLongLast > freeDateLong && freeDateLongStart < freeDateLong ){
 	    	result.put("free_pop_yn", "Y");
	    }else{
	    	result.put("free_pop_yn", "N");
	    }
 	    
 	    // 다회선 여부: 단일회선으로 간주 
 	    ArrayList multiLines = new ArrayList();
 	    result.put("multiLines", multiLines);

 	    String dsc_noticeYn ="N";
 	    result.put("dsc_noticeYn", dsc_noticeYn);
 	    result.put("rtnCd", "0000");
		
 	    return result;
	}

}
