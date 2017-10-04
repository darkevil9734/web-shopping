package BusinessLogics;

import java.util.*;

import JavaBeans.sanPham;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<sanPham> dsSanPham = sanPhamBL.timTheoGia1TrieuDen3Trieu();
		System.out.println(dsSanPham.size());
	}

}
