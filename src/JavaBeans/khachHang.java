package JavaBeans;

import java.io.Serializable;

public class khachHang implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ho_khach_hang;
	private String ten_khach_hang;
	private String dia_chi;
	private int sdt;
	
	

	public khachHang() {
		super();
		
	}

	public String getHo_khach_hang() {
		return ho_khach_hang;
	}

	public void setHo_khach_hang(String ho_khach_hang) {
		this.ho_khach_hang = ho_khach_hang;
	}

	public String getTen_khach_hang() {
		return ten_khach_hang;
	}

	public void setTen_khach_hang(String ten_khach_hang) {
		this.ten_khach_hang = ten_khach_hang;
	}

	public String getDia_chi() {
		return dia_chi;
	}

	public void setDia_chi(String dia_chi) {
		this.dia_chi = dia_chi;
	}

	public int getSdt() {
		return sdt;
	}

	public void setSdt(int sdt) {
		this.sdt = sdt;
	}
	
	
}
