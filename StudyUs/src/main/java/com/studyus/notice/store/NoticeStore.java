package com.studyus.notice.store;

import java.util.ArrayList;

import com.studyus.notice.domain.Notice;
import com.studyus.notice.domain.PageInfo;
import com.studyus.notice.domain.Search;

public interface NoticeStore {
	public int selectListCount();
	public ArrayList<Notice> selectList(PageInfo pi, int studyNo);
	public int addReadCount(int noticeNo);
	public ArrayList<Notice> selectSearchList(Search search, int studyNo);
	public Notice selectOne(int noticeNo);
	public int insertNotice(Notice notice);
	public int updateNotice(Notice notice);
	public int deleteNotice(int noticeNo);
	
	public ArrayList<Notice> printAllComment(int noticeNo);
	public int insertComment(Notice notice);
	public int updateComment(Notice notice);
	public int deleteComment(Notice notice);
}
