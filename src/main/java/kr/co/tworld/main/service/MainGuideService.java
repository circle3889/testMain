package kr.co.tworld.main.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tworld.main.domain.MainGuideUtil;

@Service
public class MainGuideService {

	@Autowired
	private MainGuideUtil mainGuide;
	
	public HashMap getMainGuide() {
		HashMap result = new HashMap();
		result = mainGuide.getMainGuide();
		return result;
	} 
}
