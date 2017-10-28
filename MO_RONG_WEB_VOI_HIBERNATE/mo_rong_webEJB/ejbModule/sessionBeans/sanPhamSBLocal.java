package sessionBeans;

import java.util.List;

import javax.ejb.Local;

import mo_rong_webEJB.SanPham;

@Local
public interface sanPhamSBLocal {
	public List<SanPham> DocTatCa();
}
