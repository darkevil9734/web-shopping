package BusinessLogics;

import java.sql.*;
import java.util.*;

import JavaBeans.sanPham;

public class sanPhamBL {
	public static List<sanPham> DocTatCa(){
		List<sanPham> dsSanPham = null;
		try {
			Connection db = Database.connect();
			Statement stm = db.createStatement();
			ResultSet rs = stm.executeQuery("SELECT * FROM san_pham");
			dsSanPham = new ArrayList<>();
			
			while(rs.next()){
				sanPham sp = new sanPham();
				sp.setTenSanPham(rs.getString("ten_san_pham"));
				sp.setGiaSanPham(rs.getInt("gia_san_pham"));
				sp.setTinhTrang("tinh_trang");
				dsSanPham.add(sp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dsSanPham;
		
	}
	
	public static List<sanPham> timTheoTen(String tenSanPhamCanTim){
		List<sanPham> dsSanPham = null;
		try {
			Connection db = Database.connect();
			Statement stm = db.createStatement();
			ResultSet rs = stm.executeQuery("select * from san_pham where ten_san_pham like '%"+tenSanPhamCanTim+"%'");
			dsSanPham = new ArrayList<>();
			while(rs.next()){
				sanPham sp = new sanPham();
				sp.setTenSanPham(rs.getString("ten_san_pham"));
				sp.setGiaSanPham(rs.getInt("gia_san_pham"));
				sp.setTinhTrang("tinh_trang");
				dsSanPham.add(sp);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dsSanPham;
		
	}
}
