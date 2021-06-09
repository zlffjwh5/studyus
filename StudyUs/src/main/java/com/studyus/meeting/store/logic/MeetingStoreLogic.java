package com.studyus.meeting.store.logic;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studyus.meeting.domain.Meeting;
import com.studyus.meeting.store.MeetingStore;

@Repository
public class MeetingStoreLogic implements MeetingStore{
	
	@Autowired
	SqlSession session;

	@Override
	public int insertOne(Meeting meeting) throws Exception {
		session.insert("meetingMapper.insertOne", meeting);
		return meeting.getMeetingNo();
	}

	@Override
	public Meeting selectCurrentOneByStudyNo(int studyNo) throws Exception {
		
		SimpleDateFormat format = new SimpleDateFormat("HH:mm");
		Date now = new Date(System.currentTimeMillis());
		
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm.put("currentTime", format.format(now));
		hm.put("studyNo", studyNo);
		
		// 현재 시간과 스터디 번호 입력
		return session.selectOne("meetingMapper.selectCurrentOneByStudyNo", hm);
	}

}