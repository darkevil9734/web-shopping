package BusinessLogics;

import java.sql.*;

import JavaBeans.nhanVien;

public class nhanVienBL {
	public static int dangKyNhanVien(nhanVien nv) {
		int status =0;
		
		String sql = "INSERT INTO `hthong_muaban`.`nhan_vien` (`username`, `password`, `ho_nhan_vien`, `ten_nhan_vien`, `sdt`) VALUES (?, ?, ?, ?, ?)";
		try {
			Connection db = Database.connect();
			PreparedStatement pst = db.prepareStatement(sql);
			pst.setString(1, nv.getUsername());
			pst.setString(2, nv.getPassword());
			pst.setString(3, nv.getHo_nhan_vien());
			pst.setString(4, nv.getTen_nhan_vien());
			pst.setInt(5, nv.getSdt());
			
			status = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return status;
	}
	
	public static nhanVien docTheoUsernamePassword(String username, String password) {
		nhanVien nv_dangnhap = null;
		
		try {
			Connection db = Database.connect();
			Statement stm = db.createStatement();
			ResultSet rs = stm.executeQuery("select*from nhan_vien where username = '"+username+"' and password = '"+password+"' ");
			
			while(rs.next()) {
				nv_dangnhap = new nhanVien();
				nv_dangnhap.setUsername(rs.getString("username"));
				nv_dangnhap.setPassword(rs.getString("password"));
				nv_dangnhap.setHo_nhan_vien(rs.getString("ho_nhan_vien"));
				nv_dangnhap.setTen_nhan_vien(rs.getString("ten_nhan_vien"));
				nv_dangnhap.setSdt(rs.getInt("sdt"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return nv_dangnhap;
	}
}
