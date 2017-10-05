package BusinessLogics;

import java.sql.*;
import java.util.*;

import JavaBeans.sanPham;

public class test {

	public static void main(String[] args) {
	
		List<sanPham> dsSanPham = sanPhamBL.timTheoGia1TrieuDen3Trieu();
		System.out.println(dsSanPham);
	}

}
