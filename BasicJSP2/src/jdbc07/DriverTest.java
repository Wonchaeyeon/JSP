package jdbc07;
import java.sql.*;

public class DriverTest {
	public static void main(String[] args) {
		Connection con;
		try {
		/*static 메소드랑 같은거*/Class.forName("org.gjt.mm.mysql.Driver").newInstance();//외우기
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mirim2");//외우기
			System.out.print("Success");
		}catch(SQLException ex) {
			System.out.println("SQLException:" + ex);
		}catch(Exception ex) {
			System.out.println("Exception:" + ex);

		}
	}
}