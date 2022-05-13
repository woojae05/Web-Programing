package ex0405;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDBManager {
	private static String className = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/jsp_info";
	private static String user = "root";
	private static String password = "12345678";
	
	public Connection getConnection() throws Exception{
		Class.forName(className);
		Connection con = DriverManager.getConnection(url, MemberDBManager.user, password);
		
		return con;
	}

	public List<Member> doSelect() {
		ArrayList<Member> a1 = new ArrayList();

		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement("select * from member");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Member member = new Member();
				member.setId(rs.getInt("id"));
				member.setUsername(rs.getString("username"));
				member.setPassword(rs.getString("password"));
				a1.add(member);
			}

		} catch (Exception e) {

		}

		return a1;
	}

	public void doInsert(String user, String pass) {

		// cmd + shift + o

		Connection con;
		PreparedStatement pstmt;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, MemberDBManager.user, password);
			pstmt = con.prepareStatement("insert into member (username, password) values (?,?)");
			pstmt.setString(1, user);
			pstmt.setString(2, pass);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String doDelete(String ids[]) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String dids = "";

		for (int i = 0; i < ids.length; i++) {
			dids = dids + ids[i] + ",";
			if(ids.length-1!= i) {
				dids = dids + ids[i]+",";
			}else {
				dids = dids+ids[i];
			}
		}
		try {
			Class.forName(className);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement("delete from member where id in ("+dids+")");
			pstmt.executeUpdate();
			return "success";
		
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}

	}
	
	public Member doSelectOne(String id) {

		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;
		Member member = new Member();
		
		try {
			Class.forName(className);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement("select * from member where id="+id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				member.setId(rs.getInt("id"));
				member.setUsername(rs.getString("username"));
				member.setPassword(rs.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return member;
	}
	
	public String doUpdate(String id,String userName,String password ) {
		Connection con;
		PreparedStatement pstmt;
		
		try {
			Class.forName(className);
			con = DriverManager.getConnection(url, user, this.password);
			pstmt = con.prepareStatement("update member "+ 
			"set username = ?"+
		    ", password = ?"+
			"where id=?");
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			pstmt.setInt(3,Integer.parseInt(id));
			
			pstmt.executeUpdate();
			
			return "success";
			
		}catch(Exception e) {
			System.out.print("error");
			e.printStackTrace();
			
			return "fail";
		}
		
	}
	
	public boolean loginCheck(String userName,String password) {
		Connection con;
		PreparedStatement pstmt;
		ResultSet rs =null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement("select * from member where username = ? and password = ?");
			pstmt.setString(1,userName);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				System.out.println("dbdbdbd");
				return true;
			}
			
			return false;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return true;
	}
}
