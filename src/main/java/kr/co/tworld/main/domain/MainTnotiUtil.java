package kr.co.tworld.main.domain;

import java.util.HashMap;

import org.springframework.stereotype.Service;

@Service
public class MainTnotiUtil {

	public HashMap getMainTnoti() {
		
		HashMap result = new HashMap(); // T알림 정보
		
		// T알림 
		result.put("target_url", ""); // 
		result.put("main_img_desc", ""); // DBM에서 데이터 받아온 서비스일자?
		result.put("main_saved_path", ""); // T알림 컨텐츠 코드값
		result.put("main_img_desc", "T알림");
		result.put("rtnCd", "0000"); // 결과코드( '0' )
 	    result.put("errMsg", "");
 	    
		return result;
	}

}
