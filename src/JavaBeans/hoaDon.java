package JavaBeans;

import java.io.Serializable;

public class hoaDon implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int id_user;
	private String email;
	private String ho_user;
	private String ten_user;
	private int sdt;
	private String diaChi;
	private String thanhPho;
	private String quan;
	private String phuong;
	private String chiTiet;
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHo_user() {
		return ho_user;
	}
	public void setHo_user(String ho_user) {
		this.ho_user = ho_user;
	}
	public String getTen_user() {
		return ten_user;
	}
	public void setTen_user(String ten_user) {
		this.ten_user = ten_user;
	}
	public int getSdt() {
		return sdt;
	}
	public void setSdt(int sdt) {
		this.sdt = sdt;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getThanhPho() {
		return thanhPho;
	}
	public void setThanhPho(String thanhPho) {
		this.thanhPho = thanhPho;
	}
	public String getQuan() {
		return quan;
	}
	public void setQuan(String quan) {
		this.quan = quan;
	}
	public String getPhuong() {
		return phuong;
	}
	public void setPhuong(String phuong) {
		this.phuong = phuong;
	}
	public String getChiTiet() {
		return chiTiet;
	}
	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}
	public hoaDon() {
		super();
	}	
}