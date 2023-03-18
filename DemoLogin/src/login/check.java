package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class check extends HttpServlet {
public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
	String name=req.getParameter("user");
	String pass=req.getParameter("pass");
	PrintWriter out=res.getWriter();
	if(name.equals("")) out.println("User Field is empty...");
	if(pass.equals("")) out.println("Please Enter the Password...");
	if(pass.length()<6) out.println("please Enter the valid password");
}
}
