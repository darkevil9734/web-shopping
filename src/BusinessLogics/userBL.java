package BusinessLogics;
import java.sql.*;

import JavaBeans.user;

public class userBL {
	// insert new member
	public static int dangKy(user thanhVien) {
		int status=0;

		try {
			Connection db = Database.connect();
			PreparedStatement pst = db.prepareStatement("INSERT INTO user(username, password, ho_user, ten_user, sdt, email, dia_chi, thanh_pho, nuoc, zip_code) VALUES(?,?,?,?,?,?,?,?,?,?)");
			
			pst.setString(1, thanhVien.getUsername());
			pst.setString(2, thanhVien.getPassword());
			pst.setString(3, thanhVien.getHo_user());
			pst.setString(4, thanhVien.getTen_user());
			pst.setInt(5, thanhVien.getSdt());
			pst.setString(6, thanhVien.getEmail());
			pst.setString(7, thanhVien.getDia_chi());
			pst.setString(8, thanhVien.getThanh_pho());
			pst.setString(9, thanhVien.getNuoc());
			pst.setString(10, thanhVien.getZip_code());
			
			status = pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
}
