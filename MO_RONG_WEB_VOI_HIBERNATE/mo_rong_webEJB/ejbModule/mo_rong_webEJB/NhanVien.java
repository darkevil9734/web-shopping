package mo_rong_webEJB;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the nhan_vien database table.
 * 
 */
@Entity
@Table(name="nhan_vien")
@NamedQuery(name="NhanVien.findAll", query="SELECT n FROM NhanVien n")
public class NhanVien implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private NhanVienPK id;

	@Column(name="ho_nhan_vien")
	private String hoNhanVien;

	private String password;

	private int sdt;

	@Column(name="ten_nhan_vien")
	private String tenNhanVien;

	public NhanVien() {
	}

	public NhanVienPK getId() {
		return this.id;
	}

	public void setId(NhanVienPK id) {
		this.id = id;
	}

	public String getHoNhanVien() {
		return this.hoNhanVien;
	}

	public void setHoNhanVien(String hoNhanVien) {
		this.hoNhanVien = hoNhanVien;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getSdt() {
		return this.sdt;
	}

	public void setSdt(int sdt) {
		this.sdt = sdt;
	}

	public String getTenNhanVien() {
		return this.tenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		this.tenNhanVien = tenNhanVien;
	}

}