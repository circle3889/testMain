package kr.co.tworld.main.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.tworld.main.domain.MainNoticeUtil;

@Service
public class MainNoticeService {

	@Autowired
	private MainNoticeUtil mainNotice;
	
	public HashMap getMainNotice() {

		HashMap result = new HashMap();
		result = mainNotice.getMainNotice();
		return result;
	}
}
