package Test;

import BusinessLogics.gioHangBL;

public abstract class tesst {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		gioHangBL test = new gioHangBL();
		test.them(1, 1);
		test.them(2, 1);
		System.out.println("SL: " +test.countSoLuongMua());
		
		test.xoa(1);
		System.out.println("SL: " +test.countSoLuongMua());
	}

}
