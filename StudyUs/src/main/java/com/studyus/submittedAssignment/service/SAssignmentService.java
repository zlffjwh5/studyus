package com.studyus.submittedAssignment.service;

import java.util.ArrayList;

import com.studyus.assignment.domain.Assignment;
import com.studyus.common.PageInfo;
import com.studyus.submittedAssignment.domain.SubmittedAssignment;

public interface SAssignmentService {
	
	// 과제제출 보기
	
	/**
	 * 한개 제출 개수 확인
	 * @param asNo
	 * @return
	 */
	public int submittedCheckCount(int asNo);
	
	/**
	 * 한개 제출여부 확인
	 * (0이면 미제출 1이면 제출)
	 * @param sAssignment(asNo, mbNo)
	 * @return
	 */
	public int submittedCheck(SubmittedAssignment sAssignment);
	
	/**
	 * 전체보기
	 * @param asNo
	 * @return
	 */
	public ArrayList<SubmittedAssignment> printAllSubmittedAssignment(int asNo);
	
	/**
	 * 한개 보기
	 * @param suNo
	 * @return
	 */
	public SubmittedAssignment printOneSubmittedAssignment(int suNo);
	
	/**
	 * 댓글 총 개수
	 * @param suMotherNo
	 * @return
	 */
	public int countSubmittedReply(int suMotherNo);
	
	/**
	 * 댓글 보기
	 * @param pi
	 * @param suMotherNo
	 * @return
	 */
	public ArrayList<SubmittedAssignment> printAllSubmittedReply(PageInfo pi, int suMotherNo);
	
	// 과제제출과 댓글 추가, 수정, 삭제
		// 과제를 제출할 때마다 회원에게 30점 적립
	
	public int registerSubmittedAssignment(SubmittedAssignment sAssignment);
	public int modifySubmittedAssignment(SubmittedAssignment sAssignment);
	public int removeSubmittedAssignment(int suNo);
	
	////////////////////////////////////////////////////////////
	// 현재날짜 기준으로 그 날이 속한 달!
	
	/**
	 * 한달 총 과제 제출 개수
	 * @param sAssignment(stNo, mbNo)
	 */
	public int mySubmittedAssignment(SubmittedAssignment sAssignment);

}
