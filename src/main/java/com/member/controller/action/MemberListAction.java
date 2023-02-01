package com.member.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hosinsa.controller.HosinsaAction;
import com.hosinsa.dao.MemberDAO;
import com.hosinsa.dto.MemberVO;



public class MemberListAction implements HosinsaAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = MemberDAO.getInstance();
		List<MemberVO> list = dao.selectAllMembers();
		request.setAttribute("member_list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/member/memberList.jsp");
		rd.forward(request, response);
	}
}
