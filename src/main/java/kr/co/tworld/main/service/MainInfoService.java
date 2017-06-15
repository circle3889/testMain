package kr.co.tworld.main.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import kr.co.tworld.main.domain.MainInfoUtil;
import kr.co.tworld.main.domain.MainTnotiUtil;

@Service
public class MainInfoService {

	@Autowired
	private MainInfoUtil mainInfo;
	
	@Autowired
	private MainTnotiUtil mainTnoti;
	
	@Resource(name = "redisTemplateHash")
	private RedisTemplate<String, Object> redisTemplateHash;
	
	public HashMap getMain(String tokenId, String osType) {
		
		HashMap result = new HashMap();
		
		HashMap main = new HashMap(); // 메인 기본정보
		HashMap tnoti = new HashMap(); // T알림 정보
		
		main = mainInfo.getMainInfo(tokenId, osType);
		tnoti = mainTnoti.getMainTnoti();
		
		result.put("main", main);
		result.put("tnoti", tnoti);
		
		return result;
	}

	public boolean tokenValid(String tokenId) {
		
		boolean tokenValid = false;
    	if (redisTemplateHash.opsForHash().get(tokenId, "selected")!= null && redisTemplateHash.opsForHash().get(tokenId, "selected") != ""){
    		tokenValid = true;
    	}
		return tokenValid;
	}

}
