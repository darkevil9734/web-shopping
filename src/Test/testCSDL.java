package Test;

import static org.junit.Assert.*;

import java.sql.*;

import javax.ws.rs.BeanParam;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import BusinessLogics.Database;
import BusinessLogics.userBL;

public class testCSDL {
	Connection con;
	Statement stm;
	
	@Before
	public void chuanBi() {
		con = Database.connect();
	}
	
	@Test
	public void testConnection() {
		assertNotNull(con);
	}
	
	@Test
	public void findAllUser() {
		assertEquals(3 , userBL.docTatCa().size());
	}

}
