package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
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

}
