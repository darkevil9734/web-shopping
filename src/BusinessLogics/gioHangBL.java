package BusinessLogics;

import java.util.*;

import Controller.dangNhapServlet;
import JavaBeans.sanPham;
import JavaBeans.sanPhamMua;

public class gioHangBL {
	Map<Integer, Integer> danhSachHang;
	
	public gioHangBL() {
		danhSachHang = new Hashtable<Integer, Integer>();
	}
	
	public void them(int id, int soLuongMua) {
		if(danhSachHang.containsKey(id)) {
			danhSachHang.replace(id, danhSachHang.get(id)+soLuongMua);
		}
		else {
			danhSachHang.put(id, soLuongMua);
		}
	}
	
	public List<sanPhamMua> danhSachSanPhamMua(){
		List<sanPhamMua> dsspm = new ArrayList<sanPhamMua>();
		
		for(Integer id:danhSachHang.keySet()) {
			sanPham sp = sanPhamBL.docTheoID(id);
			sanPhamMua spm = new sanPhamMua();
			spm.setMa_san_pham(id);
			spm.setTenSanPham(sp.getTenSanPham());
			spm.setHangSanXuat(sp.getHangSanXuat());
			spm.setGiaSanPham(sp.getGiaSanPham());
			spm.setTinh_nang(sp.getTinhTrang());
			spm.setHinh_dai_dien(sp.getHinh_dai_dien());
			spm.setCamera_truoc(sp.getCamera_truoc());
			spm.setCamera_sau(sp.getCamera_sau());
			spm.setDung_luong_pin(sp.getDung_luong_pin());
			spm.setTinh_nang(sp.getTinh_nang());
			spm.setBao_mat(sp.getBao_mat());
			spm.setMau_sac(sp.getMau_sac());
			spm.setSoLuongMua(danhSachHang.get(id));
			dsspm.add(spm);
		}
		
		return dsspm;
	}
	
	public double tongTien() {
		double tt = 0;
		List<sanPhamMua> dshm = danhSachSanPhamMua();
		
		for(sanPhamMua spm: dshm)
			tt += spm.getThanhTien();
		return tt;
	}
	
	public int countSoLuongMua() {
		return danhSachHang.size();
	}
}
