package mo_rong_webEJB;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the gio_hang database table.
 * 
 */
@Entity
@Table(name="gio_hang")
@NamedQuery(name="GioHang.findAll", query="SELECT g FROM GioHang g")
public class GioHang implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private GioHangPK id;

	@Lob
	@Column(name="chi_tiet")
	private String chiTiet;

	private String diaChi_user_mua;

	@Column(name="email_user_mua")
	private String emailUserMua;

	@Column(name="ho_user_mua")
	private String hoUserMua;

	@Column(name="phuong_user_mua")
	private String phuongUserMua;

	@Column(name="quan_user_mua")
	private String quanUserMua;

	@Column(name="sdt_user_mua")
	private int sdtUserMua;

	@Column(name="ten_user_mua")
	private String tenUserMua;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="iduser", referencedColumnName="iduser", insertable=false, updatable=false)
	private User user;

	public GioHang() {
	}

	public GioHangPK getId() {
		return this.id;
	}

	public void setId(GioHangPK id) {
		this.id = id;
	}

	public String getChiTiet() {
		return this.chiTiet;
	}

	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}

	public String getDiaChi_user_mua() {
		return this.diaChi_user_mua;
	}

	public void setDiaChi_user_mua(String diaChi_user_mua) {
		this.diaChi_user_mua = diaChi_user_mua;
	}

	public String getEmailUserMua() {
		return this.emailUserMua;
	}

	public void setEmailUserMua(String emailUserMua) {
		this.emailUserMua = emailUserMua;
	}

	public String getHoUserMua() {
		return this.hoUserMua;
	}

	public void setHoUserMua(String hoUserMua) {
		this.hoUserMua = hoUserMua;
	}

	public String getPhuongUserMua() {
		return this.phuongUserMua;
	}

	public void setPhuongUserMua(String phuongUserMua) {
		this.phuongUserMua = phuongUserMua;
	}

	public String getQuanUserMua() {
		return this.quanUserMua;
	}

	public void setQuanUserMua(String quanUserMua) {
		this.quanUserMua = quanUserMua;
	}

	public int getSdtUserMua() {
		return this.sdtUserMua;
	}

	public void setSdtUserMua(int sdtUserMua) {
		this.sdtUserMua = sdtUserMua;
	}

	public String getTenUserMua() {
		return this.tenUserMua;
	}

	public void setTenUserMua(String tenUserMua) {
		this.tenUserMua = tenUserMua;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}