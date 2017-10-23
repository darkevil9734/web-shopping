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
		assertEquals(45 , sanPhamBL.DocTatCa().size());
	}
	
	@Test
	public void findAllGioHang() {
		assertEquals(1 , quanLyGioHang.xemTatCa().size());
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
		
	}
	
}
