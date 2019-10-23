package poll;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;
public class DBConnection {     //conection poolÀ» °¡Á®¿È 
	public static Connection getConnection() throws SQLException, NamingException, ClassNotFoundException{
		Context initCtx = new InitialContext();
		Context envCtx  = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/mydb");
		Connection conn = ds.getConnection(); 
		return conn;
	}
}