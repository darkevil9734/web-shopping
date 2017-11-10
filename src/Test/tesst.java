package Test;

import java.util.List;

import BusinessLogics.gioHangBL;
import BusinessLogics.sanPhamBL;
import JavaBeans.sanPham;

public abstract class tesst {

	public static void main(String[] args) {
		/*
		gioHangBL test = new gioHangBL();
		test.them(1, 1);
		test.them(2, 1);
		System.out.println("SL: " +test.countSoLuongMua());
		
		test.xoa(1);
		System.out.println("SL: " +test.countSoLuongMua());
		*/
		String mauSac = "đỏ";
		List<sanPham> dssp = sanPhamBL.timTheoMauSac(mauSac);
		System.out.println(dssp.size());
	}

}
