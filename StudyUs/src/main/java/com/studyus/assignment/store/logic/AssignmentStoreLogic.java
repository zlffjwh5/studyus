package com.studyus.assignment.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studyus.assignment.domain.Assignment;
import com.studyus.assignment.domain.PageInfo;
import com.studyus.assignment.domain.SubmittedAssignment;
import com.studyus.assignment.store.AssignmentStore;

@Repository
public class AssignmentStoreLogic implements AssignmentStore {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getListCount(int stNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Assignment> selectAll(PageInfo pi, int stNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Assignment selectOne(int asNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Assignment> selectAllReply(int asNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertAssignment(Assignment assignment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAssignment(Assignment assignment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteAssignment(int asNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int submittedCheckList(int asNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int submittedCheck(SubmittedAssignment sAssignment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<SubmittedAssignment> selectAllSubmittedAssignment(SubmittedAssignment sAssignment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Assignment selectAllSubmittedReply(SubmittedAssignment sAssignment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertSubmittedAssignment(SubmittedAssignment sAssignment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSubmittedAssignment(SubmittedAssignment sAssignment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSubmittedAssignment(int suNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int countAssignment(int stNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int countSubmittedAssignment(SubmittedAssignment sAssignment) {
		// TODO Auto-generated method stub
		return 0;
	}

}
