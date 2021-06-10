package com.studyus.meeting.service;

import com.studyus.meeting.domain.Meeting;

public interface MeetingService {
	
	public int insertOne(Meeting meeting) throws Exception;
	
	/**
	 * 스터디 번호를 입력받아 해당 스터디의 오늘 모임을 반환합니다.<br>
	 * @author 김동현
	 * @param studyNo
	 * @return Meeting
	 * @throws Exception
	 */
	public Meeting printCurrentOneByStudyNo(int studyNo) throws Exception;
}
