package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Member;
import utility.DBConnection;

public class MemberDaoImpl implements MemberDao {

	@Override
	public void registerMember(List<Member> mb) {
		// TODO Auto-generated method stub
		Connection con = DBConnection.getConnection();
		PreparedStatement pt = null;
		String query = "insert into member(firstname,lastname, email, address,gender,mobile, password, cpassword) values(?,?,?,?,?,?,?,?);";
		Member m = mb.get(0);
		try {
			pt = con.prepareStatement(query);
			pt.setString(1, m.getFirstname());
			pt.setString(2, m.getLastname());
			pt.setString(3, m.getEmail());
			pt.setString(4, m.getAddress());
			pt.setString(5, m.getGender());
			pt.setString(6, m.getMobile());
			pt.setString(7, m.getPass());
			pt.setString(8, m.getCpass());
			pt.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		} finally {

			try {
				if (pt != null) {
					pt.close();
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			try {
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}

	}

	public List<Member> getDataMembers() {
		Connection con = DBConnection.getConnection();
		String sql = "select * from member";
		List<Member> member = new ArrayList<Member>();

		PreparedStatement st = null;
		ResultSet res = null;

		try {
			st = con.prepareStatement(sql);
			res = st.executeQuery();

			while (res.next()) {
				String firstname = res.getString("firstname");
				String lastname = res.getString("lastname");
				String email = res.getString("email");
				String address = res.getString("address");
				String gender = res.getString("gender");
				String mobile = res.getString("mobile");

				Member m = new Member(firstname, lastname, email, address, gender, mobile);
				member.add(m);

			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return member;

	}

}
