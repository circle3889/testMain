package kr.co.tworld.main.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MainGuideUtil {

	public HashMap getMainGuide() {

		HashMap result = new HashMap(); // 이럴떈 이렇게 하세요
		
		// 이럴땐 ㅇ렇게 하세요
		List guideList = new ArrayList(); 
		HashMap guideData1 = new HashMap();
		guideData1.put("cntsId", "1");
		guideData1.put("cntsNm", "알고쓰면 더 편리한 T멤버십");
		guideList.add(guideData1);
		
		HashMap guideData2 = new HashMap();
		guideData2.put("cntsId", "2");
		guideData2.put("cntsNm", "나만의 데이터 이용패턴에 맞는 할인 방법!");
		guideList.add(guideData2);
		
		result.put("guideList", guideList);   
		result.put("rtnCd", "0000");
		
		return result;
				
	}
}
