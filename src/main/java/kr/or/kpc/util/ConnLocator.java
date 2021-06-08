package kr.or.kpc.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;




public class ConnLocator {
	public static Connection getConnect() {
		
		DataSource ds = null;
		Connection con = null;
	
	
		Context context;
		try {
			context = new InitialContext();
			//java:comp/env/는 고정
			//jdbc/kpc => cotext.xml의 name 속성 참조해야 함
			ds = (DataSource) context.lookup("java:comp/env/jdbc/kpc");
			//Connection 객체는 Connection 객체를 반환
			con = ds.getConnection();
		}
		catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	 
	return con;
	}

}
