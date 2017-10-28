package mo_rong_webEJB;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int iduser;

	@Column(name="dia_chi")
	private String diaChi;

	private String email;

	@Column(name="ho_user")
	private String hoUser;

	private String nuoc;

	private String password;

	private String phuong;

	private String quan;

	private int sdt;

	@Column(name="ten_user")
	private String tenUser;

	@Column(name="thanh_pho")
	private String thanhPho;

	private String username;

	@Column(name="zip_code")
	private String zipCode;

	//bi-directional many-to-one association to GioHang
	@OneToMany(mappedBy="user", cascade= {CascadeType.ALL})
	private List<GioHang> gioHangs;

	public User() {
	}

	public int getIduser() {
		return this.iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getDiaChi() {
		return this.diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHoUser() {
		return this.hoUser;
	}

	public void setHoUser(String hoUser) {
		this.hoUser = hoUser;
	}

	public String getNuoc() {
		return this.nuoc;
	}

	public void setNuoc(String nuoc) {
		this.nuoc = nuoc;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhuong() {
		return this.phuong;
	}

	public void setPhuong(String phuong) {
		this.phuong = phuong;
	}

	public String getQuan() {
		return this.quan;
	}

	public void setQuan(String quan) {
		this.quan = quan;
	}

	public int getSdt() {
		return this.sdt;
	}

	public void setSdt(int sdt) {
		this.sdt = sdt;
	}

	public String getTenUser() {
		return this.tenUser;
	}

	public void setTenUser(String tenUser) {
		this.tenUser = tenUser;
	}

	public String getThanhPho() {
		return this.thanhPho;
	}

	public void setThanhPho(String thanhPho) {
		this.thanhPho = thanhPho;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getZipCode() {
		return this.zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public List<GioHang> getGioHangs() {
		return this.gioHangs;
	}

	public void setGioHangs(List<GioHang> gioHangs) {
		this.gioHangs = gioHangs;
	}

	public GioHang addGioHang(GioHang gioHang) {
		getGioHangs().add(gioHang);
		gioHang.setUser(this);

		return gioHang;
	}

	public GioHang removeGioHang(GioHang gioHang) {
		getGioHangs().remove(gioHang);
		gioHang.setUser(null);

		return gioHang;
	}

}