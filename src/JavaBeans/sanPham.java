package JavaBeans;

import java.io.Serializable;

public class sanPham implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String tenSanPham;
	private String hangSanXuat;
	private int giaSanPham;
	private String tinhTrang;
	private String hinh_dai_dien;
	
	public sanPham() {
		super();
	}
	public String getHangSanXuat() {
		return hangSanXuat;
	}
	public void setHangSanXuat(String hangSanXuat) {
		this.hangSanXuat = hangSanXuat;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public int getGiaSanPham() {
		return giaSanPham;
	}
	public void setGiaSanPham(int giaSanPham) {
		this.giaSanPham = giaSanPham;
	}
	public String getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
	
	public String getHinh_dai_dien() {
		return hinh_dai_dien;
	}
	public void setHinh_dai_dien(String hinh_dai_dien) {
		this.hinh_dai_dien = hinh_dai_dien;
	}
}
