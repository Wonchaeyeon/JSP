package seprac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/seprac/FirstServelet")
public class FirstServlet extends HttpServlet{  //��� �޴°� �߿� 
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>��Ŭ������ ���� �����</h1>");
		out.print("</body>");
		out.print("</html>");
	}
}
