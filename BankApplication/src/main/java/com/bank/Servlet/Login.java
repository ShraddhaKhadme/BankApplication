package com.bank.Servlet;
	import java.io.IOException;
	import java.io.PrintWriter;

	import com.bank.dao.CustomerDAO;
	import com.bank.dao.CustomerDAOImpl;
	import com.bank.dto.Customer;

	import jakarta.servlet.RequestDispatcher;
	import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import jakarta.servlet.http.HttpSession;
	@WebServlet("/login")
	public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		
		String accnom=req.getParameter("accno");
		String mpin=req.getParameter("pin");
//	
		int pin=Integer.parseInt(mpin);
		long accno=Long.parseLong(accnom);
		PrintWriter out=resp.getWriter();
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=cdao.getCustomer(accno,pin);
		
		if(c!=null)
		{
			if(c.getAccno()==1100110011)
			{
				session.setAttribute("customer",c);
				RequestDispatcher rd=req.getRequestDispatcher("admindashboard.jsp");
				rd.forward(req, resp);
			}
			else {
			session.setAttribute("customer",c);
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, resp);
		}
		}
		else
		{
			req.setAttribute("fail","invalid email or password");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
//			resp.sendRedirect("fail.html");
//			out.println("<h1>Invalid mail or password,</h1>"+"<br>"+"<a href=\"login.html\">Back</a> ");
		}
	}
}
