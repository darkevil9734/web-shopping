package mo_rong_webEJB;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the gio_hang database table.
 * 
 */
@Embeddable
public class GioHangPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="idgio_hang")
	private int idgioHang;

	@Column(insertable=false, updatable=false)
	private int iduser;

	public GioHangPK() {
	}
	public int getIdgioHang() {
		return this.idgioHang;
	}
	public void setIdgioHang(int idgioHang) {
		this.idgioHang = idgioHang;
	}
	public int getIduser() {
		return this.iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof GioHangPK)) {
			return false;
		}
		GioHangPK castOther = (GioHangPK)other;
		return 
			(this.idgioHang == castOther.idgioHang)
			&& (this.iduser == castOther.iduser);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.idgioHang;
		hash = hash * prime + this.iduser;
		
		return hash;
	}
}