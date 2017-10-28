package mo_rong_webEJB;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the nhan_vien database table.
 * 
 */
@Embeddable
public class NhanVienPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="idnhan_vien")
	private int idnhanVien;

	private String username;

	private String email;

	public NhanVienPK() {
	}
	public int getIdnhanVien() {
		return this.idnhanVien;
	}
	public void setIdnhanVien(int idnhanVien) {
		this.idnhanVien = idnhanVien;
	}
	public String getUsername() {
		return this.username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return this.email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof NhanVienPK)) {
			return false;
		}
		NhanVienPK castOther = (NhanVienPK)other;
		return 
			(this.idnhanVien == castOther.idnhanVien)
			&& this.username.equals(castOther.username)
			&& this.email.equals(castOther.email);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.idnhanVien;
		hash = hash * prime + this.username.hashCode();
		hash = hash * prime + this.email.hashCode();
		
		return hash;
	}
}