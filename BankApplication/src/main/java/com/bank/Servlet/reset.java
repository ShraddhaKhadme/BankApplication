package com.bank.Servlet;

import java.io.IOException;

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
@WebServlet("/resetpin")
public class reset extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 String mail=req.getParameter("mail");
	 int pin=Integer.parseInt(req.getParameter("pin"));
	 int confirm =Integer.parseInt(req.getParameter("pin"));
	 
	 HttpSession session=req.getSession(false);
	 
	 Customer c=(Customer)session.getAttribute("customer");
	 CustomerDAO cdao=new CustomerDAOImpl();
	 
	 if(confirm==pin && mail.equals(c.getMail()))
	 {
		 c.setPin(pin);
		 boolean res=cdao.updateCustomer(c);
		 if(res==true)
		 {
			 req.setAttribute("success", "successfully updated the pin");
			 RequestDispatcher rd=req.getRequestDispatcher("resetpin.jsp");
			 rd.forward(req, resp); 
		 }
		 else
		 {
			 req.setAttribute("fail","failed to update pin");
			 RequestDispatcher rd=req.getRequestDispatcher("resetpin.jsp");
			 rd.forward(req, resp); 
		 }
	 }
	 else
	 {
		 req.setAttribute("fail","invalid credential");
		 RequestDispatcher rd=req.getRequestDispatcher("resetpin.jsp");
		 rd.forward(req, resp);
	 }
	 
	
	}

}
