package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.MemberDao;
import dao.MemberDaoImpl;
import model.Member;
import utility.DBConnection;

/**
 * Servlet implementation class GetMembers
 */
public class GetMembers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static MemberDao dao = new MemberDaoImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out1 = null;
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		try {
			List<Member> member = dao.getDataMembers();
			out1 = response.getWriter();
			Gson gson = new Gson();
			String staffJSON = gson.toJson(member);
			response.setStatus(200);
			out1.println(staffJSON);
			out1.flush();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
}
