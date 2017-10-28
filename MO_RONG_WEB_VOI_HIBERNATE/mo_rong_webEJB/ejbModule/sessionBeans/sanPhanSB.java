package sessionBeans;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import mo_rong_webEJB.SanPham;

@Stateless
public class sanPhanSB implements sanPhamSBLocal {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("mo_rong_webEJB");
	EntityManager em = emf.createEntityManager();
    public sanPhanSB() {
    	
    }

	@Override
	public List<SanPham> DocTatCa() {
		em.getTransaction().begin();
		Query q = em.createNamedQuery("SanPham.findAll", SanPham.class);
		List<SanPham> dssp = q.getResultList();
		em.getTransaction().commit();
		em.close();
		return dssp;
	}

}
