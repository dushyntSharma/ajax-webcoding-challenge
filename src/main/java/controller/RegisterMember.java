package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import dao.MemberDao;
import dao.MemberDaoImpl;
import model.Member;

/**
 * Servlet implementation class RegisterMember
 */
public class RegisterMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static MemberDao dao = new MemberDaoImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String data = request.getParameter("data");
		System.out.println(data);
		JSONParser parser = new JSONParser();
		JSONObject jobj = null;
		try {
			jobj = (JSONObject) parser.parse(data);
			String firstname = (String) jobj.get("firstname");
			String lastname = (String) jobj.get("lastname");
			String email = (String) jobj.get("email");
			String address = (String) jobj.get("address");
			String gender = (String) jobj.get("gender");
			String mobile = (String) jobj.get("mobile");
			String password = (String) jobj.get("password");
			String cpassword = (String) jobj.get("cpassword");

			Member member = new Member(firstname, lastname, email, address, gender, mobile, password, cpassword);
			List<Member> mb = new ArrayList<Member>();
			// System.out.println(mb.toString());
			mb.add(member);
			try {
				dao.registerMember(mb);
				response.getWriter().write("homepage.jsp");
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
