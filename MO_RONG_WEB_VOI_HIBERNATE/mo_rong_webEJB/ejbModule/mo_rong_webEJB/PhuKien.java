package mo_rong_webEJB;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the phu_kien database table.
 * 
 */
@Entity
@Table(name="phu_kien")
@NamedQuery(name="PhuKien.findAll", query="SELECT p FROM PhuKien p")
public class PhuKien implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="idphu_kien")
	private int idphuKien;

	@Column(name="gia_phu_kien")
	private int giaPhuKien;

	@Column(name="hang_phu_kien")
	private String hangPhuKien;

	@Column(name="hinh_phu_kien")
	private String hinhPhuKien;

	@Column(name="loai_phu_kien")
	private String loaiPhuKien;

	@Column(name="ten_phu_kien")
	private String tenPhuKien;

	public PhuKien() {
	}

	public int getIdphuKien() {
		return this.idphuKien;
	}

	public void setIdphuKien(int idphuKien) {
		this.idphuKien = idphuKien;
	}

	public int getGiaPhuKien() {
		return this.giaPhuKien;
	}

	public void setGiaPhuKien(int giaPhuKien) {
		this.giaPhuKien = giaPhuKien;
	}

	public String getHangPhuKien() {
		return this.hangPhuKien;
	}

	public void setHangPhuKien(String hangPhuKien) {
		this.hangPhuKien = hangPhuKien;
	}

	public String getHinhPhuKien() {
		return this.hinhPhuKien;
	}

	public void setHinhPhuKien(String hinhPhuKien) {
		this.hinhPhuKien = hinhPhuKien;
	}

	public String getLoaiPhuKien() {
		return this.loaiPhuKien;
	}

	public void setLoaiPhuKien(String loaiPhuKien) {
		this.loaiPhuKien = loaiPhuKien;
	}

	public String getTenPhuKien() {
		return this.tenPhuKien;
	}

	public void setTenPhuKien(String tenPhuKien) {
		this.tenPhuKien = tenPhuKien;
	}

}