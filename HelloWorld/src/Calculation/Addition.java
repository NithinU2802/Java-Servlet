package Calculation;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Addition extends HttpServlet {
 public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
	 int a=Integer.parseInt(req.getParameter("num1"));
	 int b=Integer.parseInt(req.getParameter("num2"));
	 int s=a+b;
	 //System.out.println("Result is: "+s);
	 PrintWriter out=res.getWriter();
	 out.println("Result is: "+s);
	 
 }
}
