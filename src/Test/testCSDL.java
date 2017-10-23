package Test;

import static org.junit.Assert.*;

import java.sql.*;
import java.util.List;

import javax.ws.rs.BeanParam;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.sun.mail.imap.protocol.Item;

import BusinessLogics.Database;
import BusinessLogics.quanLyGioHang;
import BusinessLogics.sanPhamBL;
import BusinessLogics.userBL;
import JavaBeans.sanPham;
import JavaBeans.user;

public class testCSDL {
	Connection con;
	Statement stm;
	
	@Before
	public void chuanBi() {
		con = Database.connect();
	}
	
	@Test
	public void testConnection() {
		assertNotNull(con);
	}
	
	@Test
	public void findAllUser() {
		// tổng cộng hiện tại là 3
		assertEquals(3 , userBL.docTatCa().size());
	}
	
	@Test
	public void findAllSanPhamFail() {
		// tổng cộng hiện tại là 45
		assertEquals(3 , sanPhamBL.DocTatCa().size());
	}
	
	@Test
	public void findAllSanPham() {
		// tổng cộng hiện tại là 45
		assertTrue(sanPhamBL.DocTatCa().size() == 45 );
	}
	
	@Test
	public void findAllGioHang() {
		assertEquals(8 , quanLyGioHang.xemTatCa().size());
	}
	
	@Test
	public void TimSanPhamID() {
		sanPham test = sanPhamBL.docTheoID(2);
		assertTrue(test.getTenSanPham().equals("iPhone 6"));
	}
	
	@Test
	public void timSanPhamTheoHang() {
		List<sanPham> dssp = sanPhamBL.timKiemTheoHang("Apple");
		assertTrue(dssp.size() == 3);
	}
	
	@Test
	public void timSanPhamTheoTen() {
		List<sanPham> dssp = sanPhamBL.timTheoTen("iphone");
		assertTrue(dssp.size() == 4);
	}
	
	@Test
	public void dangKy() {
		// test nếu nhập sót các trường dữ liệu khác thì báo lỗi
		// test case pass nếu thông báo lỗi
		String username = "abcde";
		String password = "123456";
		user u = new user();
		u.setUsername(username);
		u.setPassword(password);
		
		int them = userBL.dangKy(u);
		assertTrue(them > 0);
	}
	
	@Test
	public void dangNhap() {
		// đăng nhập đúng
		String user = "test";
		String pass = "test";
		
		user u = userBL.DocTheoUsernamePassword(user, pass);
		assertTrue(u != null);
	}
	
	@Test
	public void dangNhapSai() {
		// đăng nhập đúng
		// Test case pass nếu thông báo lỗi
		String user = "test";
		String pass = "test1";
		
		user u = userBL.DocTheoUsernamePassword(user, pass);
		assertTrue(u != null);
	}
	
}
