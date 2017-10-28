package mo_rong_webEJB;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the san_pham database table.
 * 
 */
@Entity
@Table(name="san_pham")
@NamedQuery(name="SanPham.findAll", query="SELECT s FROM SanPham s")
public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ma_san_pham")
	private int maSanPham;

	@Lob
	@Column(name="bao_mat")
	private String baoMat;

	@Lob
	@Column(name="camera_sau")
	private String cameraSau;

	@Lob
	@Column(name="camera_truoc")
	private String cameraTruoc;

	@Lob
	@Column(name="dung_luong_pin")
	private String dungLuongPin;

	@Column(name="gia_san_pham")
	private int giaSanPham;

	@Column(name="hang_san_xuat")
	private String hangSanXuat;

	@Column(name="hinh_anh_mo_phong")
	private String hinhAnhMoPhong;

	@Lob
	@Column(name="mau_sac")
	private String mauSac;

	@Column(name="ten_san_pham")
	private String tenSanPham;

	@Lob
	@Column(name="tinh_nang")
	private String tinhNang;

	@Column(name="tinh_trang")
	private String tinhTrang;

	public SanPham() {
	}

	public int getMaSanPham() {
		return this.maSanPham;
	}

	public void setMaSanPham(int maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getBaoMat() {
		return this.baoMat;
	}

	public void setBaoMat(String baoMat) {
		this.baoMat = baoMat;
	}

	public String getCameraSau() {
		return this.cameraSau;
	}

	public void setCameraSau(String cameraSau) {
		this.cameraSau = cameraSau;
	}

	public String getCameraTruoc() {
		return this.cameraTruoc;
	}

	public void setCameraTruoc(String cameraTruoc) {
		this.cameraTruoc = cameraTruoc;
	}

	public String getDungLuongPin() {
		return this.dungLuongPin;
	}

	public void setDungLuongPin(String dungLuongPin) {
		this.dungLuongPin = dungLuongPin;
	}

	public int getGiaSanPham() {
		return this.giaSanPham;
	}

	public void setGiaSanPham(int giaSanPham) {
		this.giaSanPham = giaSanPham;
	}

	public String getHangSanXuat() {
		return this.hangSanXuat;
	}

	public void setHangSanXuat(String hangSanXuat) {
		this.hangSanXuat = hangSanXuat;
	}

	public String getHinhAnhMoPhong() {
		return this.hinhAnhMoPhong;
	}

	public void setHinhAnhMoPhong(String hinhAnhMoPhong) {
		this.hinhAnhMoPhong = hinhAnhMoPhong;
	}

	public String getMauSac() {
		return this.mauSac;
	}

	public void setMauSac(String mauSac) {
		this.mauSac = mauSac;
	}

	public String getTenSanPham() {
		return this.tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public String getTinhNang() {
		return this.tinhNang;
	}

	public void setTinhNang(String tinhNang) {
		this.tinhNang = tinhNang;
	}

	public String getTinhTrang() {
		return this.tinhTrang;
	}

	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

}