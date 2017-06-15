package kr.co.tworld.main.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MainNoticeUtil {

	
	public HashMap getMainNotice() {

		HashMap result = new HashMap();
		
		List noticeList = new ArrayList();
		HashMap notice1 = new HashMap();
		notice1.put("notice_txt", "공지사항1");
		notice1.put("notice_os", "A");
		notice1.put("notice_link", "");
		noticeList.add(notice1);
		
		HashMap notice2 = new HashMap();
		notice2.put("notice_txt", "공지사항2");
		notice2.put("notice_os", "I");
		notice2.put("notice_link", "");
		noticeList.add(notice2);
		
		result.put("noticeList", noticeList);
		result.put("rtnCd", "0000");
		
		return result;
	}
}
