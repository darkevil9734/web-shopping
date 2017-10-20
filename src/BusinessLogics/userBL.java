package BusinessLogics;
import java.sql.*;

import JavaBeans.user;

public class userBL {
	// insert new member
	public static int dangKy(user thanhVien) {
		int status=0;
		Connection db = Database.connect();
		try {
			
			PreparedStatement pst = db.prepareStatement("INSERT INTO user(username, password, ho_user, ten_user, sdt, email, dia_chi, quan, phuong, thanh_pho, nuoc, zip_code) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pst.setString(1, thanhVien.getUsername());
			pst.setString(2, thanhVien.getPassword());
			pst.setString(3, thanhVien.getHo_user());
			pst.setString(4, thanhVien.getTen_user());
			pst.setInt(5, thanhVien.getSdt());
			pst.setString(6, thanhVien.getEmail());
			pst.setString(7, thanhVien.getDia_chi());
			pst.setString(8,thanhVien.getQuan());
			pst.setString(9, thanhVien.getPhuong());
			pst.setString(10, thanhVien.getThanh_pho());
			pst.setString(11, thanhVien.getNuoc());
			pst.setString(12, thanhVien.getZip_code());
			
			status = pst.executeUpdate();
			db.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	// login
	public static user DocTheoUsernamePassword(String username, String password) {
		user thanhVienDangNhap = null;
		Connection db = Database.connect();
		Statement stm;
		
		try {
			stm = db.createStatement();
			ResultSet rs = stm.executeQuery("SELECT * FROM hthong_muaban.user where username = '"+username+"'  and password = '"+password+"';");
			
			
			if (rs.next()) {
				thanhVienDangNhap = new user();
				thanhVienDangNhap.setIduser(rs.getInt("iduser"));
				thanhVienDangNhap.setPassword(rs.getString("password"));
				thanhVienDangNhap.setHo_user(rs.getString("ho_user"));
				thanhVienDangNhap.setTen_user(rs.getString("ten_user"));
				thanhVienDangNhap.setSdt(rs.getInt("sdt"));
				thanhVienDangNhap.setEmail(rs.getString("email"));
				thanhVienDangNhap.setDia_chi(rs.getString("dia_chi"));
				thanhVienDangNhap.setQuan(rs.getString("quan"));
				thanhVienDangNhap.setPhuong(rs.getString("phuong"));
				thanhVienDangNhap.setThanh_pho(rs.getString("thanh_pho"));
				thanhVienDangNhap.setNuoc(rs.getString("nuoc"));
				thanhVienDangNhap.setZip_code(rs.getString("zip_code"));
			}
			db.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return thanhVienDangNhap;
	}
	
	// reset password
	public static user ResetPassword(String username, String email) {
		user thanhVienQuenMatKhau = null;
		Connection db = Database.connect();
		Statement stm;
		
		try {
			stm = db.createStatement();
			ResultSet rs = stm.executeQuery("select*from hthong_muaban.user where username = '"+username+"' and email = '"+email+"'");
			
			while(rs.next()) {
				thanhVienQuenMatKhau = new user();
				thanhVienQuenMatKhau.setIduser(rs.getInt("iduser"));
				thanhVienQuenMatKhau.setPassword(rs.getString("password"));
				thanhVienQuenMatKhau.setHo_user(rs.getString("ho_user"));
				thanhVienQuenMatKhau.setTen_user(rs.getString("ten_user"));
				thanhVienQuenMatKhau.setSdt(rs.getInt("sdt"));
				thanhVienQuenMatKhau.setEmail(rs.getString("email"));
				thanhVienQuenMatKhau.setDia_chi(rs.getString("dia_chi"));
				thanhVienQuenMatKhau.setThanh_pho(rs.getString("thanh_pho"));
				thanhVienQuenMatKhau.setNuoc(rs.getString("nuoc"));
				thanhVienQuenMatKhau.setZip_code(rs.getString("zip_code"));
			}
			db.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return thanhVienQuenMatKhau;		
	}

}
